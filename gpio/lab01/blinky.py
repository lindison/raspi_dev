import RPi.GPIO as GPIO         ## Import GPIO Library
import time                     ## Import 'time' Library

pin = 7                         ## We're working with pin 7
GPIO.setmode(GPIO.BOARD)        ## Use BOARD pin number
GPIO.setup(pin, GPIO.OUT)       ## Setup GPIO pin 7

for i in range (0, 20):         ## Loop 0 - 20
    GPIO.output(pin, GPIO.HIGH) ## Turn signal to pin 7 to HIGH
    time.sleep(1)               ## Sleep for 1 second
    GPIO.output(pin, GPIO.LOW)  ## Turn signal to pin 7 to LOW
    time.sleep(1)               ## Sleep for 1 second

GPIO.cleanup()                  ## Cleanup GPIO settings
