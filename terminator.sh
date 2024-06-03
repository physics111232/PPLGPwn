kill $(ps aux | grep '[t]est1' | awk '{print $2}')
kill $(ps aux | grep '[t]est2' | awk '{print $2}')
