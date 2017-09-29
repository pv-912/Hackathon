schtasks /create /sc minute /mo 1 /tn loop_start /tr "C:\Main\request.bat" /f
schtasks /run /tn loop_start /I