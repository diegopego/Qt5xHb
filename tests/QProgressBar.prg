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
   LOCAL oProgressBar

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640,480)
   oWindow:show()

   oProgressBar := QProgressBar():new(oWindow)
   oProgressBar:move(20,20)
   oProgressBar:setTooltip("Eu sou um QProgressBar")
   oProgressBar:setValue(50)
   oProgressBar:show()

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN
