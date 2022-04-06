################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2013 Stephan Raue (stephan@openelec.tv)
#      Copyright (C) 2013 Lutz Fiebach (lufie@openelec.tv)
#
#  This program is dual-licensed; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC; see the file COPYING.  If not, see
#  <http://www.gnu.org/licenses/>.
#
#  Alternatively, you can license this library under a commercial license,
#  please contact OpenELEC Licensing for more information.
#
#  For more information contact:
#  OpenELEC Licensing  <license@openelec.tv>  http://www.openelec.tv
################################################################################
# -*- coding: utf-8 -*-

import xbmc


class myplex:

    ENABLED = False
    menu = {'91': {
        'name': 32196,
        'menuLoader': 'menu_loader',
        'listTyp': 'other',
        'InfoText': 705,
        }}

    def __init__(self, oeMain):
        try:
            oeMain.dbg_log('myplex::__init__', 'enter_function', 0)
            self.oe = oeMain
            self.controls = {}
            self.oe.dbg_log('myplex::__init__', 'exit_function', 0)
        except Exception, e:
            self.oe.dbg_log('myplex::__init__', 'ERROR: (' + repr(e) + ')')

    def menu_loader(self, menuItem):
        try:
            self.oe.dbg_log('myplex::menu_loader', 'enter_function', 0)
            if len(self.controls) == 0:
                self.init_controls()
            self.oe.dbg_log('myplex::menu_loader', 'exit_function', 0)
        except Exception, e:
            self.oe.dbg_log('myplex::menu_loader', 'ERROR: (' + repr(e) + ')', 4)

    def exit_addon(self):
        try:
            self.oe.dbg_log('myplex::exit_addon', 'enter_function', 0)
            self.oe.winOeMain.close()
            self.oe.dbg_log('myplex::exit_addon', 'exit_function', 0)
        except Exception, e:
            self.oe.dbg_log('myplex::exit_addon', 'ERROR: (' + repr(e) + ')')

    def init_controls(self):
        try:
            self.oe.dbg_log('myplex::init_controls', 'enter_function', 0)
            self.oe.dbg_log('myplex::init_controls', 'exit_function', 0)
        except Exception, e:
            self.oe.dbg_log('myplex::init_controls', 'ERROR: (' + repr(e) + ')')

    def exit(self):
        try:
            self.oe.dbg_log('myplex::exit', 'enter_function', 0)
            for control in self.controls:
                try:
                    self.oe.winOeMain.removeControl(self.controls[control])
                except:
                    pass
            self.controls = {}
            self.oe.dbg_log('myplex::exit', 'exit_function', 0)
        except Exception, e:
            self.oe.dbg_log('myplex::exit', 'ERROR: (' + repr(e) + ')')

    def do_wizard(self):
        try:
            self.oe.dbg_log('myplex::do_wizard', 'enter_function', 0)
            self.oe.winOeMain.set_wizard_title("Sign in to Plex?")
            self.oe.winOeMain.set_wizard_text("Logging in to MyPlex connects you with your MyPlex account."
                               + '[CR][CR]' + "MyPlex is a free, feature rich service provided by Plex. PlexPass is not required to use MyPlex."
                               + '[CR][CR]' + "While MyPlex is not required, it is highly recommended and has been known solve problems to make it much easier to detect local media servers, and work with iPhone and Android Plex apps."  
                               + '[CR][CR]' + "MyPlex also lets you connect to remote media servers that have been shared with you."  
                               + '[CR][CR]' + "You can log into my plex at any time by going to: Preferences -> System -> Plex -> Sign in to Plex"
                               )
            self.oe.winOeMain.set_wizard_button_1("Sign in to Plex.", self, 'start_myplex')
            self.oe.dbg_log('myplex::do_wizard', 'exit_function', 0)
        except Exception, e:
            self.oe.dbg_log('myplex::do_wizard', 'ERROR: (' + repr(e) + ')')

    def start_myplex(self):
        xbmc.executebuiltin('XBMC.ActivateWindow(10203)',True)

