/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDATETIME
REQUEST QBYTEARRAY

CLASS QNetworkCookie

   DATA pointer
   DATA class_id INIT Class_Id_QNetworkCookie
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD domain
   METHOD expirationDate
   METHOD isHttpOnly
   METHOD isSecure
   METHOD isSessionCookie
   METHOD name
   METHOD path
   METHOD setDomain
   METHOD setExpirationDate
   METHOD setHttpOnly
   METHOD setName
   METHOD setPath
   METHOD setSecure
   METHOD setValue
   METHOD toRawForm
   METHOD value
   METHOD parseCookies
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkCookie
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
#include <QNetworkCookie>
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
#include <QNetworkCookie>
#endif
#endif

#include <QDateTime>

/*
QNetworkCookie ( const QByteArray & name = QByteArray(), const QByteArray & value = QByteArray() )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QByteArray par1 = ISNIL(1)? QByteArray() : *(QByteArray *) _qtxhb_itemGetPtr(1);
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) _qtxhb_itemGetPtr(2);
  QNetworkCookie * o = new QNetworkCookie ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkCookie *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QNetworkCookie ( const QNetworkCookie & other )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QNetworkCookie * par1 = (QNetworkCookie *) _qtxhb_itemGetPtr(1);
  QNetworkCookie * o = new QNetworkCookie ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkCookie *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QNetworkCookie ( const QByteArray & name = QByteArray(), const QByteArray & value = QByteArray() )
//[2]QNetworkCookie ( const QNetworkCookie & other )

HB_FUNC_STATIC( QNETWORKCOOKIE_NEW )
{
  if( ISBETWEEN(0,2) && (ISQBYTEARRAY(1)||ISNIL(1)) && (ISQBYTEARRAY(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QNETWORKCOOKIE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKCOOKIE(1) )
  {
    HB_FUNC_EXEC( QNETWORKCOOKIE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QNETWORKCOOKIE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString domain () const
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_DOMAIN )
{
  QNetworkCookie * obj = (QNetworkCookie *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->domain (  ).toLatin1().data() );
  }
}


/*
QDateTime expirationDate () const
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_EXPIRATIONDATE )
{
  QNetworkCookie * obj = (QNetworkCookie *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->expirationDate (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
bool isHttpOnly () const
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_ISHTTPONLY )
{
  QNetworkCookie * obj = (QNetworkCookie *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isHttpOnly (  ) );
  }
}


/*
bool isSecure () const
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_ISSECURE )
{
  QNetworkCookie * obj = (QNetworkCookie *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSecure (  ) );
  }
}


/*
bool isSessionCookie () const
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_ISSESSIONCOOKIE )
{
  QNetworkCookie * obj = (QNetworkCookie *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSessionCookie (  ) );
  }
}


/*
QByteArray name () const
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_NAME )
{
  QNetworkCookie * obj = (QNetworkCookie *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->name (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QString path () const
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_PATH )
{
  QNetworkCookie * obj = (QNetworkCookie *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->path (  ).toLatin1().data() );
  }
}


/*
void setDomain ( const QString & domain )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_SETDOMAIN )
{
  QNetworkCookie * obj = (QNetworkCookie *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setDomain ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setExpirationDate ( const QDateTime & date )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_SETEXPIRATIONDATE )
{
  QNetworkCookie * obj = (QNetworkCookie *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) _qtxhb_itemGetPtr(1);
    obj->setExpirationDate ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHttpOnly ( bool enable )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_SETHTTPONLY )
{
  QNetworkCookie * obj = (QNetworkCookie *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHttpOnly ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setName ( const QByteArray & cookieName )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_SETNAME )
{
  QNetworkCookie * obj = (QNetworkCookie *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    obj->setName ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPath ( const QString & path )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_SETPATH )
{
  QNetworkCookie * obj = (QNetworkCookie *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setPath ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSecure ( bool enable )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_SETSECURE )
{
  QNetworkCookie * obj = (QNetworkCookie *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSecure ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setValue ( const QByteArray & value )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_SETVALUE )
{
  QNetworkCookie * obj = (QNetworkCookie *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    obj->setValue ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray toRawForm ( RawForm form = Full ) const
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_TORAWFORM )
{
  QNetworkCookie * obj = (QNetworkCookie *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QNetworkCookie::Full : hb_parni(1);
    QByteArray * ptr = new QByteArray( obj->toRawForm (  (QNetworkCookie::RawForm) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray value () const
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_VALUE )
{
  QNetworkCookie * obj = (QNetworkCookie *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->value (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
static QList<QNetworkCookie> parseCookies ( const QByteArray & cookieString )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_PARSECOOKIES )
{
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  QList<QNetworkCookie> list = QNetworkCookie::parseCookies ( *par1 );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QNETWORKCOOKIE" );
  #else
  pDynSym = hb_dynsymFindName( "QNETWORKCOOKIE" );
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
      hb_itemPutPtr( pItem, (QNetworkCookie *) new QNetworkCookie ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}



HB_FUNC_STATIC( QNETWORKCOOKIE_NEWFROM )
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

HB_FUNC_STATIC( QNETWORKCOOKIE_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QNETWORKCOOKIE_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKCOOKIE_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QNETWORKCOOKIE_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKCOOKIE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QNETWORKCOOKIE_SETSELFDESTRUCTION )
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