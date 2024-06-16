#! /bin/bash

# Add two user input values using function

add () {

    echo -n "Enter the first number: "
    read first
    echo -n "Enter the Second number: "
    read second
    third=`expr $first + $second`
    echo "The sum of the two numbers is $third"
}
add

----------------------------------------------------------------
# Add two user input values using 2 functions

add () {
    first=$1
    second=$2
    echo "The sum of two numbers is $(( $first + $second))"
}

apply () {
    read -p "Enter the First number: " first
    read -p "Enter the second number: " second
    add $first $second
}

# calling function apply and it will call the function add
apply

-----------------------------------------------------------------------

#function software to install taking input from user.............

software () {
    read -p "Type which software you want to install: " soft

    sudo apt-get install -y ${soft}

    if [ $? -eq 0 ]; then
        echo "Package ${soft} is successfully installed"
    else
        echo "Package ${soft} is NOT successfully installed"
    fi
}

# Calling function
software


---------------------------------------------------------------------------

#this will print the information stored in /etc/passwd based on name you given

echo -n "Enter the name of  the user in /etc/passwd you want to print: "
read user
echo "---------------------------------------------------------------"
cat /etc/passwd | grep "${user}"

# if user is present it exit-status of last command 0 otherwise the exit-status is non-zero
if [ $? = "0" ]
then
echo "user is present"
else
echo "user is  not  present"
fi

read -p "Enter the Group name: " grp

cat /etc/group | grep "${user}"

if [ $? = "0" ]
then
echo "user belongs to the group"
else
echo "user not belongs to the group"
fi


===========================================

# This is a new program
