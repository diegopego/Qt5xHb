/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSENSORREADING
REQUEST QSENSOR

CLASS QSensorBackend INHERIT QObject

   DATA class_id INIT Class_Id_QSensorBackend
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD start
   METHOD stop
   METHOD isFeatureSupported
   METHOD addDataRate
   METHOD setDataRates
   METHOD addOutputRange
   METHOD setDescription
   METHOD reading
   METHOD sensor
   METHOD newReadingAvailable
   METHOD sensorStopped
   METHOD sensorBusy
   METHOD sensorError
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSensorBackend
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorBackend>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorBackend>
#endif
#endif


HB_FUNC_STATIC( QSENSORBACKEND_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void start() = 0
*/
HB_FUNC_STATIC( QSENSORBACKEND_START )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->start (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
virtual void stop() = 0
*/
HB_FUNC_STATIC( QSENSORBACKEND_STOP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
virtual bool isFeatureSupported(QSensor::Feature feature) const
*/
HB_FUNC_STATIC( QSENSORBACKEND_ISFEATURESUPPORTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isFeatureSupported (  (QSensor::Feature) par1 ) );
  }
#endif
}


/*
void addDataRate(qreal min, qreal max)
*/
HB_FUNC_STATIC( QSENSORBACKEND_ADDDATARATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->addDataRate ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setDataRates(const QSensor *otherSensor)
*/
HB_FUNC_STATIC( QSENSORBACKEND_SETDATARATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QSensor * par1 = (const QSensor *) _qtxhb_itemGetPtr(1);
    obj->setDataRates ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void addOutputRange(qreal min, qreal max, qreal accuracy)
*/
HB_FUNC_STATIC( QSENSORBACKEND_ADDOUTPUTRANGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    obj->addOutputRange ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setDescription(const QString &description)
*/
HB_FUNC_STATIC( QSENSORBACKEND_SETDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setDescription ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QSensorReading *reading() const
*/
HB_FUNC_STATIC( QSENSORBACKEND_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSensorReading * ptr = obj->reading (  );
    _qt4xhb_createReturnClass ( ptr, "QSENSORREADING" );
  }
#endif
}


/*
QSensor *sensor() const
*/
HB_FUNC_STATIC( QSENSORBACKEND_SENSOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSensor * ptr = obj->sensor (  );
    _qt4xhb_createReturnClass ( ptr, "QSENSOR" );
  }
#endif
}


/*
void newReadingAvailable()
*/
HB_FUNC_STATIC( QSENSORBACKEND_NEWREADINGAVAILABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->newReadingAvailable (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void sensorStopped()
*/
HB_FUNC_STATIC( QSENSORBACKEND_SENSORSTOPPED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->sensorStopped (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void sensorBusy()
*/
HB_FUNC_STATIC( QSENSORBACKEND_SENSORBUSY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->sensorBusy (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void sensorError(int error)
*/
HB_FUNC_STATIC( QSENSORBACKEND_SENSORERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->sensorError ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
