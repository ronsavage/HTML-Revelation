#!/usr/bin/env perl

use strict;
use warnings;

use Local::Config;

use HTML::Revelation;

# -----------------------------------------------

my($config) = Local::Config -> new -> config;
my($reveal) = HTML::Revelation -> new
(
 caption          => 1,
 comment          => "DBIx::Admin::CreateTable's POD converted to HTML with my pod2html.pl",
 css_output_file  => "$$config{savage_net_au_dir}/Perl-modules/css/CreateTable.css",
 css_url          => '/assets/css/local/CreateTable.css',
 html_output_file => "$$config{savage_net_au_dir}/Perl-modules/html/CreateTable.html",
 input_file       => "$$config{savage_net_au_dir}/Perl-modules/html/DBIx/Admin/CreateTable.html",
);

$reveal -> run();
