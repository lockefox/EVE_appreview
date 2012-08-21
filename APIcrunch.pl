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
my $OS;
my $ID;
my $vCode;
##################################################
#
#		ENV SETUP
#
##################################################

unless (-d "tmp"){
	mkdir "tmp" or die "cannot create tmp folder";
}
unless (-e "SQL"){
	die "SQL files missing";
}

#if ($^O != "linux"){
#	$OS=1;
#}
#else{
#	$OS=0;
#}

my %queries =(
	#"filename", "apipath"
	"skills", "",
	"wallet", "",
	"mail", "",
	"standing", "",
);
##################################################
#
#		MAIN
#
##################################################



##################################################
#
#		LINARGS
#	Reads in Line Arguments
#
##################################################
sub linargs{

}
##################################################
#
#		char_load
#	Queries for all valid characters on account
#
##################################################
sub char_load{

}
##################################################
#
#		DL_API
#	Downloads All relevant APIs and saves XMLs
#
##################################################
sub dl_API{

}