#!/bin/bash

# get script directory
WD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# get user input
JDK_8_112=$1

# check arguments
function usage {
cat << EOF
Usage: $0 /path/to/jdk1.8.0_112/

EOF
  exit -1
}

if [ "$JDK_8_112" == "" ] ; then
  echo "error: path to JDK not specified!"
  usage
  exit -1
fi

# path to the Java binary
JAVA="${JDK_8_112}/bin/java"

echo "-> Launching with security manager..."
echo " -- when exploiting the vulnerability, the sanbox check is bypassed:"
$JAVA -Djava.security.manager -cp "${WD}/bin/" Exploitation
echo " -- when NOT exploiting the vulnerability, the sanbox check is executed:"
$JAVA -Djava.security.manager -cp "${WD}/bin/" NoExploitation

echo "-> done."
