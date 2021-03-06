/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWINDOW
REQUEST QACCESSIBLEINTERFACE
REQUEST QRECT
REQUEST QCOLOR

CLASS QAccessibleWidget INHERIT QAccessibleObject,QAccessibleActionInterface

   DATA class_id INIT Class_Id_QAccessibleWidget
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD isValid
   METHOD window
   METHOD childCount
   METHOD indexOfChild
   METHOD focusChild
   METHOD rect
   METHOD parent
   METHOD child
   METHOD text
   METHOD role
   METHOD foregroundColor
   METHOD backgroundColor
   METHOD interface_cast
   METHOD actionNames
   METHOD doAction
   METHOD keyBindingsForAction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAccessibleWidget>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAccessibleWidget>
#endif
#endif

/*
QAccessibleWidget(QWidget *o, QAccessible::Role r = QAccessible::Client, const QString& name = QString())
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) QAccessible::Client : hb_parni(2);
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  QAccessibleWidget * o = new QAccessibleWidget ( par1,  (QAccessible::Role) par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAccessibleWidget *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}



/*
bool isValid() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_ISVALID )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QWindow *window() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_WINDOW )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->window (  );
    _qt4xhb_createReturnClass ( ptr, "QWINDOW" );
  }
}


/*
int childCount() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_CHILDCOUNT )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->childCount (  ) );
  }
}


/*
int indexOfChild(const QAccessibleInterface *child) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_INDEXOFCHILD )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QAccessibleInterface * par1 = (const QAccessibleInterface *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->indexOfChild ( par1 ) );
  }
}



/*
QAccessibleInterface *focusChild() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_FOCUSCHILD )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->focusChild (  );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
QRect rect() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_RECT )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->rect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QAccessibleInterface *parent() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_PARENT )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->parent (  );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
QAccessibleInterface *child(int index) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_CHILD )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->child ( (int) hb_parni(1) );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
QString text(QAccessible::Text t) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_TEXT )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retc( (const char *) obj->text (  (QAccessible::Text) par1 ).toLatin1().data() );
  }
}


/*
QAccessible::Role role() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_ROLE )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->role (  );
    hb_retni( i );
  }
}



/*
QColor foregroundColor() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_FOREGROUNDCOLOR )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->foregroundColor (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
QColor backgroundColor() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_BACKGROUNDCOLOR )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->backgroundColor (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
void *interface_cast(QAccessible::InterfaceType t)
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_INTERFACE_CAST )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retptr( (void *) obj->interface_cast (  (QAccessible::InterfaceType) par1 ) );
  }
}


/*
QStringList actionNames() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_ACTIONNAMES )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->actionNames (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
void doAction(const QString &actionName)
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_DOACTION )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->doAction ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList keyBindingsForAction(const QString &actionName) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_KEYBINDINGSFORACTION )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QStringList strl = obj->keyBindingsForAction ( par1 );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}



#pragma ENDDUMP
