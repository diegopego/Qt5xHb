/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QSocketNotifier INHERIT QObject

   DATA class_id INIT Class_Id_QSocketNotifier
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD socket
   METHOD type
   METHOD isEnabled
   METHOD setEnabled
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSocketNotifier
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
#include <QSocketNotifier>
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
#include <QSocketNotifier>
#endif
#endif

/*
QSocketNotifier(qintptr socket, Type, QObject *parent = 0)
*/
HB_FUNC_STATIC( QSOCKETNOTIFIER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  qintptr par1 = hb_parni(1);
  int par2 = hb_parni(2);
  QObject * par3 = ISNIL(3)? 0 : (QObject *) _qtxhb_itemGetPtr(3);
  QSocketNotifier * o = new QSocketNotifier ( par1,  (QSocketNotifier::Type) par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSocketNotifier *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSOCKETNOTIFIER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSocketNotifier * obj = (QSocketNotifier *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qintptr socket() const
*/
HB_FUNC_STATIC( QSOCKETNOTIFIER_SOCKET )
{
  QSocketNotifier * obj = (QSocketNotifier *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->socket (  ) );
  }
}


/*
Type type() const
*/
HB_FUNC_STATIC( QSOCKETNOTIFIER_TYPE )
{
  QSocketNotifier * obj = (QSocketNotifier *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->type (  );
    hb_retni( i );
  }
}


/*
bool isEnabled() const
*/
HB_FUNC_STATIC( QSOCKETNOTIFIER_ISENABLED )
{
  QSocketNotifier * obj = (QSocketNotifier *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEnabled (  ) );
  }
}


/*
void setEnabled(bool)
*/
HB_FUNC_STATIC( QSOCKETNOTIFIER_SETENABLED )
{
  QSocketNotifier * obj = (QSocketNotifier *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
