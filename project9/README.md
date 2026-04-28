# Project to schedule a job to run at regular interval

- Schedule a job automatically to run at regular interval and check if docker service is down, if its down start the service. 

- Prerequisite:
  Crontab management in Linux

  ##  What is Crontab?
  - The crontab is alist of commands that you want to run on a regular schedule, and also the name of the command used to manage that list.
  Crontab stands for "*cron table,*" because it uses the job scheduler cron to execute tasks; cron itself is named after "chronos," the Greek word for time. cron is the system process which will automatically perform tasks for you according to a set schedule. The schedule is called the crontab, which is also the name of the program used to edit that schdeule. 
  
    Linux Crontab Format

  - Ex: MIN HOUR DOM MON DOW CMD

  . Crontab fields and Allowed ranges(Linux Crontab Syntax)

  |  Field  |  Description  |  Allowed Value  |
  | :.......| :.............| :..............|

  | MIN     |  Minute field |  0 to 59     |  
  | HOUR     |  Hour field |  0 to 23    |  
  | DOM    |  Day of Month |  1-31     |  
  | MON     |  Month field |  1-12    |  
  | DOW     |  Day of week |  0-6    |
  | CMD    |  Command | Any command to be executed    |   

  . ## Examples of Cron jobs. Scheduling a job For a Specific Time ## The basic usage of cron is to execute a job in a specific time as shown below. This will execute the Full backup shell script(full-backup) on 10th june 08:30AM. The time field uses 24 huors format. So, for 8AM use 8, and for 8PM use 20

  . 30 08 10 06 * /home/obekegodfrey/full-backup  


- crontab -l
- crontab -e

  * * * * * /home/obekegodfreyvicent/Desktop/DevOps_Practice/ShellScripting/project9/project9.sh > /dev/null



