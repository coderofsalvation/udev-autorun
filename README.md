udev-autorun
============

udev rule which automatically runs a shellscript on drives when plugged in (or asks for action like windows)

<img src="http://www.zimagez.com/full/9a5e7896ee90b1c4329a618ec91320d44349ed20d82907cf6924c0fb25bf0a9d7a6b5e3d2639837ae08c16c817e3357f43453a65fce044fb.php"/>

### WHY ###

I wanted a idiotproof way to just run scripts on pluggable drives (aka the infamous autorun).
Udev seems very attractive at first, but before you know many hours are spent to figure out this beast.
I use many sd/smartmedia cards while Im making music with my hardware devices, so I wanted synchronisation and other
repetitive tasks to be automated: sometimes automatically, sometimes optional.

This is a simple shellscript which facilitates all this.

### HOW ###

With `udev-autorun` you can just add several autorun scripts on your usb device, and automatically run or prompt tasks to the user. Its modular so the possibilities are unlimited

## INSTALL / GETTING STARTED ###

Do the following as *nonroot* user with sudo-privileges:

    git clone https://github.com/coderofsalvation/udev-autorun.git
    cd udev-autorun
    ./install.sh

Now start adding an example autorunmodule to your drive 'MySDCard'

    udev-autorun init /media/MySDCard example

Now re-plugin your usb stick and see what happens.
If you are not running an graphical webenvironment (homeserver/headless) all modules are executed, else
you will see something like this:

<img src="http://www.zimagez.com/full/26f029e08c8da8f8329a618ec91320d46ba3073632b24e1f6924c0fb25bf0a9d7a6b5e3d2639837a5daed7dd5767d26afed5ff687232e99b.php"/>

This means you can choose which action you want to perform, or just simply exit.

### EXAMPLE APPLICATIONS ###

* automatically copy pdf's from a certain folder to your ebook (upon connect)
* automatically copy mp3's from a certain folder to your mp3player
* automatically gather stats from internet and write as html/pdf to your ebook/hpc/etc
* automatically backup files from your usbdrives/flashcard to your harddrive
* automatically copy samples from your harddrive to your flashcard (for liveacts etc)
* trigger your coffeemachine when somebody plugs in a special usbdevice

### CONCLUSION ###

Udev-autorun is your portal to bash shellscripting which really makes the unthinkable possible.
