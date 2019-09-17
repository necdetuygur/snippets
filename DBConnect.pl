use DBI;
sub DBConnect {
  my $host = $_[0];
  my $database = $_[1];
  my $user = $_[2];
  my $pw = $_[3];
  my $DBIconnect = DBI->connect("dbi:mysql:$database:$host", $user, $pw,
  {
    RaiseError => 0,
    PrintError => 0,
    mysql_enable_utf8 => 1
  }) or echo("MySQL Connection Error!\n");
  return $DBIconnect;
}