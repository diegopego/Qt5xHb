/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QWebChannelAbstractTransport INHERIT QObject

   DATA class_id INIT Class_Id_QWebChannelAbstractTransport
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD sendMessage
   METHOD onMessageReceived
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebChannelAbstractTransport
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebChannelAbstractTransport>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebChannelAbstractTransport>
#endif
#endif

/*
explicit QWebChannelAbstractTransport(QObject *parent = 0)
*/
HB_FUNC_STATIC( QWEBCHANNELABSTRACTTRANSPORT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QWebChannelAbstractTransport * o = new QWebChannelAbstractTransport ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWebChannelAbstractTransport *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QWEBCHANNELABSTRACTTRANSPORT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannelAbstractTransport * obj = (QWebChannelAbstractTransport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void sendMessage(const QJsonObject &message) = 0
*/
HB_FUNC_STATIC( QWEBCHANNELABSTRACTTRANSPORT_SENDMESSAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannelAbstractTransport * obj = (QWebChannelAbstractTransport *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonObject * par1 = (QJsonObject *) _qtxhb_itemGetPtr(1);
    obj->sendMessage ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
