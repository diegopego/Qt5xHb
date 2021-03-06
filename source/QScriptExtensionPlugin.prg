/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSCRIPTVALUE

CLASS QScriptExtensionPlugin INHERIT QObject

   DATA class_id INIT Class_Id_QScriptExtensionPlugin
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD setupPackage
   METHOD initialize
   METHOD keys
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScriptExtensionPlugin
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
#include <QScriptExtensionPlugin>
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
#include <QScriptExtensionPlugin>
#endif
#endif

#include <QScriptValue>


HB_FUNC_STATIC( QSCRIPTEXTENSIONPLUGIN_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QScriptExtensionPlugin * obj = (QScriptExtensionPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QScriptValue setupPackage(const QString & key, QScriptEngine * engine) const
*/
HB_FUNC_STATIC( QSCRIPTEXTENSIONPLUGIN_SETUPPACKAGE )
{
  QScriptExtensionPlugin * obj = (QScriptExtensionPlugin *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QScriptEngine * par2 = (QScriptEngine *) _qtxhb_itemGetPtr(2);
    QScriptValue * ptr = new QScriptValue( obj->setupPackage ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
virtual void initialize(const QString & key, QScriptEngine * engine) = 0
*/
HB_FUNC_STATIC( QSCRIPTEXTENSIONPLUGIN_INITIALIZE )
{
  QScriptExtensionPlugin * obj = (QScriptExtensionPlugin *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QScriptEngine * par2 = ISNIL(2)? 0 : (QScriptEngine *) _qtxhb_itemGetPtr(2);
    obj->initialize ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QStringList keys() const = 0
*/
HB_FUNC_STATIC( QSCRIPTEXTENSIONPLUGIN_KEYS )
{
  QScriptExtensionPlugin * obj = (QScriptExtensionPlugin *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->keys (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}



#pragma ENDDUMP
