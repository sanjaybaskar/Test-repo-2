# Calculator script to perform simple calculation actions

#! /bin/bash

add (){
    result=$(($1 + $2))
    echo "The result of $1 + $2 = result"
}

subtract (){
    result=$(($1 - $2))
    echo "The result of $1 - $2 = $result"
}

multiply (){
    result=$(($1 * $2))
    echo "The result of $1 * $2 = $result"
}

divide (){
    result=$(($1 / $2))
    echo "The result of $1 / $2 = $result"
}

echo "Simple calculator"
read -p "Enter the number1: " num1
read -p "Enter the number2: " num2

echo "Enter the operator (+, -, *, /): "
read operator

case $operator in 
    "+") add $num1 $num2
    ;;
    "-") sub $num1 $num2
    ;;
    "*") multiply $num1 $num2
    ;;
    "/") divide $num1 $num2
    ;;
    *) echo "Invalid operator"
    ;;
esac

