/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMEDIASERVICE

CLASS QMediaServiceProviderPlugin INHERIT QObject,QMediaServiceProviderFactoryInterface

   DATA class_id INIT Class_Id_QMediaServiceProviderPlugin
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD create
   METHOD release
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaServiceProviderPlugin
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
#include <QMediaServiceProviderPlugin>
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
#include <QMediaServiceProviderPlugin>
#endif
#endif


HB_FUNC_STATIC( QMEDIASERVICEPROVIDERPLUGIN_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMediaServiceProviderPlugin * obj = (QMediaServiceProviderPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QMediaService * create(const QString & key) = 0
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERPLUGIN_CREATE )
{
  QMediaServiceProviderPlugin * obj = (QMediaServiceProviderPlugin *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QMediaService * ptr = obj->create ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QMEDIASERVICE" );
  }
}


/*
virtual void release(QMediaService * service) = 0
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERPLUGIN_RELEASE )
{
  QMediaServiceProviderPlugin * obj = (QMediaServiceProviderPlugin *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaService * par1 = (QMediaService *) _qtxhb_itemGetPtr(1);
    obj->release ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
