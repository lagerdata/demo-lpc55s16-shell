from lager import lager
import serial
import time


def main():
    gateway = lager.Lager()
    device = gateway.connect("lpc55xx",interface="ftdi",transport="swd",speed=1000)
    print(f"Connected to device:{device}")


    #halt device
    device.reset(halt=True)

    #flash device
    

    with serial.Serial('/dev/ttyACM0', 115200, timeout=1) as ser:
        while ser.read(1024):
            pass
        device.reset()
#SHELL build: Jun 20 2021
#Copyright  2020  NXP

#SHELL>>
        _=ser.read_until()
        line1 = ser.read_until()
        if not line1.startswith(b'SHELL build: '):
            raise SystemExit(f"Error: Improper Shell Format on Line 1: {line1}")

        line2 = ser.read_until()
        if not line2.startswith(b'Copyright  2020  NXP'):
            raise SystemExit(f"Error: Improper Shell Format on Line 2: {line2}")
        _=ser.read_until()
        line3 = ser.read_until()
        if not line3.startswith(b'SHELL>>'):
            raise SystemExit(f"Error: Improper Shell Format on Line 3: {line3}")

    print("Brilliant!")

if __name__ == '__main__':
    main()