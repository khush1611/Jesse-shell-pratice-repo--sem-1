#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.
echo "hello, welcome to the calculator program"

# Keep prompting the user for input unitl they exit theprogram.
while true; do 
  # Then, display a menu that outlines the possible operations:
  # Add
  # Subtract
  # Exit

  echo "Please make a selection:"
  echo "Add"
  echo "Subtract"
  echo "Exit"

    # Then, capture the user selection.
    read selection

    case $selection in
      # If the selection matches a supported operation, execute the operation.
      "Add")
      echo "Please provide the first number"
      read first_number

      echo "Please provide the second number"
      read second_number

      echo "The sum of $first_number and $second_number is:"
      expr  $first_number + $second_number
      ;;

      "Subtract")
      echo "Please provide the first number"
      read first_number

      echo "Please provide the second number"
      read second_number

      echo "The difference of $first_number and $second_number is:"
      expr  $first_number - $second_number
      ;;

      "Exit")
      echo "Visit us again soon. ~~~~~~~~ Stay safe, Stay healthy ~~~~~~~~"
      exit 0 
      ;;

      # If the selection does not match a support operation, display an error message.
      *)
      echo "invalid selection made: $selection"
      echo "Please make a selection from the mentioned lists only"
      echo "give it a try again"
      ;;

    esac

done