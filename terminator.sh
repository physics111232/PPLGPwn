kill $(ps aux | grep '[p]ppwn' | awk '{print $2}')
kill $(ps aux | grep '[s]tage1' | awk '{print $2}')
kill $(ps aux | grep '[s]tage2_11.00' | awk '{print $2}')
kill $(ps aux | grep '[s]tart' | awk '{print $2}')
luna-send -f -n 1 luna://com.webos.notification/createToast '{"message": "<b>Terminated All Runnning Scripts</b>"}'
