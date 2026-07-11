if [ $# -eq 0 ]
then
    echo "Usage: sh ex12c.sh username"
else
    who | grep -w "$1"

    if [ $? -eq 0 ]
    then
        echo "User logged in"
    else
        echo "User not logged in"
    fi

    echo "Files ending with .ca are:"
    ls *.ca

    count=$(ls *.ca | wc -l)
    echo "Count is $count"
fi
