/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QRubberBand INHERIT QWidget

   DATA class_id INIT Class_Id_QRubberBand
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD move1
   METHOD move2
   METHOD move
   METHOD resize1
   METHOD resize2
   METHOD resize
   METHOD setGeometry1
   METHOD setGeometry2
   METHOD setGeometry
   METHOD shape
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRubberBand
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
#include <QRubberBand>
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
#include <QRubberBand>
#endif
#endif

/*
QRubberBand ( Shape s, QWidget * p = 0 )
*/
HB_FUNC_STATIC( QRUBBERBAND_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qtxhb_itemGetPtr(2);
  QRubberBand * o = new QRubberBand (  (QRubberBand::Shape) par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRubberBand *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QRUBBERBAND_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QRubberBand * obj = (QRubberBand *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void move ( int x, int y )
*/
HB_FUNC_STATIC( QRUBBERBAND_MOVE1 )
{
  QRubberBand * obj = (QRubberBand *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->move ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void move ( const QPoint & p )
*/
HB_FUNC_STATIC( QRUBBERBAND_MOVE2 )
{
  QRubberBand * obj = (QRubberBand *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    obj->move ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void move ( int x, int y )
//[2]void move ( const QPoint & p )

HB_FUNC_STATIC( QRUBBERBAND_MOVE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRUBBERBAND_MOVE1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QRUBBERBAND_MOVE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void resize ( int width, int height )
*/
HB_FUNC_STATIC( QRUBBERBAND_RESIZE1 )
{
  QRubberBand * obj = (QRubberBand *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resize ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resize ( const QSize & size )
*/
HB_FUNC_STATIC( QRUBBERBAND_RESIZE2 )
{
  QRubberBand * obj = (QRubberBand *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
    obj->resize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void resize ( int width, int height )
//[2]void resize ( const QSize & size )

HB_FUNC_STATIC( QRUBBERBAND_RESIZE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRUBBERBAND_RESIZE1 );
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QRUBBERBAND_RESIZE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setGeometry ( const QRect & rect )
*/
HB_FUNC_STATIC( QRUBBERBAND_SETGEOMETRY1 )
{
  QRubberBand * obj = (QRubberBand *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    obj->setGeometry ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGeometry ( int x, int y, int width, int height )
*/
HB_FUNC_STATIC( QRUBBERBAND_SETGEOMETRY2 )
{
  QRubberBand * obj = (QRubberBand *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setGeometry ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setGeometry ( const QRect & rect )
//[2]void setGeometry ( int x, int y, int width, int height )

HB_FUNC_STATIC( QRUBBERBAND_SETGEOMETRY )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QRUBBERBAND_SETGEOMETRY1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QRUBBERBAND_SETGEOMETRY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Shape shape () const
*/
HB_FUNC_STATIC( QRUBBERBAND_SHAPE )
{
  QRubberBand * obj = (QRubberBand *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->shape (  );
    hb_retni( i );
  }
}



#pragma ENDDUMP
