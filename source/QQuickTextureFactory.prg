/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSGTEXTURE
REQUEST QIMAGE
REQUEST QSIZE

CLASS QQuickTextureFactory INHERIT QObject

   DATA class_id INIT Class_Id_QQuickTextureFactory
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD createTexture
   METHOD image
   METHOD textureByteCount
   METHOD textureSize
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQuickTextureFactory
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
#include <QQuickTextureFactory>
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
#include <QQuickTextureFactory>
#endif
#endif


HB_FUNC_STATIC( QQUICKTEXTUREFACTORY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQuickTextureFactory * obj = (QQuickTextureFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QSGTexture * createTexture(QQuickWindow * window) const = 0
*/
HB_FUNC_STATIC( QQUICKTEXTUREFACTORY_CREATETEXTURE )
{
  QQuickTextureFactory * obj = (QQuickTextureFactory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQuickWindow * par1 = (QQuickWindow *) _qtxhb_itemGetPtr(1);
    QSGTexture * ptr = obj->createTexture ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QSGTEXTURE" );
  }
}


/*
virtual QImage image() const
*/
HB_FUNC_STATIC( QQUICKTEXTUREFACTORY_IMAGE )
{
  QQuickTextureFactory * obj = (QQuickTextureFactory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage * ptr = new QImage( obj->image (  ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
virtual int textureByteCount() const = 0
*/
HB_FUNC_STATIC( QQUICKTEXTUREFACTORY_TEXTUREBYTECOUNT )
{
  QQuickTextureFactory * obj = (QQuickTextureFactory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->textureByteCount (  ) );
  }
}


/*
virtual QSize textureSize() const = 0
*/
HB_FUNC_STATIC( QQUICKTEXTUREFACTORY_TEXTURESIZE )
{
  QQuickTextureFactory * obj = (QQuickTextureFactory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->textureSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}



#pragma ENDDUMP
