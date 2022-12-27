#! /bin/sh
# dummy entry for unavailable filters
# GOVERNMENT END USERS: See Notice file in TranScript library directory
# -- probably /usr/lib/ps/Notice
# RCSID: $Header: psbad.sh,v 2.2 87/11/17 16:40:23 byron Rel $

# argv is: psbad filtername user host
prog=`basename $0`
filter=$1
printer=$2
user=$3
host=$4

cat <<bOGUSfILTER
%!
72 720 moveto /Courier-Bold findfont 10 scalefont setfont
(lpd: ${printer}: filter \"$filter\" not available [$user $host].)show 
showpage

bOGUSfILTER
exit 0
