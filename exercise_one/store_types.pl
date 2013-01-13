#!/usr/bin/env perl
#
# Exercise One; store stuff

use strict;       # We call these pragmas) Strict makes sure we declare stuff before using them; thus making sure perl knows exactly what we're doing
use warnings;     # Warnings will shout up at anything it reckons is stupid, or crap or likely to cause a bug


# We declare stuff properly
my $scalar;
my @array;
my %hash;

print "Working with scalars:\n\n";

$scalar = "This is some text. This can be any arbitrary thing, though. Like the number: ";
print $scalar;

$scalar = 54;
print $scalar;

$scalar = ". **In fact** this entire sentence (when printed) will be one line but actually three statements and made of three different scalar values\n";
print $scalar;


print "\n\n";
sleep 5;

# The above, when run, looks like:
# This is some text. This can be any arbitrary thing, though. Like the number: 54. **In fact** this entire sentence (when printed) will be one line but actually three statements and made of three different scalar values

# Now lets do something with arrays

print "Working with arrays:\n\n";

# We can put a load of data straight into our array:
@array = ( 'an entry', 'another entry', 'yet another entry', 'and again' );

# We can add some to the end:
push @array, 'our pushed entry';

# We can add to the start:
unshift @array, 'our un-shifted entry';

# We now have an array. To go through each item:
foreach $scalar (@array){
    print "ELEMENT IN ARRAY: $scalar \n";
}

print "\n\n";
sleep 1;

# We can get the item at an arbitrary point:
print "This is the item at position 3: $array[3]\n";
print "You may notice, as above, that this is actually the fourth item. This is because arrays " .
    "are what we call 'zero indexed'. This means the first item is not item '1' but item '0'\n";

print "\n\n";
sleep 1;

# We can also treat arrays as a queue; we can take items from either end, do something with it and then chuck it away:
print "Arrays as queues\n";
print "Item 0: ''$array[0]''\n";
print "Now we do a 'shift' and remove this item\n";
shift @array;
print "Now item 0 is ''$array[0]''\n";
