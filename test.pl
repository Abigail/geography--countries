# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

######################### We start with some black magic to print on failure.

# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

BEGIN { $| = 1; print "1..12\n"; }
END {print "not ok 1\n" unless $loaded;}
use Geography::Countries qw /:DEFAULT :LISTS :FLAGS :INDICES/;
$loaded = 1;
print "ok 1\n";

######################### End of black magic.

# Insert your test code below (better if it prints "ok 13"
# (correspondingly "not ok 13") depending on the success of chunk 13
# of the test code):

print "Germany"     eq country ( "DE") ? "ok 2\n" : "not ok 2\n";
print "Netherlands" eq country ("NLD") ? "ok 3\n" : "not ok 3\n";
print "Mali"        eq country ( 466 ) ? "ok 4\n" : "not ok 4\n";

print "Europe"      eq country ( 150, CNT_F_ANY) ? "ok 5\n" : "not ok 5\n";

my $e = country 150;
print defined $e ? "not ok 6\n" : "ok 6\n";

my @list = country "United Kingdom";
print $list [CNT_I_COUNTRY] eq "United Kingdom" ? "ok 7\n" : "not ok 7\n";
print $list [CNT_I_CODE3]   eq "GBR"            ? "ok 8\n" : "not ok 8\n";

my @codes = code3;
print @codes == 230 ? "ok 9\n" : "not ok 9\n";

eval {my $c = &country (1, 2, 3)};
print $@ =~ /^Too many arguments/ ? "ok 10\n" : "not ok 10\n";

eval {my $c = country 1, "foobah"};
print $@ =~ /^Illegal second argument/ ? "ok 11\n" : "not ok 11\n";

print "1.1" eq $Geography::Countries::VERSION ? "ok 12\n" : "not ok 12\n";
