import sys
import smtplib
from config import get_password, get_email

msg = sys.argv[1]

smtpObj = smtplib.SMTP('smtp.gmail.com',587)
smtpObj.ehlo()
smtpObj.starttls()
smtpObj.login('rekords.experiments@gmail.com',get_password())
smtpObj.sendmail('rekords.experiments@gmail.com',get_email(),"Subject: [{}] is done!".format(msg))
smtpObj.quit()
