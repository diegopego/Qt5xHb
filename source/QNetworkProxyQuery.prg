/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QURL

CLASS QNetworkProxyQuery

   DATA pointer
   DATA class_id INIT Class_Id_QNetworkProxyQuery
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new
   METHOD delete
   METHOD localPort
   METHOD peerHostName
   METHOD peerPort
   METHOD protocolTag
   METHOD queryType
   METHOD setLocalPort
   METHOD setPeerHostName
   METHOD setPeerPort
   METHOD setProtocolTag
   METHOD setQueryType
   METHOD setUrl
   METHOD url
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkProxyQuery
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
#include <QNetworkProxyQuery>
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
#include <QNetworkProxyQuery>
#endif
#endif

#include <QUrl>

/*
QNetworkProxyQuery ()
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QNetworkProxyQuery * o = new QNetworkProxyQuery (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkProxyQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QNetworkProxyQuery ( const QUrl & requestUrl, QueryType queryType = UrlRequest )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) QNetworkProxyQuery::UrlRequest : hb_parni(2);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( *par1,  (QNetworkProxyQuery::QueryType) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkProxyQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QNetworkProxyQuery ( const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  int par2 = hb_parni(2);
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  int par4 = ISNIL(4)? (int) QNetworkProxyQuery::TcpSocket : hb_parni(4);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( par1, par2, par3,  (QNetworkProxyQuery::QueryType) par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkProxyQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QNetworkProxyQuery ( quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  quint16 par1 = hb_parni(1);
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  int par3 = ISNIL(3)? (int) QNetworkProxyQuery::TcpServer : hb_parni(3);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( par1, par2,  (QNetworkProxyQuery::QueryType) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkProxyQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QNetworkProxyQuery ( const QNetworkProxyQuery & other )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QNetworkProxyQuery * par1 = (QNetworkProxyQuery *) _qtxhb_itemGetPtr(1);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkProxyQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QUrl & requestUrl, QueryType queryType = UrlRequest )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW6 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QNetworkConfiguration * par1 = (QNetworkConfiguration *) _qtxhb_itemGetPtr(1);
  QUrl * par2 = (QUrl *) _qtxhb_itemGetPtr(2);
  int par3 = ISNIL(3)? (int) QNetworkProxyQuery::UrlRequest : hb_parni(3);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( *par1, *par2,  (QNetworkProxyQuery::QueryType) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkProxyQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW7 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QNetworkConfiguration * par1 = (QNetworkConfiguration *) _qtxhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  int par3 = hb_parni(3);
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  int par5 = ISNIL(5)? (int) QNetworkProxyQuery::TcpSocket : hb_parni(5);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( *par1, par2, par3, par4,  (QNetworkProxyQuery::QueryType) par5 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkProxyQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW8 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QNetworkConfiguration * par1 = (QNetworkConfiguration *) _qtxhb_itemGetPtr(1);
  quint16 par2 = hb_parni(2);
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  int par4 = ISNIL(4)? (int) QNetworkProxyQuery::TcpServer : hb_parni(4);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( *par1, par2, par3,  (QNetworkProxyQuery::QueryType) par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkProxyQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QNetworkProxyQuery ()
//[2]QNetworkProxyQuery ( const QUrl & requestUrl, QueryType queryType = UrlRequest )
//[3]QNetworkProxyQuery ( const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
//[4]QNetworkProxyQuery ( quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )
//[5]QNetworkProxyQuery ( const QNetworkProxyQuery & other )
//[6]QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QUrl & requestUrl, QueryType queryType = UrlRequest )
//[7]QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
//[8]QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )

HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW2 );
  }
  else if( ISBETWEEN(2,4) && ISCHAR(1) && ISNUM(2) && (ISCHAR(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW3 );
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKPROXYQUERY(1) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW5 );
  }
  else if( ISBETWEEN(2,3) && ISQNETWORKCONFIGURATION(1) && ISQURL(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW6 );
  }
  else if( ISBETWEEN(3,5) && ISQNETWORKCONFIGURATION(1) && ISCHAR(2) && ISNUM(3) && (ISCHAR(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW7 );
  }
  else if( ISBETWEEN(2,4) && ISQNETWORKCONFIGURATION(1) && ISNUM(2) && (ISCHAR(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QNETWORKPROXYQUERY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int localPort () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_LOCALPORT )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->localPort (  ) );
  }
}


/*
QString peerHostName () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_PEERHOSTNAME )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->peerHostName (  ).toLatin1().data() );
  }
}


/*
int peerPort () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_PEERPORT )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->peerPort (  ) );
  }
}


/*
QString protocolTag () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_PROTOCOLTAG )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->protocolTag (  ).toLatin1().data() );
  }
}


/*
QueryType queryType () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_QUERYTYPE )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->queryType (  );
    hb_retni( i );
  }
}


/*
void setLocalPort ( int port )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETLOCALPORT )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLocalPort ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPeerHostName ( const QString & hostname )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETPEERHOSTNAME )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setPeerHostName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPeerPort ( int port )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETPEERPORT )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPeerPort ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProtocolTag ( const QString & protocolTag )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETPROTOCOLTAG )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setProtocolTag ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setQueryType ( QueryType type )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETQUERYTYPE )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setQueryType (  (QNetworkProxyQuery::QueryType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETURL )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    obj->setUrl ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUrl url () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_URL )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}



HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEWFROMOBJECT )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKPROXYQUERY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
