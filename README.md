# i3lock-fancy-dualmonitor

This is an i3lock bash script that takes a screenshot of the desktop, blurs the background and adds a lock icon and text for each monitor.

![screen shot of lockscreen](https://raw.githubusercontent.com/meskarune/i3lock-fancy/dualmonitors/screenshot.png)

<br>

## Dependencies

* <s>[i3lock-color-git](https://github.com/eBrnd/i3lock-color)</s>
* [i3lock-color-git](https://github.com/Arcaena/i3lock-color) - this is a fork of i3lock-color that is kept up to date with i3lock
* imagemagick
* bash
* awk
* utils-linux
* wmctrl (optional)
* xdotool (optional)
* scrot (optional)

<br>

## Installation

To install i3lock-fancy-dualmonitor manually, git clone the repository, checkout
the dual monitors fork branch and run the make file.:

    git clone <this repo fork>
    cd i3lock-fancy
    sudo make install

> Note: To uninstall i3lock-fancy-dualmonitor execute "sudo make uninstall"

<br>

## Usage

    i3lock-fancy-dualmonitor [options]

```
Options:
    -h, --help              This help menu.
    -d, --desktop           Attempt to minimize all windows before locking.
    -g, --greyscale         Set background to greyscale instead of color.
    -p, --pixelate          Pixelate the background instead of blur, runs faster.
    -f, --font <fontname>   Set a custom font.
    -t, --text <text>       Set a custom text prompt.
    -l, --listfonts         Display a list of possible fonts for use with -f/--font.
                            Note: this option will not lock the screen, it displays
                            the list and exits immediately.

    --                      Must be last option. Set command to use for taking a
                            screenshot. Default is 'import -window root'. Using 'scrot'
                            or 'maim' will increase script speed and allow setting
                            custom flags like having a delay.
```
example: ```i3lock-fancy-dualmonitor -gpf Comic-Sans-MS```

<br>

### Extras

Use this with xautolock to automatically lock the screen after a set time.

Systemd Unit file (edit for your own use):

```
[Unit]
Description=Lock the screen automatically after a timeout

[Service]
Type=simple
User=<Your User>
Environment=DISPLAY=:0
ExecStart=/usr/bin/xautolock -time 5 -locker /usr/bin/i3lock-fancy-dualmonitor -detectsleep

[Install]
WantedBy=graphical.target
```
