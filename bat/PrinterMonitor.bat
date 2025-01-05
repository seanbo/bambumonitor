@echo off

REM URL should be in format rtsp://username:password@ip_or_hostname_of_camera/stream# where the # is either 1 or 2 (highdef or low def)
set camurl="rtsp://foo@bar.com:foobarbaz@192.168.1.2/stream1"
set monitordir="/Users/foo/bin"
set monitorfile="monitor.txt"

REM Start ffplay
start ffplay -window_title "A1 Printer Monitor" ^
		-an -left 75 -top 120 -x 640 -y 360 ^
		-reorder_queue_size 1000 -max_delay 4000 -rtsp_transport tcp ^
		-i %canurl% ^
		-vf "drawtext=textfile=%monitordir%/%monitorfile%:x=10:y=10:fontfile=/Windows/Fonts/Tahoma.ttf:fontsize=12:fontcolor=white:box=1:boxcolor=black@0.5:boxborderw=20:reload=1,setpts='1/(30*TB) * (N + 0.05 * sin(N*2*PI/30))'"

exit

REM Start Power Automate Flow "Bambu Status"
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('^+{F}')