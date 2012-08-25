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
my $OS=0;
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
unless (-d "SQL"){
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

my $dbug =0;	#Debug mode disabled by default
				#Debug will SAVE all xmls and write to screen
##################################################
#
#		MAIN
#
##################################################
&linargs;


##################################################
#
#		LINARGS
#	Reads in Line Arguments
#
##################################################
sub linargs{
	while (my $args = shift (@ARGV)){
		if ($args =~ /-debug/){
			$dbug=1;
		}
		elsif(lc($args) = /-id/){
			(undef, $ID) = split(/id=/,$args);
		}
		elsif(lc($args) = /-vcode/){
			(undef, $vCode) = split(/vcode=/,$args);
		}
		elsif($args = /-h/ or $args= /-help/){
			&help;
			exit;
		}
	}
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
sub help{

}