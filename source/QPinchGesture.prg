/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINTF

CLASS QPinchGesture INHERIT QGesture

   DATA class_id INIT Class_Id_QPinchGesture
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD centerPoint
   METHOD changeFlags
   METHOD lastCenterPoint
   METHOD lastRotationAngle
   METHOD lastScaleFactor
   METHOD rotationAngle
   METHOD scaleFactor
   METHOD setCenterPoint
   METHOD setChangeFlags
   METHOD setLastCenterPoint
   METHOD setLastRotationAngle
   METHOD setLastScaleFactor
   METHOD setRotationAngle
   METHOD setScaleFactor
   METHOD setStartCenterPoint
   METHOD setTotalChangeFlags
   METHOD setTotalRotationAngle
   METHOD setTotalScaleFactor
   METHOD startCenterPoint
   METHOD totalChangeFlags
   METHOD totalRotationAngle
   METHOD totalScaleFactor
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPinchGesture
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
#include <QPinchGesture>
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
#include <QPinchGesture>
#endif
#endif

HB_FUNC_STATIC( QPINCHGESTURE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPinchGesture * obj = (QPinchGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPointF centerPoint() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_CENTERPOINT )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->centerPoint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
ChangeFlags changeFlags() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_CHANGEFLAGS )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->changeFlags (  );
    hb_retni( i );
  }
}


/*
QPointF lastCenterPoint() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_LASTCENTERPOINT )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->lastCenterPoint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
qreal lastRotationAngle() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_LASTROTATIONANGLE )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->lastRotationAngle (  ) );
  }
}


/*
qreal lastScaleFactor() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_LASTSCALEFACTOR )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->lastScaleFactor (  ) );
  }
}


/*
qreal rotationAngle() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_ROTATIONANGLE )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->rotationAngle (  ) );
  }
}


/*
qreal scaleFactor() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_SCALEFACTOR )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->scaleFactor (  ) );
  }
}


/*
void setCenterPoint(const QPointF & value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETCENTERPOINT )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    obj->setCenterPoint ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setChangeFlags(ChangeFlags value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETCHANGEFLAGS )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setChangeFlags (  (QPinchGesture::ChangeFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLastCenterPoint(const QPointF & value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETLASTCENTERPOINT )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    obj->setLastCenterPoint ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLastRotationAngle(qreal value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETLASTROTATIONANGLE )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setLastRotationAngle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLastScaleFactor(qreal value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETLASTSCALEFACTOR )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setLastScaleFactor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRotationAngle(qreal value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETROTATIONANGLE )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setRotationAngle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScaleFactor(qreal value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETSCALEFACTOR )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setScaleFactor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStartCenterPoint(const QPointF & value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETSTARTCENTERPOINT )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    obj->setStartCenterPoint ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTotalChangeFlags(ChangeFlags value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETTOTALCHANGEFLAGS )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTotalChangeFlags (  (QPinchGesture::ChangeFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTotalRotationAngle(qreal value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETTOTALROTATIONANGLE )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setTotalRotationAngle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTotalScaleFactor(qreal value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETTOTALSCALEFACTOR )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setTotalScaleFactor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPointF startCenterPoint() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_STARTCENTERPOINT )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->startCenterPoint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
ChangeFlags totalChangeFlags() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_TOTALCHANGEFLAGS )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->totalChangeFlags (  );
    hb_retni( i );
  }
}


/*
qreal totalRotationAngle() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_TOTALROTATIONANGLE )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->totalRotationAngle (  ) );
  }
}


/*
qreal totalScaleFactor() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_TOTALSCALEFACTOR )
{
  QPinchGesture * obj = (QPinchGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->totalScaleFactor (  ) );
  }
}



#pragma ENDDUMP
