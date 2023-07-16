@echo off
mkdir .\assets
robocopy .\cstrike .\assets *.wad /XO /PURGE
robocopy .\cstrike\models .\assets\models *.mdl /XO /PURGE /S
robocopy .\cstrike\sound .\assets\sound *.wav *.mp3 /XO /PURGE /S
robocopy .\cstrike\sprites .\assets\sprites *.spr *.txt /XO /PURGE /S
robocopy .\cstrike\maps .\assets\maps *.bsp *.txt *.res /XO /PURGE /S
robocopy .\cstrike\overviews .\assets\overviews *.bmp *.txt /XO /PURGE /S
robocopy .\cstrike\gfx .\assets\gfx *.tga *.bmp *.pcx /XD vgui shell /XO /PURGE /S
pause
