/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QICON

CLASS QWinThumbnailToolButton INHERIT QObject

   DATA class_id INIT Class_Id_QWinThumbnailToolButton
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD toolTip
   METHOD setToolTip
   METHOD icon
   METHOD setIcon
   METHOD isEnabled
   METHOD setEnabled
   METHOD isInteractive
   METHOD setInteractive
   METHOD isVisible
   METHOD setVisible
   METHOD dismissOnClick
   METHOD setDismissOnClick
   METHOD isFlat
   METHOD setFlat
   METHOD click
   METHOD onClicked
   METHOD onChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWinThumbnailToolButton
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
#include <QWinThumbnailToolButton>
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
#include <QWinThumbnailToolButton>
#endif
#endif

/*
explicit QWinThumbnailToolButton(QObject *parent = 0)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QWinThumbnailToolButton * o = new QWinThumbnailToolButton ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWinThumbnailToolButton *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString toolTip() const
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_TOOLTIP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toolTip (  ).toLatin1().data() );
  }
#endif
}

/*
void setToolTip(const QString &toolTip)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_SETTOOLTIP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setToolTip ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QIcon icon() const
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_ICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon (  ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
#endif
}

/*
void setIcon(const QIcon &icon)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_SETICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qtxhb_itemGetPtr(1) : QIcon(hb_parc(1));
    obj->setIcon ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isEnabled() const
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_ISENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEnabled (  ) );
  }
#endif
}

/*
void setEnabled(bool enabled)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_SETENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isInteractive() const
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_ISINTERACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isInteractive (  ) );
  }
#endif
}

/*
void setInteractive(bool interactive)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_SETINTERACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setInteractive ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isVisible() const
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_ISVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isVisible (  ) );
  }
#endif
}

/*
void setVisible(bool visible)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_SETVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool dismissOnClick() const
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_DISMISSONCLICK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->dismissOnClick (  ) );
  }
#endif
}

/*
void setDismissOnClick(bool dismiss)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_SETDISMISSONCLICK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDismissOnClick ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isFlat() const
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_ISFLAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFlat (  ) );
  }
#endif
}

/*
void setFlat(bool flat)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_SETFLAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFlat ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void click()
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_CLICK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->click (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
