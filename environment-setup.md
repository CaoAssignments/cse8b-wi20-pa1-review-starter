# Environment Setup
There are weekly programming assignments in this course which require you to use a development environment to write and run your code. This document details how to access a development environment in different ways. You can work directly on a lab computer (which has the necessary dependencies installed), access the ieng6 server remotely through your own laptop (using SSH), or manually install the dependencies required for this quarter's assignments onto your own laptop.

## Login Info 
Find out your login info with the [ETS Account Lookup Tool](https://sdacs.ucsd.edu/~icc/index.php). 
It should be a `cs8bwi20__` account. The account password is the same as your regular TritonEd password. However, it's possible that you don't have this account. If that's the case, use your email username (the prefix before `@` in your ucsd email address).

If you are unable to login using the username and your password either in-lab or remotely, you may need to reset your password for your cs8b account at the above link or contact ETS to get it fixed. 

## Words of Advice
When working on your programming assignments, you can work locally (requires you to install Java 10 and a text editor) or remotely (SSHing into the ieng6 server). It is also much easier to work on the computers in the lab as you will not have to remotely connect to your ieng6 account or locally setup your environment on your own laptop.

Any development done locally means all bets are off: we are not responsible for how you install your software and for the possibility of lost points due to incorrectly installed programming languages. Points lost due to programming language and operating system differences are not regradeable. With that said, one advantage of programming locally is having a separate environment ready in case you lose internet access. Here are some tips on programming locally.

## Programming Locally on Mac/Linux
If you have Mac or Linux, you have a UNIX operating system. Just ensure you have the correct Java version. You will still need to transfer your code to ieng6, compile, and run on the school servers to make sure the programs work.

### Step 1. Install the JDK
* Download the `jdk-10.0.2_osx-x64_bin.dmg` JDK file from the [Java 10 archive](https://www.oracle.com/java/technologies/java-archive-javase10-downloads.html "Java 10 Archive"). Ensure you download the `jdk-10.0.2_osx-x64_bin.dmg` file, **not the jre-10.0.2_osx-x64_bin.dmg file**. Before the file can be downloaded, you must accept the license agreement, create an Oracle account, and verify your email address.
* From either the browser Downloads window or from the file browser, double-click the .dmg file to start it.
* A Finder window appears that contains an icon of an open box and the name of the .pkg file.
* Double-click the JDK 10.pkg icon to start the installation application.
* The installation application displays the Introduction window. Click Continue.
* The Installation Type window appears. Click Install.
* A window appears that displays the message: Installer is trying to install new software. Enter your password to allow this.
* Enter the Administrator user name and password and click Install Software.
* The software is installed and a confirmation window is displayed.
* After the software is installed, you can delete the .dmg file if you want to save disk space.
* Verify that Java 10 is correctly installed by opening up the Terminal application and typing `java -version`, which should output `java version "10.0.2"`.

### Step 2. Installing a Text Editor

#### Vim
Mac comes with Vim pre-installed. Simply open up Vim using the following instructions:
* Open the Terminal application.
* Use the `cd` command to navigate to the directory that contains the file you would like to view/edit.
* Enter `vim <filename>` into the terminal to open up Vim.

#### Atom
* Install Atom from the [Atom home page](https://atom.io/ "Atom home page").

## Programming Locally on Windows
**Due to the complexity of getting UNIX-oriented Java programs and file transfers to work on Windows, we HIGHLY recommend Windows users program remotely through SSH instead of locally.**

### Step 1. Install the JDK
* Download the `jdk-10.0.2_windows-x64_bin.exe` JDK file from the [Java 10 archive](https://www.oracle.com/java/technologies/java-archive-javase10-downloads.html "Java 10 Archive"). Ensure you download the `jdk-10.0.2_windows-x64_bin.exe` file, **not the jre-10.0.2_windows-x64_bin.exe file**. Before the file can be downloaded, you must accept the license agreement, create an Oracle account, and verify your email address.
* From either the browser Downloads window or from the file browser, double-click the .exe file to start it.
* Run the installer by clicking through the prompts until the installation is complete.
* The software is installed and a confirmation window is displayed.
* After the software is installed, you can delete the .exe file if you want to save disk space.
* Open up the Control Panel, go to *System and Security*, then *System*, and then *Advanced system settings*. A window will pop up. Select *Environment Variables...* in this new window.
* Under the *System Variables* section, select the variable named *Path* and press *Edit...* below. A new window should pop up.
* In this new window, press *New* and paste the location of the bin folder within where the JDK was installed into (ex. `C:\Program Files\Java\jdk-10.0.2\bin` etc.).
* Press *OK* on both pop up windows that were opened.
* Verify that Java 10 is correctly installed by opening up the Command Prompt application and typing `java -version`, which should output `java version "10.0.2"`.

### Step 2. Installing a Text Editor

#### Vim
* Install Vim from the [Vim download page](https://www.vim.org/download.php "Vim download page") by clicking on the link "Click this link to download the self-installing executable (using ftp)".
* From either the browser Downloads window or from the file browser, double-click the .exe file to start it.
* Run the installer by clicking *Next...* at each prompt without changing the default settings until the installation is complete.
* The software is installed and a confirmation window is displayed.
* After the software is installed, you can delete the .exe file if you want to save disk space.
* Open up the Control Panel, go to *System and Security*, then *System*, and then *Advanced system settings*. A window will pop up. Select *Environment Variables...* in this new window.
* Under the *System Variables* section, select the variable named *Path* and press *Edit...* below. A new window should pop up.
* In this new window, press *New* and paste the location of where Vim was installed into (ex. `C:\Program Files (x86)\Vim\vim82` etc.).
* Press *OK* on both pop up windows that were opened.
* Verify that Vim is correctly installed by opening up the Command Prompt application and typing `vim`, which should open up the Vim editor screen in the command prompt window.

#### Atom
* Install Atom from the [Atom home page](https://atom.io/ "Atom home page").

## Programming In-Lab (Recommended)
You may choose to work on the assignments in-lab. These labs are located in the basement of the CSE building (EBU3B). Our CSE 8B home base lab where you can find tutors is lab room B240 but feel free to sit in any lab. Find a computer in the CSE Basement and then login (to your `cs8bwi20` account). To open a Terminal, right click the desktop or within the file explorer and press "Open in Terminal". That will spawn a new shell for you.

## Programming Remotely (Recommended if you cannot go to the lab)
If you choose to program remotely (not directly on the lab computers), you can SSH into the lab machines. SSH allows you to access the ieng6 machines and use the shell on the ieng6 servers to work on your assignments. For UNIX machines, you can do so in the terminal with the following command: 
```bash
ssh -X cs8bwi20__@ieng6.ucsd.edu
```
where `cs8bwi20__` should be your account. See *Login Info* section above for finding your account username.
For Mac users, you may need to replace -X with -Y. This enables X11 Forwarding, which is required for graphical data like windows. However, Macs don't have X11 by default. Download XQuartz and install it. Restart your computer, launch XQuartz, and SSH in.  

Below are Youtube video tutorials on how to access remote servers through your Mac (click on the images):  
<a href="http://www.youtube.com/watch?feature=player_embedded&v=5ge1UrdZu0g
" target="_blank"><img src="http://img.youtube.com/vi/5ge1UrdZu0g/0.jpg" 
alt="XQuartz for Mac" width="500" height="300" border="3" /></a>
<a href="http://www.youtube.com/watch?feature=player_embedded&v=x--J2WdSdGE
" target="_blank"><img src="http://img.youtube.com/vi/x--J2WdSdGE/0.jpg" 
alt="SSH into ieng6 with X11 on Mac" width="500" height="300" border="3" /></a>

For Windows users, you may want to try downloading and installing MobaXTerm, which is a very convenient SSH client program. It comes with the networking protocols to both use the remote shell and to transfer files between your local Windows machine and the ieng6 lab machines. This program also takes care of X11 forwarding automatically.  

Below are Youtube video tutorials on how to use MobaXTerm (click on the images):  
<a href="http://www.youtube.com/watch?feature=player_embedded&v=LoGecCoNBys
" target="_blank"><img src="http://img.youtube.com/vi/LoGecCoNBys/0.jpg" 
alt="Downloading MobaXTerm for ieng6" width="500" height="300" border="3" /></a>
<a href="http://www.youtube.com/watch?feature=player_embedded&v=jdGHRLS6uIQ
" target="_blank"><img src="http://img.youtube.com/vi/jdGHRLS6uIQ/0.jpg" 
alt="Using MobaXTerm to log in" width="500" height="300" border="3" /></a>

(Optional) You may also want to see the entire Linux desktop remotely. The above provides individual windows only. To see the graphical desktop, Windows users can download VNCViewer. Mac has VNC built in. See:
https://acms.ucsd.edu/info/vncgnome.html \
We also have our own tutorial about using vncgnome [here](https://docs.google.com/document/d/1i_rg4RWo-_m9TcnAyNwJHhhQmgNG7UrLKP2qfezhB6k/edit "vncgnome tutorial"). This page suggests Windows users download PuTTY. MobaXTerm should also work in place of PuTTY. 

You can transfer files using the `scp` command (secure copy protocol).  
Below are YouTube video tutorials on how to transfer files from a different server to your own computer (click on the images):  
<a href="http://www.youtube.com/watch?feature=player_embedded&v=GKGm-sd2nw4
" target="_blank"><img src="http://img.youtube.com/vi/GKGm-sd2nw4/0.jpg" 
alt="scp command with ieng6" width="500" height="300" border="3" /></a>
<a href="http://www.youtube.com/watch?feature=player_embedded&v=yUYuc5eFSTc
" target="_blank"><img src="http://img.youtube.com/vi/yUYuc5eFSTc/0.jpg" 
alt="Transferring files in MobaXTerm" width="500" height="300" border="3" /></a>

Below, the different ways to set up your programming environment are discussed.
