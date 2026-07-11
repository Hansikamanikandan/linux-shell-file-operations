if [ $# -eq 0 ]
then
    echo "Usage: sh copy.sh sourcefile destinationfile"
else
    cp "$1" "$2"
    echo "File copied"
fi
