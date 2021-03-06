/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT

CLASS QCameraViewfinderSettingsControl INHERIT QMediaControl

   DATA class_id INIT Class_Id_QCameraViewfinderSettingsControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD isViewfinderParameterSupported
   METHOD setViewfinderParameter
   METHOD viewfinderParameter
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraViewfinderSettingsControl
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
#include <QCameraViewfinderSettingsControl>
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
#include <QCameraViewfinderSettingsControl>
#endif
#endif

HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QCameraViewfinderSettingsControl * obj = (QCameraViewfinderSettingsControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool isViewfinderParameterSupported(ViewfinderParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL_ISVIEWFINDERPARAMETERSUPPORTED )
{
  QCameraViewfinderSettingsControl * obj = (QCameraViewfinderSettingsControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isViewfinderParameterSupported (  (QCameraViewfinderSettingsControl::ViewfinderParameter) par1 ) );
  }
}


/*
virtual void setViewfinderParameter(ViewfinderParameter parameter, const QVariant & value) = 0
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL_SETVIEWFINDERPARAMETER )
{
  QCameraViewfinderSettingsControl * obj = (QCameraViewfinderSettingsControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    obj->setViewfinderParameter (  (QCameraViewfinderSettingsControl::ViewfinderParameter) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QVariant viewfinderParameter(ViewfinderParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL_VIEWFINDERPARAMETER )
{
  QCameraViewfinderSettingsControl * obj = (QCameraViewfinderSettingsControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->viewfinderParameter (  (QCameraViewfinderSettingsControl::ViewfinderParameter) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



#pragma ENDDUMP
