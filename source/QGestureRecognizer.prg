/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QGESTURE

CLASS QGestureRecognizer

   DATA pointer
   DATA class_id INIT Class_Id_QGestureRecognizer
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD create
   METHOD recognize
   METHOD reset
   METHOD registerRecognizer
   METHOD unregisterRecognizer
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGestureRecognizer
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
#include <QGestureRecognizer>
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
#include <QGestureRecognizer>
#endif
#endif


HB_FUNC_STATIC( QGESTURERECOGNIZER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGestureRecognizer * obj = (QGestureRecognizer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QGesture * create(QObject * target)
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_CREATE )
{
  QGestureRecognizer * obj = (QGestureRecognizer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    QGesture * ptr = obj->create ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QGESTURE" );
  }
}


/*
virtual Result recognize(QGesture * gesture, QObject * watched, QEvent * event) = 0
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_RECOGNIZE )
{
  QGestureRecognizer * obj = (QGestureRecognizer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGesture * par1 = (QGesture *) _qtxhb_itemGetPtr(1);
    QObject * par2 = (QObject *) _qtxhb_itemGetPtr(2);
    QEvent * par3 = (QEvent *) _qtxhb_itemGetPtr(3);
    int i = obj->recognize ( par1, par2, par3 );
    hb_retni( i );
  }
}


/*
virtual void reset(QGesture * gesture)
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_RESET )
{
  QGestureRecognizer * obj = (QGestureRecognizer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGesture * par1 = (QGesture *) _qtxhb_itemGetPtr(1);
    obj->reset ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static Qt::GestureType registerRecognizer(QGestureRecognizer * recognizer)
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_REGISTERRECOGNIZER )
{
  QGestureRecognizer * par1 = (QGestureRecognizer *) _qtxhb_itemGetPtr(1);
  int i = QGestureRecognizer::registerRecognizer ( par1 );
  hb_retni( i );
}


/*
static void unregisterRecognizer(Qt::GestureType type)
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_UNREGISTERRECOGNIZER )
{
  int par1 = hb_parni(1);
  QGestureRecognizer::unregisterRecognizer (  (Qt::GestureType) par1 );
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QGESTURERECOGNIZER_NEWFROM )
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

HB_FUNC_STATIC( QGESTURERECOGNIZER_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QGESTURERECOGNIZER_NEWFROM );
}

HB_FUNC_STATIC( QGESTURERECOGNIZER_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QGESTURERECOGNIZER_NEWFROM );
}

HB_FUNC_STATIC( QGESTURERECOGNIZER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGESTURERECOGNIZER_SETSELFDESTRUCTION )
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