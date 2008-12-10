#!/usr/bin/perl

use strict;
use warnings;

use HTML::Revelation;

# -----------------------------------------------

my($reveal) = HTML::Revelation -> new
(
 caption          => 1,
 comment          => "DBIx::Admin::CreateTable's POD converted to HTML with fancy-pom2.pl",
 css_output_file  => '/home/ron/httpd/prefork/htdocs/assets/css/local/CreateTable.css',
 css_url          => '/assets/css/local/CreateTable.css',
 html_output_file => '/home/ron/httpd/prefork/htdocs/CreateTable.html',
 input_file       => '/home/ron/httpd/prefork/htdocs/misc/CreateTable.html',
);

$reveal -> run();
