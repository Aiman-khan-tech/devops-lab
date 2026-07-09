#!/bin/bash
echo "Shell Practice"
echo "Hello, World!"
echo "This is a shell script for practice."
echo "Let's do some basic operations."
echo "Current directory: $(pwd)"
echo "Listing files:"
ls -l
echo "Creating a new directory called 'practice_dir'"
mkdir practice_dir
echo "Changing into the new directory"
cd practice_dir
echo "Creating a new file called 'practice_file.txt'"
touch practice_file.txt
echo "Writing some text into the file"
echo "This is a practice file." > practice_file.txt
echo "Displaying the contents of the file"
cat practice_file.txt
echo "Going back to the previous directory"
cd ..
echo "Removing the practice directory"
rm -r practice_dir
echo "Shell practice completed!"
