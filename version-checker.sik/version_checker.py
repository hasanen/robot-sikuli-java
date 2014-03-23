# -*- coding: UTF-8 -*-
from __future__ import with_statement
import org.sikuli.basics.SikuliXforJython
from sikuli import *

class VersionChecker(object):
  
  def __init__(self, timeout = 120, coordinates = (0, 0, 1024, 768)):
    self.appCoordinates = coordinates
    self.appRegion = Region(*self.appCoordinates)
    self.timeout = timeout
    addImagePath("version-checker.sik")

  def clickByImage(self, *args):
    wait(args[0] + '.png', self.timeout)
    with self.appRegion:
      click(args[0] + '.png')

  def versionIs(self, *args):
    r = find('firefox.png').below(10).left(-15)
    mouseMove(r)
    mouseDown(Button.LEFT)
    mouseMove(r.offset(40, 0))
    mouseUp(Button.LEFT)
    type("c",KEY_CTRL)
    return args[0].strip() == (str(Env.getClipboard())).strip()
 
if __name__ == "__main__":
  pk = VersionChecker()