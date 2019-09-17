sub QueryExecute {
  my $s = "$_[0]";
  my $conn = scalar @_ > 1 ? $_[1] : $dbc;
  my $q = $conn -> prepare($s);
  $q -> execute() or echo("$s Query Execute Error!\n");
  return $q;
}