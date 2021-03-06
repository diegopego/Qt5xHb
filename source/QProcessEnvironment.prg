/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"



CLASS QProcessEnvironment

   DATA pointer
   DATA class_id INIT Class_Id_QProcessEnvironment
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD swap
   METHOD isEmpty
   METHOD clear
   METHOD contains
   METHOD insert1
   METHOD insert2
   METHOD insert
   METHOD remove
   METHOD value
   METHOD toStringList
   METHOD keys
   METHOD systemEnvironment
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QProcessEnvironment
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
#include <QProcessEnvironment>
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
#include <QProcessEnvironment>
#endif
#endif

/*
QProcessEnvironment()
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QProcessEnvironment * o = new QProcessEnvironment (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QProcessEnvironment *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QProcessEnvironment(const QProcessEnvironment &other)
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QProcessEnvironment * par1 = (QProcessEnvironment *) _qtxhb_itemGetPtr(1);
  QProcessEnvironment * o = new QProcessEnvironment ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QProcessEnvironment *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QProcessEnvironment()
//[2]QProcessEnvironment(const QProcessEnvironment &other)

HB_FUNC_STATIC( QPROCESSENVIRONMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPROCESSENVIRONMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQPROCESSENVIRONMENT(1) )
  {
    HB_FUNC_EXEC( QPROCESSENVIRONMENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPROCESSENVIRONMENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QProcessEnvironment * obj = (QProcessEnvironment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void swap(QProcessEnvironment &other)
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_SWAP )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QProcessEnvironment * par1 = (QProcessEnvironment *) _qtxhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_ISEMPTY )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
void clear()
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_CLEAR )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool contains(const QString &name) const
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_CONTAINS )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->contains ( par1 ) );
  }
}


/*
void insert(const QString &name, const QString &value)
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_INSERT1 )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    obj->insert ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insert(const QProcessEnvironment &e)
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_INSERT2 )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QProcessEnvironment * par1 = (QProcessEnvironment *) _qtxhb_itemGetPtr(1);
    obj->insert ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void insert(const QString &name, const QString &value)
//[2]void insert(const QProcessEnvironment &e)

HB_FUNC_STATIC( QPROCESSENVIRONMENT_INSERT )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QPROCESSENVIRONMENT_INSERT1 );
  }
  else if( ISNUMPAR(1) && ISQPROCESSENVIRONMENT(1) )
  {
    HB_FUNC_EXEC( QPROCESSENVIRONMENT_INSERT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void remove(const QString &name)
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_REMOVE )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->remove ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString value(const QString &name, const QString &defaultValue = QString()) const
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_VALUE )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    hb_retc( (const char *) obj->value ( par1, par2 ).toLatin1().data() );
  }
}


/*
QStringList toStringList() const
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_TOSTRINGLIST )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->toStringList (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QStringList keys() const
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_KEYS )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->keys (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
static QProcessEnvironment systemEnvironment()
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_SYSTEMENVIRONMENT )
{
  QProcessEnvironment * ptr = new QProcessEnvironment( QProcessEnvironment::systemEnvironment (  ) );
  _qt4xhb_createReturnClass ( ptr, "QPROCESSENVIRONMENT", true );
}



HB_FUNC_STATIC( QPROCESSENVIRONMENT_NEWFROM )
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

HB_FUNC_STATIC( QPROCESSENVIRONMENT_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QPROCESSENVIRONMENT_NEWFROM );
}

HB_FUNC_STATIC( QPROCESSENVIRONMENT_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QPROCESSENVIRONMENT_NEWFROM );
}

HB_FUNC_STATIC( QPROCESSENVIRONMENT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPROCESSENVIRONMENT_SETSELFDESTRUCTION )
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