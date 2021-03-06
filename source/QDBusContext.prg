/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDBUSCONNECTION
REQUEST QDBUSMESSAGE

CLASS QDBusContext

   DATA pointer
   DATA class_id INIT Class_Id_QDBusContext
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD calledFromDBus
   METHOD connection
   METHOD message
   METHOD isDelayedReply
   METHOD setDelayedReply
   METHOD sendErrorReply1
   METHOD sendErrorReply2
   METHOD sendErrorReply
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusContext
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
#include <QDBusContext>
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
#include <QDBusContext>
#endif
#endif

/*
QDBusContext()
*/
HB_FUNC_STATIC( QDBUSCONTEXT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDBusContext * o = new QDBusContext (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDBusContext *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QDBUSCONTEXT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDBusContext * obj = (QDBusContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool calledFromDBus() const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_CALLEDFROMDBUS )
{
  QDBusContext * obj = (QDBusContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->calledFromDBus (  ) );
  }
}


/*
QDBusConnection connection() const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_CONNECTION )
{
  QDBusContext * obj = (QDBusContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusConnection * ptr = new QDBusConnection( obj->connection (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDBUSCONNECTION" );
  }
}


/*
const QDBusMessage &message() const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_MESSAGE )
{
  QDBusContext * obj = (QDBusContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QDBusMessage * ptr = &obj->message (  );
    _qt4xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
}


/*
bool isDelayedReply() const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_ISDELAYEDREPLY )
{
  QDBusContext * obj = (QDBusContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isDelayedReply (  ) );
  }
}


/*
void setDelayedReply(bool enable) const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_SETDELAYEDREPLY )
{
  QDBusContext * obj = (QDBusContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDelayedReply ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void sendErrorReply(const QString &name, const QString &msg = QString()) const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_SENDERRORREPLY1 )
{
  QDBusContext * obj = (QDBusContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    obj->sendErrorReply ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void sendErrorReply(QDBusError::ErrorType type, const QString &msg = QString()) const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_SENDERRORREPLY2 )
{
  QDBusContext * obj = (QDBusContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    obj->sendErrorReply (  (QDBusError::ErrorType) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void sendErrorReply(const QString &name, const QString &msg = QString()) const
//[2]void sendErrorReply(QDBusError::ErrorType type, const QString &msg = QString()) const

HB_FUNC_STATIC( QDBUSCONTEXT_SENDERROREPLY )
{
  // TODO: implementar
}


HB_FUNC_STATIC( QDBUSCONTEXT_NEWFROM )
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

HB_FUNC_STATIC( QDBUSCONTEXT_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QDBUSCONTEXT_NEWFROM );
}

HB_FUNC_STATIC( QDBUSCONTEXT_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QDBUSCONTEXT_NEWFROM );
}

HB_FUNC_STATIC( QDBUSCONTEXT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDBUSCONTEXT_SETSELFDESTRUCTION )
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