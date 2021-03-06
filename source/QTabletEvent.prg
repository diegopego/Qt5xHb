/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINTF

CLASS QTabletEvent INHERIT QInputEvent

   DATA class_id INIT Class_Id_QTabletEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD device
   METHOD globalPos
   METHOD globalPosF
   METHOD globalX
   METHOD globalY
   METHOD hiResGlobalX
   METHOD hiResGlobalY
   METHOD pointerType
   METHOD pos
   METHOD posF
   METHOD pressure
   METHOD rotation
   METHOD tangentialPressure
   METHOD uniqueId
   METHOD x
   METHOD xTilt
   METHOD y
   METHOD yTilt
   METHOD z
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTabletEvent
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
#include <QTabletEvent>
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
#include <QTabletEvent>
#endif
#endif

/*
QTabletEvent(Type type, const QPointF & pos, const QPointF & globalPos, int device, int pointerType, qreal pressure, int xTilt, int yTilt, qreal tangentialPressure, qreal rotation, int z, Qt::KeyboardModifiers keyState, qint64 uniqueID)
*/
HB_FUNC_STATIC( QTABLETEVENT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QPointF * par2 = (QPointF *) _qtxhb_itemGetPtr(2);
  QPointF * par3 = (QPointF *) _qtxhb_itemGetPtr(3);
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  qreal par6 = hb_parnd(6);
  int par7 = hb_parni(7);
  int par8 = hb_parni(8);
  qreal par9 = hb_parnd(9);
  qreal par10 = hb_parnd(10);
  int par11 = hb_parni(11);
  int par12 = hb_parni(12);
  qint64 par13 = hb_parni(13);
  QTabletEvent * o = new QTabletEvent (  (QEvent::Type) par1, *par2, *par3, par4, par5, par6, par7, par8, par9, par10, par11,  (Qt::KeyboardModifiers) par12, par13 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTabletEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QTABLETEVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
TabletDevice device() const
*/
HB_FUNC_STATIC( QTABLETEVENT_DEVICE )
{
  QTabletEvent * obj = (QTabletEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->device (  );
    hb_retni( i );
  }
}


/*
const QPoint globalPos() const
*/
HB_FUNC_STATIC( QTABLETEVENT_GLOBALPOS )
{
  QTabletEvent * obj = (QTabletEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
const QPointF & globalPosF() const
*/
HB_FUNC_STATIC( QTABLETEVENT_GLOBALPOSF )
{
  QTabletEvent * obj = (QTabletEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->globalPosF (  );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
int globalX() const
*/
HB_FUNC_STATIC( QTABLETEVENT_GLOBALX )
{
  QTabletEvent * obj = (QTabletEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->globalX (  ) );
  }
}


/*
int globalY() const
*/
HB_FUNC_STATIC( QTABLETEVENT_GLOBALY )
{
  QTabletEvent * obj = (QTabletEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->globalY (  ) );
  }
}


/*
qreal hiResGlobalX() const
*/
HB_FUNC_STATIC( QTABLETEVENT_HIRESGLOBALX )
{
  QTabletEvent * obj = (QTabletEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->hiResGlobalX (  ) );
  }
}


/*
qreal hiResGlobalY() const
*/
HB_FUNC_STATIC( QTABLETEVENT_HIRESGLOBALY )
{
  QTabletEvent * obj = (QTabletEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->hiResGlobalY (  ) );
  }
}


/*
PointerType pointerType() const
*/
HB_FUNC_STATIC( QTABLETEVENT_POINTERTYPE )
{
  QTabletEvent * obj = (QTabletEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->pointerType (  );
    hb_retni( i );
  }
}


/*
const QPoint pos() const
*/
HB_FUNC_STATIC( QTABLETEVENT_POS )
{
  QTabletEvent * obj = (QTabletEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
const QPointF & posF() const
*/
HB_FUNC_STATIC( QTABLETEVENT_POSF )
{
  QTabletEvent * obj = (QTabletEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->posF (  );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
qreal pressure() const
*/
HB_FUNC_STATIC( QTABLETEVENT_PRESSURE )
{
  QTabletEvent * obj = (QTabletEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->pressure (  ) );
  }
}


/*
qreal rotation() const
*/
HB_FUNC_STATIC( QTABLETEVENT_ROTATION )
{
  QTabletEvent * obj = (QTabletEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->rotation (  ) );
  }
}


/*
qreal tangentialPressure() const
*/
HB_FUNC_STATIC( QTABLETEVENT_TANGENTIALPRESSURE )
{
  QTabletEvent * obj = (QTabletEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->tangentialPressure (  ) );
  }
}


/*
qint64 uniqueId() const
*/
HB_FUNC_STATIC( QTABLETEVENT_UNIQUEID )
{
  QTabletEvent * obj = (QTabletEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->uniqueId (  ) );
  }
}


/*
int x() const
*/
HB_FUNC_STATIC( QTABLETEVENT_X )
{
  QTabletEvent * obj = (QTabletEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->x (  ) );
  }
}


/*
int xTilt() const
*/
HB_FUNC_STATIC( QTABLETEVENT_XTILT )
{
  QTabletEvent * obj = (QTabletEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->xTilt (  ) );
  }
}


/*
int y() const
*/
HB_FUNC_STATIC( QTABLETEVENT_Y )
{
  QTabletEvent * obj = (QTabletEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->y (  ) );
  }
}


/*
int yTilt() const
*/
HB_FUNC_STATIC( QTABLETEVENT_YTILT )
{
  QTabletEvent * obj = (QTabletEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->yTilt (  ) );
  }
}


/*
int z() const
*/
HB_FUNC_STATIC( QTABLETEVENT_Z )
{
  QTabletEvent * obj = (QTabletEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->z (  ) );
  }
}



#pragma ENDDUMP
