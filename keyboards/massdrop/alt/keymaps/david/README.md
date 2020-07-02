# getting started

## setup build env

```bash
source /david/py3.8_env/bin/activate
pip install qmk

qmk setup
```

## create a new keymap

```bash
qmk new-keymap -kb massdrop/alt
```

## compile

```bash
qmk compile -kb massdrop/alt -km david
```

## flash firmware to the keyboard

download `mdloader_linux` and `applet-flash-samd51j18a.bin` from https://github.com/Massdrop/mdloader/releases and put them in the same folder

press `MD_BOOT` to put the keyboard into DFU (bootloader) mode

```bash
sudo ./mdloader_linux --first --download /david/projects/qmk_firmware/.build/massdrop_alt_david.hex --restart
```

## debug

```bash
sudo ./hid_listen
```
