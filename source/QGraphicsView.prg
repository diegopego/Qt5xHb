/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBRUSH
REQUEST QGRAPHICSITEM
REQUEST QPOINT
REQUEST QPOLYGON
REQUEST QPAINTERPATH
REQUEST QPOINTF
REQUEST QPOLYGONF
REQUEST QMATRIX
REQUEST QGRAPHICSSCENE
REQUEST QRECTF
REQUEST QTRANSFORM
REQUEST QVARIANT
REQUEST QSIZE

CLASS QGraphicsView INHERIT QAbstractScrollArea

   DATA class_id INIT Class_Id_QGraphicsView
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD alignment
   METHOD backgroundBrush
   METHOD cacheMode
   METHOD centerOn1
   METHOD centerOn2
   METHOD centerOn3
   METHOD centerOn
   METHOD dragMode
   METHOD ensureVisible1
   METHOD ensureVisible2
   METHOD ensureVisible3
   METHOD ensureVisible
   METHOD fitInView1
   METHOD fitInView2
   METHOD fitInView3
   METHOD fitInView
   METHOD foregroundBrush
   METHOD isInteractive
   METHOD isTransformed
   METHOD itemAt1
   METHOD itemAt2
   METHOD itemAt
   METHOD mapFromScene1
   METHOD mapFromScene2
   METHOD mapFromScene3
   METHOD mapFromScene4
   METHOD mapFromScene5
   METHOD mapFromScene6
   METHOD mapFromScene
   METHOD mapToScene1
   METHOD mapToScene2
   METHOD mapToScene3
   METHOD mapToScene4
   METHOD mapToScene5
   METHOD mapToScene6
   METHOD mapToScene
   METHOD matrix
   METHOD optimizationFlags
   METHOD render
   METHOD renderHints
   METHOD resetCachedContent
   METHOD resetMatrix
   METHOD resetTransform
   METHOD resizeAnchor
   METHOD rotate
   METHOD rubberBandSelectionMode
   METHOD scale
   METHOD scene
   METHOD sceneRect
   METHOD setAlignment
   METHOD setBackgroundBrush
   METHOD setCacheMode
   METHOD setDragMode
   METHOD setForegroundBrush
   METHOD setInteractive
   METHOD setMatrix
   METHOD setOptimizationFlag
   METHOD setOptimizationFlags
   METHOD setRenderHint
   METHOD setRenderHints
   METHOD setResizeAnchor
   METHOD setRubberBandSelectionMode
   METHOD setScene
   METHOD setSceneRect1
   METHOD setSceneRect2
   METHOD setSceneRect
   METHOD setTransform
   METHOD setTransformationAnchor
   METHOD setViewportUpdateMode
   METHOD shear
   METHOD transform
   METHOD transformationAnchor
   METHOD translate
   METHOD viewportTransform
   METHOD viewportUpdateMode
   METHOD inputMethodQuery
   METHOD sizeHint
   METHOD invalidateScene
   METHOD updateScene
   METHOD updateSceneRect
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsView
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
#include <QGraphicsView>
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
#include <QGraphicsView>
#endif
#endif

#include <QVariant>

/*
QGraphicsView ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  QGraphicsView * o = new QGraphicsView ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsView *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QGraphicsView ( QGraphicsScene * scene, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGraphicsScene * par1 = (QGraphicsScene *) _qtxhb_itemGetPtr(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qtxhb_itemGetPtr(2);
  QGraphicsView * o = new QGraphicsView ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsView *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QGraphicsView ( QWidget * parent = 0 )
//[2]QGraphicsView ( QGraphicsScene * scene, QWidget * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQGRAPHICSSCENE(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSVIEW_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ALIGNMENT )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->alignment (  );
    hb_retni( i );
  }
}


/*
QBrush backgroundBrush () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_BACKGROUNDBRUSH )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->backgroundBrush (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
CacheMode cacheMode () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_CACHEMODE )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->cacheMode (  );
    hb_retni( i );
  }
}


/*
void centerOn ( const QPointF & pos )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_CENTERON1 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    obj->centerOn ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void centerOn ( qreal x, qreal y )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_CENTERON2 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->centerOn ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void centerOn ( const QGraphicsItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_CENTERON3 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) _qtxhb_itemGetPtr(1);
    obj->centerOn ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void centerOn ( const QPointF & pos )
//[2]void centerOn ( qreal x, qreal y )
//[3]void centerOn ( const QGraphicsItem * item )

HB_FUNC_STATIC( QGRAPHICSVIEW_CENTERON )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_CENTERON1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_CENTERON2 );
  }
  else if( ISNUMPAR(1) && ISQGRAPHICSITEM(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_CENTERON3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
DragMode dragMode () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_DRAGMODE )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->dragMode (  );
    hb_retni( i );
  }
}


/*
void ensureVisible ( const QRectF & rect, int xmargin = 50, int ymargin = 50 )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ENSUREVISIBLE1 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    obj->ensureVisible ( *par1, (int) ISNIL(2)? 50 : hb_parni(2), (int) ISNIL(3)? 50 : hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ensureVisible ( qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50 )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ENSUREVISIBLE2 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    obj->ensureVisible ( par1, par2, par3, par4, (int) ISNIL(5)? 50 : hb_parni(5), (int) ISNIL(6)? 50 : hb_parni(6) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ensureVisible ( const QGraphicsItem * item, int xmargin = 50, int ymargin = 50 )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ENSUREVISIBLE3 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) _qtxhb_itemGetPtr(1);
    obj->ensureVisible ( par1, (int) ISNIL(2)? 50 : hb_parni(2), (int) ISNIL(3)? 50 : hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void ensureVisible ( const QRectF & rect, int xmargin = 50, int ymargin = 50 )
//[2]void ensureVisible ( qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50 )
//[3]void ensureVisible ( const QGraphicsItem * item, int xmargin = 50, int ymargin = 50 )

HB_FUNC_STATIC( QGRAPHICSVIEW_ENSUREVISIBLE )
{
  if( ISBETWEEN(1,3) && ISQRECTF(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ENSUREVISIBLE1 );
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) && (ISNUM(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ENSUREVISIBLE2 );
  }
  else if( ISBETWEEN(1,3) && ISOBJECT(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ENSUREVISIBLE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void fitInView ( const QRectF & rect, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_FITINVIEW1 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::IgnoreAspectRatio : hb_parni(2);
    obj->fitInView ( *par1,  (Qt::AspectRatioMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fitInView ( qreal x, qreal y, qreal w, qreal h, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_FITINVIEW2 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    int par5 = ISNIL(5)? (int) Qt::IgnoreAspectRatio : hb_parni(5);
    obj->fitInView ( par1, par2, par3, par4,  (Qt::AspectRatioMode) par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fitInView ( const QGraphicsItem * item, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_FITINVIEW3 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::IgnoreAspectRatio : hb_parni(2);
    obj->fitInView ( par1,  (Qt::AspectRatioMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void fitInView ( const QRectF & rect, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
//[2]void fitInView ( qreal x, qreal y, qreal w, qreal h, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
//[3]void fitInView ( const QGraphicsItem * item, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )

HB_FUNC_STATIC( QGRAPHICSVIEW_FITINVIEW )
{
  if( ISBETWEEN(1,2) && ISQRECTF(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_FITINVIEW1 );
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_FITINVIEW2 );
  }
  else if( ISBETWEEN(1,2) && ISOBJECT(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_FITINVIEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QBrush foregroundBrush () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_FOREGROUNDBRUSH )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->foregroundBrush (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
bool isInteractive () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ISINTERACTIVE )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isInteractive (  ) );
  }
}


/*
bool isTransformed () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ISTRANSFORMED )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isTransformed (  ) );
  }
}


/*
QGraphicsItem * itemAt ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMAT1 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QGraphicsItem * ptr = obj->itemAt ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}

/*
QGraphicsItem * itemAt ( int x, int y ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMAT2 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsItem * ptr = obj->itemAt ( (int) hb_parni(1), (int) hb_parni(2) );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}


//[1]QGraphicsItem * itemAt ( const QPoint & pos ) const
//[2]QGraphicsItem * itemAt ( int x, int y ) const

HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ITEMAT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ITEMAT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}








/*
QPoint mapFromScene ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPFROMSCENE1 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    QPoint * ptr = new QPoint( obj->mapFromScene ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPolygon mapFromScene ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPFROMSCENE2 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    QPolygon * ptr = new QPolygon( obj->mapFromScene ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}

/*
QPolygon mapFromScene ( const QPolygonF & polygon ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPFROMSCENE3 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) _qtxhb_itemGetPtr(1);
    QPolygon * ptr = new QPolygon( obj->mapFromScene ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}

/*
QPainterPath mapFromScene ( const QPainterPath & path ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPFROMSCENE4 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qtxhb_itemGetPtr(1);
    QPainterPath * ptr = new QPainterPath( obj->mapFromScene ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QPoint mapFromScene ( qreal x, qreal y ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPFROMSCENE5 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    QPoint * ptr = new QPoint( obj->mapFromScene ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPolygon mapFromScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPFROMSCENE6 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    QPolygon * ptr = new QPolygon( obj->mapFromScene ( par1, par2, par3, par4 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}


//[1]QPoint mapFromScene ( const QPointF & point ) const
//[2]QPolygon mapFromScene ( const QRectF & rect ) const
//[3]QPolygon mapFromScene ( const QPolygonF & polygon ) const
//[4]QPainterPath mapFromScene ( const QPainterPath & path ) const
//[5]QPoint mapFromScene ( qreal x, qreal y ) const
//[6]QPolygon mapFromScene ( qreal x, qreal y, qreal w, qreal h ) const

HB_FUNC_STATIC( QGRAPHICSVIEW_MAPFROMSCENE )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPFROMSCENE1 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPFROMSCENE2 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPFROMSCENE3 );
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPFROMSCENE4 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPFROMSCENE5 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPFROMSCENE6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPointF mapToScene ( const QPoint & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPTOSCENE1 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QPointF * ptr = new QPointF( obj->mapToScene ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPolygonF mapToScene ( const QRect & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPTOSCENE2 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    QPolygonF * ptr = new QPolygonF( obj->mapToScene ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygonF mapToScene ( const QPolygon & polygon ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPTOSCENE3 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * par1 = (QPolygon *) _qtxhb_itemGetPtr(1);
    QPolygonF * ptr = new QPolygonF( obj->mapToScene ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPainterPath mapToScene ( const QPainterPath & path ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPTOSCENE4 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qtxhb_itemGetPtr(1);
    QPainterPath * ptr = new QPainterPath( obj->mapToScene ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QPointF mapToScene ( int x, int y ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPTOSCENE5 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->mapToScene ( (int) hb_parni(1), (int) hb_parni(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPolygonF mapToScene ( int x, int y, int w, int h ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPTOSCENE6 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapToScene ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}


//[1]QPointF mapToScene ( const QPoint & point ) const
//[2]QPolygonF mapToScene ( const QRect & rect ) const
//[3]QPolygonF mapToScene ( const QPolygon & polygon ) const
//[4]QPainterPath mapToScene ( const QPainterPath & path ) const
//[5]QPointF mapToScene ( int x, int y ) const
//[6]QPolygonF mapToScene ( int x, int y, int w, int h ) const

HB_FUNC_STATIC( QGRAPHICSVIEW_MAPTOSCENE )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPTOSCENE1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPTOSCENE2 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPTOSCENE3 );
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPTOSCENE4 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPTOSCENE5 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPTOSCENE6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QMatrix matrix () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MATRIX )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMatrix * ptr = new QMatrix( obj->matrix (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMATRIX" );
  }
}


/*
OptimizationFlags optimizationFlags () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_OPTIMIZATIONFLAGS )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->optimizationFlags (  );
    hb_retni( i );
  }
}


/*
void render ( QPainter * painter, const QRectF & target = QRectF(), const QRect & source = QRect(), Qt::AspectRatioMode aspectRatioMode = Qt::KeepAspectRatio )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RENDER )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainter * par1 = (QPainter *) _qtxhb_itemGetPtr(1);
    QRectF par2 = ISNIL(2)? QRectF() : *(QRectF *) _qtxhb_itemGetPtr(2);
    QRect par3 = ISNIL(3)? QRect() : *(QRect *) _qtxhb_itemGetPtr(3);
    int par4 = ISNIL(4)? (int) Qt::KeepAspectRatio : hb_parni(4);
    obj->render ( par1, par2, par3,  (Qt::AspectRatioMode) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPainter::RenderHints renderHints () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RENDERHINTS )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->renderHints (  );
    hb_retni( i );
  }
}


/*
void resetCachedContent ()
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RESETCACHEDCONTENT )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resetCachedContent (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resetMatrix ()
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RESETMATRIX )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resetMatrix (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resetTransform ()
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RESETTRANSFORM )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resetTransform (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
ViewportAnchor resizeAnchor () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RESIZEANCHOR )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->resizeAnchor (  );
    hb_retni( i );
  }
}


/*
void rotate ( qreal angle )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ROTATE )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->rotate ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::ItemSelectionMode rubberBandSelectionMode () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RUBBERBANDSELECTIONMODE )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->rubberBandSelectionMode (  );
    hb_retni( i );
  }
}


/*
void scale ( qreal sx, qreal sy )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SCALE )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->scale ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QGraphicsScene * scene () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SCENE )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsScene * ptr = obj->scene (  );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSSCENE" );
  }
}


/*
QRectF sceneRect () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SCENERECT )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->sceneRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
void setAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETALIGNMENT )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment (  (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBackgroundBrush ( const QBrush & brush )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETBACKGROUNDBRUSH )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * par1 = (QBrush *) _qtxhb_itemGetPtr(1);
    obj->setBackgroundBrush ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCacheMode ( CacheMode mode )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETCACHEMODE )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCacheMode (  (QGraphicsView::CacheMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDragMode ( DragMode mode )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETDRAGMODE )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDragMode (  (QGraphicsView::DragMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setForegroundBrush ( const QBrush & brush )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETFOREGROUNDBRUSH )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * par1 = (QBrush *) _qtxhb_itemGetPtr(1);
    obj->setForegroundBrush ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setInteractive ( bool allowed )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETINTERACTIVE )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setInteractive ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMatrix ( const QMatrix & matrix, bool combine = false )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETMATRIX )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMatrix * par1 = (QMatrix *) _qtxhb_itemGetPtr(1);
    obj->setMatrix ( *par1, (bool) ISNIL(2)? false : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOptimizationFlag ( OptimizationFlag flag, bool enabled = true )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETOPTIMIZATIONFLAG )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOptimizationFlag (  (QGraphicsView::OptimizationFlag) par1, (bool) ISNIL(2)? true : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOptimizationFlags ( OptimizationFlags flags )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETOPTIMIZATIONFLAGS )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOptimizationFlags (  (QGraphicsView::OptimizationFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRenderHint ( QPainter::RenderHint hint, bool enabled = true )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETRENDERHINT )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRenderHint (  (QPainter::RenderHint) par1, (bool) ISNIL(2)? true : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRenderHints ( QPainter::RenderHints hints )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETRENDERHINTS )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRenderHints (  (QPainter::RenderHints) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setResizeAnchor ( ViewportAnchor anchor )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETRESIZEANCHOR )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setResizeAnchor (  (QGraphicsView::ViewportAnchor) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRubberBandSelectionMode ( Qt::ItemSelectionMode mode )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETRUBBERBANDSELECTIONMODE )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRubberBandSelectionMode (  (Qt::ItemSelectionMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScene ( QGraphicsScene * scene )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETSCENE )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsScene * par1 = (QGraphicsScene *) _qtxhb_itemGetPtr(1);
    obj->setScene ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSceneRect ( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETSCENERECT1 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    obj->setSceneRect ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSceneRect ( qreal x, qreal y, qreal w, qreal h )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETSCENERECT2 )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    obj->setSceneRect ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setSceneRect ( const QRectF & rect )
//[2]void setSceneRect ( qreal x, qreal y, qreal w, qreal h )

HB_FUNC_STATIC( QGRAPHICSVIEW_SETSCENERECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_SETSCENERECT1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_SETSCENERECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setTransform ( const QTransform & matrix, bool combine = false )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETTRANSFORM )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform * par1 = (QTransform *) _qtxhb_itemGetPtr(1);
    obj->setTransform ( *par1, (bool) ISNIL(2)? false : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTransformationAnchor ( ViewportAnchor anchor )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETTRANSFORMATIONANCHOR )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTransformationAnchor (  (QGraphicsView::ViewportAnchor) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setViewportUpdateMode ( ViewportUpdateMode mode )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETVIEWPORTUPDATEMODE )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setViewportUpdateMode (  (QGraphicsView::ViewportUpdateMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void shear ( qreal sh, qreal sv )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SHEAR )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->shear ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTransform transform () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_TRANSFORM )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform * ptr = new QTransform( obj->transform (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}


/*
ViewportAnchor transformationAnchor () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_TRANSFORMATIONANCHOR )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->transformationAnchor (  );
    hb_retni( i );
  }
}


/*
void translate ( qreal dx, qreal dy )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_TRANSLATE )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->translate ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTransform viewportTransform () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_VIEWPORTTRANSFORM )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform * ptr = new QTransform( obj->viewportTransform (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}


/*
ViewportUpdateMode viewportUpdateMode () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_VIEWPORTUPDATEMODE )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->viewportUpdateMode (  );
    hb_retni( i );
  }
}


/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_INPUTMETHODQUERY )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->inputMethodQuery (  (Qt::InputMethodQuery) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SIZEHINT )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void invalidateScene ( const QRectF & rect = QRectF(), QGraphicsScene::SceneLayers layers = QGraphicsScene::AllLayers )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_INVALIDATESCENE )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF par1 = ISNIL(1)? QRectF() : *(QRectF *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QGraphicsScene::AllLayers : hb_parni(2);
    obj->invalidateScene ( par1,  (QGraphicsScene::SceneLayers) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void updateScene ( const QList<QRectF> & rects )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_UPDATESCENE )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QRectF> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->updateScene ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void updateSceneRect ( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_UPDATESCENERECT )
{
  QGraphicsView * obj = (QGraphicsView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    obj->updateSceneRect ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
