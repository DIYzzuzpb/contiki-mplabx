#!/bin/sed -f

#We are removing names of output files 
s/\ -[oO].*$//

#We are removing all arguments except message formats (in double quotes) 
s/\ -[a-zA-Z][^ ]*//g
s/\ --[a-zA-Z][^ ]*//g
s/--pass1//g


#We are replacing double percents into single ones
s/%%/%/g

#We are fixing warnings and error messages formats
s/"--warnformat=/--warnformat="/g
s/"--msgformat=/--msgformat="/g
s/"--errformat=/--errformat="/g
