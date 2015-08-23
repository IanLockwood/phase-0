# 1.1 Think About Time Reflection
In this lesson I explored a bit of everything, because it all seemed pretty interesting. I looked at time boxing, the Pomodoro technique, the Fogg method, mindfulness, the author’s intro to How To Learn Ruby the Hard Way, and I read a lot on flow and getting into the zone.

Time boxing is a method of splitting work into distinct periods of time and stopping or breaking at the end of that period, as opposed to working until the project is done. The theory goes that by time boxing, one avoids fatigue, distraction, and a lack of morale that would ultimately hurt a project and make it take longer.

I currently mentally yell at myself to focus until I finish a project, which obviously doesn’t work. I do think I can employ many of these techniques and I’ve put together a trial phase zero work plan to help me mange my time and follow through:
- I’m trying out the Pomodoro Technique – 25 minutes on, 5 minutes off.
- I’m starting to introduce helpful habits via the Fogg method as detailed in his Tedx talk, by introducing very tiny habits associated with inevitable triggers and growing those habits over time.
- I’m experimenting with different ways to achieve flow and get in the zone. So far, truly understanding the task and using a kind voice with myself while easing into heavy focus are helping. Also, the pomodoro technique has helped a lot with this; knowing that there’s an end (or 5-minute break) in sight really helps me to jump right in and lose myself in the project.

# 1.2 The Command Line Reflection
1. A shell lets me interact directly with my operating system through a command line interface (CLI) as opposed to the GUI. Bash is the specific shell I use on OS X, and is used on Linux as well. 

2. The most challenging thing in this material for me was just overcoming how intimidating Terminal seemed to me. Turned out it wasn’t very complex or scary at all.  

3. I was able to successfully use all of the commands! A few gave me some trouble; specifically I got stuck when I tried to write specific paths starting with “C:” and then with “Macintosh HD”. I eventually learned that all I needed was to type “/”. This gave me a lot of trouble when I was trying to copy files from the desktop to my “temp” directory.  

4. Some are important because they are core/basic, like pwd, ls, .., and cd. Others are important because they are powerful, like wildcard matching (*) because you can affect tons of files at once, or grep for searching through files. We didn’t really get to it other than being told to research it on our own, but I have a suspicion that xargs will be very important. I’ll definitely have more of a sense of what’s important when I learn a bit more.  

5. 
  * pwd – print working directory – shows you where you are in the command line.
  * ls – list directory – shows you everything in a directory, i.e. files and directories.
  * mv – move a file/directory – this is more like renaming than moving.
  * cd – change directory – navigate deeper into directories; very handy, the best way to get around.
  * ../ - move up a level in directories, to the parent directory
  * touch – makes a new, empty file in your current directory
  * mkdir – make directory – make a new, empty directory in your current directory
  * less – shows you the contents of a file in a new window (as opposed to cat, which just prints it out in the current window
  * rmdir – removes a directory
  * rm – removes a file
  * help – gives the user help with/more info on commands

# 1.3 Forking and Cloning
Creating a new repository is easy. A repository is like a new folder on your computer that will hold all of the sub-folders and files for your project. It's as simple as using mkdir in your command line (and I'm pretty sure you could do it that way if you wanted); just log into github, hit the "+" in the top right corner, and select "new repository". That's it!

To fork a repository to yourself, just navigate to it on github, hit the fork button in the top right corner, and select your profile. You would want to fork a repository to make changes to it without affecting the master repository. Later, you would merge these changes. Forking only creates an online copy, however. To work offline (which you do want to do)...

Clone it! Copy the clone URL on the right side of the page, then access your command line. In the command line type "git clone [url]", replacing "[url]" with your copied clone URL. Again, you'd want to do this to work on your own copy offline. Then later you can commit (save a changed version of) the file with your changes.

I didn't have many struggles setting up git and github; the interfaces are pretty easy to follow. I was fuzzy on the exacts of forking though. I didn't quite get that you can fork from someone else to yourself. But now I do! Also, I'm a little intimidated to explore my own offline copies of repositories in the command line, but I'm ready.