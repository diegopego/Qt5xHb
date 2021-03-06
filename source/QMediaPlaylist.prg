/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMEDIACONTENT
REQUEST QMEDIAOBJECT

CLASS QMediaPlaylist INHERIT QObject,QMediaBindableInterface

   DATA class_id INIT Class_Id_QMediaPlaylist
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addMedia1
   METHOD addMedia2
   METHOD addMedia
   METHOD clear
   METHOD currentIndex
   METHOD currentMedia
   METHOD error
   METHOD errorString
   METHOD insertMedia1
   METHOD insertMedia2
   METHOD insertMedia
   METHOD isEmpty
   METHOD isReadOnly
   METHOD load1
   METHOD load2
   METHOD load3
   METHOD load
   METHOD media
   METHOD mediaCount
   METHOD nextIndex
   METHOD playbackMode
   METHOD previousIndex
   METHOD removeMedia1
   METHOD removeMedia2
   METHOD removeMedia
   METHOD save1
   METHOD save2
   METHOD save
   METHOD setPlaybackMode
   METHOD mediaObject
   METHOD next
   METHOD previous
   METHOD setCurrentIndex
   METHOD shuffle
   METHOD onCurrentIndexChanged
   METHOD onCurrentMediaChanged
   METHOD onLoadFailed
   METHOD onLoaded
   METHOD onMediaAboutToBeInserted
   METHOD onMediaAboutToBeRemoved
   METHOD onMediaChanged
   METHOD onMediaInserted
   METHOD onMediaRemoved
   METHOD onPlaybackModeChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaPlaylist
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
#include <QMediaPlaylist>
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
#include <QMediaPlaylist>
#endif
#endif

/*
QMediaPlaylist(QObject * parent = 0)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QMediaPlaylist * o = new QMediaPlaylist ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMediaPlaylist *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QMEDIAPLAYLIST_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMediaPlaylist * obj = (QMediaPlaylist *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool addMedia(const QMediaContent & content)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ADDMEDIA1 )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaContent * par1 = (QMediaContent *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->addMedia ( *par1 ) );
  }
}


/*
bool addMedia(const QList<QMediaContent> & items)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ADDMEDIA2 )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QMediaContent> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QMediaContent *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    hb_retl( obj->addMedia ( par1 ) );
  }
}


//[1]bool addMedia(const QMediaContent & content)
//[2]bool addMedia(const QList<QMediaContent> & items)

HB_FUNC_STATIC( QMEDIAPLAYLIST_ADDMEDIA )
{
  if( ISNUMPAR(1) && ISQMEDIACONTENT(1) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_ADDMEDIA1 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_ADDMEDIA2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool clear()
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_CLEAR )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->clear (  ) );
  }
}


/*
int currentIndex() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_CURRENTINDEX )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->currentIndex (  ) );
  }
}


/*
QMediaContent currentMedia() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_CURRENTMEDIA )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaContent * ptr = new QMediaContent( obj->currentMedia (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMEDIACONTENT" );
  }
}


/*
Error error() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ERROR )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->error (  );
    hb_retni( i );
  }
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ERRORSTRING )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
bool insertMedia(int pos, const QMediaContent & content)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_INSERTMEDIA1 )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaContent * par2 = (QMediaContent *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->insertMedia ( (int) hb_parni(1), *par2 ) );
  }
}


/*
bool insertMedia(int pos, const QList<QMediaContent> & items)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_INSERTMEDIA2 )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QMediaContent> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << *(QMediaContent *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    hb_retl( obj->insertMedia ( (int) hb_parni(1), par2 ) );
  }
}


//bool insertMedia(int pos, const QMediaContent & content)
//bool insertMedia(int pos, const QList<QMediaContent> & items)

HB_FUNC_STATIC( QMEDIAPLAYLIST_INSERTMEDIA )
{
  if( ISNUMPAR(1) && ISQMEDIACONTENT(1) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_INSERTMEDIA1 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_INSERTMEDIA2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ISEMPTY )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
bool isReadOnly() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ISREADONLY )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isReadOnly (  ) );
  }
}


/*
void load(const QNetworkRequest & request, const char * format = 0)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_LOAD1 )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkRequest * par1 = (QNetworkRequest *) _qtxhb_itemGetPtr(1);
    const char * par2 = ISNIL(2)? 0 : hb_parc(2);
    obj->load ( *par1,  (const char *) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void load(const QUrl & location, const char * format = 0)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_LOAD2 )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    const char * par2 = ISNIL(2)? 0 : hb_parc(2);
    obj->load ( *par1,  (const char *) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void load(QIODevice * device, const char * format = 0)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_LOAD3 )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qtxhb_itemGetPtr(1);
    const char * par2 = ISNIL(2)? 0 : hb_parc(2);
    obj->load ( par1,  (const char *) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void load(const QNetworkRequest & request, const char * format = 0)
//[2]void load(const QUrl & location, const char * format = 0)
//[3]void load(QIODevice * device, const char * format = 0)

HB_FUNC_STATIC( QMEDIAPLAYLIST_LOAD )
{
  if( ISBETWEEN(1,2) && ISQNETWORKREQUEST(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_LOAD1 );
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_LOAD2 );
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_LOAD3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QMediaContent media(int index) const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_MEDIA )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaContent * ptr = new QMediaContent( obj->media ( (int) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QMEDIACONTENT" );
  }
}


/*
int mediaCount() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_MEDIACOUNT )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->mediaCount (  ) );
  }
}


/*
int nextIndex(int steps = 1) const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_NEXTINDEX )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nextIndex ( (int) ISNIL(1)? 1 : hb_parni(1) ) );
  }
}


/*
PlaybackMode playbackMode() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_PLAYBACKMODE )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->playbackMode (  );
    hb_retni( i );
  }
}


/*
int previousIndex(int steps = 1) const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_PREVIOUSINDEX )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->previousIndex ( (int) ISNIL(1)? 1 : hb_parni(1) ) );
  }
}


/*
bool removeMedia(int pos)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_REMOVEMEDIA1 )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->removeMedia ( (int) hb_parni(1) ) );
  }
}


/*
bool removeMedia(int start, int end)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_REMOVEMEDIA2 )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->removeMedia ( (int) hb_parni(1), (int) hb_parni(2) ) );
  }
}


//[1]bool removeMedia(int pos)
//[2]bool removeMedia(int start, int end)

HB_FUNC_STATIC( QMEDIAPLAYLIST_REMOVEMEDIA )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_REMOVEMEDIA1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_REMOVEMEDIA2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool save(const QUrl & location, const char * format = 0)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_SAVE1 )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    const char * par2 = ISNIL(2)? 0 : hb_parc(2);
    hb_retl( obj->save ( *par1,  (const char *) par2 ) );
  }
}


/*
bool save(QIODevice * device, const char * format)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_SAVE2 )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qtxhb_itemGetPtr(1);
    const char * par2 = hb_parc(2);
    hb_retl( obj->save ( par1,  (const char *) par2 ) );
  }
}


//[1]bool save(const QUrl & location, const char * format = 0)
//[2]bool save(QIODevice * device, const char * format)

HB_FUNC_STATIC( QMEDIAPLAYLIST_SAVE )
{
  if( ISBETWEEN(1,2) && ISQURL(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_SAVE1 );
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_SAVE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPlaybackMode(PlaybackMode mode)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_SETPLAYBACKMODE )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPlaybackMode (  (QMediaPlaylist::PlaybackMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QMediaObject * mediaObject() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_MEDIAOBJECT )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaObject * ptr = obj->mediaObject (  );
    _qt4xhb_createReturnClass ( ptr, "QMEDIAOBJECT" );
  }
}


/*
void next()
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_NEXT )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->next (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void previous()
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_PREVIOUS )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->previous (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentIndex(int playlistPosition)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_SETCURRENTINDEX )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCurrentIndex ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void shuffle()
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_SHUFFLE )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->shuffle (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
