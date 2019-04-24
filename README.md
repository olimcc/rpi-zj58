### RaspberryPi ZJ-58 thermal printer

Container to simply thermal printer integration from a Raspberry Pi.

Inspired by [Networked Thermal Printer using Raspberry Pi and CUPS](https://learn.adafruit.com/networked-thermal-printer-using-cups-and-raspberry-pi/overview)


docker run -it --privileged -v /dev:/dev --device /dev/vchiq rpi-zj58:latest echo "This is a test." | lp

#### To build

	docker build -t rpi-zj58:latest .

#### To run

	docker run -it \
	--privileged \
	-v /dev:/dev \
	rpi-zj58:latest \
    bash

And test:

    echo 'this is a test' | lp

Optional configuration:

- Environment variabule `PRINTER_BAUD_RATE` to .. set the printer baud rate.
- Container file `/usr/src/app/scripts/configure-printer.sh` can be overridden if alternative
configuration is desirable. See the file in this repository as an example.

	docker run -it \
	--privileged \
	-v /dev:/dev \
	-e PRINTER_BAUD_RATE=9600 \
	-v my-custom-configure-printer.sh:/usr/src/app/scripts/configure-printer.sh \
	rpi-zj58:latest \
    bash
