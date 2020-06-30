#!/usr/bin/perl

# Simple program showing how to write to a file

use strict;
use warnings;

use Path::Tiny;
use autodie;

# path of directory where file will be located
my $dir = path("~", "Desktop", "programming", "perl","perl-examples","temp");

# file is child of directory with name 'file.txt'
my $file = $dir->child("file.txt");

# IO::File object that you can write to
# has encoding UTF8
my $file_handle = $file->openw_utf8();

my @list = ('a', 'list', 'of', 'lines');

foreach my $line (@list) {
	# add line to file
	$file_handle->print($line . "\n");
}
