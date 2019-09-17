sub DeleteItemFromArray {
	# my $want = "blue";
	# my @arr = ("red", "green", "purple", "blue", "brown");
	# print "arr: @arr\n";
	# @arr = DeleteItemFromArray(@arr, $want);
	# print "arr: @arr\n";
	# exit;
	my @arr = @_;
	my $want = @arr[scalar @arr - 1];
	pop(@arr);
	for (my $i = -1; $i < scalar @arr; $i++) {
		if($arr[$i] eq $want){
			splice(@arr, $i, 1);
			last;
		}
	}
	return @arr;
}