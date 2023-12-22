#!/usr/bin/expect -f
# Spawn the interactive process (replace 'your_command' with the actual command)
spawn chef env
# Expect a specific pattern (replace 'Password:' with the expected prompt)
expect -re ".*"
# Send the password (replace 'your_password' with the actual password)
send "yes\r"
# Wait for the command to finish
expect eof