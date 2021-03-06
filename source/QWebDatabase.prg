/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWEBSECURITYORIGIN

CLASS QWebDatabase

   DATA pointer
   DATA class_id INIT Class_Id_QWebDatabase
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD displayName
   METHOD expectedSize
   METHOD fileName
   METHOD name
   METHOD origin
   METHOD size
   METHOD removeAllDatabases
   METHOD removeDatabase
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebDatabase
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
#include <QWebDatabase>
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
#include <QWebDatabase>
#endif
#endif

#include <QWebSecurityOrigin>

/*
QWebDatabase ( const QWebDatabase & other )
*/
HB_FUNC_STATIC( QWEBDATABASE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWebDatabase * par1 = (QWebDatabase *) _qtxhb_itemGetPtr(1);
  QWebDatabase * o = new QWebDatabase ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWebDatabase *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QWEBDATABASE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWebDatabase * obj = (QWebDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString displayName () const
*/
HB_FUNC_STATIC( QWEBDATABASE_DISPLAYNAME )
{
  QWebDatabase * obj = (QWebDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->displayName (  ).toLatin1().data() );
  }
}


/*
qint64 expectedSize () const
*/
HB_FUNC_STATIC( QWEBDATABASE_EXPECTEDSIZE )
{
  QWebDatabase * obj = (QWebDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->expectedSize (  ) );
  }
}


/*
QString fileName () const
*/
HB_FUNC_STATIC( QWEBDATABASE_FILENAME )
{
  QWebDatabase * obj = (QWebDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->fileName (  ).toLatin1().data() );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QWEBDATABASE_NAME )
{
  QWebDatabase * obj = (QWebDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}


/*
QWebSecurityOrigin origin () const
*/
HB_FUNC_STATIC( QWEBDATABASE_ORIGIN )
{
  QWebDatabase * obj = (QWebDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebSecurityOrigin * ptr = new QWebSecurityOrigin( obj->origin (  ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBSECURITYORIGIN", true );
  }
}


/*
qint64 size () const
*/
HB_FUNC_STATIC( QWEBDATABASE_SIZE )
{
  QWebDatabase * obj = (QWebDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}


/*
static void removeAllDatabases ()
*/
HB_FUNC_STATIC( QWEBDATABASE_REMOVEALLDATABASES )
{
  QWebDatabase::removeAllDatabases (  );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void removeDatabase ( const QWebDatabase & db )
*/
HB_FUNC_STATIC( QWEBDATABASE_REMOVEDATABASE )
{
  QWebDatabase * par1 = (QWebDatabase *) _qtxhb_itemGetPtr(1);
  QWebDatabase::removeDatabase ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QWEBDATABASE_NEWFROM )
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

HB_FUNC_STATIC( QWEBDATABASE_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QWEBDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QWEBDATABASE_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QWEBDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QWEBDATABASE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWEBDATABASE_SETSELFDESTRUCTION )
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