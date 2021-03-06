/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QACCESSIBLEINTERFACE

CLASS QAccessible INHERIT QObject

   DATA class_id INIT Class_Id_QAccessible
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD queryAccessibleInterface
   METHOD updateAccessibility
   METHOD isActive
   METHOD setRootObject
   METHOD cleanup
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessible
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
#include <QAccessible>
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
#include <QAccessible>
#endif
#endif







/*
static QAccessibleInterface *queryAccessibleInterface(QObject *)
*/
HB_FUNC_STATIC( QACCESSIBLE_QUERYACCESSIBLEINTERFACE )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QAccessibleInterface * ptr = QAccessible::queryAccessibleInterface ( par1 );
  _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
}



/*
static void updateAccessibility(QAccessibleEvent *event)
*/
HB_FUNC_STATIC( QACCESSIBLE_UPDATEACCESSIBILITY )
{
  QAccessibleEvent * par1 = (QAccessibleEvent *) _qtxhb_itemGetPtr(1);
  QAccessible::updateAccessibility ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool isActive()
*/
HB_FUNC_STATIC( QACCESSIBLE_ISACTIVE )
{
  hb_retl( QAccessible::isActive (  ) );
}


/*
static void setRootObject(QObject *object)
*/
HB_FUNC_STATIC( QACCESSIBLE_SETROOTOBJECT )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QAccessible::setRootObject ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void cleanup()
*/
HB_FUNC_STATIC( QACCESSIBLE_CLEANUP )
{
  QAccessible::cleanup (  );
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
