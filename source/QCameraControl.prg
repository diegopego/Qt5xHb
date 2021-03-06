/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QCameraControl INHERIT QMediaObject

   DATA class_id INIT Class_Id_QCameraControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD canChangeProperty
   METHOD captureMode
   METHOD isCaptureModeSupported
   METHOD setCaptureMode
   METHOD setState
   METHOD state
   METHOD status
   METHOD onCaptureModeChanged
   METHOD onError
   METHOD onStateChanged
   METHOD onStatusChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraControl
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
#include <QCameraControl>
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
#include <QCameraControl>
#endif
#endif

HB_FUNC_STATIC( QCAMERACONTROL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QCameraControl * obj = (QCameraControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool canChangeProperty(PropertyChangeType changeType, QCamera::Status status) const = 0
*/
HB_FUNC_STATIC( QCAMERACONTROL_CANCHANGEPROPERTY )
{
  QCameraControl * obj = (QCameraControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    hb_retl( obj->canChangeProperty (  (QCameraControl::PropertyChangeType) par1,  (QCamera::Status) par2 ) );
  }
}


/*
virtual QCamera::CaptureModes captureMode() const = 0
*/
HB_FUNC_STATIC( QCAMERACONTROL_CAPTUREMODE )
{
  QCameraControl * obj = (QCameraControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->captureMode (  );
    hb_retni( i );
  }
}


/*
virtual bool isCaptureModeSupported(QCamera::CaptureModes mode) const = 0
*/
HB_FUNC_STATIC( QCAMERACONTROL_ISCAPTUREMODESUPPORTED )
{
  QCameraControl * obj = (QCameraControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isCaptureModeSupported (  (QCamera::CaptureModes) par1 ) );
  }
}


/*
virtual void setCaptureMode(QCamera::CaptureModes mode) = 0
*/
HB_FUNC_STATIC( QCAMERACONTROL_SETCAPTUREMODE )
{
  QCameraControl * obj = (QCameraControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCaptureMode (  (QCamera::CaptureModes) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setState(QCamera::State state) = 0
*/
HB_FUNC_STATIC( QCAMERACONTROL_SETSTATE )
{
  QCameraControl * obj = (QCameraControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setState (  (QCamera::State) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QCamera::State state() const = 0
*/
HB_FUNC_STATIC( QCAMERACONTROL_STATE )
{
  QCameraControl * obj = (QCameraControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->state (  );
    hb_retni( i );
  }
}


/*
virtual QCamera::Status status() const = 0
*/
HB_FUNC_STATIC( QCAMERACONTROL_STATUS )
{
  QCameraControl * obj = (QCameraControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->status (  );
    hb_retni( i );
  }
}




#pragma ENDDUMP
