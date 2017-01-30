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
   LOCAL oMainWindow
   LOCAL oMenuBar
   LOCAL oMenuA
   LOCAL oActionA1
   LOCAL oActionA2
   LOCAL oActionA3
   LOCAL oActionA4
   LOCAL oMenuB
   LOCAL oActionB1
   LOCAL oActionB2
   LOCAL oActionB3
   LOCAL oMenuC
   LOCAL oActionC1
   LOCAL oActionC2
   LOCAL oMenuD
   LOCAL oActionD1

   oApp := QApplication():new()

   oMainWindow := QMainWindow():new()
   oMainWindow:setWindowTitle("Testando classes QMainWindow, QMenu, QMenuBar e QAction")
   oMainWindow:resize(640,480)

   oMenuBar := oMainWindow:menuBar()

   oMenuA := oMenuBar:addMenu("Menu &A")

   oActionA1 := oMenuA:addAction("Op��o 1")
   oActionA1:onTriggered({|w,l|aviso(oMainWindow,"Menu A/Op��o 1")})

   oActionA2 := oMenuA:addAction("Op��o 2")
   oActionA2:onTriggered({|w,l|aviso(oMainWindow,"Menu A/Op��o 2")})

   oActionA3 := oMenuA:addAction("Op��o 3")
   oActionA3:onTriggered({|w,l|aviso(oMainWindow,"Menu A/Op��o 3")})

   oActionA4 := oMenuA:addAction("Op��o 4")
   oActionA4:onTriggered({|w,l|aviso(oMainWindow,"Menu A/Op��o 4")})

   oMenuB := oMenuBar:addMenu("Menu &B")

   oActionB1 := oMenuB:addAction("Op��o 1")
   oActionB1:onTriggered({|w,l|aviso(oMainWindow,"Menu B/Op��o 1")})

   oActionB2 := oMenuB:addAction("Op��o 2")
   oActionB2:onTriggered({|w,l|aviso(oMainWindow,"Menu B/Op��o 2")})

   oActionB3 := oMenuB:addAction("Op��o 3")
   oActionB3:onTriggered({|w,l|aviso(oMainWindow,"Menu B/Op��o 3")})

   oMenuC := oMenuBar:addMenu("Menu &C")

   oActionC1 := oMenuC:addAction("Op��o 1")
   oActionC1:onTriggered({|w,l|aviso(oMainWindow,"Menu C/Op��o 1")})

   oActionC2 := oMenuC:addAction("Op��o 2")
   oActionC2:onTriggered({|w,l|aviso(oMainWindow,"Menu C/Op��o 2")})

   oMenuD := oMenuBar:addMenu("Menu &D")

   oActionD1 := oMenuD:addAction("Op��o 1")
   oActionD1:onTriggered({|w,l|aviso(oMainWindow,"Menu D/Op��o 1")})

   oMainWindow:Show()

   oApp:exec()
   
   oMainWindow:delete()
   
   oApp:delete()

RETURN

STATIC FUNCTION aviso (oParent,cText)

   LOCAL oMessageBox
   
   oMessageBox := QMessageBox():new(oParent)

   oMessageBox:setWindowTitle("Aviso")

   oMessageBox:setInformativeText(cText)

   oMessageBox:setStandardButtons(QMessageBox_Ok)

   oMessageBox:exec()

   oMessageBox:delete()

RETURN NIL