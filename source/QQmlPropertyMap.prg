/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT

CLASS QQmlPropertyMap INHERIT QObject

   DATA class_id INIT Class_Id_QQmlPropertyMap
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD contains
   METHOD count
   METHOD insert
   METHOD isEmpty
   METHOD keys
   METHOD size
   METHOD value
   METHOD onValueChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlPropertyMap
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
#include <QQmlPropertyMap>
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
#include <QQmlPropertyMap>
#endif
#endif

/*
QQmlPropertyMap(QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QQmlPropertyMap * o = new QQmlPropertyMap ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlPropertyMap *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QQMLPROPERTYMAP_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQmlPropertyMap * obj = (QQmlPropertyMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void clear(const QString & key)
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_CLEAR )
{
  QQmlPropertyMap * obj = (QQmlPropertyMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->clear ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool contains(const QString & key) const
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_CONTAINS )
{
  QQmlPropertyMap * obj = (QQmlPropertyMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->contains ( par1 ) );
  }
}


/*
int count() const
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_COUNT )
{
  QQmlPropertyMap * obj = (QQmlPropertyMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
void insert(const QString & key, const QVariant & value)
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_INSERT )
{
  QQmlPropertyMap * obj = (QQmlPropertyMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    obj->insert ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_ISEMPTY )
{
  QQmlPropertyMap * obj = (QQmlPropertyMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
QStringList keys() const
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_KEYS )
{
  QQmlPropertyMap * obj = (QQmlPropertyMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->keys (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
int size() const
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_SIZE )
{
  QQmlPropertyMap * obj = (QQmlPropertyMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}


/*
QVariant value(const QString & key) const
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_VALUE )
{
  QQmlPropertyMap * obj = (QQmlPropertyMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * ptr = new QVariant( obj->value ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}




#pragma ENDDUMP
