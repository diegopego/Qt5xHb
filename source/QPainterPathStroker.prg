/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPAINTERPATH

CLASS QPainterPathStroker

   DATA pointer
   DATA class_id INIT Class_Id_QPainterPathStroker
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD capStyle
   METHOD createStroke
   METHOD curveThreshold
   METHOD dashOffset
   METHOD dashPattern
   METHOD joinStyle
   METHOD miterLimit
   METHOD setCapStyle
   METHOD setCurveThreshold
   METHOD setDashOffset
   METHOD setDashPattern1
   METHOD setDashPattern2
   METHOD setDashPattern
   METHOD setJoinStyle
   METHOD setMiterLimit
   METHOD setWidth
   METHOD width
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPainterPathStroker
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
#include <QPainterPathStroker>
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
#include <QPainterPathStroker>
#endif
#endif

/*
QPainterPathStroker ()
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPainterPathStroker * o = new QPainterPathStroker (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPainterPathStroker *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QPAINTERPATHSTROKER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPainterPathStroker * obj = (QPainterPathStroker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Qt::PenCapStyle capStyle () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_CAPSTYLE )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->capStyle (  );
    hb_retni( i );
  }
}


/*
QPainterPath createStroke ( const QPainterPath & path ) const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_CREATESTROKE )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qtxhb_itemGetPtr(1);
    QPainterPath * ptr = new QPainterPath( obj->createStroke ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
qreal curveThreshold () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_CURVETHRESHOLD )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->curveThreshold (  ) );
  }
}


/*
qreal dashOffset () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_DASHOFFSET )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->dashOffset (  ) );
  }
}


/*
QVector<qreal> dashPattern () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_DASHPATTERN )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector<qreal> list = obj->dashPattern (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutND( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
Qt::PenJoinStyle joinStyle () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_JOINSTYLE )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->joinStyle (  );
    hb_retni( i );
  }
}


/*
qreal miterLimit () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_MITERLIMIT )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->miterLimit (  ) );
  }
}


/*
void setCapStyle ( Qt::PenCapStyle style )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETCAPSTYLE )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCapStyle (  (Qt::PenCapStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurveThreshold ( qreal threshold )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETCURVETHRESHOLD )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setCurveThreshold ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDashOffset ( qreal offset )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETDASHOFFSET )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setDashOffset ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDashPattern ( Qt::PenStyle style )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETDASHPATTERN1 )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDashPattern (  (Qt::PenStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDashPattern ( const QVector<qreal> & dashPattern )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETDASHPATTERN2 )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QVector<qreal> par1;
PHB_ITEM aValues1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aValues1);
int temp1;
for (i1=0;i1<nLen1;i1++)
{
temp1 = hb_arrayGetND(aValues1, i1+1);
par1 << temp1;
}
    obj->setDashPattern ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setDashPattern ( Qt::PenStyle style )
//[2]void setDashPattern ( const QVector<qreal> & dashPattern )

HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETDASHPATTERN )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATHSTROKER_SETDASHPATTERN1 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATHSTROKER_SETDASHPATTERN2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setJoinStyle ( Qt::PenJoinStyle style )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETJOINSTYLE )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setJoinStyle (  (Qt::PenJoinStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMiterLimit ( qreal limit )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETMITERLIMIT )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setMiterLimit ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidth ( qreal width )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETWIDTH )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setWidth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal width () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_WIDTH )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->width (  ) );
  }
}



HB_FUNC_STATIC( QPAINTERPATHSTROKER_NEWFROM )
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

HB_FUNC_STATIC( QPAINTERPATHSTROKER_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QPAINTERPATHSTROKER_NEWFROM );
}

HB_FUNC_STATIC( QPAINTERPATHSTROKER_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QPAINTERPATHSTROKER_NEWFROM );
}

HB_FUNC_STATIC( QPAINTERPATHSTROKER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETSELFDESTRUCTION )
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