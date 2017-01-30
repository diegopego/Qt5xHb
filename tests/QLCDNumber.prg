/*

  Exemplo do projeto Qt5xHb

  Copyright (C) 2012-2017 Marcos Antonio Gambeta

  E-mail: marcosgambeta@uol.com.br

  Website: https://github.com/marcosgambeta/Qt5xHb

  Grupo de usu�rios: http://br.groups.yahoo.com/neo/groups/qt4xhb/info

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLCDNumber

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640,480)
   oWindow:show()

   oLCDNumber := QLCDNumber():new(oWindow)
   oLCDNumber:move(20,20)
   oLCDNumber:setTooltip("Eu sou um QLCDNumber")
   oLCDNumber:show()

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN