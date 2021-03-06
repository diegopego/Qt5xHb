/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QCAMERAEXPOSURE
REQUEST QCAMERAFOCUS
REQUEST QCAMERAIMAGEPROCESSING
REQUEST QBYTEARRAY

CLASS QCamera INHERIT QMediaObject

   DATA class_id INIT Class_Id_QCamera
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD captureMode
   METHOD error
   METHOD errorString
   METHOD exposure
   METHOD focus
   METHOD imageProcessing
   METHOD isCaptureModeSupported
   METHOD lockStatus1
   METHOD lockStatus2
   METHOD lockStatus
   METHOD requestedLocks
   METHOD setViewfinder1
   METHOD setViewfinder2
   METHOD setViewfinder3
   METHOD setViewFinder
   METHOD state
   METHOD status
   METHOD supportedLocks
   METHOD load
   METHOD searchAndLock1
   METHOD searchAndLock2
   METHOD searchAndLock
   METHOD setCaptureMode
   METHOD start
   METHOD stop
   METHOD unload
   METHOD unlock1
   METHOD unlock2
   METHOD unlock
   METHOD availableDevices
   METHOD deviceDescription
   METHOD onCaptureModeChanged
   METHOD onError
   METHOD onLockFailed
   METHOD onLockStatusChanged1
   METHOD onLockStatusChanged2
   METHOD onLocked
   METHOD onStateChanged
   METHOD onStatusChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCamera
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
#include <QCamera>
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
#include <QCamera>
#endif
#endif

/*
QCamera(QObject * parent = 0)
*/
HB_FUNC_STATIC( QCAMERA_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QCamera * o = new QCamera ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCamera *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QCamera(const QByteArray & device, QObject * parent = 0)
*/
HB_FUNC_STATIC( QCAMERA_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qtxhb_itemGetPtr(2);
  QCamera * o = new QCamera ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCamera *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QCamera(QObject * parent = 0)
//[2]QCamera(const QByteArray & device, QObject * parent = 0)

HB_FUNC_STATIC( QCAMERA_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QCAMERA_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QCAMERA_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCAMERA_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QCamera * obj = (QCamera *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
CaptureModes captureMode() const
*/
HB_FUNC_STATIC( QCAMERA_CAPTUREMODE )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->captureMode (  );
    hb_retni( i );
  }
}


/*
Error error() const
*/
HB_FUNC_STATIC( QCAMERA_ERROR )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->error (  );
    hb_retni( i );
  }
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QCAMERA_ERRORSTRING )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
QCameraExposure * exposure() const
*/
HB_FUNC_STATIC( QCAMERA_EXPOSURE )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCameraExposure * ptr = obj->exposure (  );
    _qt4xhb_createReturnClass ( ptr, "QCAMERAEXPOSURE" );
  }
}


/*
QCameraFocus * focus() const
*/
HB_FUNC_STATIC( QCAMERA_FOCUS )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCameraFocus * ptr = obj->focus (  );
    _qt4xhb_createReturnClass ( ptr, "QCAMERAFOCUS" );
  }
}


/*
QCameraImageProcessing * imageProcessing() const
*/
HB_FUNC_STATIC( QCAMERA_IMAGEPROCESSING )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCameraImageProcessing * ptr = obj->imageProcessing (  );
    _qt4xhb_createReturnClass ( ptr, "QCAMERAIMAGEPROCESSING" );
  }
}


/*
bool isCaptureModeSupported(CaptureModes mode) const
*/
HB_FUNC_STATIC( QCAMERA_ISCAPTUREMODESUPPORTED )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isCaptureModeSupported (  (QCamera::CaptureModes) par1 ) );
  }
}


/*
QCamera::LockStatus lockStatus() const
*/
HB_FUNC_STATIC( QCAMERA_LOCKSTATUS1 )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->lockStatus (  );
    hb_retni( i );
  }
}


/*
QCamera::LockStatus lockStatus(QCamera::LockType lockType) const
*/
HB_FUNC_STATIC( QCAMERA_LOCKSTATUS2 )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->lockStatus (  (QCamera::LockType) par1 );
    hb_retni( i );
  }
}


//[1]QCamera::LockStatus lockStatus() const
//[2]QCamera::LockStatus lockStatus(QCamera::LockType lockType) const

HB_FUNC_STATIC( QCAMERA_LOCKSTATUS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCAMERA_LOCKSTATUS1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCAMERA_LOCKSTATUS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QCamera::LockTypes requestedLocks() const
*/
HB_FUNC_STATIC( QCAMERA_REQUESTEDLOCKS )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->requestedLocks (  );
    hb_retni( i );
  }
}


/*
void setViewfinder(QVideoWidget * viewfinder)
*/
HB_FUNC_STATIC( QCAMERA_SETVIEWFINDER1 )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoWidget * par1 = (QVideoWidget *) _qtxhb_itemGetPtr(1);
    obj->setViewfinder ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setViewfinder(QGraphicsVideoItem * viewfinder)
*/
HB_FUNC_STATIC( QCAMERA_SETVIEWFINDER2 )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsVideoItem * par1 = (QGraphicsVideoItem *) _qtxhb_itemGetPtr(1);
    obj->setViewfinder ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setViewfinder(QAbstractVideoSurface * surface)
*/
HB_FUNC_STATIC( QCAMERA_SETVIEWFINDER3 )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractVideoSurface * par1 = (QAbstractVideoSurface *) _qtxhb_itemGetPtr(1);
    obj->setViewfinder ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setViewfinder(QVideoWidget * viewfinder)
//[2]void setViewfinder(QGraphicsVideoItem * viewfinder)
//[3]void setViewfinder(QAbstractVideoSurface * surface)

HB_FUNC_STATIC( QCAMERA_SETVIEWFINDER )
{
  if( ISNUMPAR(1) && ISQVIDEOWIDGET(1) )
  {
    HB_FUNC_EXEC( QCAMERA_SETVIEWFINDER1 );
  }
  else if( ISNUMPAR(1) && ISQGRAPHICSVIDEOITEM(1) )
  {
    HB_FUNC_EXEC( QCAMERA_SETVIEWFINDER2 );
  }
  else if( ISNUMPAR(1) && ISQABSTRACTVIDEOSURFACE(1) )
  {
    HB_FUNC_EXEC( QCAMERA_SETVIEWFINDER3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
State state() const
*/
HB_FUNC_STATIC( QCAMERA_STATE )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->state (  );
    hb_retni( i );
  }
}


/*
Status status() const
*/
HB_FUNC_STATIC( QCAMERA_STATUS )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->status (  );
    hb_retni( i );
  }
}


/*
QCamera::LockTypes supportedLocks() const
*/
HB_FUNC_STATIC( QCAMERA_SUPPORTEDLOCKS )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->supportedLocks (  );
    hb_retni( i );
  }
}


/*
void load()
*/
HB_FUNC_STATIC( QCAMERA_LOAD )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->load (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void searchAndLock()
*/
HB_FUNC_STATIC( QCAMERA_SEARCHANDLOCK1 )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->searchAndLock (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void searchAndLock(QCamera::LockTypes locks)
*/
HB_FUNC_STATIC( QCAMERA_SEARCHANDLOCK2 )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->searchAndLock (  (QCamera::LockTypes) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void searchAndLock()
//[2]void searchAndLock(QCamera::LockTypes locks)

HB_FUNC_STATIC( QCAMERA_SEARCHANDLOCK )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCAMERA_SEARCHANDLOCK1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCAMERA_SEARCHANDLOCK2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setCaptureMode(QCamera::CaptureModes mode)
*/
HB_FUNC_STATIC( QCAMERA_SETCAPTUREMODE )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCaptureMode (  (QCamera::CaptureModes) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void start()
*/
HB_FUNC_STATIC( QCAMERA_START )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->start (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop()
*/
HB_FUNC_STATIC( QCAMERA_STOP )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void unload()
*/
HB_FUNC_STATIC( QCAMERA_UNLOAD )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->unload (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void unlock()
*/
HB_FUNC_STATIC( QCAMERA_UNLOCK1 )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->unlock (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void unlock(QCamera::LockTypes locks)
*/
HB_FUNC_STATIC( QCAMERA_UNLOCK2 )
{
  QCamera * obj = (QCamera *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->unlock (  (QCamera::LockTypes) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void unlock()
//[2]void unlock(QCamera::LockTypes locks)

HB_FUNC_STATIC( QCAMERA_UNLOCK )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCAMERA_UNLOCK1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCAMERA_UNLOCK2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QList<QByteArray> availableDevices()
*/
HB_FUNC_STATIC( QCAMERA_AVAILABLEDEVICES )
{
  QList<QByteArray> list = QCamera::availableDevices (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBYTEARRAY" );
  #else
  pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}


/*
static QString deviceDescription(const QByteArray & device)
*/
HB_FUNC_STATIC( QCAMERA_DEVICEDESCRIPTION )
{
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  hb_retc( (const char *) QCamera::deviceDescription ( *par1 ).toLatin1().data() );
}




#pragma ENDDUMP
