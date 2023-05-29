## Image Sourcer

Image sourcer is a project I made to provide a random background image each time I log on. I did this because I get tired of having the same background all the time.

## Index

- [Installation](#installation)
- [Task Scheduler](#task-scheduler)
- [Done](#done)

## Installation

1. Install this script like any other github project using the green code btn and download zip.
2. After doing so unzip the files and move the parent directory into your desired folder. I reccomend making a new folder in C:\Users\yourUser\ just for this script, so you wont delete it on accident.

3. Then open your code editor or notepad and open the .ps1 file.
4. Put your [Unsplash API access key](https://unsplash.com/developers) as the access key variable.
5. Change the parameters to your likings, for example mountains, nature, people or water.

6. Last up, change the outputPath on line 30 to the folder of your liking, just make sure you dont already have an item with that name in that folder, or it will be overwritten.

## Task Scheduler

**Create a task**
1. Open task scheduler
2. Navigate to the right sided Actions tab and press "Create Task Basic..."
3. Give it a name and (optional) description
4. Press next and chose "When I log on"
5. Press next again and select "Start a program"
6. Press next again and browse for the run.bat file, LEAVE THE ARGUMENTS AND START IN BLANK
7. Finish up and test the schedule:

**Test the task**
1. Find your added task in the task list (top center)
2. Click it once and on the right side press Run
3. You should see a command window open up and after some time your wallpaper is changed.

## Done

If all worked out you're now set. Try the task by restarting your pc!
