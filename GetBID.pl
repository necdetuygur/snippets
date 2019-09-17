sub GetBID {
  my $rand = substr time()."".rand(9999), -4, 4;
  my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime(time);
  my $ymd = sprintf "%.4d%.2d%.2d", $year+1900, $mon+1, $mday;
  my $his = sprintf "%.2d%.2d%.2d", $hour, $min, $sec;
  my $time = "$ymd\_$his\_$rand";
  return $time;
}