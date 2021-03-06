/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECTF
REQUEST QSIZEF

CLASS QPlainTextDocumentLayout INHERIT QAbstractTextDocumentLayout

   DATA class_id INIT Class_Id_QPlainTextDocumentLayout
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD cursorWidth
   METHOD ensureBlockLayout
   METHOD requestUpdate
   METHOD setCursorWidth
   METHOD blockBoundingRect
   METHOD documentSize
   METHOD frameBoundingRect
   METHOD hitTest
   METHOD pageCount
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlainTextDocumentLayout
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
#include <QPlainTextDocumentLayout>
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
#include <QPlainTextDocumentLayout>
#endif
#endif

/*
QPlainTextDocumentLayout ( QTextDocument * document )
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextDocument * par1 = (QTextDocument *) _qtxhb_itemGetPtr(1);
  QPlainTextDocumentLayout * o = new QPlainTextDocumentLayout ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPlainTextDocumentLayout *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int cursorWidth () const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_CURSORWIDTH )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->cursorWidth (  ) );
  }
}


/*
void ensureBlockLayout ( const QTextBlock & block ) const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_ENSUREBLOCKLAYOUT )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * par1 = (QTextBlock *) _qtxhb_itemGetPtr(1);
    obj->ensureBlockLayout ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void requestUpdate ()
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_REQUESTUPDATE )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->requestUpdate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCursorWidth ( int width )
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_SETCURSORWIDTH )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCursorWidth ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QRectF blockBoundingRect ( const QTextBlock & block ) const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_BLOCKBOUNDINGRECT )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * par1 = (QTextBlock *) _qtxhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->blockBoundingRect ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
virtual QSizeF documentSize () const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_DOCUMENTSIZE )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->documentSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}



/*
virtual QRectF frameBoundingRect ( QTextFrame * ) const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_FRAMEBOUNDINGRECT )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFrame * par1 = (QTextFrame *) _qtxhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->frameBoundingRect ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
virtual int hitTest ( const QPointF &, Qt::HitTestAccuracy ) const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_HITTEST )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    hb_retni( obj->hitTest ( *par1,  (Qt::HitTestAccuracy) par2 ) );
  }
}


/*
virtual int pageCount () const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_PAGECOUNT )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pageCount (  ) );
  }
}



#pragma ENDDUMP
