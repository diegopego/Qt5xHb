/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTiltReading INHERIT QSensorReading

   DATA class_id INIT Class_Id_QTiltReading
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD yRotation
   METHOD setYRotation
   METHOD xRotation
   METHOD setXRotation
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTiltReading
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QTiltReading>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QTiltReading>
#endif
#endif


HB_FUNC_STATIC( QTILTREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltReading * obj = (QTiltReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal yRotation() const
*/
HB_FUNC_STATIC( QTILTREADING_YROTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltReading * obj = (QTiltReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->yRotation (  ) );
  }
#endif
}


/*
void setYRotation(qreal y)
*/
HB_FUNC_STATIC( QTILTREADING_SETYROTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltReading * obj = (QTiltReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setYRotation ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal xRotation() const
*/
HB_FUNC_STATIC( QTILTREADING_XROTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltReading * obj = (QTiltReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->xRotation (  ) );
  }
#endif
}


/*
void setXRotation(qreal x)
*/
HB_FUNC_STATIC( QTILTREADING_SETXROTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltReading * obj = (QTiltReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setXRotation ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
