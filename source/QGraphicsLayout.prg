/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QGRAPHICSLAYOUTITEM

CLASS QGraphicsLayout INHERIT QGraphicsLayoutItem

   DATA class_id INIT Class_Id_QGraphicsLayout
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD activate
   METHOD count
   METHOD invalidate
   METHOD isActivated
   METHOD itemAt
   METHOD removeAt
   METHOD setContentsMargins
   METHOD widgetEvent
   METHOD getContentsMargins
   METHOD updateGeometry
   METHOD instantInvalidatePropagation
   METHOD setInstantInvalidatePropagation
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsLayout
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
#include <QGraphicsLayout>
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
#include <QGraphicsLayout>
#endif
#endif


HB_FUNC_STATIC( QGRAPHICSLAYOUT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGraphicsLayout * obj = (QGraphicsLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void activate ()
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_ACTIVATE )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->activate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int count () const = 0
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_COUNT )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_INVALIDATE )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->invalidate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isActivated () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_ISACTIVATED )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isActivated (  ) );
  }
}


/*
virtual QGraphicsLayoutItem * itemAt ( int i ) const = 0
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_ITEMAT )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * ptr = obj->itemAt ( (int) hb_parni(1) );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM" );
  }
}


/*
virtual void removeAt ( int index ) = 0
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_REMOVEAT )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeAt ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContentsMargins ( qreal left, qreal top, qreal right, qreal bottom )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_SETCONTENTSMARGINS )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    obj->setContentsMargins ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void widgetEvent ( QEvent * e )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_WIDGETEVENT )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QEvent * par1 = (QEvent *) _qtxhb_itemGetPtr(1);
    obj->widgetEvent ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_GETCONTENTSMARGINS )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    obj->getContentsMargins ( &par1, &par2, &par3, &par4 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void updateGeometry ()
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_UPDATEGEOMETRY )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->updateGeometry (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool instantInvalidatePropagation ()
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_INSTANTINVALIDATEPROPAGATION )
{
  hb_retl( QGraphicsLayout::instantInvalidatePropagation (  ) );
}


/*
static void setInstantInvalidatePropagation ( bool enable )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_SETINSTANTINVALIDATEPROPAGATION )
{
  QGraphicsLayout::setInstantInvalidatePropagation ( (bool) hb_parl(1) );
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
