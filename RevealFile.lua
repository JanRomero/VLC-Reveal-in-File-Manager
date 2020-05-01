-- Shows the file that is currently playing in
-- Windows Explorer and maybe Mac OS Finder.
-- I have no idea whether this works on Mac OS.
--
-- Put this script into either of these directories:
--     %ProgramFiles%\VideoLAN\VLC\lua\extensions\
--     %ProgramFiles(x86)%\VideoLAN\VLC\lua\extensions\
--     %APPDATA%\VLC\lua\extensions\
--     /Applications/VLC.app/Contents/MacOS/share/lua/extensions/
--
-- Restart VLC for it to take effect.
-- “Reveal in File Manager” should appear in the “View” menu.


function descriptor()
    return { title = 'Reveal File',
             version = '0.0.0',
             author = 'Jan Romero',
             url = 'https://github.com/JanRomero/VLC-Reveal-in-File-Manager',
             shortdesc = 'Reveal in File Manager',
             description = 'Reveals the current file in the file manager',
             scope = 'local', }
end


function activate()
    local uri = vlc.input.item():uri()
    --vlc.msg.info(uri)

    if uri:sub(1, #'file://') ~= 'file://' then
        return
    end

    --I don’t know how to detect the platform,
    --so let’s just fire off both commands.
    os.execute('explorer.exe /select,"'..uri..'"')
    os.execute('open -R "'..uri..'"')

    vlc.deactivate()
end