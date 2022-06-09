<?php
date_default_timezone_set("America/Chicago");
$date = exif_read_data($argv[1],"EXIF");
$date = $date["DateTimeOriginal"];
$time = date_parse_from_format("Y:m:d H:i:s",$date);
$time = mktime($time["hour"],$time["minute"],$time["second"],$time["month"],$time["day"],$time["year"]);
touch($argv[1],$time,$time);
?>
