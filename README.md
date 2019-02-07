# 1. Project Introduction
The purpose of this project is to create a RFID or NFC triggered device that plays audio files. The primary user of this project is young learners that need assistive technologies. Use case examples will be for literary education in which a learner could benefit from hearing words or phrases spoken aloud. Further uses could include communication devices for people who may have difficulty speaking.

# 2. Design
This project is designed with the intent that public schools with limited budget can duplicate the efforts with minimal expense or knowledge of technology. The completed system will run with no keyboard or mouse, using only the RFID reader as input. The only output will be the audio, no monitor.

# 3. Hardware List
* RFID reader - [Amazon link](https://www.amazon.com/gp/product/B07B7H6CQ2/ref=ppx_yo_dt_b_asin_title_o03__o00_s00?ie=UTF8&psc=1) - This RFID reader connects through USB and behaves like a keyboard. Whatever the ID of the card being scanned, it will be entered in as if typed. The linked device appears to be a commonly copied Chinese manufactured device, so there are many others available on Amazon that appear to be identical other than branding.
* 125Khz RFID cards - [Amazon link](https://www.amazon.com/gp/product/B01M1L7NHI/ref=ppx_yo_dt_b_asin_title_o02__o00_s00?ie=UTF8&psc=1) - The previously linked reader works with 125Khz RFID cards. Smaller RFID tags are available and would work well for embedding in small toys.
* [Raspberry Pi 3 Model B+](https://www.raspberrypi.org/products/raspberry-pi-3-model-b-plus/) - [Amazon link](https://www.amazon.com/Raspberry-Pi-RASPBERRYPI3-MODB-1GB-Model-Motherboard/dp/B01CD5VC92/ref=sr_1_4/130-2520141-0674123?ie=UTF8&qid=1549577301&sr=8-4&keywords=raspberry+pi+3+model) - [Adafruit link](https://www.adafruit.com/product/3775) - Any Linux capable single board computer  with USB ports and a way of producing audio should function. This project will use the 3.5mm jack, but HDMI or USB audio would work just as well.
* Micro SD card - Capacity is up to you. A single gigabyte would work, however this is also where all audio files will be stored. If your project will have only a dozen small audio files, the capacity could be very small, however 8Gb micro SD cards are inexpensive and common. [Raspberrypi.org includes instructions](https://www.raspberrypi.org/documentation/installation/installing-images/) for downloading and imaging the micro SD card for use.

# 4. Software List
* [Raspbian Stretch Lite](https://www.raspberrypi.org/downloads/raspbian/) - This is the Linux operating system which will be run on the Raspberry Pi. The desktop version is larger and this project will not need or use the graphical user interface. This is the only piece of software that will need to be acquired prior to beginning setting up the system. Everything else will be downloaded later.
* pico2wave
* ~~ffmpeg~~

# 5. Setting up the Raspberry Pi
The Raspberry Pi will need to be connected to an HDMI capable monitor, an Ethernet connection to the Internet ([wifi is an option as well](https://www.raspberrypi.org/documentation/configuration/wireless/wireless-cli.md)), and a keyboard, then powered up through its micro USB port. The default username and password is:

> user: pi         
> password: raspberry

~~First, update the system's current software.~~

~~sudo apt-get update    ~~
~~sudo apt-get dist-upgrade~~

~~Further information can be found on the [Raspberry Pi website's article about updating](https://www.raspberrypi.org/documentation/raspbian/updating.md).~~

~~Installing software that will be used later:~~

~~> sudo apt-get install libttspico-utils ffmpeg~~
