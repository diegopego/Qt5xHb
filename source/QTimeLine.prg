/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTimeLine INHERIT QObject

   DATA class_id INIT Class_Id_QTimeLine
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD currentFrame
   METHOD currentTime
   METHOD currentValue
   METHOD curveShape
   METHOD direction
   METHOD duration
   METHOD endFrame
   METHOD frameForTime
   METHOD loopCount
   METHOD setCurveShape
   METHOD setDirection
   METHOD setDuration
   METHOD setEasingCurve
   METHOD setEndFrame
   METHOD setFrameRange
   METHOD setLoopCount
   METHOD setStartFrame
   METHOD setUpdateInterval
   METHOD startFrame
   METHOD state
   METHOD updateInterval
   METHOD valueForTime
   METHOD resume
   METHOD setCurrentTime
   METHOD setPaused
   METHOD start
   METHOD stop
   METHOD toggleDirection
   METHOD OnFinished
   METHOD onFrameChanged
   METHOD onStateChanged
   METHOD onValueChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTimeLine
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
#include <QTimeLine>
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
#include <QTimeLine>
#endif
#endif

/*
QTimeLine ( int duration = 1000, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QTIMELINE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = ISNIL(1)? 1000 : hb_parni(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qtxhb_itemGetPtr(2);
  QTimeLine * o = new QTimeLine ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTimeLine *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QTIMELINE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTimeLine * obj = (QTimeLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int currentFrame () const
*/
HB_FUNC_STATIC( QTIMELINE_CURRENTFRAME )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->currentFrame (  ) );
  }
}


/*
int currentTime () const
*/
HB_FUNC_STATIC( QTIMELINE_CURRENTTIME )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->currentTime (  ) );
  }
}


/*
qreal currentValue () const
*/
HB_FUNC_STATIC( QTIMELINE_CURRENTVALUE )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->currentValue (  ) );
  }
}


/*
CurveShape curveShape () const
*/
HB_FUNC_STATIC( QTIMELINE_CURVESHAPE )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->curveShape (  );
    hb_retni( i );
  }
}


/*
Direction direction () const
*/
HB_FUNC_STATIC( QTIMELINE_DIRECTION )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->direction (  );
    hb_retni( i );
  }
}


/*
int duration () const
*/
HB_FUNC_STATIC( QTIMELINE_DURATION )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->duration (  ) );
  }
}



/*
int endFrame () const
*/
HB_FUNC_STATIC( QTIMELINE_ENDFRAME )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->endFrame (  ) );
  }
}


/*
int frameForTime ( int msec ) const
*/
HB_FUNC_STATIC( QTIMELINE_FRAMEFORTIME )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->frameForTime ( (int) hb_parni(1) ) );
  }
}


/*
int loopCount () const
*/
HB_FUNC_STATIC( QTIMELINE_LOOPCOUNT )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->loopCount (  ) );
  }
}


/*
void setCurveShape ( CurveShape shape )
*/
HB_FUNC_STATIC( QTIMELINE_SETCURVESHAPE )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCurveShape (  (QTimeLine::CurveShape) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDirection ( Direction direction )
*/
HB_FUNC_STATIC( QTIMELINE_SETDIRECTION )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDirection (  (QTimeLine::Direction) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDuration ( int duration )
*/
HB_FUNC_STATIC( QTIMELINE_SETDURATION )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDuration ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEasingCurve ( const QEasingCurve & curve )
*/
HB_FUNC_STATIC( QTIMELINE_SETEASINGCURVE )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QEasingCurve * par1 = (QEasingCurve *) _qtxhb_itemGetPtr(1);
    obj->setEasingCurve ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEndFrame ( int frame )
*/
HB_FUNC_STATIC( QTIMELINE_SETENDFRAME )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setEndFrame ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFrameRange ( int startFrame, int endFrame )
*/
HB_FUNC_STATIC( QTIMELINE_SETFRAMERANGE )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFrameRange ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLoopCount ( int count )
*/
HB_FUNC_STATIC( QTIMELINE_SETLOOPCOUNT )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLoopCount ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStartFrame ( int frame )
*/
HB_FUNC_STATIC( QTIMELINE_SETSTARTFRAME )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStartFrame ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUpdateInterval ( int interval )
*/
HB_FUNC_STATIC( QTIMELINE_SETUPDATEINTERVAL )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUpdateInterval ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int startFrame () const
*/
HB_FUNC_STATIC( QTIMELINE_STARTFRAME )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->startFrame (  ) );
  }
}


/*
State state () const
*/
HB_FUNC_STATIC( QTIMELINE_STATE )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->state (  );
    hb_retni( i );
  }
}


/*
int updateInterval () const
*/
HB_FUNC_STATIC( QTIMELINE_UPDATEINTERVAL )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->updateInterval (  ) );
  }
}


/*
virtual qreal valueForTime ( int msec ) const
*/
HB_FUNC_STATIC( QTIMELINE_VALUEFORTIME )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->valueForTime ( (int) hb_parni(1) ) );
  }
}


/*
void resume ()
*/
HB_FUNC_STATIC( QTIMELINE_RESUME )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resume (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentTime ( int msec )
*/
HB_FUNC_STATIC( QTIMELINE_SETCURRENTTIME )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCurrentTime ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPaused ( bool paused )
*/
HB_FUNC_STATIC( QTIMELINE_SETPAUSED )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPaused ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void start ()
*/
HB_FUNC_STATIC( QTIMELINE_START )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->start (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop ()
*/
HB_FUNC_STATIC( QTIMELINE_STOP )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void toggleDirection ()
*/
HB_FUNC_STATIC( QTIMELINE_TOGGLEDIRECTION )
{
  QTimeLine * obj = (QTimeLine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->toggleDirection (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
