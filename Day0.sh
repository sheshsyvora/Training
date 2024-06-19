# Write a shell script which will execute the following set of tasks:
# Create a folder named ‘sample’  in your ‘home’ directory


mkdir sample


# Inside ‘sample’ folder, create a file called ‘sample.txt’


cat > sample.txt


# Add the following content to the file: 
# Hi! This is just a sample text file created using a shell script.

-> cat >> sample.txt
Hi! This is just a sample text file created using a shell script.



# Print the contents of the file. 

-> cat sample.txt



#Print the number of occurrences of letter ‘t’ in ‘sample.txt’

-> grep -o -i 't' sample.txt | wc -l


# Change the owner's permissions to allow all the operations on the file. ( Read, Write, Execute )

-> chmod u+rwx sample.txt


#Write a command to append following content in sample.txt file:
#Hi! This is just another sample text added to the file.

-> cat >> sample.txt
Hi! This is just another sample text added to the file.



#Change the group permissions to allow only read operation.

-> chmod g=r sample.txt



#Change all users permission to deny any sort of access to ‘sample.txt’

-> chmod u-rwx sample.txt



#Write a command to create a file named sample2.txt with content similar to that of sample.txt

-> cat sample.txt >> sample2.txt



#Add some random 1000 lines in the sample.txt file.

-> for i in {1..1000}; do echo "Random Lines $i" >> sample.txt; done



#Write a command to print the top 50 lines of the file

-> head -50 sample.txt



#Write a command to print the bottom 50 lines of the file

-> tail -50 sample.txt



#Add 5 files in the same folder named: prog1.txt, prog2.txt, program.txt, code.txt, info.txt

-> touch prog1.txt prog2.txt program.txt code.txt info.txt



#Write the command to list files which have “prog” in its name

-> ls | grep 'prog'



#Create an alias of the command used at step o. Such that following command - `list prog`, should have the same output as of command at step o.

-> alias prog_list='ls | grep "prog"'




#What is the difference between the source and sh commands?

-> Source - The source command reads and executs commands from the file specified as its argument in the current shell. It does not create a new process, any changes made by the scripts persist in the current shell sessions.
- We execute the process in our current terminal.
- Since the program will be executed in current terminal we don't nedd to give it execution permission.

-> sh - The sh command starts a new subshell and executes the script in this new shell. The subshell is a separate process from the current shell, any changes made by the script are confined to the subshell and so not effect the parent shell.
- A new process is created because shell makes an exact copy of itself, this child process has the same environment as its parent. Only the process ID no is different. this process is called forking.




#Create two files “a.txt” and “b.txt”. Write a command to get the difference between the contents in two files.

-> diff a.txt b.txt              // compare the contents of two files and display the difference between them
-> cmp a.txt b.txt               // compare the two files bytes by bytes




What is the difference between ls and lsof?

-> ls - list directory contents of files and directories
-> lsof - It means list open file, provides a list of files that are opened, list files opened by the specified process or by the specific user




Create directories ./hello/world (World dir is inside hello dir) using mkdir command where neither hello or world exists. It should be a single command without the use of &&. 

-> mkdir -p hello/world




How can you permanently set an environment variable using a bash terminal?

-> Steps
1. Open terminal
2. Edit '~/.bashrc' file using a text editor  - nano ~/.bashrc
3. export VARIABLE_NAME="value" - add this line at the bottom of the file
4. save the file and edit the text editor
5. To make the changes take effect, either restart our terminal or run - source ~/.bashrc



You have some process running on a port in your system. How can you view and then kill the process from the terminal?

-> View a process
sudo lsof -i : <PORT NO>

this will list out all the process with that PORT NO

Now to kill a process we have to look for the process id (PID)

- Kill the process
sudo kill PID

-> cd Desktop
mkdir sample
