# VLC Reveal in File Manager

A VLC extension script that opens a file manager and selects the file that VLC is currently playing.

Shows the file that is currently playing in
Windows Explorer and maybe Mac OS Finder.
I have no idea whether this works on Mac OS.

Put the script into either of these directories:
* %ProgramFiles%\VideoLAN\VLC\lua\extensions\
* %ProgramFiles(x86)%\VideoLAN\VLC\lua\extensions\
* %APPDATA%\VLC\lua\extensions\
* /Applications/VLC.app/Contents/MacOS/share/lua/extensions/

Restart VLC for it to take effect.
“Reveal in File Manager” should appear in the “View” menu.