/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QNETWORKCONFIGURATION
REQUEST QNETWORKINTERFACE
REQUEST QVARIANT

CLASS QNetworkSession INHERIT QObject

   DATA class_id INIT Class_Id_QNetworkSession
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD activeTime
   METHOD bytesReceived
   METHOD bytesWritten
   METHOD configuration
   METHOD error
   METHOD errorString
   METHOD interface
   METHOD isOpen
   METHOD sessionProperty
   METHOD setSessionProperty
   METHOD state
   METHOD waitForOpened
   METHOD accept
   METHOD close
   METHOD ignore
   METHOD migrate
   METHOD open
   METHOD reject
   METHOD stop
   METHOD onClosed
   METHOD onError
   METHOD onNewConfigurationActivated
   METHOD onOpened
   METHOD onPreferredConfigurationChanged
   METHOD onStateChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkSession
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
#include <QNetworkSession>
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
#include <QNetworkSession>
#endif
#endif

/*
QNetworkSession ( const QNetworkConfiguration & connectionConfig, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QNETWORKSESSION_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QNetworkConfiguration * par1 = (QNetworkConfiguration *) _qtxhb_itemGetPtr(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qtxhb_itemGetPtr(2);
  QNetworkSession * o = new QNetworkSession ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkSession *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QNETWORKSESSION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
quint64 activeTime () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_ACTIVETIME )
{
  QNetworkSession * obj = (QNetworkSession *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->activeTime (  ) );
  }
}


/*
quint64 bytesReceived () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_BYTESRECEIVED )
{
  QNetworkSession * obj = (QNetworkSession *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesReceived (  ) );
  }
}


/*
quint64 bytesWritten () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_BYTESWRITTEN )
{
  QNetworkSession * obj = (QNetworkSession *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesWritten (  ) );
  }
}


/*
QNetworkConfiguration configuration () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_CONFIGURATION )
{
  QNetworkSession * obj = (QNetworkSession *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->configuration (  ) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKCONFIGURATION", true );
  }
}


/*
SessionError error () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_ERROR )
{
  QNetworkSession * obj = (QNetworkSession *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->error (  );
    hb_retni( i );
  }
}


/*
QString errorString () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_ERRORSTRING )
{
  QNetworkSession * obj = (QNetworkSession *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
QNetworkInterface interface () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_INTERFACE )
{
  QNetworkSession * obj = (QNetworkSession *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkInterface * ptr = new QNetworkInterface( obj->interface (  ) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKINTERFACE", true );
  }
}


/*
bool isOpen () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_ISOPEN )
{
  QNetworkSession * obj = (QNetworkSession *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isOpen (  ) );
  }
}


/*
QVariant sessionProperty ( const QString & key ) const
*/
HB_FUNC_STATIC( QNETWORKSESSION_SESSIONPROPERTY )
{
  QNetworkSession * obj = (QNetworkSession *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * ptr = new QVariant( obj->sessionProperty ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
void setSessionProperty ( const QString & key, const QVariant & value )
*/
HB_FUNC_STATIC( QNETWORKSESSION_SETSESSIONPROPERTY )
{
  QNetworkSession * obj = (QNetworkSession *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    obj->setSessionProperty ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
State state () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_STATE )
{
  QNetworkSession * obj = (QNetworkSession *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->state (  );
    hb_retni( i );
  }
}


/*
bool waitForOpened ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QNETWORKSESSION_WAITFOROPENED )
{
  QNetworkSession * obj = (QNetworkSession *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForOpened ( (int) ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
void accept ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_ACCEPT )
{
  QNetworkSession * obj = (QNetworkSession *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->accept (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void close ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_CLOSE )
{
  QNetworkSession * obj = (QNetworkSession *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void ignore ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_IGNORE )
{
  QNetworkSession * obj = (QNetworkSession *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->ignore (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void migrate ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_MIGRATE )
{
  QNetworkSession * obj = (QNetworkSession *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->migrate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void open ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_OPEN )
{
  QNetworkSession * obj = (QNetworkSession *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->open (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void reject ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_REJECT )
{
  QNetworkSession * obj = (QNetworkSession *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reject (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_STOP )
{
  QNetworkSession * obj = (QNetworkSession *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
