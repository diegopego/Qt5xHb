/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QURL
REQUEST QAUDIOENCODERSETTINGS
REQUEST QVARIANT
REQUEST QSIZE
REQUEST QVIDEOENCODERSETTINGS
REQUEST QMEDIAOBJECT

CLASS QMediaRecorder INHERIT QObject,QMediaBindableInterface

   DATA class_id INIT Class_Id_QMediaRecorder
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD actualLocation
   METHOD audioCodecDescription
   METHOD audioSettings
   METHOD availability
   METHOD availableMetaData
   METHOD containerDescription
   METHOD containerFormat
   METHOD duration
   METHOD error
   METHOD errorString
   METHOD isAvailable
   METHOD isMetaDataAvailable
   METHOD isMetaDataWritable
   METHOD isMuted
   METHOD metaData
   METHOD outputLocation
   METHOD setAudioSettings
   METHOD setContainerFormat
   METHOD setEncodingSettings
   METHOD setMetaData
   METHOD setOutputLocation
   METHOD setVideoSettings
   METHOD state
   METHOD status
   METHOD supportedAudioCodecs
   METHOD supportedAudioSampleRates
   METHOD supportedContainers
   METHOD supportedFrameRates
   METHOD supportedResolutions
   METHOD supportedVideoCodecs
   METHOD videoCodecDescription
   METHOD videoSettings
   METHOD volume
   METHOD mediaObject
   METHOD pause
   METHOD record
   METHOD setMuted
   METHOD setVolume
   METHOD stop
   METHOD onActualLocationChanged
   METHOD onAvailabilityChanged1
   METHOD onAvailabilityChanged2
   METHOD onDurationChanged
   METHOD onError
   METHOD onMetaDataAvailableChanged
   METHOD onMetaDataChanged1
   METHOD onMetaDataChanged2
   METHOD onMetaDataWritableChanged
   METHOD onMutedChanged
   METHOD onStateChanged
   METHOD onStatusChanged
   METHOD onVolumeChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaRecorder
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
#include <QMediaRecorder>
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
#include <QMediaRecorder>
#endif
#endif

#include <QUrl>

/*
QMediaRecorder(QMediaObject * mediaObject, QObject * parent = 0)
*/
HB_FUNC_STATIC( QMEDIARECORDER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMediaObject * par1 = (QMediaObject *) _qtxhb_itemGetPtr(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qtxhb_itemGetPtr(2);
  QMediaRecorder * o = new QMediaRecorder ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMediaRecorder *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QMEDIARECORDER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMediaRecorder * obj = (QMediaRecorder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QUrl actualLocation() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ACTUALLOCATION )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->actualLocation (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
QString audioCodecDescription(const QString & codec) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_AUDIOCODECDESCRIPTION )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->audioCodecDescription ( par1 ).toLatin1().data() );
  }
}


/*
QAudioEncoderSettings audioSettings() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_AUDIOSETTINGS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioEncoderSettings * ptr = new QAudioEncoderSettings( obj->audioSettings (  ) );
    _qt4xhb_createReturnClass ( ptr, "QAUDIOENCODERSETTINGS" );
  }
}


/*
QMultimedia::AvailabilityStatus availability() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_AVAILABILITY )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->availability (  );
    hb_retni( i );
  }
}


/*
QStringList availableMetaData() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_AVAILABLEMETADATA )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->availableMetaData (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QString containerDescription(const QString & format) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_CONTAINERDESCRIPTION )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->containerDescription ( par1 ).toLatin1().data() );
  }
}


/*
QString containerFormat() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_CONTAINERFORMAT )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->containerFormat (  ).toLatin1().data() );
  }
}


/*
qint64 duration() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_DURATION )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->duration (  ) );
  }
}


/*
Error error() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ERROR )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->error (  );
    hb_retni( i );
  }
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ERRORSTRING )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
bool isAvailable() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ISAVAILABLE )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAvailable (  ) );
  }
}


/*
bool isMetaDataAvailable() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ISMETADATAAVAILABLE )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isMetaDataAvailable (  ) );
  }
}


/*
bool isMetaDataWritable() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ISMETADATAWRITABLE )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isMetaDataWritable (  ) );
  }
}


/*
bool isMuted() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ISMUTED )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isMuted (  ) );
  }
}


/*
QVariant metaData(const QString & key) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_METADATA )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * ptr = new QVariant( obj->metaData ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QUrl outputLocation() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_OUTPUTLOCATION )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->outputLocation (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
void setAudioSettings(const QAudioEncoderSettings & settings)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETAUDIOSETTINGS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioEncoderSettings * par1 = (QAudioEncoderSettings *) _qtxhb_itemGetPtr(1);
    obj->setAudioSettings ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContainerFormat(const QString & container)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETCONTAINERFORMAT )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setContainerFormat ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodingSettings(const QAudioEncoderSettings & audio, const QVideoEncoderSettings & video = QVideoEncoderSettings(), const QString & container = QString())
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETENCODINGSETTINGS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioEncoderSettings * par1 = (QAudioEncoderSettings *) _qtxhb_itemGetPtr(1);
    QVideoEncoderSettings par2 = ISNIL(2)? QVideoEncoderSettings() : *(QVideoEncoderSettings *) _qtxhb_itemGetPtr(2);
    QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
    obj->setEncodingSettings ( *par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMetaData(const QString & key, const QVariant & value)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETMETADATA )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    obj->setMetaData ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool setOutputLocation(const QUrl & location)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETOUTPUTLOCATION )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->setOutputLocation ( *par1 ) );
  }
}


/*
void setVideoSettings(const QVideoEncoderSettings & settings)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETVIDEOSETTINGS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoEncoderSettings * par1 = (QVideoEncoderSettings *) _qtxhb_itemGetPtr(1);
    obj->setVideoSettings ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
State state() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_STATE )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->state (  );
    hb_retni( i );
  }
}


/*
Status status() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_STATUS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->status (  );
    hb_retni( i );
  }
}


/*
QStringList supportedAudioCodecs() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_SUPPORTEDAUDIOCODECS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->supportedAudioCodecs (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QList<int> supportedAudioSampleRates(const QAudioEncoderSettings & settings = QAudioEncoderSettings(), bool * continuous = 0) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_SUPPORTEDAUDIOSAMPLERATES )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioEncoderSettings par1 = ISNIL(1)? QAudioEncoderSettings() : *(QAudioEncoderSettings *) _qtxhb_itemGetPtr(1);
    bool par2;
    QList<int> list = obj->supportedAudioSampleRates ( par1, &par2 );
    _qtxhb_convert_qlist_int_to_array ( list );
    hb_storl( par2, 2 );
  }
}


/*
QStringList supportedContainers() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_SUPPORTEDCONTAINERS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->supportedContainers (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QList<qreal> supportedFrameRates(const QVideoEncoderSettings & settings = QVideoEncoderSettings(), bool * continuous = 0) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_SUPPORTEDFRAMERATES )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoEncoderSettings par1 = ISNIL(1)? QVideoEncoderSettings() : *(QVideoEncoderSettings *) _qtxhb_itemGetPtr(1);
    bool par2;
    QList<qreal> list = obj->supportedFrameRates ( par1, &par2 );
    _qtxhb_convert_qlist_qreal_to_array ( list );
    hb_storl( par2, 2 );
  }
}


/*
QList<QSize> supportedResolutions(const QVideoEncoderSettings & settings = QVideoEncoderSettings(), bool * continuous = 0) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_SUPPORTEDRESOLUTIONS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoEncoderSettings par1 = ISNIL(1)? QVideoEncoderSettings() : *(QVideoEncoderSettings *) _qtxhb_itemGetPtr(1);
    bool par2;
    QList<QSize> list = obj->supportedResolutions ( par1, &par2 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSIZE" );
    #else
    pDynSym = hb_dynsymFindName( "QSIZE" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QSize *) new QSize ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
    hb_storl( par2, 2 );
  }
}


/*
QStringList supportedVideoCodecs() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_SUPPORTEDVIDEOCODECS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->supportedVideoCodecs (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QString videoCodecDescription(const QString & codec) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_VIDEOCODECDESCRIPTION )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->videoCodecDescription ( par1 ).toLatin1().data() );
  }
}


/*
QVideoEncoderSettings videoSettings() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_VIDEOSETTINGS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoEncoderSettings * ptr = new QVideoEncoderSettings( obj->videoSettings (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVIDEOENCODERSETTINGS" );
  }
}


/*
qreal volume() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_VOLUME )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->volume (  ) );
  }
}


/*
virtual QMediaObject * mediaObject() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_MEDIAOBJECT )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaObject * ptr = obj->mediaObject (  );
    _qt4xhb_createReturnClass ( ptr, "QMEDIAOBJECT" );
  }
}


/*
void pause()
*/
HB_FUNC_STATIC( QMEDIARECORDER_PAUSE )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->pause (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void record()
*/
HB_FUNC_STATIC( QMEDIARECORDER_RECORD )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->record (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMuted(bool muted)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETMUTED )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMuted ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVolume(qreal volume)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETVOLUME )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setVolume ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop()
*/
HB_FUNC_STATIC( QMEDIARECORDER_STOP )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
