
check_postgres.pl.html: check_postgres.pl

	pod2html check_postgres.pl > check_postgres.pl.html
	@ perl -pi -e "s/<link.*?>//" check_postgres.pl.html
	@ rm -f pod2htmd.tmp pod2htmi.tmp

critic:

	perlcritic check_postgres.pl


test:

	@ prove t/*.t