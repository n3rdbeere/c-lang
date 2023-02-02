#!/usr/bin/env perl
#===============================================================================
#
#         FILE: c-lang.pl
#
#        USAGE: ./c-lang.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
#         BUGS: none, nerdbeere wrote the code!
#
#       AUTHOR: nerdbeere
# ORGANIZATION: c-base e.V.
#      VERSION: 1.0
#      CREATED: 02/02/2023 08:42:15 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use feature 'say';

my $filename = <STDIN>;
chomp $filename;
if (open(my $fh, '<:encoding(UTF-8)', $filename)) {
  while (my $string = <$fh>) {
    chomp $string;

$string =~ tr/[A-Z]/[a-z]/;
$string =~ s/sch/c_/g;
$string =~ s/ö/o:/g;
$string =~ s/ü/u:/g;
$string =~ s/ä:/a:/g;
$string =~ s/ß/C/g;
$string =~ s/k/c/g;
$string =~ s/q/cw/g;
$string =~ s/z/C/g;
$string =~ s/s/c/g;
$string =~ s/x/cs/g;

say $string;
  }
} else {
  warn "Could not open file '$filename' you fool! $!";
}
