/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWIDGET
REQUEST QICON

CLASS QToolBox INHERIT QFrame

   DATA class_id INIT Class_Id_QToolBox
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addItem1
   METHOD addItem2
   METHOD addItem
   METHOD count
   METHOD currentIndex
   METHOD currentWidget
   METHOD indexOf
   METHOD insertItem1
   METHOD insertItem2
   METHOD insertItem
   METHOD isItemEnabled
   METHOD itemIcon
   METHOD itemText
   METHOD itemToolTip
   METHOD removeItem
   METHOD setItemEnabled
   METHOD setItemIcon
   METHOD setItemText
   METHOD setItemToolTip
   METHOD widget
   METHOD setCurrentIndex
   METHOD setCurrentWidget
   METHOD onCurrentChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QToolBox
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
#include <QToolBox>
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
#include <QToolBox>
#endif
#endif

/*
QToolBox ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QTOOLBOX_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QToolBox * o = new QToolBox ( par1,  (Qt::WindowFlags) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QToolBox *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QTOOLBOX_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QToolBox * obj = (QToolBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int addItem ( QWidget * widget, const QIcon & iconSet, const QString & text )
*/
HB_FUNC_STATIC( QTOOLBOX_ADDITEM1 )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    QIcon par2 = ISOBJECT(2)? *(QIcon *) _qtxhb_itemGetPtr(2) : QIcon(hb_parc(2));
    QString par3 = QLatin1String( hb_parc(3) );
    hb_retni( obj->addItem ( par1, par2, par3 ) );
  }
}

/*
int addItem ( QWidget * w, const QString & text )
*/
HB_FUNC_STATIC( QTOOLBOX_ADDITEM2 )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retni( obj->addItem ( par1, par2 ) );
  }
}


//[1]int addItem ( QWidget * widget, const QIcon & iconSet, const QString & text )
//[2]int addItem ( QWidget * w, const QString & text )

HB_FUNC_STATIC( QTOOLBOX_ADDITEM )
{
  if( ISNUMPAR(3) && ISQWIDGET(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QTOOLBOX_ADDITEM1 );
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QTOOLBOX_ADDITEM2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int count () const
*/
HB_FUNC_STATIC( QTOOLBOX_COUNT )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
int currentIndex () const
*/
HB_FUNC_STATIC( QTOOLBOX_CURRENTINDEX )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->currentIndex (  ) );
  }
}


/*
QWidget * currentWidget () const
*/
HB_FUNC_STATIC( QTOOLBOX_CURRENTWIDGET )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->currentWidget (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
int indexOf ( QWidget * widget ) const
*/
HB_FUNC_STATIC( QTOOLBOX_INDEXOF )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->indexOf ( par1 ) );
  }
}


/*
int insertItem ( int index, QWidget * widget, const QIcon & icon, const QString & text )
*/
HB_FUNC_STATIC( QTOOLBOX_INSERTITEM1 )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par2 = (QWidget *) _qtxhb_itemGetPtr(2);
    QIcon par3 = ISOBJECT(3)? *(QIcon *) _qtxhb_itemGetPtr(3) : QIcon(hb_parc(3));
    QString par4 = QLatin1String( hb_parc(4) );
    hb_retni( obj->insertItem ( (int) hb_parni(1), par2, par3, par4 ) );
  }
}

/*
int insertItem ( int index, QWidget * widget, const QString & text )
*/
HB_FUNC_STATIC( QTOOLBOX_INSERTITEM2 )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par2 = (QWidget *) _qtxhb_itemGetPtr(2);
    QString par3 = QLatin1String( hb_parc(3) );
    hb_retni( obj->insertItem ( (int) hb_parni(1), par2, par3 ) );
  }
}


//[1]int insertItem ( int index, QWidget * widget, const QIcon & icon, const QString & text )
//[2]int insertItem ( int index, QWidget * widget, const QString & text )

HB_FUNC_STATIC( QTOOLBOX_INSERTITEM )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISQWIDGET(2) && (ISQICON(3)||ISCHAR(3)) && ISCHAR(4) )
  {
    HB_FUNC_EXEC( QTOOLBOX_INSERTITEM1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QTOOLBOX_INSERTITEM2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isItemEnabled ( int index ) const
*/
HB_FUNC_STATIC( QTOOLBOX_ISITEMENABLED )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isItemEnabled ( (int) hb_parni(1) ) );
  }
}


/*
QIcon itemIcon ( int index ) const
*/
HB_FUNC_STATIC( QTOOLBOX_ITEMICON )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->itemIcon ( (int) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
QString itemText ( int index ) const
*/
HB_FUNC_STATIC( QTOOLBOX_ITEMTEXT )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->itemText ( (int) hb_parni(1) ).toLatin1().data() );
  }
}


/*
QString itemToolTip ( int index ) const
*/
HB_FUNC_STATIC( QTOOLBOX_ITEMTOOLTIP )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->itemToolTip ( (int) hb_parni(1) ).toLatin1().data() );
  }
}


/*
void removeItem ( int index )
*/
HB_FUNC_STATIC( QTOOLBOX_REMOVEITEM )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeItem ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemEnabled ( int index, bool enabled )
*/
HB_FUNC_STATIC( QTOOLBOX_SETITEMENABLED )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setItemEnabled ( (int) hb_parni(1), (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemIcon ( int index, const QIcon & icon )
*/
HB_FUNC_STATIC( QTOOLBOX_SETITEMICON )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par2 = ISOBJECT(2)? *(QIcon *) _qtxhb_itemGetPtr(2) : QIcon(hb_parc(2));
    obj->setItemIcon ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemText ( int index, const QString & text )
*/
HB_FUNC_STATIC( QTOOLBOX_SETITEMTEXT )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setItemText ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemToolTip ( int index, const QString & toolTip )
*/
HB_FUNC_STATIC( QTOOLBOX_SETITEMTOOLTIP )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setItemToolTip ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * widget ( int index ) const
*/
HB_FUNC_STATIC( QTOOLBOX_WIDGET )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->widget ( (int) hb_parni(1) );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
void setCurrentIndex ( int index )
*/
HB_FUNC_STATIC( QTOOLBOX_SETCURRENTINDEX )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCurrentIndex ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QTOOLBOX_SETCURRENTWIDGET )
{
  QToolBox * obj = (QToolBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    obj->setCurrentWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
