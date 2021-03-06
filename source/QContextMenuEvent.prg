/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINT

CLASS QContextMenuEvent INHERIT QInputEvent

   DATA class_id INIT Class_Id_QContextMenuEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD globalPos
   METHOD globalX
   METHOD globalY
   METHOD pos
   METHOD reason
   METHOD x
   METHOD y
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QContextMenuEvent
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
#include <QContextMenuEvent>
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
#include <QContextMenuEvent>
#endif
#endif

/*
QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos, Qt::KeyboardModifiers modifiers )
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QPoint * par2 = (QPoint *) _qtxhb_itemGetPtr(2);
  QPoint * par3 = (QPoint *) _qtxhb_itemGetPtr(3);
  int par4 = hb_parni(4);
  QContextMenuEvent * o = new QContextMenuEvent (  (QContextMenuEvent::Reason) par1, *par2, *par3,  (Qt::KeyboardModifiers) par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QContextMenuEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos )
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QPoint * par2 = (QPoint *) _qtxhb_itemGetPtr(2);
  QPoint * par3 = (QPoint *) _qtxhb_itemGetPtr(3);
  QContextMenuEvent * o = new QContextMenuEvent (  (QContextMenuEvent::Reason) par1, *par2, *par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QContextMenuEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QContextMenuEvent ( Reason reason, const QPoint & pos )
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QPoint * par2 = (QPoint *) _qtxhb_itemGetPtr(2);
  QContextMenuEvent * o = new QContextMenuEvent (  (QContextMenuEvent::Reason) par1, *par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QContextMenuEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos, Qt::KeyboardModifiers modifiers )
//[2]QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos )
//[3]QContextMenuEvent ( Reason reason, const QPoint & pos )

HB_FUNC_STATIC( QCONTEXTMENUEVENT_NEW )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISQPOINT(2) && ISQPOINT(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QCONTEXTMENUEVENT_NEW1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQPOINT(2) && ISQPOINT(3) )
  {
    HB_FUNC_EXEC( QCONTEXTMENUEVENT_NEW2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPOINT(2) )
  {
    HB_FUNC_EXEC( QCONTEXTMENUEVENT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCONTEXTMENUEVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QContextMenuEvent * obj = (QContextMenuEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const QPoint & globalPos () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_GLOBALPOS )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->globalPos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
int globalX () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_GLOBALX )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->globalX (  ) );
  }
}


/*
int globalY () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_GLOBALY )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->globalY (  ) );
  }
}


/*
const QPoint & pos () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_POS )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->pos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
Reason reason () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_REASON )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->reason (  );
    hb_retni( i );
  }
}


/*
int x () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_X )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->x (  ) );
  }
}


/*
int y () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_Y )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->y (  ) );
  }
}



#pragma ENDDUMP
