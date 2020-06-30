#!/usr/bin/perl

# Simple programming validating an email

use strict;
use warnings;

use Email::Valid;

my $email = 'user@email.com';

unless(Email::Valid->address($email)) {
	print "Sorry, $email is not valid";
} else {
	print "The $email is valid\n";
}


