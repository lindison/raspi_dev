import RPi.GPIO as GPIO         ## Import GPIO Library

inPin = 7                       ## Switch connected to Pin 7
GPIO.setmode(GPIO.BOARD)        ## Use BOARD pin numbering
GPIO.setup(inPin, GPIO.IN)      ## Set pin 8 to INPUT

while True:                     ## Do this forever
    value = GPIO.input(inPin)   ## Read input from switch
    if value:                   ## If switch is released
        print "Not Pressed"
    else:                       ## Else print this
        print "Pressed"

GPIO.cleanup()

