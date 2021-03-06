/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRADIODATA

CLASS QRadioTuner INHERIT QMediaObject

   DATA class_id INIT Class_Id_QRadioTuner
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD availability
   METHOD state
   METHOD band
   METHOD isBandSupported
   METHOD frequency
   METHOD frequencyStep
   METHOD isStereo
   METHOD setStereoMode
   METHOD stereoMode
   METHOD signalStrength
   METHOD volume
   METHOD isMuted
   METHOD isSearching
   METHOD isAntennaConnected
   METHOD error
   METHOD errorString
   METHOD radioData
   METHOD searchForward
   METHOD searchBackward
   METHOD searchAllStations
   METHOD cancelSearch
   METHOD setBand
   METHOD setFrequency
   METHOD setVolume
   METHOD setMuted
   METHOD start
   METHOD stop
   METHOD onStateChanged
   METHOD onBandChanged
   METHOD onFrequencyChanged
   METHOD onStereoStatusChanged
   METHOD onSearchingChanged
   METHOD onSignalStrengthChanged
   METHOD onVolumeChanged
   METHOD onMutedChanged
   METHOD onStationFound
   METHOD onAntennaConnectedChanged
   METHOD onError
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRadioTuner
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
#include <QRadioTuner>
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
#include <QRadioTuner>
#endif
#endif

/*
QRadioTuner(QObject *parent = 0)
*/
HB_FUNC_STATIC( QRADIOTUNER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QRadioTuner * o = new QRadioTuner ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRadioTuner *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QRADIOTUNER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QRadioTuner * obj = (QRadioTuner *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QMultimedia::AvailabilityStatus availability() const
*/
HB_FUNC_STATIC( QRADIOTUNER_AVAILABILITY )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->availability (  );
    hb_retni( i );
  }
}


/*
State state() const
*/
HB_FUNC_STATIC( QRADIOTUNER_STATE )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->state (  );
    hb_retni( i );
  }
}


/*
Band band() const
*/
HB_FUNC_STATIC( QRADIOTUNER_BAND )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->band (  );
    hb_retni( i );
  }
}


/*
bool isBandSupported(Band b) const
*/
HB_FUNC_STATIC( QRADIOTUNER_ISBANDSUPPORTED )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isBandSupported (  (QRadioTuner::Band) par1 ) );
  }
}


/*
int frequency() const
*/
HB_FUNC_STATIC( QRADIOTUNER_FREQUENCY )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->frequency (  ) );
  }
}


/*
int frequencyStep(Band band) const
*/
HB_FUNC_STATIC( QRADIOTUNER_FREQUENCYSTEP )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->frequencyStep (  (QRadioTuner::Band) par1 ) );
  }
}



/*
bool isStereo() const
*/
HB_FUNC_STATIC( QRADIOTUNER_ISSTEREO )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isStereo (  ) );
  }
}


/*
void setStereoMode(QRadioTuner::StereoMode mode)
*/
HB_FUNC_STATIC( QRADIOTUNER_SETSTEREOMODE )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStereoMode (  (QRadioTuner::StereoMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
StereoMode stereoMode() const
*/
HB_FUNC_STATIC( QRADIOTUNER_STEREOMODE )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->stereoMode (  );
    hb_retni( i );
  }
}


/*
int signalStrength() const
*/
HB_FUNC_STATIC( QRADIOTUNER_SIGNALSTRENGTH )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->signalStrength (  ) );
  }
}


/*
int volume() const
*/
HB_FUNC_STATIC( QRADIOTUNER_VOLUME )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->volume (  ) );
  }
}


/*
bool isMuted() const
*/
HB_FUNC_STATIC( QRADIOTUNER_ISMUTED )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isMuted (  ) );
  }
}


/*
bool isSearching() const
*/
HB_FUNC_STATIC( QRADIOTUNER_ISSEARCHING )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSearching (  ) );
  }
}


/*
bool isAntennaConnected() const
*/
HB_FUNC_STATIC( QRADIOTUNER_ISANTENNACONNECTED )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAntennaConnected (  ) );
  }
}


/*
Error error() const
*/
HB_FUNC_STATIC( QRADIOTUNER_ERROR )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->error (  );
    hb_retni( i );
  }
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QRADIOTUNER_ERRORSTRING )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
QRadioData *radioData() const
*/
HB_FUNC_STATIC( QRADIOTUNER_RADIODATA )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRadioData * ptr = obj->radioData (  );
    _qt4xhb_createReturnClass ( ptr, "QRADIODATA" );
  }
}


/*
void searchForward()
*/
HB_FUNC_STATIC( QRADIOTUNER_SEARCHFORWARD )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->searchForward (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void searchBackward()
*/
HB_FUNC_STATIC( QRADIOTUNER_SEARCHBACKWARD )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->searchBackward (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void searchAllStations(QRadioTuner::SearchMode searchMode = QRadioTuner::SearchFast)
*/
HB_FUNC_STATIC( QRADIOTUNER_SEARCHALLSTATIONS )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QRadioTuner::SearchFast : hb_parni(1);
    obj->searchAllStations (  (QRadioTuner::SearchMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void cancelSearch()
*/
HB_FUNC_STATIC( QRADIOTUNER_CANCELSEARCH )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->cancelSearch (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBand(Band band)
*/
HB_FUNC_STATIC( QRADIOTUNER_SETBAND )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setBand (  (QRadioTuner::Band) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFrequency(int frequency)
*/
HB_FUNC_STATIC( QRADIOTUNER_SETFREQUENCY )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFrequency ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVolume(int volume)
*/
HB_FUNC_STATIC( QRADIOTUNER_SETVOLUME )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVolume ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMuted(bool muted)
*/
HB_FUNC_STATIC( QRADIOTUNER_SETMUTED )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMuted ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void start()
*/
HB_FUNC_STATIC( QRADIOTUNER_START )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->start (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop()
*/
HB_FUNC_STATIC( QRADIOTUNER_STOP )
{
  QRadioTuner * obj = (QRadioTuner *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
