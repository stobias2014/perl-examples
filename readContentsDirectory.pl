#!/usr/bin/perl

# Simple program showing hot to read the contents of a directory

use strict;
use warnings;

use Path::Tiny;

# Comma separated directory structure
my $dir = path('~', 'Desktop','programming', 'cpp');

# Iterate over the contents of directory
my $iter = $dir->iterator;
while (my $file = $iter->()) {
	
	# check if it is a directory and skip
	next if $file->is_dir();
	
	print"File Name: ";	
	# print the file name and path
	print"$file\n";
	
	print"File Content:";
	system("cat", "$file");
	print"\n";
}


