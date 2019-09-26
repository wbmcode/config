# My Godforsaken Windows Configs
## Getting Bash commands
I did not install windows subsystem for linux. I just have Git bash, and MSYS2. The separate MSYS2 is probably unnecessary, but i think it's the only way i got GCC working. don't really remmeber

SO, try installing Git bash, and adding the following to your path:
* Git\cmd
* Git\bin
* Git\usr\bin

Now you've got `ls`, `git`, and other GNU goodies in your regular old Windows Command Prompt

> If you need GCC and Git bash GCC doesn't work or doesn't exist, you'll probably need MSYS2.

## Getting Aliases
It's possible to create something similar to .bashrc on windows by doing the following
1. Create a `.bat`/`.cmd` file with DOSKEY commands (mine is `alias.cmd`)
2. Run regedit and go to `HKEY_CURRENT_USER\Software\Microsoft\Command Processor`
3. Add String Value entry with the name AutoRun and the full path of your .bat/.cmd file (i put mine in `C:\Users\lewys\alias.cmd`)

this will run the `.bat`/`.cmd` every time you open a new cmd shell, and DOSKEY commands can map phrases to certain commands

