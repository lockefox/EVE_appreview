#! /mu/bin/perl

##################################################
#
#		USE
#
##################################################
use strict ; 
use warnings;
use HTTP::Request::Common qw(POST);
use XML::Simple;
use Time::Local;
use Data::Dumper;
use LWP::Simple;
use CGI;
use XML::Writer;
use POSIX;

##################################################
#
#		GLOBALS
#
##################################################
my $path = `pwd`;
my $corpID = ;
my $corpVcode = ;
my $standingFile = "standing.xml";
