#!/bin/bash

# Function to perform math operations
perform_math() {
    case $2 in
        +) result=$(($1 + $3)); echo "Result: $result";;
        -) result=$(($1 - $3)); echo "Result: $result";;
        \*) result=$(($1 * $3)); echo "Result: $result";;
        /)
            if [ $3 -eq 0 ]; then
                echo "Error: Cannot divide by 0."
                exit 1
            fi
            result=$(($1 / $3))
            remainder=$(($1 % $3))
            echo "Result of division: $result, Remainder: $remainder";;
        *)
            echo "Error: Invalid operator. Use +, -, *, / only."
            exit 1
    esac
}

# Check command line arguments
if [ "$#" -eq 3 ]; then
    perform_math $1 $2 $3
    exit 0
elif [ "$#" -gt 3 ]; then
    echo "Error: Too many arguments. Usage: ./math_operations.sh [operand] [operator] [operand]"
    exit 1
fi

# Interactive input
read -p "Would you like to do some math? (yes/no): " choice

while [ "$choice" == "yes" ]; do
    read -p "Enter the 1st operand: " operand1
    read -p "Enter the operator (+, -, *, /): " operator
    read -p "Enter the 2nd operand: " operand2

    perform_math $operand1 $operator $operand2

    read -p "Would you like to do more math? (yes/no): " choice
done

if [ "$choice" == "no" ]; then
    echo "Welcome back anytime! Script finished on $(date)."
fi

exit 0
