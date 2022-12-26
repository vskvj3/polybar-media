### Show currently playing media in polybar
- This is a simple script to display currently plying media in polybar, without directly using mpd
- Depends on playerctl

### Usage
clone the repository
```
git clone https://github.com/vskvj3/polybar-media.git
cd polybar-media
```
Copy playing.sh into /bin folder  
```
mkdir $HOME/bin
cp playing.sh $HOME/bin/
```
Add following module to polybar config file
```
[module/now-playing]
type = custom/script
label =  %output%
exec = $HOME/bin/playing.sh 2>/dev/null
interval = 1
click-left = playerctl play-pause
```
Use the module
```
[bar/mainbar-i3]
...
modules-center = now-playing
...
```



