# Math Operations Bash Script

This Bash script performs basic arithmetic operations (addition, subtraction, multiplication, and division) on two integers. This script provides a simple and interactive way to perform basic arithmetic operations.

## Requirements
 - If no arguments are entered on the command line, the script assumes that inputs will be entered interactively.
 - If 3 arguments are entered on the command line, the script provides the answer.
 - If 1 or 2 or more than 3 arguments are entered on the command line, an error message is echoed, explaining what must be entered, and the script immediately exits.
 - In the case of division, the script checks that the divisor is not 0 (cannot divide by 0).
 - In the case of division, the script provides both the result of the division operator and the remainder (modulo).
 - If 3 arguments are not entered on the command line, the script first asks, "Would you like to do some math?"
 - If the user answers "yes," the script asks to enter, via 3 separate requests, the 1st operand, the operator, and then the 2nd operand.
 - If the user answers "no," the script gives the user a polite message welcoming them back to do some math anytime and tells them when the script finished (by using the "date" command).
 - A function is declared that performs the math.
 - This function is called only once if the 3 inputs appear on the command line. The script exits immediately afterward.
 - The function is continuously called until you reply "no" to the question "Would you like to do some math?" (implemented using a while loop).
 - A case statement is used to implement various mathematical operations, with a default case for a bogus operator (not +, -, /, or *). The default case gives the user an error message.

## Usage
 - To run the script, use the following command: ./math_operations.sh [operand] [operator] [operand]
 - If no arguments are provided, the script will prompt you interactively.

## Examples
 - ./math_operations.sh
 - ./math_operations.sh 5 + 3

## Notes
 - Ensure that the script has execute permission (chmod +x math_operations.sh).
 - This script assumes valid inputs, and error handling is provided for incorrect input formats.
