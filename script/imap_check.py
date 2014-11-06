#!/usr/bin/env python

import os
import imaplib

MAIL_URL = os.environ['WORK_MAIL_SERVER']
USERNAME = os.environ['WORK_MAIL_USERNAME']
PASSWORD = os.environ['WORK_MAIL_PASSWORD']

def main():
    obj = imaplib.IMAP4_SSL(MAIL_URL, '993')
    obj.login(USERNAME, PASSWORD)
    obj.select()
    mail_count = len(obj.search(None, 'UnSeen')[1][0].split())
    print mail_count
    return mail_count

if __name__ == "__main__":
    main()
