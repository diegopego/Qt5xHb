/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWINDOW
REQUEST QICON
REQUEST QWINTASKBARPROGRESS

CLASS QWinTaskbarButton INHERIT QObject

   DATA class_id INIT Class_Id_QWinTaskbarButton
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD window
   METHOD setWindow
   METHOD overlayIcon
   METHOD setOverlayIcon
   METHOD clearOverlayIcon
   METHOD overlayAccessibleDescription
   METHOD setOverlayAccessibleDescription
   METHOD progress
   METHOD eventFilter
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWinTaskbarButton
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinTaskbarButton>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinTaskbarButton>
#endif
#endif

/*
explicit QWinTaskbarButton(QObject *parent = 0)
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QWinTaskbarButton * o = new QWinTaskbarButton ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWinTaskbarButton *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QWINTASKBARBUTTON_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QWindow *window() const
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_WINDOW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->window (  );
    _qt4xhb_createReturnClass ( ptr, "QWINDOW" );
  }
#endif
}

/*
void setWindow(QWindow *window)
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_SETWINDOW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * par1 = (QWindow *) _qtxhb_itemGetPtr(1);
    obj->setWindow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QIcon overlayIcon() const
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_OVERLAYICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->overlayIcon (  ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
#endif
}

/*
void setOverlayIcon(const QIcon &icon)
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_SETOVERLAYICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qtxhb_itemGetPtr(1) : QIcon(hb_parc(1));
    obj->setOverlayIcon ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void clearOverlayIcon()
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_CLEAROVERLAYICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearOverlayIcon (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString overlayAccessibleDescription() const
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_OVERLAYACCESSIBLEDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->overlayAccessibleDescription (  ).toLatin1().data() );
  }
#endif
}

/*
void setOverlayAccessibleDescription(const QString &description)
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_SETOVERLAYACCESSIBLEDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setOverlayAccessibleDescription ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QWinTaskbarProgress *progress() const
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_PROGRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinTaskbarProgress * ptr = obj->progress (  );
    _qt4xhb_createReturnClass ( ptr, "QWINTASKBARPROGRESS" );
  }
#endif
}


/*
bool eventFilter(QObject *, QEvent *)
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_EVENTFILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    QEvent * par2 = (QEvent *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->eventFilter ( par1, par2 ) );
  }
#endif
}



#pragma ENDDUMP
