# Introduction
The purpose of this project is to create a simple, RFID triggered audio device for young learners who have a need for assistive technologies. Use cases will include literacy familiarity learning and communication assistance, such as using RFID cards to trigger: "I am hungry," The device will play audio files of any length, including songs or entire audiobooks. Furthermore, the project is intended to be as simple as possible requiring little technical ability and low in cost for public school districts that may not have resources to acquire commercial offerings of similar products.

Very brief video demonstrating the project can be found at [https://vimeo.com/321372901](https://vimeo.com/321372901).

# Hardware List
* RFID reader - [Amazon link](https://www.amazon.com/gp/product/B07B7H6CQ2/ref=ppx_yo_dt_b_asin_title_o03__o00_s00?ie=UTF8&psc=1) - This RFID reader connects through USB and behaves like a keyboard. Whatever the ID of the card being scanned, it will be entered in as if typed. The linked device appears to be a commonly copied Chinese manufactured device, so there are many others available on Amazon that appear to be identical other than branding.
* 125Khz RFID cards - [Amazon link](https://www.amazon.com/gp/product/B01M1L7NHI/ref=ppx_yo_dt_b_asin_title_o02__o00_s00?ie=UTF8&psc=1) - The previously linked reader works with 125Khz RFID cards. Smaller RFID tags are available and would work well for embedding in small toys.
* [Raspberry Pi 3 Model B+](https://www.raspberrypi.org/products/raspberry-pi-3-model-b-plus/) - [Amazon link](https://www.amazon.com/Raspberry-Pi-RASPBERRYPI3-MODB-1GB-Model-Motherboard/dp/B01CD5VC92/ref=sr_1_4/130-2520141-0674123?ie=UTF8&qid=1549577301&sr=8-4&keywords=raspberry+pi+3+model) - [Adafruit link](https://www.adafruit.com/product/3775) - Any Linux capable single board computer  with USB ports and a way of producing audio should function. This project will use the 3.5mm jack, but HDMI or USB audio would work just as well.
* Micro SD card - Capacity is up to you. A single gigabyte would work, however this is also where all audio files will be stored. If your project will have only a dozen small audio files, the capacity could be very small, however 8Gb micro SD cards are inexpensive and common. [Raspberrypi.org includes instructions](https://www.raspberrypi.org/documentation/installation/installing-images/) for downloading and imaging the micro SD card for use.
* Power source - This can be a AC-to-USB, however it will make the built non-portable. It was tested with an Anker battery [Amazon link](https://www.amazon.com/dp/B0194WDVHI/ref=cm_sw_em_r_mt_dp_U_NrCFCbC3TJBXR) pack, however the battery life of the build was not thoroughly tested. If looking to make this project portal, purchase the largest capacity battery that would available.

# Software List
* [Raspbian Stretch Lite](https://www.raspberrypi.org/downloads/raspbian/) - This is the Linux operating system which will be run on the Raspberry Pi. The desktop version is larger and this project will not need or use the graphical user interface. This is the only piece of software that will need to be acquired prior to beginning setting up the system. Everything else will be downloaded later.

# Setting up the Raspberry Pi
The Raspberry Pi will need to be connected to an HDMI capable monitor, an Ethernet connection to the Internet ([wifi is an option as well](https://www.raspberrypi.org/documentation/configuration/wireless/wireless-cli.md)), and a keyboard, then powered up through its micro USB port. The default username and password is:

> user: pi         
> password: raspberry

First, open [raspi-config](https://www.raspberrypi.org/documentation/configuration/raspi-config.md) and make the following changes:

> sudo raspi-config    
>    
> Boot Options -> Desktop/CLI -> Console Autologon (required)    
>     
> Boot Options -> Wait for Network to Boot -> No (optional, but changing this will speed up boot time)    
>       
> Advanced Options -> Audio -> Force 3.5mm (optional, but if the Raspberry Pi cannot automatically detect the audio plug, the device will not work)   

Next, get git and download the scripts that will do the bulk of the work setting up the Raspberry Pi:

> sudo apt-get install git  
> git clone https://github.com/stephenkilpatrick/cardnspeak.git   
> cd cardnspeak    
> bash configure.sh

# Usage
The build expects files in the MP3 format. Transferring the audio files to the devices is done by USB drive, which the device has been tested to read drives formatted as vfat. The steps are as follows:

1. Find out the numeric value of the RFID card. This is most easily done by connecting the RFID reader to the computer you are creating the audio file with and scanning the card with a text editor open. *NOTE:* I have found that the RFID reader that I'm using in my build does not play consistently nice with Apple computers. Apple has something with its USB bus that will not consistently give correct inputs from the reader. Windows and Linux do not seem to have this same issue.
2. Record your audio and save it as an MP3.
3. Rename your audio file so that its filename is the same as the numeric value of the card. The format should look like: 123456789.mp3
4. Copy the file(s) to the root directory of a USB drive.
5. Connect the USB drive to the device and restart it.
6. Audio cues should indicate that the files have been found and are copying. Afterwards, use the card to verify that it functions. If it does not, double check the name of the file versus the number embedded in the card.
