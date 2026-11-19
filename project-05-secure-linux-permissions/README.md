# Capstone Project 5 - Secure Linux Server Permissions

## Goal
Apply user-based access restrictions on a Linux server.

## Tasks Completed
- Created Linux users alice and bob.
- Created the secureteam group.
- Added alice to secureteam.
- Created a protected directory.
- Configured directory permissions to 770.
- Configured file permissions to 660.
- Tested allowed access for alice.
- Tested denied access for bob.

## Test Results
- Alice successfully accessed and wrote to the protected directory.
- Bob was denied read and write access.
- Group-based access control was verified.

## Commands and Permissions
- Group: secureteam
- Directory: /opt/secure-project
- Directory mode: 770
- File mode: 660

## Conclusion
Linux group ownership and permissions were used to enforce
access restrictions for authorized and unauthorized users.
