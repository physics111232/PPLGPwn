# PPLGPwn (llbranco mod) only for fw1100
Based on: https://github.com/zauceee/PPLGPwn

A method of executing PPPwn through rooted LGTV's

>[!IMPORTANT]
> me and [zauceee](https://github.com/zauceee) (aka kodeine) decided to work and focus on just one project, we have the same goals and working together we will have much more to offer than separately.
> 
> If you liked the project, consider following our most updated version at:
https://github.com/zauceee/PPLGPwn
> 
> I will keep this project open but only as an option for just 1 firmware (11.00) or maybe for testing proposes.

>`LIMITED SUPPORT` to [Fox Electronics](https://foxelectronics.rs/), u may need to [manually replace the pppwn binary](https://nightly.link/xfangfang/PPPwn_cpp/workflows/ci.yaml/main/aarch64-linux-musl.zip) if it is aarch64
>
> (thx to **Aljelja** for the feedback)

This method is using the C++ version of PPPwn, made by xfangxfang [PPPwn_cpp](https://github.com/xfangfang/PPPwn_cpp)

> [!CAUTION]
> **This project is not compatible with Roku tv, Amazon Fire Stick, Samsung tv or Android tv**
> .
> 
> **Will it ever be compatible?**
> 
> I'm not sure, I can't guarantee it, but I don't exclude the possibility
> 
> I can't test it (and consequently cant port to it) 'coz I don't have access to any of these devices :(
> 

## Articles
[Wololo](https://wololo.net/2024/05/14/pplgpwn-hack-your-ps4-with-your-tv/),
[Tom's Hardware](https://www.tomshardware.com/video-games/playstation/new-playstation-4-jailbreak-accomplished-using-select-lg-smart-tvs-running-webos),
[Hackaday](https://hackaday.com/2024/05/16/you-can-now-jailbreak-a-ps4-with-an-lg-tv/),
[Adrenaline](https://www.adrenaline.com.br/games/tvs-da-lg-com-jailbreak-podem-desbloquear-o-ps4/),
[Tudo Celular](https://www.tudocelular.com/tech/noticias/n221413/lg-tv-jailbreak-desbloqueio-ps4.html),
[Guru3d](https://www.guru3d.com/story/exploiting-lg-smart-tvs-to-jailbreak-playstation-4-a-new-methodology/),
[Hackster](https://www.hackster.io/news/this-hack-is-a-game-changer-9e6cf59f82ed),
[Kotaku](https://kotaku.com/ps4-playstation-4-jailbreak-hack-lg-smart-tv-method-1851485229)



## I installed this version. Is there any compatibility issue with switching to the version from his repository?
absolutely not, you can change if you wish.

After all, zauceee (aka kodeine) and I will be working together on the same repository

## If you liked my project and want to help me, consider buying me a coffee
<a href='https://ko-fi.com/J3J4Y2DQ4' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://storage.ko-fi.com/cdn/kofi2.png?v=3' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a> [![Support me on Patreon](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Fshieldsio-patreon.vercel.app%2Fapi%3Fusername%3Dllbranco%26type%3Dpatrons&style=flat-square)](https://patreon.com/llbranco)

It provides a new way of jailbreaking your PS4, using a rooted LGTV.
For more information of which firmwares are supported, visit the link above.

## Requirements
- Rooted LGTV
- Ethernet cable
- Device to connect to the TV thru ssh (You can use a phone) or https://github.com/webosbrew/dev-manager-desktop
- default ssh password: `alpine`
- [follow this if you can't log in](https://gist.github.com/throwaway96/e811b0f7cc2a705a5a476a8dfa45e09f)


## How can I do it?

use one of this step-by-step guides

[![guide](https://img.youtube.com/vi/BIeljeDINqk/0.jpg)](https://www.youtube.com/watch?v=BIeljeDINqk)[![guide](https://img.youtube.com/vi/zYoesrUsIj8/0.jpg)](https://www.youtube.com/watch?v=zYoesrUsIj8)


and follow the instructions down bellow:

Firstly you'll need to root your LGTV, the root itself it supported by a couple of models, check both exploits to see if your TV is capable of doing so, more steps on how to root it and activate SSH aswell are available there:
### Root my TV: https://rootmy.tv/
### Dejavuln: https://github.com/throwaway96/dejavuln-autoroot

Secondly, after you jailbreak your own TV (ironic on how we use a jailbroken TV to jailbreak another device lol), you will need to follow the following steps thru ssh:

1.
```
cd /media/internal/downloads
wget https://github.com/physics111232/PPLGPwn/archive/refs/heads/main.zip
unzip main.zip
cd PPLGPwn-main
chmod +x ./start.sh
./start.sh
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
