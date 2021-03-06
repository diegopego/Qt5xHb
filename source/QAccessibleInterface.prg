/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QOBJECT
REQUEST QWINDOW
REQUEST QRECT
REQUEST QCOLOR
REQUEST QACCESSIBLETEXTINTERFACE
REQUEST QACCESSIBLEEDITABLETEXTINTERFACE
REQUEST QACCESSIBLEVALUEINTERFACE
REQUEST QACCESSIBLEACTIONINTERFACE
REQUEST QACCESSIBLEIMAGEINTERFACE
REQUEST QACCESSIBLETABLEINTERFACE
REQUEST QACCESSIBLETABLECELLINTERFACE

CLASS QAccessibleInterface

   DATA pointer
   DATA class_id INIT Class_Id_QAccessibleInterface
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD isValid
   METHOD object
   METHOD window
   METHOD focusChild
   METHOD childAt
   METHOD parent
   METHOD child
   METHOD childCount
   METHOD indexOfChild
   METHOD text
   METHOD setText
   METHOD rect
   METHOD role
   METHOD foregroundColor
   METHOD backgroundColor
   METHOD textInterface
   METHOD editableTextInterface
   METHOD valueInterface
   METHOD actionInterface
   METHOD imageInterface
   METHOD tableInterface
   METHOD tableCellInterface
   METHOD virtual_hook
   METHOD interface_cast
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleInterface
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
#include <QAccessibleInterface>
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
#include <QAccessibleInterface>
#endif
#endif



/*
virtual bool isValid() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_ISVALID )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
virtual QObject *object() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_OBJECT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->object (  );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
virtual QWindow *window() const
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_WINDOW )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->window (  );
    _qt4xhb_createReturnClass ( ptr, "QWINDOW" );
  }
}



/*
virtual QAccessibleInterface *focusChild() const
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_FOCUSCHILD )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->focusChild (  );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
virtual QAccessibleInterface *childAt(int x, int y) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_CHILDAT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->childAt ( (int) hb_parni(1), (int) hb_parni(2) );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
virtual QAccessibleInterface *parent() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_PARENT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->parent (  );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
virtual QAccessibleInterface *child(int index) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_CHILD )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->child ( (int) hb_parni(1) );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
virtual int childCount() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_CHILDCOUNT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->childCount (  ) );
  }
}


/*
virtual int indexOfChild(const QAccessibleInterface *) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_INDEXOFCHILD )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QAccessibleInterface * par1 = (const QAccessibleInterface *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->indexOfChild ( par1 ) );
  }
}


/*
virtual QString text(QAccessible::Text t) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_TEXT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retc( (const char *) obj->text (  (QAccessible::Text) par1 ).toLatin1().data() );
  }
}


/*
virtual void setText(QAccessible::Text t, const QString &text) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_SETTEXT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setText (  (QAccessible::Text) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QRect rect() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_RECT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->rect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual QAccessible::Role role() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_ROLE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->role (  );
    hb_retni( i );
  }
}



/*
virtual QColor foregroundColor() const
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_FOREGROUNDCOLOR )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->foregroundColor (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
virtual QColor backgroundColor() const
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_BACKGROUNDCOLOR )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->backgroundColor (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
QAccessibleTextInterface *textInterface()
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_TEXTINTERFACE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleTextInterface * ptr = obj->textInterface (  );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLETEXTINTERFACE" );
  }
}


/*
QAccessibleEditableTextInterface *editableTextInterface()
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_EDITABLETEXTINTERFACE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleEditableTextInterface * ptr = obj->editableTextInterface (  );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEEDITABLETEXTINTERFACE" );
  }
}


/*
QAccessibleValueInterface *valueInterface()
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_VALUEINTERFACE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleValueInterface * ptr = obj->valueInterface (  );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEVALUEINTERFACE" );
  }
}


/*
QAccessibleActionInterface *actionInterface()
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_ACTIONINTERFACE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleActionInterface * ptr = obj->actionInterface (  );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEACTIONINTERFACE" );
  }
}


/*
QAccessibleImageInterface *imageInterface()
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_IMAGEINTERFACE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleImageInterface * ptr = obj->imageInterface (  );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEIMAGEINTERFACE" );
  }
}


/*
QAccessibleTableInterface *tableInterface()
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_TABLEINTERFACE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleTableInterface * ptr = obj->tableInterface (  );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLETABLEINTERFACE" );
  }
}


/*
QAccessibleTableCellInterface *tableCellInterface()
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_TABLECELLINTERFACE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleTableCellInterface * ptr = obj->tableCellInterface (  );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLETABLECELLINTERFACE" );
  }
}


/*
void virtual_hook(int id, void *data)
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_VIRTUAL_HOOK )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    void * par2 = (void *) hb_parptr(2);
    obj->virtual_hook ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void *interface_cast(QAccessible::InterfaceType)
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_INTERFACE_CAST )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retptr( (void *) obj->interface_cast (  (QAccessible::InterfaceType) par1 ) );
  }
}



HB_FUNC_STATIC( QACCESSIBLEINTERFACE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QACCESSIBLEINTERFACE_NEWFROMOBJECT )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QACCESSIBLEINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QACCESSIBLEINTERFACE_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QACCESSIBLEINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QACCESSIBLEINTERFACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QACCESSIBLEINTERFACE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
