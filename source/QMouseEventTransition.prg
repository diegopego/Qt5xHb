/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPAINTERPATH

CLASS QMouseEventTransition INHERIT QEventTransition

   DATA class_id INIT Class_Id_QMouseEventTransition
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD button
   METHOD hitTestPath
   METHOD modifierMask
   METHOD setButton
   METHOD setHitTestPath
   METHOD setModifierMask
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMouseEventTransition
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
#include <QMouseEventTransition>
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
#include <QMouseEventTransition>
#endif
#endif

#include <QPainterPath>

/*
QMouseEventTransition ( QState * sourceState = 0 )
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QState * par1 = ISNIL(1)? 0 : (QState *) _qtxhb_itemGetPtr(1);
  QMouseEventTransition * o = new QMouseEventTransition ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMouseEventTransition *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QMouseEventTransition ( QObject * object, QEvent::Type type, Qt::MouseButton button, QState * sourceState = 0 )
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  QState * par4 = ISNIL(4)? 0 : (QState *) _qtxhb_itemGetPtr(4);
  QMouseEventTransition * o = new QMouseEventTransition ( par1,  (QEvent::Type) par2,  (Qt::MouseButton) par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMouseEventTransition *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QMouseEventTransition ( QState * sourceState = 0 )
//[2]QMouseEventTransition ( QObject * object, QEvent::Type type, Qt::MouseButton button, QState * sourceState = 0 )

HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QMOUSEEVENTTRANSITION_NEW1 );
  }
  else if( ISBETWEEN(3,4) && ISQOBJECT(1) && ISNUM(2) && ISNUM(3) && (ISQSTATE(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QMOUSEEVENTTRANSITION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMouseEventTransition * obj = (QMouseEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Qt::MouseButton button () const
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_BUTTON )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->button (  );
    hb_retni( i );
  }
}


/*
QPainterPath hitTestPath () const
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_HITTESTPATH )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->hitTestPath (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
Qt::KeyboardModifiers modifierMask () const
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_MODIFIERMASK )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->modifierMask (  );
    hb_retni( i );
  }
}


/*
void setButton ( Qt::MouseButton button )
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_SETBUTTON )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setButton (  (Qt::MouseButton) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHitTestPath ( const QPainterPath & path )
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_SETHITTESTPATH )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qtxhb_itemGetPtr(1);
    obj->setHitTestPath ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setModifierMask ( Qt::KeyboardModifiers modifierMask )
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_SETMODIFIERMASK )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setModifierMask (  (Qt::KeyboardModifiers) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
