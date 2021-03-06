/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMIMEDATA
REQUEST QOBJECT

CLASS QDropEvent INHERIT QEvent,QMimeSource

   DATA class_id INIT Class_Id_QDropEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD acceptProposedAction
   METHOD dropAction
   METHOD keyboardModifiers
   METHOD mimeData
   METHOD mouseButtons
   METHOD possibleActions
   METHOD proposedAction
   METHOD setDropAction
   METHOD source
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDropEvent
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
#include <QDropEvent>
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
#include <QDropEvent>
#endif
#endif

/*
QDropEvent ( const QPoint & pos, Qt::DropActions actions, const QMimeData * data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Type type = Drop )
*/
HB_FUNC_STATIC( QDROPEVENT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  const QMimeData * par3 = (const QMimeData *) _qtxhb_itemGetPtr(3);
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  int par6 = ISNIL(6)? (int) QEvent::Drop : hb_parni(6);
  QDropEvent * o = new QDropEvent ( *par1,  (Qt::DropActions) par2, par3,  (Qt::MouseButtons) par4,  (Qt::KeyboardModifiers) par5,  (QEvent::Type) par6 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDropEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QDROPEVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDropEvent * obj = (QDropEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void acceptProposedAction ()
*/
HB_FUNC_STATIC( QDROPEVENT_ACCEPTPROPOSEDACTION )
{
  QDropEvent * obj = (QDropEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->acceptProposedAction (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::DropAction dropAction () const
*/
HB_FUNC_STATIC( QDROPEVENT_DROPACTION )
{
  QDropEvent * obj = (QDropEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->dropAction (  );
    hb_retni( i );
  }
}


/*
Qt::KeyboardModifiers keyboardModifiers () const
*/
HB_FUNC_STATIC( QDROPEVENT_KEYBOARDMODIFIERS )
{
  QDropEvent * obj = (QDropEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->keyboardModifiers (  );
    hb_retni( i );
  }
}


/*
const QMimeData * mimeData () const
*/
HB_FUNC_STATIC( QDROPEVENT_MIMEDATA )
{
  QDropEvent * obj = (QDropEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMimeData * ptr = obj->mimeData (  );
    _qt4xhb_createReturnClass ( ptr, "QMIMEDATA" );
  }
}


/*
Qt::MouseButtons mouseButtons () const
*/
HB_FUNC_STATIC( QDROPEVENT_MOUSEBUTTONS )
{
  QDropEvent * obj = (QDropEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->mouseButtons (  );
    hb_retni( i );
  }
}



/*
Qt::DropActions possibleActions () const
*/
HB_FUNC_STATIC( QDROPEVENT_POSSIBLEACTIONS )
{
  QDropEvent * obj = (QDropEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->possibleActions (  );
    hb_retni( i );
  }
}


/*
Qt::DropAction proposedAction () const
*/
HB_FUNC_STATIC( QDROPEVENT_PROPOSEDACTION )
{
  QDropEvent * obj = (QDropEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->proposedAction (  );
    hb_retni( i );
  }
}


/*
void setDropAction ( Qt::DropAction action )
*/
HB_FUNC_STATIC( QDROPEVENT_SETDROPACTION )
{
  QDropEvent * obj = (QDropEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDropAction (  (Qt::DropAction) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QObject * source () const
*/
HB_FUNC_STATIC( QDROPEVENT_SOURCE )
{
  QDropEvent * obj = (QDropEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->source (  );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}






#pragma ENDDUMP
