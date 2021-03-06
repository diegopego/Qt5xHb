/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBRUSH
REQUEST QPEN
REQUEST QPAINTERPATH

CLASS QAbstractGraphicsShapeItem INHERIT QGraphicsItem

   DATA class_id INIT Class_Id_QAbstractGraphicsShapeItem
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD brush
   METHOD setBrush
   METHOD pen
   METHOD setPen
   METHOD isObscuredBy
   METHOD opaqueArea
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractGraphicsShapeItem
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
#include <QAbstractGraphicsShapeItem>
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
#include <QAbstractGraphicsShapeItem>
#endif
#endif

#include <QBrush>
#include <QPen>


HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QBrush brush () const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_BRUSH )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->brush (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
void setBrush ( const QBrush & brush )
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_SETBRUSH )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * par1 = (QBrush *) _qtxhb_itemGetPtr(1);
    obj->setBrush ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPen pen () const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_PEN )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPen * ptr = new QPen( obj->pen (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPEN", true );
  }
}

/*
void setPen ( const QPen & pen )
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_SETPEN )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPen * par1 = (QPen *) _qtxhb_itemGetPtr(1);
    obj->setPen ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_ISOBSCUREDBY )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->isObscuredBy ( par1 ) );
  }
}


/*
QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_OPAQUEAREA )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}



#pragma ENDDUMP
