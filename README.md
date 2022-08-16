# JulianSSC
Scripts to automate mundane SSC tasks

### - **FindAndReplace.ps1**
This is a script that will update your FreeFileSync configs with a new day's directory

Place in the directory containing the config files
Right click and select 'Run with PowerShell'
You will be prompted to enter the old day, and then the new day
These should both be directory names

eg. if you are updating from Wednesday to Thursday, as the second and third days of a conference
your directories will probably be named '02 Wednesday' and '03 Thursday'

So '02 Wednesday' will be the old day you need to enter
and '03 Thursday' will be the new day you need to enter

Close and re-open FFS if it was already open.
Your FFS configs are now updated, and you can start pushing presentations out.


### - **pptGenSimple.ps1**
This script will generate dummy presentation files for your conference
(Note: this script only generates files for one room and one day at a time)

Copy the script into the directory where you want to create the dummy files.
Right click and select 'Run with PowerShell'

You will first be prompted to enter the day and then the room the dummys are for
The file names will include these inputs, so enter them as you want them in the file names
eg. 'Mon' and 'Rb 6-8'

Next you will be prompted to enter the times and surnames for the presenters
Enter the time e.g '0900' for 9:00am, then press enter
Enter the corresponding surname, then press enter again

You will now be prompted to enter another time and name if needed
If not, you can enter 'done' and the program will exit.

Your dummy ppt files should now be created.
Move the script to the next directory you need to create dummy files for
Please remove this script from the directory once completed so it doesn't get pushed out to room PCs


### - **Run YouTube-DL.bat**
This script automates running the commandline YouTube downloader
(Included in YouTube-DL directory from secure drive)

Ensure YouTube-DL and ffmpeg are installed as per the instructions on the Secure drive

Double click to run script
Paste your video URL and press enter to start download

Once complete you will be prompted to enter 'y' if you want to download another video
or 'n' to close the program

'p' can be entered to print the ASCII art again
