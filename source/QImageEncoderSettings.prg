/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIZE
REQUEST QVARIANT

CLASS QImageEncoderSettings

   DATA pointer
   DATA class_id INIT Class_Id_QImageEncoderSettings
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD codec
   METHOD setCodec
   METHOD resolution
   METHOD setResolution1
   METHOD setResolution2
   METHOD setResolution
   METHOD quality
   METHOD setQuality
   METHOD encodingOption
   METHOD setEncodingOption
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QImageEncoderSettings
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
#include <QImageEncoderSettings>
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
#include <QImageEncoderSettings>
#endif
#endif

/*
QImageEncoderSettings()
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QImageEncoderSettings * o = new QImageEncoderSettings (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QImageEncoderSettings *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QImageEncoderSettings(const QImageEncoderSettings& other)
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QImageEncoderSettings * par1 = (QImageEncoderSettings *) _qtxhb_itemGetPtr(1);
  QImageEncoderSettings * o = new QImageEncoderSettings ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QImageEncoderSettings *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QImageEncoderSettings()
//[2]QImageEncoderSettings(const QImageEncoderSettings& other)

HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QIMAGEENCODERSETTINGS_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQIMAGEENCODERSETTINGS(1) )
  {
    HB_FUNC_EXEC( QIMAGEENCODERSETTINGS_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QImageEncoderSettings * obj = (QImageEncoderSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isNull() const
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_ISNULL )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
QString codec() const
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_CODEC )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->codec (  ).toLatin1().data() );
  }
}


/*
void setCodec(const QString &)
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_SETCODEC )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setCodec ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize resolution() const
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_RESOLUTION )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->resolution (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void setResolution(const QSize &)
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_SETRESOLUTION1 )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
    obj->setResolution ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setResolution(int width, int height)
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_SETRESOLUTION2 )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setResolution ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setResolution(const QSize &)
//[2]void setResolution(int width, int height)

HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_SETRESOLUTION )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QIMAGEENCODERSETTINGS_SETRESOLUTION1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIMAGEENCODERSETTINGS_SETRESOLUTION2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QMultimedia::EncodingQuality quality() const
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_QUALITY )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->quality (  );
    hb_retni( i );
  }
}


/*
void setQuality(QMultimedia::EncodingQuality quality)
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_SETQUALITY )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setQuality (  (QMultimedia::EncodingQuality) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant encodingOption(const QString &option) const
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_ENCODINGOPTION )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * ptr = new QVariant( obj->encodingOption ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



/*
void setEncodingOption(const QString &option, const QVariant &value)
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_SETENCODINGOPTION )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    obj->setEncodingOption ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_NEWFROM )
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

HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QIMAGEENCODERSETTINGS_NEWFROM );
}

HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QIMAGEENCODERSETTINGS_NEWFROM );
}

HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_SETSELFDESTRUCTION )
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