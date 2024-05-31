echo "PPLGPWN - Designed for lgwebtvs! Ported by Kodeine, with luv <3"
echo "Updated by llbranco"
interface=eth0
firmware=1100
stage1=/media/internal/downloads/PPLGPwn-main/stage1.bin
stage2=/media/internal/downloads/PPLGPwn-main/stage2.bin
cd /media/internal/downloads/PPLGPwn-main
chmod +x ./pppwn

# Send initial notification
luna-send -f -n 1 luna://com.webos.notification/createToast '{"message": "<b>PPLGPwn!</b><br/>Jailbreaking PS4!"}'

# Run pppwn in a loop to handle retries and send notification
while true; do
  output=$(./pppwn --interface $interface --fw $firmware --stage1 $stage1 --stage2 $stage2 --auto-retry 2>&1)
  echo "$output"
  if echo "$output" | grep -q "Retry after 5s"; then
    luna-send -f -n 1 luna://com.webos.notification/createToast '{"message": "<b>PPLGPwn!</b><br/>Retrying in 5 seconds..."}'
  else
    break
  fi
  sleep 5
done

# Send final notification
luna-send -f -n 1 luna://com.webos.notification/createToast '{"message": "<b>PPLGPwn!</b><br/>PS4 SUCCESSFULLY JAILBROKEN!!"}'
