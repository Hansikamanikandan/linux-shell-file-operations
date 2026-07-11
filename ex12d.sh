if [ $# -eq 0 ]
then
    echo "Usage: sh city.sh filename city"
else
    file=$1
    city=$2

    if [ ! -f "$file" ]
    then
        touch "$file"
    fi

    grep -w "$city" "$file"

    if [ $? -eq 0 ]
    then
        echo "City already added"
    else
        echo "$city" >> "$file"
        echo "City added"
    fi
fi
