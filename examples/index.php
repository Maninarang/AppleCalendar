<?php
mysql_connect('localhost','root','');
mysql_select_db('icscalendar');
require_once '../vendor/autoload.php';

use ICal\ICal;
$select=mysql_query('select faccatid,icsurl from icslinks where icsurl !=""');
$countresult=mysql_num_rows($select);
if($countresult>0)
{
	while($row=mysql_fetch_array($select))
	{
$ical = new ICal($row['icsurl'], array(
    'defaultSpan'           => 2,
    'defaultWeekStart'      => 'MO',
    'skipRecurrence'        => false,
    'useTimeZoneWithRRules' => false,
));
?>
<div class="container-fluid">


    <?php
        $events = $ical->eventsFromInterval('7 days');
        if ($events) echo '<h4>Events in the next 7 days:</h4>';
        $count = 1;
    ?>
    <div class="row">
    <?php
    foreach ($events as $event) : ?>
        <div class="col-md-4">
            <div class="thumbnail">
                <div class="caption">
                    <h3><?php
					
                        $dtstart = new \DateTime('@' . (int) $ical->iCalDateToUnixTimestamp($event->dtstart));
						$description= $event->description;
						$datetime=$dtstart->format('Y-m-d H:i');
                       // echo $event->summary . ' (' . $dtstart->format('d-m-Y H:i') . ')';
						$insert=mysql_query("insert into events(faccatid,date,summary) value ('".$row['faccatid']."','$datetime','$description')");
                    ?></h3>
                    <?php echo $event->printData() ?>
                </div>
            </div>
        </div>
    
    <?php
    endforeach
    ?>
    </div>


</div>
<?php
}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <title>PHP ICS Parser example</title>
    <style>.caption { overflow-x: auto }</style>
</head>
<body style="background-color: #eee">

</body>
</html>