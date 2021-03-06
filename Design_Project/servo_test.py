import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BOARD)

GPIO.setup(12, GPIO.OUT)

p = GPIO.PWM(12, 50)

p.start(7.5)

try:
    while True:
        p.ChangeDutyCycle(1)  # turn towards 90 degree
      
except KeyboardInterrupt:
    p.stop()
    GPIO.cleanup()
