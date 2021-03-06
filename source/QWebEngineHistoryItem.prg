/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QURL
REQUEST QDATETIME

CLASS QWebEngineHistoryItem

   DATA pointer
   DATA class_id INIT Class_Id_QWebEngineHistoryItem
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD originalUrl
   METHOD url
   METHOD title
   METHOD lastVisited
   METHOD iconUrl
   METHOD isValid
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebEngineHistoryItem
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebEngineHistoryItem>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebEngineHistoryItem>
#endif
#endif

/*
QWebEngineHistoryItem(const QWebEngineHistoryItem &other)
*/
HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistoryItem * o = new QWebEngineHistoryItem (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWebEngineHistoryItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistoryItem * obj = (QWebEngineHistoryItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QUrl originalUrl() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_ORIGINALURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistoryItem * obj = (QWebEngineHistoryItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->originalUrl (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}


/*
QUrl url() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_URL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistoryItem * obj = (QWebEngineHistoryItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}


/*
QString title() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_TITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistoryItem * obj = (QWebEngineHistoryItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->title (  ).toLatin1().data() );
  }
#endif
}


/*
QDateTime lastVisited() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_LASTVISITED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistoryItem * obj = (QWebEngineHistoryItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->lastVisited (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
#endif
}


/*
QUrl iconUrl() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_ICONURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistoryItem * obj = (QWebEngineHistoryItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->iconUrl (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistoryItem * obj = (QWebEngineHistoryItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
#endif
}



HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_NEWFROM )
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

HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QWEBENGINEHISTORYITEM_NEWFROM );
}

HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QWEBENGINEHISTORYITEM_NEWFROM );
}

HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_SETSELFDESTRUCTION )
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