/*

  Exemplo do projeto Qt5xHb

  Copyright (C) 2012-2017 Marcos Antonio Gambeta

  E-mail: marcosgambeta@uol.com.br

  Website: https://github.com/marcosgambeta/Qt5xHb

  Grupo de usu�rios: http://br.groups.yahoo.com/neo/groups/qt4xhb/info

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   lOCAL oApp
   LOCAL oWindow

   oApp := QApplication():new()

   oWindow := QMainWindow():new()

   oWindow:setWindowTitle("Teste")

   oWindow:resize(640,480)

   oWindow:show()

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN
