1.
```
cd /media/internal/downloads
wget https://github.com/physics111232/PPLGPwn/archive/refs/heads/main.zip
unzip main.zip
cd PPLGPwn-main
chmod +x ./start.sh
./start.sh

cd /media/internal/downloads/PPLGPwn-main

```
2.
to make it run on the boot
edit this file to make the script runs on boot
```
/var/lib/webosbrew/startup.sh
```
3.
insert this lines in the last line (or after sshd server right under the "fi" if you prefer) save and reboot
```
cd /media/internal/downloads/PPLGPwn-main
./start.sh
```
if you prefer to start the exploit by pressing a key
follow Modded's warfare step-by-step


### Alternative installer
> [!WARNING]
> One command Installer (unstable/beta/no warranty in any way/do at your own risk)
>
> if you are brave (or lazy) you can test our beta installer (no guarantee)
```
curl -fsSL https://raw.githubusercontent.com/llbranco/PPLGPwn/master/install.sh -o install.sh && chmod +x install.sh && ./install.sh
```


### Steps to fix bus error: (Thanks to Modded Warfare)
you can check if the cpu archtecture of your tv is aarch64
```
uname -m
```
download the new binary
```
wget https://nightly.link/xfangfang/PPPwn_cpp/workflows/ci.yaml/main/aarch64-linux-musl.zip
```
unzip it
```
unzip aarch64-linux-musl.zip
```
```
tar -xzvf pppwn.tar.gz
```


### Connect your PS4 to your TV through the Ethernet port, and go in your PS4 set up LAN > PPPoE, and the exploit should be working!

!! This exploit is made for TV's with the armv7, I'm unsure if it works on any other different arch, to know your TV chip architecture run ```uname -m``` !!

!! This exploit stage2 runs SiStRo's payload !!

## Plans ( https://github.com/zauceee/PPLGPwn )
- Installer ( probably something based on https://github.com/stooged/PI-Pwn installer )
- Start on boot
- Notifications on your tv (config on install)
- Retry on error
- Route TV WiFi to PS4
