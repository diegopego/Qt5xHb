/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT

CLASS QAudioEncoderSettings

   DATA pointer
   DATA class_id INIT Class_Id_QAudioEncoderSettings
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bitRate
   METHOD channelCount
   METHOD codec
   METHOD encodingMode
   METHOD encodingOption
   METHOD isNull
   METHOD quality
   METHOD sampleRate
   METHOD setBitRate
   METHOD setChannelCount
   METHOD setCodec
   METHOD setEncodingMode
   METHOD setEncodingOption
   METHOD setQuality
   METHOD setSampleRate
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAudioEncoderSettings
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
#include <QAudioEncoderSettings>
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
#include <QAudioEncoderSettings>
#endif
#endif

/*
QAudioEncoderSettings()
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAudioEncoderSettings * o = new QAudioEncoderSettings (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAudioEncoderSettings *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QAudioEncoderSettings(const QAudioEncoderSettings & other)
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAudioEncoderSettings * par1 = (QAudioEncoderSettings *) _qtxhb_itemGetPtr(1);
  QAudioEncoderSettings * o = new QAudioEncoderSettings ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAudioEncoderSettings *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QAudioEncoderSettings()
//[2]QAudioEncoderSettings(const QAudioEncoderSettings & other)

HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUDIOENCODERSETTINGS_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQAUDIOENCODERSETTINGS(1) )
  {
    HB_FUNC_EXEC( QAUDIOENCODERSETTINGS_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int bitRate() const
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_BITRATE )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bitRate (  ) );
  }
}


/*
int channelCount() const
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_CHANNELCOUNT )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->channelCount (  ) );
  }
}


/*
QString codec() const
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_CODEC )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->codec (  ).toLatin1().data() );
  }
}


/*
QMultimedia::EncodingMode encodingMode() const
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_ENCODINGMODE )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->encodingMode (  );
    hb_retni( i );
  }
}


/*
QVariant encodingOption(const QString & option) const
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_ENCODINGOPTION )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * ptr = new QVariant( obj->encodingOption ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



/*
bool isNull() const
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_ISNULL )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
QMultimedia::EncodingQuality quality() const
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_QUALITY )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->quality (  );
    hb_retni( i );
  }
}


/*
int sampleRate() const
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_SAMPLERATE )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sampleRate (  ) );
  }
}


/*
void setBitRate(int rate)
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_SETBITRATE )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBitRate ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setChannelCount(int channels)
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_SETCHANNELCOUNT )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setChannelCount ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCodec(const QString & codec)
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_SETCODEC )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setCodec ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodingMode(QMultimedia::EncodingMode mode)
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_SETENCODINGMODE )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setEncodingMode (  (QMultimedia::EncodingMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodingOption(const QString & option, const QVariant & value)
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_SETENCODINGOPTION )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    obj->setEncodingOption ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setQuality(QMultimedia::EncodingQuality quality)
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_SETQUALITY )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setQuality (  (QMultimedia::EncodingQuality) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSampleRate(int rate)
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_SETSAMPLERATE )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSampleRate ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_NEWFROM )
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

HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QAUDIOENCODERSETTINGS_NEWFROM );
}

HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QAUDIOENCODERSETTINGS_NEWFROM );
}

HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_SETSELFDESTRUCTION )
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