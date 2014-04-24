#!C:/strawberry/perl
use strict;
use 5.010;

print "Hello World Perl \n";
say "using say in Perl!!!";
print "fubar";

my @arr = (1, 2, 3, 4, 5);
my %hash = ('a' => 1, 'b' => 2, 'c' => 3);

foreach my $i (keys %hash) {
	say("key: " . $i . " values: " . $hash{$i});
}