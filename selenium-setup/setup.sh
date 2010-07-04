#!/bin/bash
# Last modified $Id$
# $HeadURL$
# -*- sh -*-


# * 

# ghttp://seleniumhq.org/download/
# http://www.spacevatican.org/2008/9/27/selenium-and-firefox-3
# wget http://release.seleniumhq.org/selenium-remote-control/1.0.1/selenium-remote-control-1.0.1-dist.zip

# * 

#   466  cd '/Users/taylormonacelli/Documents/projects/git_proj/lstest/testls/selenium-remote-control-1.0.1/selenium-perl-client-driver-1.0.1/'
#   467  perl Makefile.PL

# * Waitr alternative

# http://wiki.openqa.org/display/WTR/Install+Watir

# http://watir.com/


# sudo gem update --system
# sudo gem install firewatir
# sudo gem install safariwatir

# * Webdriver is part of selenium now

# http://code.google.com/p/selenium/wiki/GettingStarted?redir=1


ver=selenium-remote-control-1.0.3.zip

wget -ncP sel http://selenium.googlecode.com/files/$ver
cd sel
unzip *.zip