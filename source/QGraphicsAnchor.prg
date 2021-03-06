/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QGraphicsAnchor INHERIT QObject

   DATA class_id INIT Class_Id_QGraphicsAnchor
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD setSizePolicy
   METHOD setSpacing
   METHOD sizePolicy
   METHOD spacing
   METHOD unsetSpacing
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsAnchor
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
#include <QGraphicsAnchor>
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
#include <QGraphicsAnchor>
#endif
#endif

HB_FUNC_STATIC( QGRAPHICSANCHOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGraphicsAnchor * obj = (QGraphicsAnchor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setSizePolicy(QSizePolicy::Policy policy)
*/
HB_FUNC_STATIC( QGRAPHICSANCHOR_SETSIZEPOLICY )
{
  QGraphicsAnchor * obj = (QGraphicsAnchor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSizePolicy (  (QSizePolicy::Policy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSpacing(qreal spacing)
*/
HB_FUNC_STATIC( QGRAPHICSANCHOR_SETSPACING )
{
  QGraphicsAnchor * obj = (QGraphicsAnchor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setSpacing ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSizePolicy::Policy sizePolicy() const
*/
HB_FUNC_STATIC( QGRAPHICSANCHOR_SIZEPOLICY )
{
  QGraphicsAnchor * obj = (QGraphicsAnchor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->sizePolicy (  );
    hb_retni( i );
  }
}


/*
qreal spacing() const
*/
HB_FUNC_STATIC( QGRAPHICSANCHOR_SPACING )
{
  QGraphicsAnchor * obj = (QGraphicsAnchor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->spacing (  ) );
  }
}


/*
void unsetSpacing()
*/
HB_FUNC_STATIC( QGRAPHICSANCHOR_UNSETSPACING )
{
  QGraphicsAnchor * obj = (QGraphicsAnchor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->unsetSpacing (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
