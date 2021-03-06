/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QABSTRACTSTATE

CLASS QHistoryState INHERIT QAbstractState

   DATA class_id INIT Class_Id_QHistoryState
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD defaultState
   METHOD setDefaultState
   METHOD historyType
   METHOD setHistoryType
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHistoryState
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
#include <QHistoryState>
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
#include <QHistoryState>
#endif
#endif

/*
QHistoryState(QState *parent = 0)
*/
HB_FUNC_STATIC( QHISTORYSTATE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QState * par1 = ISNIL(1)? 0 : (QState *) _qtxhb_itemGetPtr(1);
  QHistoryState * o = new QHistoryState ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHistoryState *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QHistoryState(HistoryType type, QState *parent = 0)
*/
HB_FUNC_STATIC( QHISTORYSTATE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QState * par2 = ISNIL(2)? 0 : (QState *) _qtxhb_itemGetPtr(2);
  QHistoryState * o = new QHistoryState (  (QHistoryState::HistoryType) par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHistoryState *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QHistoryState(QState *parent = 0)
//[2]QHistoryState(HistoryType type, QState *parent = 0)

HB_FUNC_STATIC( QHISTORYSTATE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QHISTORYSTATE_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQSTATE(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QHISTORYSTATE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QHISTORYSTATE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QHistoryState * obj = (QHistoryState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QAbstractState *defaultState() const
*/
HB_FUNC_STATIC( QHISTORYSTATE_DEFAULTSTATE )
{
  QHistoryState * obj = (QHistoryState *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractState * ptr = obj->defaultState (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTSTATE" );
  }
}


/*
void setDefaultState(QAbstractState *state)
*/
HB_FUNC_STATIC( QHISTORYSTATE_SETDEFAULTSTATE )
{
  QHistoryState * obj = (QHistoryState *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractState * par1 = (QAbstractState *) _qtxhb_itemGetPtr(1);
    obj->setDefaultState ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
HistoryType historyType() const
*/
HB_FUNC_STATIC( QHISTORYSTATE_HISTORYTYPE )
{
  QHistoryState * obj = (QHistoryState *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->historyType (  );
    hb_retni( i );
  }
}


/*
void setHistoryType(HistoryType type)
*/
HB_FUNC_STATIC( QHISTORYSTATE_SETHISTORYTYPE )
{
  QHistoryState * obj = (QHistoryState *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setHistoryType (  (QHistoryState::HistoryType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
