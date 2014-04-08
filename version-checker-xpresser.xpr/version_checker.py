# -*- coding: UTF-8 -*-
from __future__ import with_statement
from xpresser import Xpresser
import time

class VersionChecker(Xpresser):
  ROBOT_LIBRARY_SCOPE = 'GLOBAL'
  
  def __init__(self):
    self.xp = Xpresser()
    self.xp.load_images('./version-checker-xpresser.xpr/')

  def clickByImage(self, *args):
    self.xp.click(args[0])

  def versionIs(self, *args):
    r = find('firefox').below(10).left(-15)
    mouseMove(r)
    mouseDown(Button.LEFT)
    mouseMove(r.offset(40, 0))
    mouseUp(Button.LEFT)
    type("c",KEY_CTRL)
    return args[0].strip() == (str(Env.getClipboard())).strip()
 
if __name__ == "__main__":
  pk = VersionChecker()