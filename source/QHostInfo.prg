/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QHOSTADDRESS

CLASS QHostInfo

   DATA pointer
   DATA class_id INIT Class_Id_QHostInfo
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addresses
   METHOD error
   METHOD errorString
   METHOD hostName
   METHOD lookupId
   METHOD setAddresses
   METHOD setError
   METHOD setErrorString
   METHOD setHostName
   METHOD setLookupId
   METHOD abortHostLookup
   METHOD fromName
   METHOD localDomainName
   METHOD localHostName
   METHOD lookupHost
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHostInfo
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
#include <QHostInfo>
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
#include <QHostInfo>
#endif
#endif

/*
QHostInfo ( int id = -1 )
*/
HB_FUNC_STATIC( QHOSTINFO_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = ISNIL(1)? -1 : hb_parni(1);
  QHostInfo * o = new QHostInfo ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHostInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QHostInfo ( const QHostInfo & other )
*/
HB_FUNC_STATIC( QHOSTINFO_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QHostInfo * par1 = (QHostInfo *) _qtxhb_itemGetPtr(1);
  QHostInfo * o = new QHostInfo ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHostInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QHostInfo ( int id = -1 )
//[2]QHostInfo ( const QHostInfo & other )

HB_FUNC_STATIC( QHOSTINFO_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QHOSTINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQHOSTINFO(1) )
  {
    HB_FUNC_EXEC( QHOSTINFO_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QHOSTINFO_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QHostInfo * obj = (QHostInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QList<QHostAddress> addresses () const
*/
HB_FUNC_STATIC( QHOSTINFO_ADDRESSES )
{
  QHostInfo * obj = (QHostInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QHostAddress> list = obj->addresses (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QHOSTADDRESS" );
    #else
    pDynSym = hb_dynsymFindName( "QHOSTADDRESS" );
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
        hb_itemPutPtr( pItem, (QHostAddress *) new QHostAddress ( list[i] ) );
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
}


/*
HostInfoError error () const
*/
HB_FUNC_STATIC( QHOSTINFO_ERROR )
{
  QHostInfo * obj = (QHostInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->error (  );
    hb_retni( i );
  }
}


/*
QString errorString () const
*/
HB_FUNC_STATIC( QHOSTINFO_ERRORSTRING )
{
  QHostInfo * obj = (QHostInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
QString hostName () const
*/
HB_FUNC_STATIC( QHOSTINFO_HOSTNAME )
{
  QHostInfo * obj = (QHostInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->hostName (  ).toLatin1().data() );
  }
}


/*
int lookupId () const
*/
HB_FUNC_STATIC( QHOSTINFO_LOOKUPID )
{
  QHostInfo * obj = (QHostInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->lookupId (  ) );
  }
}


/*
void setAddresses ( const QList<QHostAddress> & addresses )
*/
HB_FUNC_STATIC( QHOSTINFO_SETADDRESSES )
{
  QHostInfo * obj = (QHostInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QHostAddress> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setAddresses ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setError ( HostInfoError error )
*/
HB_FUNC_STATIC( QHOSTINFO_SETERROR )
{
  QHostInfo * obj = (QHostInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setError (  (QHostInfo::HostInfoError) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setErrorString ( const QString & str )
*/
HB_FUNC_STATIC( QHOSTINFO_SETERRORSTRING )
{
  QHostInfo * obj = (QHostInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setErrorString ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHostName ( const QString & hostName )
*/
HB_FUNC_STATIC( QHOSTINFO_SETHOSTNAME )
{
  QHostInfo * obj = (QHostInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setHostName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLookupId ( int id )
*/
HB_FUNC_STATIC( QHOSTINFO_SETLOOKUPID )
{
  QHostInfo * obj = (QHostInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLookupId ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void abortHostLookup ( int id )
*/
HB_FUNC_STATIC( QHOSTINFO_ABORTHOSTLOOKUP )
{
  QHostInfo::abortHostLookup ( (int) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QHostInfo fromName ( const QString & name )
*/
HB_FUNC_STATIC( QHOSTINFO_FROMNAME )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QHostInfo * ptr = new QHostInfo( QHostInfo::fromName ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QHOSTINFO", true );
}


/*
static QString localDomainName ()
*/
HB_FUNC_STATIC( QHOSTINFO_LOCALDOMAINNAME )
{
  hb_retc( (const char *) QHostInfo::localDomainName (  ).toLatin1().data() );
}


/*
static QString localHostName ()
*/
HB_FUNC_STATIC( QHOSTINFO_LOCALHOSTNAME )
{
  hb_retc( (const char *) QHostInfo::localHostName (  ).toLatin1().data() );
}


/*
static int lookupHost ( const QString & name, QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QHOSTINFO_LOOKUPHOST )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QObject * par2 = (QObject *) _qtxhb_itemGetPtr(2);
  const char * par3 = hb_parc(3);
  hb_retni( QHostInfo::lookupHost ( par1, par2,  (const char *) par3 ) );
}



HB_FUNC_STATIC( QHOSTINFO_NEWFROM )
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

HB_FUNC_STATIC( QHOSTINFO_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QHOSTINFO_NEWFROM );
}

HB_FUNC_STATIC( QHOSTINFO_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QHOSTINFO_NEWFROM );
}

HB_FUNC_STATIC( QHOSTINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QHOSTINFO_SETSELFDESTRUCTION )
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