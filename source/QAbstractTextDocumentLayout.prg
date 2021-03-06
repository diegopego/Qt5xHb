/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECTF
REQUEST QTEXTDOCUMENT
REQUEST QSIZEF
REQUEST QTEXTOBJECTINTERFACE
REQUEST QPAINTDEVICE

CLASS QAbstractTextDocumentLayout INHERIT QObject

   DATA class_id INIT Class_Id_QAbstractTextDocumentLayout
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD anchorAt
   METHOD blockBoundingRect
   METHOD document
   METHOD documentSize
   METHOD frameBoundingRect
   METHOD handlerForObject
   METHOD hitTest
   METHOD pageCount
   METHOD paintDevice
   METHOD registerHandler
   METHOD setPaintDevice
   METHOD onDocumentSizeChanged
   METHOD onPageCountChanged
   METHOD onUpdate
   METHOD onUpdateBlock
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractTextDocumentLayout
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
#include <QAbstractTextDocumentLayout>
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
#include <QAbstractTextDocumentLayout>
#endif
#endif


HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString anchorAt ( const QPointF & position ) const
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_ANCHORAT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    hb_retc( (const char *) obj->anchorAt ( *par1 ).toLatin1().data() );
  }
}


/*
virtual QRectF blockBoundingRect ( const QTextBlock & block ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_BLOCKBOUNDINGRECT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * par1 = (QTextBlock *) _qtxhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->blockBoundingRect ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QTextDocument * document () const
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_DOCUMENT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocument * ptr = obj->document (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}


/*
virtual QSizeF documentSize () const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_DOCUMENTSIZE )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->documentSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}



/*
virtual QRectF frameBoundingRect ( QTextFrame * frame ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_FRAMEBOUNDINGRECT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFrame * par1 = (QTextFrame *) _qtxhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->frameBoundingRect ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QTextObjectInterface * handlerForObject ( int objectType ) const
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_HANDLERFOROBJECT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextObjectInterface * ptr = obj->handlerForObject ( (int) hb_parni(1) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTOBJECTINTERFACE" );
  }
}


/*
virtual int hitTest ( const QPointF & point, Qt::HitTestAccuracy accuracy ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_HITTEST )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    hb_retni( obj->hitTest ( *par1,  (Qt::HitTestAccuracy) par2 ) );
  }
}


/*
virtual int pageCount () const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_PAGECOUNT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pageCount (  ) );
  }
}


/*
QPaintDevice * paintDevice () const
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_PAINTDEVICE )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintDevice * ptr = obj->paintDevice (  );
    _qt4xhb_createReturnClass ( ptr, "QPAINTDEVICE" );
  }
}


/*
void registerHandler ( int objectType, QObject * component )
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_REGISTERHANDLER )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par2 = (QObject *) _qtxhb_itemGetPtr(2);
    obj->registerHandler ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPaintDevice ( QPaintDevice * device )
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_SETPAINTDEVICE )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintDevice * par1 = (QPaintDevice *) _qtxhb_itemGetPtr(1);
    obj->setPaintDevice ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
