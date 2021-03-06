/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDnsMailExchangeRecord

   DATA pointer
   DATA class_id INIT Class_Id_QDnsMailExchangeRecord
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD exchange
   METHOD name
   METHOD preference
   METHOD swap
   METHOD timeToLive
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDnsMailExchangeRecord
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
#include <QDnsMailExchangeRecord>
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
#include <QDnsMailExchangeRecord>
#endif
#endif

/*
QDnsMailExchangeRecord()
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDnsMailExchangeRecord * o = new QDnsMailExchangeRecord (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDnsMailExchangeRecord *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QDnsMailExchangeRecord(const QDnsMailExchangeRecord & other)
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDnsMailExchangeRecord * par1 = (QDnsMailExchangeRecord *) _qtxhb_itemGetPtr(1);
  QDnsMailExchangeRecord * o = new QDnsMailExchangeRecord ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDnsMailExchangeRecord *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QDnsMailExchangeRecord()
//[2]QDnsMailExchangeRecord(const QDnsMailExchangeRecord & other)

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDNSMAILEXCHANGERECORD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDNSMAILEXCHANGERECORD(1) )
  {
    HB_FUNC_EXEC( QDNSMAILEXCHANGERECORD_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString exchange() const
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_EXCHANGE )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->exchange (  ).toLatin1().data() );
  }
}


/*
QString name() const
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NAME )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}


/*
quint16 preference() const
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_PREFERENCE )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->preference (  ) );
  }
}


/*
void swap(QDnsMailExchangeRecord & other)
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_SWAP )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDnsMailExchangeRecord * par1 = (QDnsMailExchangeRecord *) _qtxhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
quint32 timeToLive() const
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_TIMETOLIVE )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->timeToLive (  ) );
  }
}



HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEWFROM )
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

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QDNSMAILEXCHANGERECORD_NEWFROM );
}

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QDNSMAILEXCHANGERECORD_NEWFROM );
}

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_SETSELFDESTRUCTION )
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