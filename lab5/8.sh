filename="file.txt"

if [ -e "$filename" ]; then
    echo "File $filename exists."

    if [ -r "$filename" ]; then
        echo "File $filename has read permission."
    fi

    if [ -w "$filename" ]; then
        echo "File $filename has write permission."
    fi

    if [ -x "$filename" ]; then
        echo "File $filename has execute permission."
    fi
else
    echo "File $filename does not exist."
fi