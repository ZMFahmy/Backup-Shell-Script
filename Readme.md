# Overview

This backup script is designed to detect any changes in the source directory when running. If any sort of modification is detected, a backup directory is created in the backup directory. This directory will be named as the exact date and time the modification took place. It also limits the number of backup directories created to a certain number, which if passed will cause the program to overwrite the oldest of the backup directories.

## How to use

Simply open the Makefile. Under run-script:, there is the command sh backup.sh and then 4 different arguments, which are the source path, destination path, Interval seconds between backup check, and the max number of backups to be made. Fill in your desired arguments, then go to the terminal, go to the directory which contains the source and backup directories, then type the command make.

## Required installations

You just need to install the package which contains the make command. Run the following command in the terminal: sudo apt install make


