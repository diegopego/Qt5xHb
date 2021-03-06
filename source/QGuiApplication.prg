/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWINDOW
REQUEST QCLIPBOARD
REQUEST QOBJECT
REQUEST QFONT
REQUEST QINPUTMETHOD
REQUEST QCURSOR
REQUEST QPALETTE
REQUEST QPLATFORMNATIVEINTERFACE
REQUEST QSCREEN
REQUEST QSTYLEHINTS

CLASS QGuiApplication INHERIT QCoreApplication

   DATA class_id INIT Class_Id_QGuiApplication
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD notify
   METHOD allWindows
   METHOD applicationDisplayName
   METHOD changeOverrideCursor
   METHOD clipboard
   METHOD desktopSettingsAware
   METHOD exec
   METHOD focusObject
   METHOD focusWindow
   METHOD font
   METHOD inputMethod
   METHOD isLeftToRight
   METHOD isRightToLeft
   METHOD keyboardModifiers
   METHOD layoutDirection
   METHOD modalWindow
   METHOD mouseButtons
   METHOD overrideCursor
   METHOD palette
   METHOD platformName
   METHOD platformNativeInterface
   METHOD primaryScreen
   METHOD queryKeyboardModifiers
   METHOD quitOnLastWindowClosed
   METHOD restoreOverrideCursor
   METHOD screens
   METHOD setApplicationDisplayName
   METHOD setDesktopSettingsAware
   METHOD setFont
   METHOD setLayoutDirection
   METHOD setOverrideCursor
   METHOD setPalette
   METHOD setQuitOnLastWindowClosed
   METHOD styleHints
   METHOD topLevelAt
   METHOD topLevelWindows
   METHOD onFocusObjectChanged
   METHOD onFocusWindowChanged
   METHOD onFontDatabaseChanged
   METHOD onLastWindowClosed
   METHOD onScreenAdded
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGuiApplication
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
#include <QGuiApplication>
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
#include <QGuiApplication>
#endif
#endif

#include <QFont>
#include <QPalette>

/*
QGuiApplication(int & argc, char ** argv)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QGuiApplication * o = NULL;
  o = new QGuiApplication( argc, argv );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL, (QGuiApplication *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QGUIAPPLICATION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGuiApplication * obj = (QGuiApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool notify(QObject * object, QEvent * event)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_NOTIFY )
{
  QGuiApplication * obj = (QGuiApplication *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    QEvent * par2 = (QEvent *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->notify ( par1, par2 ) );
  }
}


/*
static QWindowList allWindows()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_ALLWINDOWS )
{
  QWindowList list = QGuiApplication::allWindows (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QWINDOW" );
  #else
  pDynSym = hb_dynsymFindName( "QWINDOW" );
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
      hb_itemPutPtr( pItem, (QWindow *) list[i] );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
      hb_itemRelease( pItem );
    }
  }
  hb_itemReturnRelease(pArray);
}


/*
static QString applicationDisplayName()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_APPLICATIONDISPLAYNAME )
{
  hb_retc( (const char *) QGuiApplication::applicationDisplayName (  ).toLatin1().data() );
}


/*
static void changeOverrideCursor(const QCursor & cursor)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_CHANGEOVERRIDECURSOR )
{
  QCursor * par1 = (QCursor *) _qtxhb_itemGetPtr(1);
  QGuiApplication::changeOverrideCursor ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QClipboard * clipboard()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_CLIPBOARD )
{
  QClipboard * ptr = QGuiApplication::clipboard (  );
  _qt4xhb_createReturnClass ( ptr, "QCLIPBOARD" );
}


/*
static bool desktopSettingsAware()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_DESKTOPSETTINGSAWARE )
{
  hb_retl( QGuiApplication::desktopSettingsAware (  ) );
}


/*
static int exec()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_EXEC )
{
  hb_retni( QGuiApplication::exec (  ) );
}


/*
static QObject * focusObject()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_FOCUSOBJECT )
{
  QObject * ptr = QGuiApplication::focusObject (  );
  _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
}


/*
static QWindow * focusWindow()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_FOCUSWINDOW )
{
  QWindow * ptr = QGuiApplication::focusWindow (  );
  _qt4xhb_createReturnClass ( ptr, "QWINDOW" );
}


/*
static QFont font()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_FONT )
{
  QFont * ptr = new QFont( QGuiApplication::font (  ) );
  _qt4xhb_createReturnClass ( ptr, "QFONT", true );
}


/*
static QInputMethod * inputMethod()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_INPUTMETHOD )
{
  QInputMethod * ptr = QGuiApplication::inputMethod (  );
  _qt4xhb_createReturnClass ( ptr, "QINPUTMETHOD" );
}


/*
static bool isLeftToRight()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_ISLEFTTORIGHT )
{
  hb_retl( QGuiApplication::isLeftToRight (  ) );
}


/*
static bool isRightToLeft()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_ISRIGHTTOLEFT )
{
  hb_retl( QGuiApplication::isRightToLeft (  ) );
}


/*
static Qt::KeyboardModifiers keyboardModifiers()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_KEYBOARDMODIFIERS )
{
  int i = QGuiApplication::keyboardModifiers (  );
  hb_retni( i );
}


/*
static Qt::LayoutDirection layoutDirection()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_LAYOUTDIRECTION )
{
  int i = QGuiApplication::layoutDirection (  );
  hb_retni( i );
}


/*
static QWindow * modalWindow()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_MODALWINDOW )
{
  QWindow * ptr = QGuiApplication::modalWindow (  );
  _qt4xhb_createReturnClass ( ptr, "QWINDOW" );
}


/*
static Qt::MouseButtons mouseButtons()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_MOUSEBUTTONS )
{
  int i = QGuiApplication::mouseButtons (  );
  hb_retni( i );
}


/*
static QCursor * overrideCursor()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_OVERRIDECURSOR )
{
  QCursor * ptr = QGuiApplication::overrideCursor (  );
  _qt4xhb_createReturnClass ( ptr, "QCURSOR" );
}


/*
static QPalette palette()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_PALETTE )
{
  QPalette * ptr = new QPalette( QGuiApplication::palette (  ) );
  _qt4xhb_createReturnClass ( ptr, "QPALETTE", true );
}


/*
static QString platformName()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_PLATFORMNAME )
{
  hb_retc( (const char *) QGuiApplication::platformName (  ).toLatin1().data() );
}


/*
static QPlatformNativeInterface * platformNativeInterface()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_PLATFORMNATIVEINTERFACE )
{
  QPlatformNativeInterface * ptr = QGuiApplication::platformNativeInterface (  );
  _qt4xhb_createReturnClass ( ptr, "QPLATFORMNATIVEINTERFACE" );
}


/*
static QScreen * primaryScreen()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_PRIMARYSCREEN )
{
  QScreen * ptr = QGuiApplication::primaryScreen (  );
  _qt4xhb_createReturnClass ( ptr, "QSCREEN" );
}


/*
static Qt::KeyboardModifiers queryKeyboardModifiers()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_QUERYKEYBOARDMODIFIERS )
{
  int i = QGuiApplication::queryKeyboardModifiers (  );
  hb_retni( i );
}


/*
static bool quitOnLastWindowClosed()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_QUITONLASTWINDOWCLOSED )
{
  hb_retl( QGuiApplication::quitOnLastWindowClosed (  ) );
}


/*
static void restoreOverrideCursor()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_RESTOREOVERRIDECURSOR )
{
  QGuiApplication::restoreOverrideCursor (  );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QList<QScreen *> screens()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SCREENS )
{
}


/*
static void setApplicationDisplayName(const QString & name)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETAPPLICATIONDISPLAYNAME )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QGuiApplication::setApplicationDisplayName ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setDesktopSettingsAware(bool on)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETDESKTOPSETTINGSAWARE )
{
  QGuiApplication::setDesktopSettingsAware ( (bool) hb_parl(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setFont(const QFont & font)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETFONT )
{
  QFont * par1 = (QFont *) _qtxhb_itemGetPtr(1);
  QGuiApplication::setFont ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setLayoutDirection(Qt::LayoutDirection direction)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETLAYOUTDIRECTION )
{
  int par1 = hb_parni(1);
  QGuiApplication::setLayoutDirection (  (Qt::LayoutDirection) par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setOverrideCursor(const QCursor & cursor)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETOVERRIDECURSOR )
{
  QCursor * par1 = (QCursor *) _qtxhb_itemGetPtr(1);
  QGuiApplication::setOverrideCursor ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setPalette(const QPalette & pal)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETPALETTE )
{
  QPalette * par1 = (QPalette *) _qtxhb_itemGetPtr(1);
  QGuiApplication::setPalette ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setQuitOnLastWindowClosed(bool quit)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETQUITONLASTWINDOWCLOSED )
{
  QGuiApplication::setQuitOnLastWindowClosed ( (bool) hb_parl(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QStyleHints * styleHints()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_STYLEHINTS )
{
  QStyleHints * ptr = QGuiApplication::styleHints (  );
  _qt4xhb_createReturnClass ( ptr, "QSTYLEHINTS" );
}


/*
static QWindow * topLevelAt(const QPoint & pos)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_TOPLEVELAT )
{
  QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
  QWindow * ptr = QGuiApplication::topLevelAt ( *par1 );
  _qt4xhb_createReturnClass ( ptr, "QWINDOW" );
}


/*
static QWindowList topLevelWindows()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_TOPLEVELWINDOWS )
{
  QWindowList list = QGuiApplication::topLevelWindows (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QWINDOW" );
  #else
  pDynSym = hb_dynsymFindName( "QWINDOW" );
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
      hb_itemPutPtr( pItem, (QWindow *) list[i] );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
      hb_itemRelease( pItem );
    }
  }
  hb_itemReturnRelease(pArray);
}





#pragma ENDDUMP
