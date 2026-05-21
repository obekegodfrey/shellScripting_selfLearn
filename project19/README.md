# Shell scripting to create a service to monitor disk

- We want to create a service in linux system which will monitor the disk usage every 2 mins and store the information in a log file.

- What is service in Linux?
In easy terms, a service is a program or application in linux that runs or expects to run in the background. That is, it is running without the need for the user to be aware of it all the time. Generally, a Linux service has the following characteristics: No graphical interface.

- UNIT: Name of the service
- LOAD: To know if it is loaded in the memory
- ACTIVE: State in which it is(High level) can be active, reloading, inactive, failed, activating, deactivating.
- SUB: State of activation(Low level) can be in one of the following states: dead, closed, failed, inactive or running.
- Description: Brief description of the service.

- The [Unit] section consists of description, documentation details etc.

- [Service] section defines the service type, username, group, what to do in failure, restart timeout. The main is 'ExecStart' which says to start our script file. You can also define 'ExecStartPro' to define anything before the actual script file. 'Syslogidentifier' is the keyword to identity our service in syslog. Similarly, ExecStop is the instruction to say what to do to stop the service.

- [Install] section is used to define different levels of target in system.