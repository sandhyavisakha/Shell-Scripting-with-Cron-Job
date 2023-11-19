Integrating Shell Script with Cron Job for Reporting AWS Resource Usage

Prerequisites

1. Create an EC2 Instance, SSH into it, and install AWS CLI
2. Using the "aws configure" command, set up the AWS Command Line Interface (CLI) with the necessary configuration details such as AWS access key, secret key, region, and output format.

Steps to Create Shell Script & Run a Cron Job

Step 1: Create a File
First, create a file to write the shell script using vim editor.

Step 2: Write a Shell Script
Write a shell script that will list EC2 instances, S3 buckets, and IAM users in the log file.

Step 3: Create a Log File
Create a log file that will later show the results of Cron Job.

Step 4: Execute the Script:
Change the permissions of the shell script file and execute it to see the results.

Step 5: Edit Crontab
To integrate the shell script with a cron job for automating AWS resource tracking, open the crontab file for editing using the "crontab -e" command.

Step 6: Schedule the Cron Job
To schedule the shell script, add an entry. For instance, add the next line to run your script every 3 hours as shown below (Replace your file name and path). Save and exit the editor, and the shell script will now be executed by the cron job at the designated intervals.

Step 7: Verify the Log File
Check the log file after a few hours to see what your script produced and if there are any errors.