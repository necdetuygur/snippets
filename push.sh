other="other";

cd /c/xampp/htdocs/;
for d in */; do
	source=$d;
	replace="";
	source=${source////$replace};
	echo "";
	echo "";
	echo "";
	echo "";
	echo $source;
	cd /c/xampp/htdocs/$source;
	git config credential.helper store;
	git remote remove $other;
	git remote add $other https://gitlab.com/username/$source.git;
	git push -u $other --all;
	git remote remove $other;
done

cd ~/source/repos/EAPrinter;
for d in */; do
	source=$d;
	replace="";
	source=${source////$replace};
	echo "";
	echo "";
	echo "";
	echo "";
	echo $source;
	cd /c/xampp/htdocs/$source;
	git config credential.helper store;
	git remote remove $other;
	git remote add $other https://gitlab.com/username/$source.git;
	git push -u $other --all;
	git remote remove $other;
done

# read -n 1 -p "Press any key to continue"
