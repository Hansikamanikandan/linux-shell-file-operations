if [ $# -eq 0 ]
then
    echo "Usage: sh user.sh username"
else
    who | grep -w "$1"

    if [ $? -eq 0 ]
    then
        echo "User logged in"
    else
        echo "User not logged in"
    fi
fi
