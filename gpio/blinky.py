import RPi.GPIO as GPIO         ## Import GPIO Library
import time                     ## Import 'time' Library

pin = 7                         ## We're working with pin 7
GPIO.setmode(GPIO.BOARD)        ## Use BOARD pin number
GPIO.setup(pin, GPIO.OUT)

for i in range (0, 20):
    GPIO.output(pin, GPIO.HIGH)
    time.sleep(1)
    GPIO.output(pin, GPIO.LOW)
    time.sleep(1)

GPIO.cleanup()
