sub GetRow {
  # my @row = GetRow("column", "table", "where_if");
  # print $row[0];
  # exit;

  my $columns = "$_[0]";
  my $table = "$_[1]";
  my $where = "$_[2]";
  my $conn = scalar @_ > 3 ? $_[3] : $dbc;

  my @buffer = ();
  my $s = "
    SELECT
      $columns
    FROM
      $table
    WHERE
      $where
    LIMIT 1
  ";
  my $q = $conn -> prepare($s);
  $q -> execute() or echo("$s Query Execute Error!\n");
  while (my @row = $q -> fetchrow_array()){
    @buffer = @row;
  }
  return @buffer;
}