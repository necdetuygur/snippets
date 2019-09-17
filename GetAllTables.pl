sub GetAllTables {
  # my @temp = GetAllTables();
  # my $i = -1;
  # while (++$i < scalar @temp) {
  # 	if(GetTableHasColumn($temp[$i], "fk")){
  # 		print("VAR");
  # 	}
  # }
  my @buffer = ();
  my $s = "SHOW TABLES;";
  my $q = $dbc -> prepare($s);
  $q -> execute() or echo("$s Query Execute Error!\n");
  while (my @row = $q -> fetchrow_array()){
    push @buffer, $row[0];
  }
  return @buffer;
}