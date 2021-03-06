/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QCameraImageProcessing INHERIT QObject

   DATA class_id INIT Class_Id_QCameraImageProcessing
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD contrast
   METHOD denoisingLevel
   METHOD isAvailable
   METHOD isWhiteBalanceModeSupported
   METHOD manualWhiteBalance
   METHOD saturation
   METHOD setContrast
   METHOD setDenoisingLevel
   METHOD setManualWhiteBalance
   METHOD setSaturation
   METHOD setSharpeningLevel
   METHOD setWhiteBalanceMode
   METHOD sharpeningLevel
   METHOD whiteBalanceMode
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraImageProcessing
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
#include <QCameraImageProcessing>
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
#include <QCameraImageProcessing>
#endif
#endif


/*
qreal contrast() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_CONTRAST )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->contrast (  ) );
  }
}


/*
qreal denoisingLevel() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_DENOISINGLEVEL )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->denoisingLevel (  ) );
  }
}


/*
bool isAvailable() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_ISAVAILABLE )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAvailable (  ) );
  }
}


/*
bool isWhiteBalanceModeSupported(WhiteBalanceMode mode) const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_ISWHITEBALANCEMODESUPPORTED )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isWhiteBalanceModeSupported (  (QCameraImageProcessing::WhiteBalanceMode) par1 ) );
  }
}


/*
qreal manualWhiteBalance() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_MANUALWHITEBALANCE )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->manualWhiteBalance (  ) );
  }
}


/*
qreal saturation() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SATURATION )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->saturation (  ) );
  }
}


/*
void setContrast(qreal value)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETCONTRAST )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setContrast ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDenoisingLevel(qreal level)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETDENOISINGLEVEL )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setDenoisingLevel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setManualWhiteBalance(qreal colorTemperature)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETMANUALWHITEBALANCE )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setManualWhiteBalance ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSaturation(qreal value)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETSATURATION )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setSaturation ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSharpeningLevel(qreal level)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETSHARPENINGLEVEL )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setSharpeningLevel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWhiteBalanceMode(WhiteBalanceMode mode)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETWHITEBALANCEMODE )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWhiteBalanceMode (  (QCameraImageProcessing::WhiteBalanceMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal sharpeningLevel() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SHARPENINGLEVEL )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->sharpeningLevel (  ) );
  }
}


/*
WhiteBalanceMode whiteBalanceMode() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_WHITEBALANCEMODE )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->whiteBalanceMode (  );
    hb_retni( i );
  }
}



#pragma ENDDUMP
