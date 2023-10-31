#!/bin/bash

menu() {
    echo "Welcome"
    echo "1. Security password"
    echo "2. Version"
    echo "3. Quit"
}

make_choice() {
    choice=$1
    # Choice 1
    if [ $choice -eq 1 ]; then
        attempt=3
        while [ $attempt -ne 0 ]; do
            read -p "Password: " passwd
            echo "Incorrect! Try again"
            attempt=$((attempt - 1))
        done

        exit 0
    fi

    # Choice 2
    if [ $choice -eq 2 ]; then
        # Print 2 version
        echo "Version0.2"
        echo "Version0.3"
        check=true
        while [ $check = true ]; do
            read -p "" file_cated
            if [ -e "$file_path" ]; then
                cat "$file_path"

            elif [ "$file_cated" == "quit" ]; then
                check=false
                exit 0
            else
                echo "No file or directory. If you want to quit, type 'quit'"
            fi
        done
    fi

    # Choice 3
    if [ $choice -eq 3 ]; then
        exit 0
    fi
}

while true; do
    menu
    read -p "" getin
    if [ $getin -ge 1 ] && [ $getin -le 3 ]; then
        make_choice $getin
    else
        echo "Invalid choice, Try again"
    fi
done