/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"



CLASS QWebHistoryInterface INHERIT QObject

   DATA class_id INIT Class_Id_QWebHistoryInterface
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD addHistoryEntry
   METHOD historyContains
   METHOD defaultInterface
   METHOD setDefaultInterface
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebHistoryInterface
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
#include <QWebHistoryInterface>
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
#include <QWebHistoryInterface>
#endif
#endif


HB_FUNC_STATIC( QWEBHISTORYINTERFACE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWebHistoryInterface * obj = (QWebHistoryInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void addHistoryEntry ( const QString & url ) = 0
*/
HB_FUNC_STATIC( QWEBHISTORYINTERFACE_ADDHISTORYENTRY )
{
  QWebHistoryInterface * obj = (QWebHistoryInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->addHistoryEntry ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool historyContains ( const QString & url ) const = 0
*/
HB_FUNC_STATIC( QWEBHISTORYINTERFACE_HISTORYCONTAINS )
{
  QWebHistoryInterface * obj = (QWebHistoryInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->historyContains ( par1 ) );
  }
}


/*
static QWebHistoryInterface * defaultInterface ()
*/
HB_FUNC_STATIC( QWEBHISTORYINTERFACE_DEFAULTINTERFACE )
{
  QWebHistoryInterface * ptr = QWebHistoryInterface::defaultInterface (  );
  _qt4xhb_createReturnClass ( ptr, "QWEBHISTORYINTERFACE" );
}


/*
static void setDefaultInterface ( QWebHistoryInterface * defaultInterface )
*/
HB_FUNC_STATIC( QWEBHISTORYINTERFACE_SETDEFAULTINTERFACE )
{
  QWebHistoryInterface * par1 = (QWebHistoryInterface *) _qtxhb_itemGetPtr(1);
  QWebHistoryInterface::setDefaultInterface ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
