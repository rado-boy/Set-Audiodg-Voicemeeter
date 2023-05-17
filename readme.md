This basic script sets "Audiodg.exe" process priority to 'High' and CPU affinity to single-core (CPU 2) as recommended in this article to help avoid issues with Voicemeeter: https://voicemeeter.com/quick-tips-stutters-crackling-sound-robot-voice/

Notes:
- Must be run as admin to work  
- Does not persist after reboot
  - set this script up as a scheduled task to run at boot or log on of any user to remedy (not tested yet)
    - Make sure the task is able to run as a user with admin priviledges.  See this link to set up a Powershell script as a Windows scheduled task: https://o365reports.com/2019/08/02/schedule-powershell-script-task-scheduler/