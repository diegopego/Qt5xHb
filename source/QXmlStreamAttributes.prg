/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSTRINGREF

CLASS QXmlStreamAttributes

   DATA pointer
   DATA class_id INIT Class_Id_QXmlStreamAttributes
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD append1
   METHOD append2
   METHOD append3
   METHOD append
   METHOD hasAttribute1
   METHOD hasAttribute2
   METHOD hasAttribute3
   METHOD hasAttribute
   METHOD value1
   METHOD value2
   METHOD value3
   METHOD value4
   METHOD value5
   METHOD value
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlStreamAttributes
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
#include <QXmlStreamAttributes>
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
#include <QXmlStreamAttributes>
#endif
#endif

/*
QXmlStreamAttributes()
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlStreamAttributes * o = new QXmlStreamAttributes (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlStreamAttributes *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void append(const QString & namespaceUri, const QString & name, const QString & value)
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_APPEND1 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    obj->append ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void append(const QXmlStreamAttribute & attribute)
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_APPEND2 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlStreamAttribute * par1 = (QXmlStreamAttribute *) _qtxhb_itemGetPtr(1);
    obj->append ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void append(const QString & qualifiedName, const QString & value)
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_APPEND3 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    obj->append ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void append(const QString & namespaceUri, const QString & name, const QString & value)
//[2]void append(const QXmlStreamAttribute & attribute)
//[3]void append(const QString & qualifiedName, const QString & value)

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_APPEND )
{
  if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_APPEND1 );
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMATTRIBUTE(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_APPEND2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_APPEND3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool hasAttribute(const QString & qualifiedName) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE1 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->hasAttribute ( par1 ) );
  }
}

/*
bool hasAttribute(QLatin1String qualifiedName) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE2 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLatin1String * par1 = (QLatin1String *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->hasAttribute ( *par1 ) );
  }
}

/*
bool hasAttribute(const QString & namespaceUri, const QString & name) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE3 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retl( obj->hasAttribute ( par1, par2 ) );
  }
}


//[1]bool hasAttribute(const QString & qualifiedName) const
//[2]bool hasAttribute(QLatin1String qualifiedName) const
//[3]bool hasAttribute(const QString & namespaceUri, const QString & name) const

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE1 );
  }
  //else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  else if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringRef value(const QString & namespaceUri, const QString & name) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE1 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QStringRef * ptr = new QStringRef( obj->value ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef value(const QString & namespaceUri, QLatin1String name) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE2 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QLatin1String * par2 = (QLatin1String *) _qtxhb_itemGetPtr(2);
    QStringRef * ptr = new QStringRef( obj->value ( par1, *par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef value(QLatin1String namespaceUri, QLatin1String name) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE3 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLatin1String * par1 = (QLatin1String *) _qtxhb_itemGetPtr(1);
    QLatin1String * par2 = (QLatin1String *) _qtxhb_itemGetPtr(2);
    QStringRef * ptr = new QStringRef( obj->value ( *par1, *par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef value(const QString & qualifiedName) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE4 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QStringRef * ptr = new QStringRef( obj->value ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef value(QLatin1String qualifiedName) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE5 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLatin1String * par1 = (QLatin1String *) _qtxhb_itemGetPtr(1);
    QStringRef * ptr = new QStringRef( obj->value ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


//[1]QStringRef value(const QString & namespaceUri, const QString & name) const
//[2]QStringRef value(const QString & namespaceUri, QLatin1String name) const
//[3]QStringRef value(QLatin1String namespaceUri, QLatin1String name) const
//[4]QStringRef value(const QString & qualifiedName) const
//[5]QStringRef value(QLatin1String qualifiedName) const

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE1 );
  }
  //else if( ISNUMPAR(2) && ISCHAR(1) && ISQLATIN1STRING(2) )
  else if( ISNUMPAR(2) && ISCHAR(1) && ISOBJECT(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE2 );
  }
  //else if( ISNUMPAR(2) && ISQLATIN1STRING(1) && ISQLATIN1STRING(2) )
  else if( ISNUMPAR(2) && ISOBJECT(1) && ISOBJECT(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE4 );
  }
  //else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  else if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_NEWFROM )
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

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_NEWFROM );
}

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_NEWFROM );
}

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_SETSELFDESTRUCTION )
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