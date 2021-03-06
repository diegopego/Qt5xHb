/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDesignerDynamicPropertySheetExtension

   DATA pointer
   DATA class_id INIT Class_Id_QDesignerDynamicPropertySheetExtension
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD addDynamicProperty
   METHOD canAddDynamicProperty
   METHOD dynamicPropertiesAllowed
   METHOD isDynamicProperty
   METHOD removeDynamicProperty
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerDynamicPropertySheetExtension
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
#include <QDesignerDynamicPropertySheetExtension>
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
#include <QDesignerDynamicPropertySheetExtension>
#endif
#endif

HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual int addDynamicProperty ( const QString & propertyName, const QVariant & value ) = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_ADDDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    hb_retni( obj->addDynamicProperty ( par1, *par2 ) );
  }
}


/*
virtual bool canAddDynamicProperty ( const QString & propertyName ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_CANADDDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->canAddDynamicProperty ( par1 ) );
  }
}


/*
virtual bool dynamicPropertiesAllowed () const = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_DYNAMICPROPERTIESALLOWED )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->dynamicPropertiesAllowed (  ) );
  }
}


/*
virtual bool isDynamicProperty ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_ISDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isDynamicProperty ( (int) hb_parni(1) ) );
  }
}


/*
virtual bool removeDynamicProperty ( int index ) = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_REMOVEDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->removeDynamicProperty ( (int) hb_parni(1) ) );
  }
}



HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_NEWFROM )
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

HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_NEWFROM );
}

HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_NEWFROM );
}

HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_SETSELFDESTRUCTION )
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