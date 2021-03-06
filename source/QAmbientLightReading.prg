/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QAmbientLightReading INHERIT QSensorReading

   DATA class_id INIT Class_Id_QAmbientLightReading
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD lightLevel
   METHOD setLightLevel
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAmbientLightReading
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
#include <QAmbientLightReading>
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
#include <QAmbientLightReading>
#endif
#endif


HB_FUNC_STATIC( QAMBIENTLIGHTREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientLightReading * obj = (QAmbientLightReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
LightLevel lightLevel() const
*/
HB_FUNC_STATIC( QAMBIENTLIGHTREADING_LIGHTLEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientLightReading * obj = (QAmbientLightReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->lightLevel (  );
    hb_retni( i );
  }
#endif
}


/*
void setLightLevel(LightLevel lightLevel)
*/
HB_FUNC_STATIC( QAMBIENTLIGHTREADING_SETLIGHTLEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientLightReading * obj = (QAmbientLightReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLightLevel (  (QAmbientLightReading::LightLevel) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
