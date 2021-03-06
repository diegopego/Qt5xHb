/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMEDIACONTROL

CLASS QMediaService INHERIT QObject

   DATA class_id INIT Class_Id_QMediaService
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD releaseControl
   METHOD requestControl
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaService
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
#include <QMediaService>
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
#include <QMediaService>
#endif
#endif


HB_FUNC_STATIC( QMEDIASERVICE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMediaService * obj = (QMediaService *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void releaseControl(QMediaControl * control) = 0
*/
HB_FUNC_STATIC( QMEDIASERVICE_RELEASECONTROL )
{
  QMediaService * obj = (QMediaService *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaControl * par1 = (QMediaControl *) _qtxhb_itemGetPtr(1);
    obj->releaseControl ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QMediaControl * requestControl(const char * interface) = 0
*/
HB_FUNC_STATIC( QMEDIASERVICE_REQUESTCONTROL )
{
  QMediaService * obj = (QMediaService *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QMediaControl * ptr = obj->requestControl (  (const char *) par1 );
    _qt4xhb_createReturnClass ( ptr, "QMEDIACONTROL" );
  }
}




#pragma ENDDUMP
