#!/bin/env python3
import pyautogui
import webbrowser
import time
import pyperclip
import os
import sys
os.system('clear')

os.system('xdg-open https://kahoot.it/')

time.sleep(2)
code = sys.argv[1]
name = sys.argv[2]
pyautogui.press('tab')
pyautogui.press('tab')
pyautogui.typewrite(code)

pyautogui.press('enter')

time.sleep(2)

pyautogui.press('tab')
pyautogui.press('tab')
pyautogui.typewrite(name)
pyautogui.press('enter')
print('Ya puedes disfrutar de tu kahoot')