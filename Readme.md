## [![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=plastic)](https://github.com/dwyl/esta/issues) <img alt="Custom badge" src="https://img.shields.io/endpoint?color=blue&style=plastic&url=https%3A%2F%2Fhits.dwyl.com%2Fbuilder555%2FPineSAM.json"> ![GitHub all](https://img.shields.io/github/downloads/builder555/PineSAM/total) ![Latest Release](https://img.shields.io/github/v/release/builder555/PineSAM)

![GitHub all](https://img.shields.io/github/downloads/ralim/IronOS/total)

<img src="./screenshot1.3.1.png" align="right" width="500" style="float:left">

# PineSAM

PineSAM = (Pinecil Settings and Menus)

Why focus on soldering when you can play with the settings instead? With this app you will have full control over your new shiny Pinecil V2 from your computer using bluetooth.


**NB**: No special browser permissions required

**NB**: This app needs the python backend to run on a computer, it CANNOT run entirely in the browser unlike Joric's UI.

<details>
  <summary>Full settings view</summary>
  <p>
    <img src="./full_settings1.3.1.png"/>
  </p>
</details>
<div style="clear:both;">&nbsp;</div>

## Features
- [x] Automatically detect Pinecil V2 over BLE
- [x] Get all settings from Pinecil
- [X] Modify settings and vaidate values before sending to device
- [X] Adjust temperature ranges based on C/F selection
- [X] Show hints toggle button for help messsages
- [X] Hide Minimum Voltage (per cell) when source is not battery.
- [X] Work View with: +/- buttons to change set temperature, live tip temperature, peak watts, live watts, input voltage.
- [X] Customizable Preset buttons to allow quick change to commonly used temperatures.
- [X] Backend runs locally on all major platforms/OS while the User Interface runs on your favorite browser.

## Requirements:
- python 3 (tested with 3.10)
- pipenv
- a browser

## Platforms
- [x] Windows
- [x] Mac
- [x] Linux
- [x] iphone
- [x] Android


## Mac/Linux 

### Install

```shell
git clone https://github.com/builder555/PineSAM
cd PineSAM/backend
pipenv install
chmod +x start.sh
```

### Run
```shell
# from inside the PineSAM/backend directory:
./start.sh
```

On a Mac http://localhost:8080/settings.html will open in your browser automatically. On linux you need to do it manually (for now).

For Debian 12 instructions, see [this post](https://github.com/builder555/PineSAM/discussions/47#discussion-4884758) (thanks [@scythefwd](https://github.com/scythefwd))


## Windows

If you already have python installed, you can skip to step 2.

1. Install Python: https://www.python.org/downloads
    * Check "Add python.exe to PATH" and select "Customize Installation"
    * Check "Add Python to environment variables" option
    * See a reference screen [here](https://github.com/builder555/PineSAM/discussions/7#discussion-4862766) Thanks to [River-b](https://github.com/River-b)
2. Download this repo: https://github.com/builder555/PineSAM/archive/master.zip
3. Unzip it
4. Run `start.bat` file inside the `backend` directory

---

## Remote access

You can access the settings remotely once the app is running (i.e, run from a phone).

* Find the [local IP address](https://lifehacker.com/how-to-find-your-local-and-external-ip-address-5833108) of the device running the app
* open http://\<ip-address\>:8080/settings.html on another device on the same network
* this works to run PineSAM on an iPhone or Android if you don't want to install python on the phone.

## Known issues

- bleak causes Python to crash on Mac: https://github.com/hbldh/bleak/issues/768
    * possible solution: give access to iTerm (or whichever terminal you use) to Bluetooth in Settings
- Pinecil not detected
    * possible solution: need to [flash](https://github.com/Ralim/IronOS/discussions/1518#discussioncomment-4866637) [BLE firmware](https://github.com/builder555/PineSAM/files/10797411/Pinecilv2_EN.zip)
- Setting change is not reflected on the soldering iron
    * some changes require entering the menu on the device itself (or power cycle after saving to flash) before appearing. [Example](https://github.com/Ralim/IronOS/issues/1560)

## Testing

Make sure you have `pipenv` installed.

```shell
# run inside 'backend' directory:
pipenv install --dev
pipenv run test
```

## References

- [Pinecil](https://wiki.pine64.org/wiki/Pinecil) - The Pinecil Wiki page
- [IronOS](https://github.com/Ralim/IronOS) - The OS running on this soldering iron
- [Pinecil Web UI](https://github.com/joric/pinecil) - A neat web-based UI, requires bluetooth browser support
- [Pinecil Authenticity Checker](https://pinecil.pine64.org/) - almost all AliExpress Pinecils are fake, check your V2!
