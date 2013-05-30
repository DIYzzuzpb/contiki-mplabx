#!/bin/sed -f
#We are removing names of output files 
s/\ -[oO].*$//

#We are removing include paths
s/\ -I[^ ]*//g

#We are removing name of map file
s/\ -[mM][^ ]*//g

#We are replacing double percents into single ones
s/%%/%/g


#We are removing message formats
s/"--warnformat[^"]*"//g
s/"--msgformat[^"]*"//g
s/"--errformat[^"]*"//g
