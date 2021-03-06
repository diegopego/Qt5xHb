/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT

CLASS QSensorReading INHERIT QObject

   DATA class_id INIT Class_Id_QSensorReading
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD timestamp
   METHOD setTimestamp
   METHOD valueCount
   METHOD value
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSensorReading
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
#include <QSensorReading>
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
#include <QSensorReading>
#endif
#endif


HB_FUNC_STATIC( QSENSORREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorReading * obj = (QSensorReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
quint64 timestamp() const
*/
HB_FUNC_STATIC( QSENSORREADING_TIMESTAMP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorReading * obj = (QSensorReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->timestamp (  ) );
  }
#endif
}


/*
void setTimestamp(quint64 timestamp)
*/
HB_FUNC_STATIC( QSENSORREADING_SETTIMESTAMP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorReading * obj = (QSensorReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTimestamp ( (quint64) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int valueCount() const
*/
HB_FUNC_STATIC( QSENSORREADING_VALUECOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorReading * obj = (QSensorReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->valueCount (  ) );
  }
#endif
}


/*
QVariant value(int index) const
*/
HB_FUNC_STATIC( QSENSORREADING_VALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorReading * obj = (QSensorReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value ( (int) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
#endif
}



#pragma ENDDUMP
