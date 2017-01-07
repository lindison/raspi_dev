import RPi.GPIO as GPIO         ## Import GPIO Library

pin = 11
inPin = 7                       ## Switch connected to Pin 7
GPIO.setmode(GPIO.BOARD)        ## Use BOARD pin numbering
GPIO.setup(inPin, GPIO.IN)      ## Set pin 7 to INPUT
GPIO.setup(pin, GPIO.OUT)       ## Setup GPIO pin 7

while True:                     ## Do this forever
    value = GPIO.input(inPin)   ## Read input from switch
    if value:                   ## If switch is released
        print "Light On"
        GPIO.output(pin, GPIO.LOW)
    else:                       ## Else print this
        print "Light Off"
        GPIO.output(pin, GPIO.HIGH)

GPIO.cleanup()


