/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QKEYSEQUENCE
REQUEST QWIDGET

CLASS QShortcut INHERIT QObject

   DATA class_id INIT Class_Id_QShortcut
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD autoRepeat
   METHOD context
   METHOD id
   METHOD isEnabled
   METHOD key
   METHOD parentWidget
   METHOD setAutoRepeat
   METHOD setContext
   METHOD setEnabled
   METHOD setKey
   METHOD setWhatsThis
   METHOD whatsThis
   METHOD onActivated
   METHOD onActivatedAmbiguously
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QShortcut
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
#include <QShortcut>
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
#include <QShortcut>
#endif
#endif

/*
QShortcut(QWidget * parent)
*/
HB_FUNC_STATIC( QSHORTCUT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
  QShortcut * o = new QShortcut ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QShortcut *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QShortcut(const QKeySequence & key, QWidget * parent, const char * member = 0, const char * ambiguousMember = 0, Qt::ShortcutContext context = Qt::WindowShortcut)
*/
HB_FUNC_STATIC( QSHORTCUT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QKeySequence * par1 = (QKeySequence *) _qtxhb_itemGetPtr(1);
  QWidget * par2 = (QWidget *) _qtxhb_itemGetPtr(2);
  const char * par3 = ISNIL(3)? 0 : hb_parc(3);
  const char * par4 = ISNIL(4)? 0 : hb_parc(4);
  int par5 = ISNIL(5)? (int) Qt::WindowShortcut : hb_parni(5);
  QShortcut * o = new QShortcut ( *par1, par2,  (const char *) par3,  (const char *) par4,  (Qt::ShortcutContext) par5 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QShortcut *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QShortcut(QWidget * parent)
//[2]QShortcut(const QKeySequence & key, QWidget * parent, const char * member = 0, const char * ambiguousMember = 0, Qt::ShortcutContext context = Qt::WindowShortcut)

HB_FUNC_STATIC( QSHORTCUT_NEW )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QSHORTCUT_NEW1 );
  }
  else if( ISBETWEEN(2,5) && ISQKEYSEQUENCE(1) && ISQWIDGET(2) && (ISCHAR(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QSHORTCUT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSHORTCUT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool autoRepeat() const
*/
HB_FUNC_STATIC( QSHORTCUT_AUTOREPEAT )
{
  QShortcut * obj = (QShortcut *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->autoRepeat (  ) );
  }
}


/*
Qt::ShortcutContext context() const
*/
HB_FUNC_STATIC( QSHORTCUT_CONTEXT )
{
  QShortcut * obj = (QShortcut *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->context (  );
    hb_retni( i );
  }
}


/*
int id() const
*/
HB_FUNC_STATIC( QSHORTCUT_ID )
{
  QShortcut * obj = (QShortcut *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->id (  ) );
  }
}


/*
bool isEnabled() const
*/
HB_FUNC_STATIC( QSHORTCUT_ISENABLED )
{
  QShortcut * obj = (QShortcut *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEnabled (  ) );
  }
}


/*
QKeySequence key() const
*/
HB_FUNC_STATIC( QSHORTCUT_KEY )
{
  QShortcut * obj = (QShortcut *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QKeySequence * ptr = new QKeySequence( obj->key (  ) );
    _qt4xhb_createReturnClass ( ptr, "QKEYSEQUENCE", true );
  }
}


/*
QWidget * parentWidget() const
*/
HB_FUNC_STATIC( QSHORTCUT_PARENTWIDGET )
{
  QShortcut * obj = (QShortcut *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->parentWidget (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
void setAutoRepeat(bool on)
*/
HB_FUNC_STATIC( QSHORTCUT_SETAUTOREPEAT )
{
  QShortcut * obj = (QShortcut *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoRepeat ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContext(Qt::ShortcutContext context)
*/
HB_FUNC_STATIC( QSHORTCUT_SETCONTEXT )
{
  QShortcut * obj = (QShortcut *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setContext (  (Qt::ShortcutContext) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEnabled(bool enable)
*/
HB_FUNC_STATIC( QSHORTCUT_SETENABLED )
{
  QShortcut * obj = (QShortcut *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setKey(const QKeySequence & key)
*/
HB_FUNC_STATIC( QSHORTCUT_SETKEY )
{
  QShortcut * obj = (QShortcut *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QKeySequence * par1 = (QKeySequence *) _qtxhb_itemGetPtr(1);
    obj->setKey ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWhatsThis(const QString & text)
*/
HB_FUNC_STATIC( QSHORTCUT_SETWHATSTHIS )
{
  QShortcut * obj = (QShortcut *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setWhatsThis ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString whatsThis() const
*/
HB_FUNC_STATIC( QSHORTCUT_WHATSTHIS )
{
  QShortcut * obj = (QShortcut *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->whatsThis (  ).toLatin1().data() );
  }
}




#pragma ENDDUMP
