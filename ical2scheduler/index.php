
<?php

$link=mysql_connect('localhost','root','');
mysql_select_db('iphonecalendar',$link);

	$ical_url = "https://p48-calendars.icloud.com/published/2/pfcZfNIaZ436_iwgaIXIw6UCNoQ080D6PGQS8h2TxcwD0D2Duukqaj3G_Qgbk2ImQqh8sqt2kKxKAv2zNyptyYs2EJxtgeKyZ1RZ-12NebQ";
	if (file_get_contents($ical_url) !== false) {
					$ical_content = $ical_url;
				} 
	require_once("codebase/class.php");
	$exporter = new ICalExporter();
	$log[] = Array("text" => "Events rendering...", "type" => "success");
	$events = $exporter->toHash($ical_content);
	$log[] = Array("text" => count($events)." event(s) was found.", "type" => "success");
	$log[] = Array("text" => "Inserting events in database...", "type" => "success");
	$success_num = 0;
	$error_num = 0;
	/*! inserting events in database */
	for ($i = 1; $i <= count($events); $i++) {
		$event = $events[$i];
		$query ="DELETE FROM events";
		$query .= "INSERT INTO events VALUES (null, ";
		$query .= "'".mysql_real_escape_string($event["start_date"])."', ";
		$query .= "'".mysql_real_escape_string($event["end_date"])."', ";
		$query .= "'".mysql_real_escape_string($event["text"])."', ";
		$query .= "'".mysql_real_escape_string($event["rec_type"])."', ";
		$query .= "'".mysql_real_escape_string($event["event_pid"])."', ";
		$query .= "'".mysql_real_escape_string($event["event_length"])."')";
		$res = mysql_query($query, $link);
		if (mysql_error() == "") {
			$success_num++;
		} else {
			$error_num++;
			$log[] = Array("text" => "Some error occured during event inserting (".mysql_error().", [ QUERY:  {$query} ])", "type" => "error");
		}
	}

	mysql_close($link);



