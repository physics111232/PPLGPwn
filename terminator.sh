kill $(ps aux | grep '[p]ppwn' | awk '{print $2}')
kill $(ps aux | grep '[s]tage1' | awk '{print $2}')
kill $(ps aux | grep '[s]tage2_11.00' | awk '{print $2}')
kill $(ps aux | grep '[s]tart' | awk '{print $2}')
