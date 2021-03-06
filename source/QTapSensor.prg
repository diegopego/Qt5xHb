/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTAPREADING

CLASS QTapSensor INHERIT QSensor

   DATA class_id INIT Class_Id_QTapSensor
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD reading
   METHOD returnDoubleTapEvents
   METHOD setReturnDoubleTapEvents
   METHOD onReturnDoubleTapEventsChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTapSensor
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
#include <QTapSensor>
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
#include <QTapSensor>
#endif
#endif

/*
QTapSensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QTAPSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QTapSensor * o = new QTapSensor ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTapSensor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QTAPSENSOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapSensor * obj = (QTapSensor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QTapReading *reading() const
*/
HB_FUNC_STATIC( QTAPSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapSensor * obj = (QTapSensor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTapReading * ptr = obj->reading (  );
    _qt4xhb_createReturnClass ( ptr, "QTAPREADING" );
  }
#endif
}


/*
bool returnDoubleTapEvents() const
*/
HB_FUNC_STATIC( QTAPSENSOR_RETURNDOUBLETAPEVENTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapSensor * obj = (QTapSensor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->returnDoubleTapEvents (  ) );
  }
#endif
}


/*
void setReturnDoubleTapEvents(bool returnDoubleTapEvents)
*/
HB_FUNC_STATIC( QTAPSENSOR_SETRETURNDOUBLETAPEVENTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapSensor * obj = (QTapSensor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setReturnDoubleTapEvents ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
