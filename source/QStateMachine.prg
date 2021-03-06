/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QABSTRACTANIMATION

CLASS QStateMachine INHERIT QState

   DATA class_id INIT Class_Id_QStateMachine
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addState
   METHOD removeState
   METHOD error
   METHOD errorString
   METHOD clearError
   METHOD isRunning
   METHOD isAnimated
   METHOD setAnimated
   METHOD addDefaultAnimation
   METHOD defaultAnimations
   METHOD removeDefaultAnimation
   METHOD globalRestorePolicy
   METHOD setGlobalRestorePolicy
   METHOD postEvent
   METHOD postDelayedEvent
   METHOD cancelDelayedEvent
   METHOD eventFilter
   METHOD start
   METHOD stop
   METHOD onStarted
   METHOD onStopped
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStateMachine
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
#include <QStateMachine>
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
#include <QStateMachine>
#endif
#endif

/*
QStateMachine(QObject *parent = 0)
*/
HB_FUNC_STATIC( QSTATEMACHINE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QStateMachine * o = new QStateMachine ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStateMachine *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QStateMachine(QState::ChildMode childMode, QObject *parent = 0)
*/
HB_FUNC_STATIC( QSTATEMACHINE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qtxhb_itemGetPtr(2);
  QStateMachine * o = new QStateMachine (  (QState::ChildMode) par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStateMachine *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QStateMachine(QObject *parent = 0)
//[2]QStateMachine(QState::ChildMode childMode, QObject *parent = 0)

HB_FUNC_STATIC( QSTATEMACHINE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSTATEMACHINE_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSTATEMACHINE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTATEMACHINE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addState(QAbstractState *state)
*/
HB_FUNC_STATIC( QSTATEMACHINE_ADDSTATE )
{
  QStateMachine * obj = (QStateMachine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractState * par1 = (QAbstractState *) _qtxhb_itemGetPtr(1);
    obj->addState ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeState(QAbstractState *state)
*/
HB_FUNC_STATIC( QSTATEMACHINE_REMOVESTATE )
{
  QStateMachine * obj = (QStateMachine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractState * par1 = (QAbstractState *) _qtxhb_itemGetPtr(1);
    obj->removeState ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Error error() const
*/
HB_FUNC_STATIC( QSTATEMACHINE_ERROR )
{
  QStateMachine * obj = (QStateMachine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->error (  );
    hb_retni( i );
  }
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QSTATEMACHINE_ERRORSTRING )
{
  QStateMachine * obj = (QStateMachine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
void clearError()
*/
HB_FUNC_STATIC( QSTATEMACHINE_CLEARERROR )
{
  QStateMachine * obj = (QStateMachine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearError (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isRunning() const
*/
HB_FUNC_STATIC( QSTATEMACHINE_ISRUNNING )
{
  QStateMachine * obj = (QStateMachine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isRunning (  ) );
  }
}


/*
bool isAnimated() const
*/
HB_FUNC_STATIC( QSTATEMACHINE_ISANIMATED )
{
  QStateMachine * obj = (QStateMachine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAnimated (  ) );
  }
}


/*
void setAnimated(bool enabled)
*/
HB_FUNC_STATIC( QSTATEMACHINE_SETANIMATED )
{
  QStateMachine * obj = (QStateMachine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAnimated ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addDefaultAnimation(QAbstractAnimation *animation)
*/
HB_FUNC_STATIC( QSTATEMACHINE_ADDDEFAULTANIMATION )
{
  QStateMachine * obj = (QStateMachine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractAnimation * par1 = (QAbstractAnimation *) _qtxhb_itemGetPtr(1);
    obj->addDefaultAnimation ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QAbstractAnimation *> defaultAnimations() const
*/
HB_FUNC_STATIC( QSTATEMACHINE_DEFAULTANIMATIONS )
{
  QStateMachine * obj = (QStateMachine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QAbstractAnimation *> list = obj->defaultAnimations (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QABSTRACTANIMATION" );
    #else
    pDynSym = hb_dynsymFindName( "QABSTRACTANIMATION" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QAbstractAnimation *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
void removeDefaultAnimation(QAbstractAnimation *animation)
*/
HB_FUNC_STATIC( QSTATEMACHINE_REMOVEDEFAULTANIMATION )
{
  QStateMachine * obj = (QStateMachine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractAnimation * par1 = (QAbstractAnimation *) _qtxhb_itemGetPtr(1);
    obj->removeDefaultAnimation ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QState::RestorePolicy globalRestorePolicy() const
*/
HB_FUNC_STATIC( QSTATEMACHINE_GLOBALRESTOREPOLICY )
{
  QStateMachine * obj = (QStateMachine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->globalRestorePolicy (  );
    hb_retni( i );
  }
}


/*
void setGlobalRestorePolicy(QState::RestorePolicy restorePolicy)
*/
HB_FUNC_STATIC( QSTATEMACHINE_SETGLOBALRESTOREPOLICY )
{
  QStateMachine * obj = (QStateMachine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setGlobalRestorePolicy (  (QState::RestorePolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void postEvent(QEvent *event, EventPriority priority = NormalPriority)
*/
HB_FUNC_STATIC( QSTATEMACHINE_POSTEVENT )
{
  QStateMachine * obj = (QStateMachine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QEvent * par1 = (QEvent *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QStateMachine::NormalPriority : hb_parni(2);
    obj->postEvent ( par1,  (QStateMachine::EventPriority) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int postDelayedEvent(QEvent *event, int delay)
*/
HB_FUNC_STATIC( QSTATEMACHINE_POSTDELAYEDEVENT )
{
  QStateMachine * obj = (QStateMachine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QEvent * par1 = (QEvent *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->postDelayedEvent ( par1, (int) hb_parni(2) ) );
  }
}


/*
bool cancelDelayedEvent(int id)
*/
HB_FUNC_STATIC( QSTATEMACHINE_CANCELDELAYEDEVENT )
{
  QStateMachine * obj = (QStateMachine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->cancelDelayedEvent ( (int) hb_parni(1) ) );
  }
}



/*
bool eventFilter(QObject *watched, QEvent *event)
*/
HB_FUNC_STATIC( QSTATEMACHINE_EVENTFILTER )
{
  QStateMachine * obj = (QStateMachine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    QEvent * par2 = (QEvent *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->eventFilter ( par1, par2 ) );
  }
}


/*
void start()
*/
HB_FUNC_STATIC( QSTATEMACHINE_START )
{
  QStateMachine * obj = (QStateMachine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->start (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop()
*/
HB_FUNC_STATIC( QSTATEMACHINE_STOP )
{
  QStateMachine * obj = (QStateMachine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
