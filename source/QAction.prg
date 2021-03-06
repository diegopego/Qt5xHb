/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QACTIONGROUP
REQUEST QGRAPHICSWIDGET
REQUEST QWIDGET
REQUEST QVARIANT
REQUEST QFONT
REQUEST QICON
REQUEST QMENU
REQUEST QKEYSEQUENCE

CLASS QAction INHERIT QObject

   DATA class_id INIT Class_Id_QAction
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD actionGroup
   METHOD activate
   METHOD associatedGraphicsWidgets
   METHOD associatedWidgets
   METHOD autoRepeat
   METHOD data
   METHOD font
   METHOD icon
   METHOD iconText
   METHOD isCheckable
   METHOD isChecked
   METHOD isEnabled
   METHOD isIconVisibleInMenu
   METHOD isSeparator
   METHOD isVisible
   METHOD menu
   METHOD menuRole
   METHOD parentWidget
   METHOD priority
   METHOD setActionGroup
   METHOD setAutoRepeat
   METHOD setCheckable
   METHOD setData
   METHOD setFont
   METHOD setIcon
   METHOD setIconText
   METHOD setIconVisibleInMenu
   METHOD setMenu
   METHOD setMenuRole
   METHOD setPriority
   METHOD setSeparator
   METHOD setShortcut
   METHOD setShortcutContext
   METHOD setShortcuts1
   METHOD setShortcuts2
   METHOD setShortCuts
   METHOD setStatusTip
   METHOD setText
   METHOD setToolTip
   METHOD setWhatsThis
   METHOD shortcut
   METHOD shortcutContext
   METHOD shortcuts
   METHOD showStatusText
   METHOD statusTip
   METHOD text
   METHOD toolTip
   METHOD whatsThis
   METHOD hover
   METHOD setChecked
   METHOD setDisabled
   METHOD setEnabled
   METHOD setVisible
   METHOD toggle
   METHOD trigger
   METHOD onChanged
   METHOD onHovered
   METHOD onToggled
   METHOD onTriggered
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAction
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
#include <QAction>
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
#include <QAction>
#endif
#endif

/*
QAction ( QObject * parent )
*/
HB_FUNC_STATIC( QACTION_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QAction * o = new QAction ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAction *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QAction ( const QString & text, QObject * parent )
*/
HB_FUNC_STATIC( QACTION_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QObject * par2 = (QObject *) _qtxhb_itemGetPtr(2);
  QAction * o = new QAction ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAction *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QAction ( const QIcon & icon, const QString & text, QObject * parent )
*/
HB_FUNC_STATIC( QACTION_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QIcon par1 = ISOBJECT(1)? *(QIcon *) _qtxhb_itemGetPtr(1) : QIcon(hb_parc(1));
  QString par2 = QLatin1String( hb_parc(2) );
  QObject * par3 = (QObject *) _qtxhb_itemGetPtr(3);
  QAction * o = new QAction ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAction *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QAction ( QObject * parent )
//[2]QAction ( const QString & text, QObject * parent )
//[3]QAction ( const QIcon & icon, const QString & text, QObject * parent )

HB_FUNC_STATIC( QACTION_NEW )
{
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QACTION_NEW1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QACTION_NEW2 );
  }
  else if( ISNUMPAR(3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISQOBJECT(3) )
  {
    HB_FUNC_EXEC( QACTION_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QACTION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QActionGroup * actionGroup () const
*/
HB_FUNC_STATIC( QACTION_ACTIONGROUP )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QActionGroup * ptr = obj->actionGroup (  );
    _qt4xhb_createReturnClass ( ptr, "QACTIONGROUP" );
  }
}


/*
void activate ( ActionEvent event )
*/
HB_FUNC_STATIC( QACTION_ACTIVATE )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->activate (  (QAction::ActionEvent) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QGraphicsWidget *> associatedGraphicsWidgets () const
*/
HB_FUNC_STATIC( QACTION_ASSOCIATEDGRAPHICSWIDGETS )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QGraphicsWidget *> list = obj->associatedGraphicsWidgets (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSWIDGET" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSWIDGET" );
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
        hb_itemPutPtr( pItem, (QGraphicsWidget *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QList<QWidget *> associatedWidgets () const
*/
HB_FUNC_STATIC( QACTION_ASSOCIATEDWIDGETS )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWidget *> list = obj->associatedWidgets (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWIDGET" );
    #else
    pDynSym = hb_dynsymFindName( "QWIDGET" );
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
        hb_itemPutPtr( pItem, (QWidget *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
bool autoRepeat () const
*/
HB_FUNC_STATIC( QACTION_AUTOREPEAT )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->autoRepeat (  ) );
  }
}


/*
QVariant data () const
*/
HB_FUNC_STATIC( QACTION_DATA )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->data (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QFont font () const
*/
HB_FUNC_STATIC( QACTION_FONT )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * ptr = new QFont( obj->font (  ) );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}


/*
QIcon icon () const
*/
HB_FUNC_STATIC( QACTION_ICON )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon (  ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
QString iconText () const
*/
HB_FUNC_STATIC( QACTION_ICONTEXT )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->iconText (  ).toLatin1().data() );
  }
}


/*
bool isCheckable () const
*/
HB_FUNC_STATIC( QACTION_ISCHECKABLE )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isCheckable (  ) );
  }
}


/*
bool isChecked () const
*/
HB_FUNC_STATIC( QACTION_ISCHECKED )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isChecked (  ) );
  }
}


/*
bool isEnabled () const
*/
HB_FUNC_STATIC( QACTION_ISENABLED )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEnabled (  ) );
  }
}


/*
bool isIconVisibleInMenu () const
*/
HB_FUNC_STATIC( QACTION_ISICONVISIBLEINMENU )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isIconVisibleInMenu (  ) );
  }
}


/*
bool isSeparator () const
*/
HB_FUNC_STATIC( QACTION_ISSEPARATOR )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSeparator (  ) );
  }
}


/*
bool isVisible () const
*/
HB_FUNC_STATIC( QACTION_ISVISIBLE )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isVisible (  ) );
  }
}


/*
QMenu * menu () const
*/
HB_FUNC_STATIC( QACTION_MENU )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMenu * ptr = obj->menu (  );
    _qt4xhb_createReturnClass ( ptr, "QMENU" );
  }
}


/*
MenuRole menuRole () const
*/
HB_FUNC_STATIC( QACTION_MENUROLE )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->menuRole (  );
    hb_retni( i );
  }
}


/*
QWidget * parentWidget () const
*/
HB_FUNC_STATIC( QACTION_PARENTWIDGET )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->parentWidget (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
Priority priority () const
*/
HB_FUNC_STATIC( QACTION_PRIORITY )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->priority (  );
    hb_retni( i );
  }
}


/*
void setActionGroup ( QActionGroup * group )
*/
HB_FUNC_STATIC( QACTION_SETACTIONGROUP )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QActionGroup * par1 = (QActionGroup *) _qtxhb_itemGetPtr(1);
    obj->setActionGroup ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAutoRepeat ( bool )
*/
HB_FUNC_STATIC( QACTION_SETAUTOREPEAT )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoRepeat ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCheckable ( bool )
*/
HB_FUNC_STATIC( QACTION_SETCHECKABLE )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCheckable ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setData ( const QVariant & userData )
*/
HB_FUNC_STATIC( QACTION_SETDATA )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par1 = (QVariant *) _qtxhb_itemGetPtr(1);
    obj->setData ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFont ( const QFont & font )
*/
HB_FUNC_STATIC( QACTION_SETFONT )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * par1 = (QFont *) _qtxhb_itemGetPtr(1);
    obj->setFont ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QACTION_SETICON )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qtxhb_itemGetPtr(1) : QIcon(hb_parc(1));
    obj->setIcon ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIconText ( const QString & text )
*/
HB_FUNC_STATIC( QACTION_SETICONTEXT )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setIconText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIconVisibleInMenu ( bool visible )
*/
HB_FUNC_STATIC( QACTION_SETICONVISIBLEINMENU )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIconVisibleInMenu ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMenu ( QMenu * menu )
*/
HB_FUNC_STATIC( QACTION_SETMENU )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMenu * par1 = (QMenu *) _qtxhb_itemGetPtr(1);
    obj->setMenu ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMenuRole ( MenuRole menuRole )
*/
HB_FUNC_STATIC( QACTION_SETMENUROLE )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMenuRole (  (QAction::MenuRole) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPriority ( Priority priority )
*/
HB_FUNC_STATIC( QACTION_SETPRIORITY )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPriority (  (QAction::Priority) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSeparator ( bool b )
*/
HB_FUNC_STATIC( QACTION_SETSEPARATOR )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSeparator ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setShortcut ( const QKeySequence & shortcut )
*/
HB_FUNC_STATIC( QACTION_SETSHORTCUT )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QKeySequence * par1 = (QKeySequence *) _qtxhb_itemGetPtr(1);
    obj->setShortcut ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setShortcutContext ( Qt::ShortcutContext context )
*/
HB_FUNC_STATIC( QACTION_SETSHORTCUTCONTEXT )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setShortcutContext (  (Qt::ShortcutContext) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setShortcuts ( const QList<QKeySequence> & shortcuts )
*/
HB_FUNC_STATIC( QACTION_SETSHORTCUTS1 )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QKeySequence> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QKeySequence *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setShortcuts ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setShortcuts ( QKeySequence::StandardKey key )
*/
HB_FUNC_STATIC( QACTION_SETSHORTCUTS2 )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setShortcuts (  (QKeySequence::StandardKey) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setShortcuts ( const QList<QKeySequence> & shortcuts )
//[2]void setShortcuts ( QKeySequence::StandardKey key )

HB_FUNC_STATIC( QACTION_SETSHORTCUTS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QACTION_SETSHORTCUTS1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QACTION_SETSHORTCUTS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


/*
void setStatusTip ( const QString & statusTip )
*/
HB_FUNC_STATIC( QACTION_SETSTATUSTIP )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setStatusTip ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setText ( const QString & text )
*/
HB_FUNC_STATIC( QACTION_SETTEXT )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setToolTip ( const QString & tip )
*/
HB_FUNC_STATIC( QACTION_SETTOOLTIP )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setToolTip ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWhatsThis ( const QString & what )
*/
HB_FUNC_STATIC( QACTION_SETWHATSTHIS )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setWhatsThis ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QKeySequence shortcut () const
*/
HB_FUNC_STATIC( QACTION_SHORTCUT )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QKeySequence * ptr = new QKeySequence( obj->shortcut (  ) );
    _qt4xhb_createReturnClass ( ptr, "QKEYSEQUENCE", true );
  }
}


/*
Qt::ShortcutContext shortcutContext () const
*/
HB_FUNC_STATIC( QACTION_SHORTCUTCONTEXT )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->shortcutContext (  );
    hb_retni( i );
  }
}


/*
QList<QKeySequence> shortcuts () const
*/
HB_FUNC_STATIC( QACTION_SHORTCUTS )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QKeySequence> list = obj->shortcuts (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QKEYSEQUENCE" );
    #else
    pDynSym = hb_dynsymFindName( "QKEYSEQUENCE" );
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
        hb_itemPutPtr( pItem, (QKeySequence *) new QKeySequence ( list[i] ) );
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
  }
}


/*
bool showStatusText ( QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QACTION_SHOWSTATUSTEXT )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->showStatusText ( par1 ) );
  }
}



/*
QString statusTip () const
*/
HB_FUNC_STATIC( QACTION_STATUSTIP )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->statusTip (  ).toLatin1().data() );
  }
}


/*
QString text () const
*/
HB_FUNC_STATIC( QACTION_TEXT )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->text (  ).toLatin1().data() );
  }
}


/*
QString toolTip () const
*/
HB_FUNC_STATIC( QACTION_TOOLTIP )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toolTip (  ).toLatin1().data() );
  }
}


/*
QString whatsThis () const
*/
HB_FUNC_STATIC( QACTION_WHATSTHIS )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->whatsThis (  ).toLatin1().data() );
  }
}


/*
void hover ()
*/
HB_FUNC_STATIC( QACTION_HOVER )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->hover (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setChecked ( bool )
*/
HB_FUNC_STATIC( QACTION_SETCHECKED )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setChecked ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDisabled ( bool b )
*/
HB_FUNC_STATIC( QACTION_SETDISABLED )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDisabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEnabled ( bool )
*/
HB_FUNC_STATIC( QACTION_SETENABLED )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVisible ( bool )
*/
HB_FUNC_STATIC( QACTION_SETVISIBLE )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void toggle ()
*/
HB_FUNC_STATIC( QACTION_TOGGLE )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->toggle (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void trigger ()
*/
HB_FUNC_STATIC( QACTION_TRIGGER )
{
  QAction * obj = (QAction *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->trigger (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
