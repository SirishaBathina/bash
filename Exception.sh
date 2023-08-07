#!/bin/bash
perform_operation() {
    # Simulating an error by dividing by zero
    result=$((10 / 0))
    echo "Result: $result"
}
trap 'echo "An error occurred. Exiting..."; exit 1' ERR
trap 'echo "Script was interrupted. Exiting..."; exit 2' INT
echo "Starting the script..."
perform_operation
echo "Script completed successfully."
trap - ERR INT
echo "Cleanup or additional tasks after successful execution."
