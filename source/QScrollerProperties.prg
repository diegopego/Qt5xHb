/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT

CLASS QScrollerProperties

   DATA pointer
   DATA class_id INIT Class_Id_QScrollerProperties
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD scrollMetric
   METHOD setScrollMetric
   METHOD setDefaultScrollerProperties
   METHOD unsetDefaultScrollerProperties
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScrollerProperties
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
#include <QScrollerProperties>
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
#include <QScrollerProperties>
#endif
#endif

/*
QScrollerProperties()
*/
HB_FUNC_STATIC( QSCROLLERPROPERTIES_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QScrollerProperties * o = new QScrollerProperties (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScrollerProperties *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QScrollerProperties(const QScrollerProperties & sp)
*/
HB_FUNC_STATIC( QSCROLLERPROPERTIES_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QScrollerProperties * par1 = (QScrollerProperties *) _qtxhb_itemGetPtr(1);
  QScrollerProperties * o = new QScrollerProperties ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScrollerProperties *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QScrollerProperties()
//[2]QScrollerProperties(const QScrollerProperties & sp)

HB_FUNC_STATIC( QSCROLLERPROPERTIES_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSCROLLERPROPERTIES_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSCROLLERPROPERTIES(1) )
  {
    HB_FUNC_EXEC( QSCROLLERPROPERTIES_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSCROLLERPROPERTIES_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QScrollerProperties * obj = (QScrollerProperties *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QVariant scrollMetric(ScrollMetric metric) const
*/
HB_FUNC_STATIC( QSCROLLERPROPERTIES_SCROLLMETRIC )
{
  QScrollerProperties * obj = (QScrollerProperties *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->scrollMetric (  (QScrollerProperties::ScrollMetric) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
void setScrollMetric(ScrollMetric metric, const QVariant & value)
*/
HB_FUNC_STATIC( QSCROLLERPROPERTIES_SETSCROLLMETRIC )
{
  QScrollerProperties * obj = (QScrollerProperties *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    obj->setScrollMetric (  (QScrollerProperties::ScrollMetric) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultScrollerProperties(const QScrollerProperties & sp)
*/
HB_FUNC_STATIC( QSCROLLERPROPERTIES_SETDEFAULTSCROLLERPROPERTIES )
{
  QScrollerProperties * obj = (QScrollerProperties *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScrollerProperties * par1 = (QScrollerProperties *) _qtxhb_itemGetPtr(1);
    obj->setDefaultScrollerProperties ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void unsetDefaultScrollerProperties()
*/
HB_FUNC_STATIC( QSCROLLERPROPERTIES_UNSETDEFAULTSCROLLERPROPERTIES )
{
  QScrollerProperties * obj = (QScrollerProperties *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->unsetDefaultScrollerProperties (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QSCROLLERPROPERTIES_NEWFROM )
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

HB_FUNC_STATIC( QSCROLLERPROPERTIES_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QSCROLLERPROPERTIES_NEWFROM );
}

HB_FUNC_STATIC( QSCROLLERPROPERTIES_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QSCROLLERPROPERTIES_NEWFROM );
}

HB_FUNC_STATIC( QSCROLLERPROPERTIES_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSCROLLERPROPERTIES_SETSELFDESTRUCTION )
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