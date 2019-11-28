import RPi.GPIO as GPIO
from time import sleep
GPIO.setmode(GPIO.BOARD)
servo1 = 12
servo2 = 11
GPIO.setup(servo1, GPIO.OUT)
pwm=GPIO.PWM(servo1,50)
GPIO.setup(servo2, GPIO.OUT)
pwm2=GPIO.PWM(servo2,50)
pwm.start(0)


def SetAngle(angle, serv):
    duty = angle / 18 + 2
    GPIO.output(serv, True)
    pwm.ChangeDutyCycle(duty)
    sleep(1)
    GPIO.output(serv, False)
    pwm.ChangeDutyCycle(0)

SetAngle(90, servo1)
SetAngle(90, servo1)

pwm.stop()
GPIO.cleanup()