/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMETAMETHOD
REQUEST QOBJECT
REQUEST QMETAPROPERTY
REQUEST QVARIANT

CLASS QQmlProperty

   DATA pointer
   DATA class_id INIT Class_Id_QQmlProperty
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new
   METHOD delete
   METHOD connectNotifySignal1
   METHOD connectNotifySignal2
   METHOD connectNotifySignal
   METHOD hasNotifySignal
   METHOD index
   METHOD isDesignable
   METHOD isProperty
   METHOD isResettable
   METHOD isSignalProperty
   METHOD isValid
   METHOD isWritable
   METHOD method
   METHOD name
   METHOD needsNotifySignal
   METHOD object
   METHOD property
   METHOD propertyType
   METHOD propertyTypeCategory
   METHOD propertyTypeName
   METHOD read1
   METHOD read2
   METHOD read3
   METHOD read4
   METHOD read
   METHOD reset
   METHOD type
   METHOD write1
   METHOD write2
   METHOD write3
   METHOD write4
   METHOD write
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlProperty
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
#include <QQmlProperty>
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
#include <QQmlProperty>
#endif
#endif

/*
QQmlProperty()
*/
HB_FUNC_STATIC( QQMLPROPERTY_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQmlProperty * o = new QQmlProperty (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QQmlProperty(QObject * obj)
*/
HB_FUNC_STATIC( QQMLPROPERTY_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QQmlProperty * o = new QQmlProperty ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QQmlProperty(QObject * obj, QQmlContext * ctxt)
*/
HB_FUNC_STATIC( QQMLPROPERTY_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QQmlContext * par2 = (QQmlContext *) _qtxhb_itemGetPtr(2);
  QQmlProperty * o = new QQmlProperty ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QQmlProperty(QObject * obj, QQmlEngine * engine)
*/
HB_FUNC_STATIC( QQMLPROPERTY_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QQmlEngine * par2 = (QQmlEngine *) _qtxhb_itemGetPtr(2);
  QQmlProperty * o = new QQmlProperty ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QQmlProperty(QObject * obj, const QString & name)
*/
HB_FUNC_STATIC( QQMLPROPERTY_NEW5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QQmlProperty * o = new QQmlProperty ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QQmlProperty(QObject * obj, const QString & name, QQmlContext * ctxt)
*/
HB_FUNC_STATIC( QQMLPROPERTY_NEW6 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QQmlContext * par3 = (QQmlContext *) _qtxhb_itemGetPtr(3);
  QQmlProperty * o = new QQmlProperty ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QQmlProperty(QObject * obj, const QString & name, QQmlEngine * engine)
*/
HB_FUNC_STATIC( QQMLPROPERTY_NEW7 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QQmlEngine * par3 = (QQmlEngine *) _qtxhb_itemGetPtr(3);
  QQmlProperty * o = new QQmlProperty ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QQmlProperty(const QQmlProperty & other)
*/
HB_FUNC_STATIC( QQMLPROPERTY_NEW8 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQmlProperty * par1 = (QQmlProperty *) _qtxhb_itemGetPtr(1);
  QQmlProperty * o = new QQmlProperty ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QQmlProperty()
//[2]QQmlProperty(QObject * obj)
//[3]QQmlProperty(QObject * obj, QQmlContext * ctxt)
//[4]QQmlProperty(QObject * obj, QQmlEngine * engine)
//[5]QQmlProperty(QObject * obj, const QString & name)
//[6]QQmlProperty(QObject * obj, const QString & name, QQmlContext * ctxt)
//[7]QQmlProperty(QObject * obj, const QString & name, QQmlEngine * engine)
//[8]QQmlProperty(const QQmlProperty & other)

HB_FUNC_STATIC( QQMLPROPERTY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW2 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQQMLCONTEXT(2) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW3 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQQMLENGINE(2) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW4 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW5 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQQMLCONTEXT(3) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW6 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQQMLENGINE(3) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW7 );
  }
  else if( ISNUMPAR(1) && ISQQMLPROPERTY(1) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QQMLPROPERTY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQmlProperty * obj = (QQmlProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool connectNotifySignal(QObject * dest, const char * slot) const
*/
HB_FUNC_STATIC( QQMLPROPERTY_CONNECTNOTIFYSIGNAL1 )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    const char * par2 = hb_parc(2);
    hb_retl( obj->connectNotifySignal ( par1,  (const char *) par2 ) );
  }
}

/*
bool connectNotifySignal(QObject * dest, int method) const
*/
HB_FUNC_STATIC( QQMLPROPERTY_CONNECTNOTIFYSIGNAL2 )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->connectNotifySignal ( par1, (int) hb_parni(2) ) );
  }
}


//[1]bool connectNotifySignal(QObject * dest, const char * slot) const
//[2]bool connectNotifySignal(QObject * dest, int method) const

HB_FUNC_STATIC( QQMLPROPERTY_CONNECTNOTIFYSIGNAL )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_CONNECTNOTIFYSIGNAL1 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_CONNECTNOTIFYSIGNAL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool hasNotifySignal() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_HASNOTIFYSIGNAL )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasNotifySignal (  ) );
  }
}


/*
int index() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_INDEX )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->index (  ) );
  }
}


/*
bool isDesignable() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_ISDESIGNABLE )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isDesignable (  ) );
  }
}


/*
bool isProperty() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_ISPROPERTY )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isProperty (  ) );
  }
}


/*
bool isResettable() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_ISRESETTABLE )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isResettable (  ) );
  }
}


/*
bool isSignalProperty() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_ISSIGNALPROPERTY )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSignalProperty (  ) );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_ISVALID )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
bool isWritable() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_ISWRITABLE )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isWritable (  ) );
  }
}


/*
QMetaMethod method() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_METHOD )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMetaMethod * ptr = new QMetaMethod( obj->method (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMETAMETHOD" );
  }
}


/*
QString name() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_NAME )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}


/*
bool needsNotifySignal() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_NEEDSNOTIFYSIGNAL )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->needsNotifySignal (  ) );
  }
}


/*
QObject * object() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_OBJECT )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->object (  );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
QMetaProperty property() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_PROPERTY )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMetaProperty * ptr = new QMetaProperty( obj->property (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMETAPROPERTY" );
  }
}


/*
int propertyType() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_PROPERTYTYPE )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->propertyType (  ) );
  }
}


/*
PropertyTypeCategory propertyTypeCategory() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_PROPERTYTYPECATEGORY )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->propertyTypeCategory (  );
    hb_retni( i );
  }
}


/*
const char * propertyTypeName() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_PROPERTYTYPENAME )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * str1 = obj->propertyTypeName (  );
    hb_retc( str1 );
  }
}


/*
QVariant read() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_READ1 )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->read (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
static QVariant read(QObject * object, const QString & name)
*/
HB_FUNC_STATIC( QQMLPROPERTY_READ2 )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QVariant * ptr = new QVariant( QQmlProperty::read ( par1, par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
}

/*
static QVariant read(QObject * object, const QString & name, QQmlContext * ctxt)
*/
HB_FUNC_STATIC( QQMLPROPERTY_READ3 )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QQmlContext * par3 = (QQmlContext *) _qtxhb_itemGetPtr(3);
  QVariant * ptr = new QVariant( QQmlProperty::read ( par1, par2, par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
}

/*
static QVariant read(QObject * object, const QString & name, QQmlEngine * engine)
*/
HB_FUNC_STATIC( QQMLPROPERTY_READ4 )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QQmlEngine * par3 = (QQmlEngine *) _qtxhb_itemGetPtr(3);
  QVariant * ptr = new QVariant( QQmlProperty::read ( par1, par2, par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
}


//[1]QVariant read() const
//[2]QVariant read(QObject * object, const QString & name)
//[3]QVariant read(QObject * object, const QString & name, QQmlContext * ctxt)
//[4]QVariant read(QObject * object, const QString & name, QQmlEngine * engine)

HB_FUNC_STATIC( QQMLPROPERTY_READ )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_READ1 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_READ2 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQQMLCONTEXT(3) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_READ3 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQQMLENGINE(3) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_READ4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool reset() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_RESET )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->reset (  ) );
  }
}


/*
Type type() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_TYPE )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->type (  );
    hb_retni( i );
  }
}


/*
bool write(const QVariant & value) const
*/
HB_FUNC_STATIC( QQMLPROPERTY_WRITE1 )
{
  QQmlProperty * obj = (QQmlProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par1 = (QVariant *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->write ( *par1 ) );
  }
}

/*
static bool write(QObject * object, const QString & name, const QVariant & value)
*/
HB_FUNC_STATIC( QQMLPROPERTY_WRITE2 )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QVariant * par3 = (QVariant *) _qtxhb_itemGetPtr(3);
  hb_retl( QQmlProperty::write ( par1, par2, *par3 ) );
}

/*
static bool write(QObject * object, const QString & name, const QVariant & value, QQmlContext * ctxt)
*/
HB_FUNC_STATIC( QQMLPROPERTY_WRITE3 )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QVariant * par3 = (QVariant *) _qtxhb_itemGetPtr(3);
  QQmlContext * par4 = (QQmlContext *) _qtxhb_itemGetPtr(4);
  hb_retl( QQmlProperty::write ( par1, par2, *par3, par4 ) );
}

/*
static bool write(QObject * object, const QString & name, const QVariant & value, QQmlEngine * engine)
*/
HB_FUNC_STATIC( QQMLPROPERTY_WRITE4 )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QVariant * par3 = (QVariant *) _qtxhb_itemGetPtr(3);
  QQmlEngine * par4 = (QQmlEngine *) _qtxhb_itemGetPtr(4);
  hb_retl( QQmlProperty::write ( par1, par2, *par3, par4 ) );
}


//[1]bool write(const QVariant & value) const
//[2]bool write(QObject * object, const QString & name, const QVariant & value)
//[3]bool write(QObject * object, const QString & name, const QVariant & value, QQmlContext * ctxt)
//[4]bool write(QObject * object, const QString & name, const QVariant & value, QQmlEngine * engine)

HB_FUNC_STATIC( QQMLPROPERTY_WRITE )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_WRITE1 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_WRITE2 );
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) && ISQQMLCONTEXT(4) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_WRITE3 );
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) && ISQQMLENGINE(4) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_WRITE4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


HB_FUNC_STATIC( QQMLPROPERTY_NEWFROM )
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

HB_FUNC_STATIC( QQMLPROPERTY_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QQMLPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QQMLPROPERTY_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QQMLPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QQMLPROPERTY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QQMLPROPERTY_SETSELFDESTRUCTION )
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