#!/bin/bash
# Use -gt 1 to consume two arguments per pass in the loop (e.g. each
# argument has a corresponding value to go with it).
# Use -gt 0 to consume one or more arguments per pass in the loop (e.g.
# some arguments don't have a corresponding value to go with it such
# as in the --default example).
# note: if this is set to -gt 0 the /etc/hosts part is not recognized ( may be a bug )

while [[ $# -gt 1 ]]
do
key="$1"

case $key in
    -t|--target)
    commit[0]="$2"
    shift # past argument
    ;;
    -b|--base)
    commit[1]="$2"
    shift # past argument
    ;;
    -c|--count)
    count=true
    shift # past argument
    ;;
    --default)
    DEFAULT=true
    ;;
    *)
            # unknown option
    ;;
esac
shift # past argument or value
done

echo TARGET COMMIT  = "${commit[0]}"
echo BASE COMMIT    = "${commit[1]}"
echo COUNT          = "${count}"
if [[ -n $1 ]]; then
    echo "Last line of file specified as non-opt/last argument:"
    tail -1 $1
fi
