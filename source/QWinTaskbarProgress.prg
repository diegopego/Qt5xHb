/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QWinTaskbarProgress INHERIT QObject

   DATA class_id INIT Class_Id_QWinTaskbarProgress
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD value
   METHOD setValue
   METHOD minimum
   METHOD setMinimum
   METHOD maximum
   METHOD setMaximum
   METHOD isVisible
   METHOD setVisible
   METHOD isPaused
   METHOD setPaused
   METHOD isStopped
   METHOD setRange
   METHOD reset
   METHOD show
   METHOD hide
   METHOD pause
   METHOD resume
   METHOD stop
   METHOD onValueChanged
   METHOD onMinimumChanged
   METHOD onMaximumChanged
   METHOD onVisibilityChanged
   METHOD onPausedChanged
   METHOD onStoppedChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWinTaskbarProgress
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinTaskbarProgress>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinTaskbarProgress>
#endif
#endif

/*
explicit QWinTaskbarProgress(QObject *parent = 0)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QWinTaskbarProgress * o = new QWinTaskbarProgress ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWinTaskbarProgress *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QWINTASKBARPROGRESS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int value() const
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_VALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->value (  ) );
  }
#endif
}

/*
void setValue(int value)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SETVALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setValue ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int minimum() const
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_MINIMUM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->minimum (  ) );
  }
#endif
}

/*
void setMinimum(int minimum)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SETMINIMUM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMinimum ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int maximum() const
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_MAXIMUM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->maximum (  ) );
  }
#endif
}

/*
void setMaximum(int maximum)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SETMAXIMUM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximum ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isVisible() const
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_ISVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isVisible (  ) );
  }
#endif
}

/*
void setVisible(bool visible)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SETVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isPaused() const
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_ISPAUSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isPaused (  ) );
  }
#endif
}

/*
void setPaused(bool paused)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SETPAUSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPaused ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isStopped() const
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_ISSTOPPED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isStopped (  ) );
  }
#endif
}


/*
void setRange(int minimum, int maximum)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SETRANGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRange ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void reset()
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_RESET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void show()
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SHOW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->show (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void hide()
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_HIDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->hide (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void pause()
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_PAUSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->pause (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void resume()
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_RESUME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resume (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void stop()
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_STOP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
