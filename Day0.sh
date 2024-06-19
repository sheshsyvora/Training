# Create a folder named ‘sample’ in your ‘home’ directory
mkdir ~/sample

# Inside ‘sample’ folder, create a file called ‘sample.txt’
touch sample.txt

# OR - cat > sample.txt

# Add the following content to the file:
#Hi! This is just a sample text file created using a shell script.
cat >> sample.txt Hi! This is just a sample text file created using a shell script.

# Print the contents of the file.
cat sample.txt

# Print the number of occurrences of letter ‘t’ in ‘sample.txt’
grep -o -i 't' sample.txt | wc -l

# Change the owner's permissions to allow all the operations on the file. (Read, Write, Execute)
chmod u+rwx sample.txt


#Write a command to append following content in sample.txt file:
#Hi! This is just another sample text added to the file.
cat >> sample.txt Hi! This is just another sample text added to the file.


# Change the group permissions to allow only read operation.
chmod g=r sample.txt

# Change all users permission to deny any sort of access to ‘sample.txt’
chmod u-rwx sample.txt

# Write a command to create a file named sample2.txt with content similar to that of sample.txt
cat sample.txt >> sample2.txt

# Add some random 1000 lines in the sample.txt file.
for i in {1..3}; do echo "Random Line $i" >> sample.txt; done

# Write a command to print the top 50 lines of the file
head -50 sample.txt

# Write a command to print the bottom 50 lines of the file
tail -50 sample.txt

# Add 5 files in the same folder named: prog1.txt, prog2.txt, program.txt, code.txt, info.txt
touch prog1.txt prog2.txt program.txt code.txt info.txt

# Write the command to list files which have “prog” in its name
ls | grep 'prog'

# Create an alias of the command used at step o. Such that following command - `list prog`, should have the same output as of command at step o.
alias list_prog='ls | grep "prog"'

