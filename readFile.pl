#!/usr/bin/perl

# Simple program showing how to read contents of a file

use strict;
use warnings;

use Path::Tiny;
use autodie;

my $dir = path("~", "Desktop", "programming", "perl", "perl-examples", "temp");
my $file = $dir->child("file.txt");

# Reads entire content of file
my $content = $file->slurp_utf8();
print"Entire Content: \n";
print"$content\n";
# IO:File object to read from
# utf8 encoding
my $file_handle = $file->openr_utf8();

# Read in line at a time
print"Reading line for line\n";
while ( my $line = $file_handle->getline() ) {
	print $line;
}
