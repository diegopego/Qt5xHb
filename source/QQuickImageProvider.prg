/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QIMAGE
REQUEST QPIXMAP
REQUEST QQUICKTEXTUREFACTORY

CLASS QQuickImageProvider INHERIT QQmlImageProviderBase

   DATA class_id INIT Class_Id_QQuickImageProvider
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD flags
   METHOD imageType
   METHOD requestImage
   METHOD requestPixmap
   METHOD requestTexture
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQuickImageProvider
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
#include <QQuickImageProvider>
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
#include <QQuickImageProvider>
#endif
#endif

/*
QQuickImageProvider(ImageType type, Flags flags = 0)
*/
HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QQuickImageProvider * o = new QQuickImageProvider (  (QQmlImageProviderBase::ImageType) par1,  (QQmlImageProviderBase::Flags) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQuickImageProvider *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQuickImageProvider * obj = (QQuickImageProvider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual Flags flags() const = 0
*/
HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_FLAGS )
{
  QQuickImageProvider * obj = (QQuickImageProvider *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->flags (  );
    hb_retni( i );
  }
}


/*
virtual ImageType imageType() const = 0
*/
HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_IMAGETYPE )
{
  QQuickImageProvider * obj = (QQuickImageProvider *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->imageType (  );
    hb_retni( i );
  }
}


/*
virtual QImage requestImage(const QString & id, QSize * size, const QSize & requestedSize)
*/
HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_REQUESTIMAGE )
{
  QQuickImageProvider * obj = (QQuickImageProvider *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QSize * par2 = (QSize *) _qtxhb_itemGetPtr(2);
    QSize * par3 = (QSize *) _qtxhb_itemGetPtr(3);
    QImage * ptr = new QImage( obj->requestImage ( par1, par2, *par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
virtual QPixmap requestPixmap(const QString & id, QSize * size, const QSize & requestedSize)
*/
HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_REQUESTPIXMAP )
{
  QQuickImageProvider * obj = (QQuickImageProvider *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QSize * par2 = (QSize *) _qtxhb_itemGetPtr(2);
    QSize * par3 = (QSize *) _qtxhb_itemGetPtr(3);
    QPixmap * ptr = new QPixmap( obj->requestPixmap ( par1, par2, *par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
virtual QQuickTextureFactory * requestTexture(const QString & id, QSize * size, const QSize & requestedSize)
*/
HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_REQUESTTEXTURE )
{
  QQuickImageProvider * obj = (QQuickImageProvider *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QSize * par2 = (QSize *) _qtxhb_itemGetPtr(2);
    QSize * par3 = (QSize *) _qtxhb_itemGetPtr(3);
    QQuickTextureFactory * ptr = obj->requestTexture ( par1, par2, *par3 );
    _qt4xhb_createReturnClass ( ptr, "QQUICKTEXTUREFACTORY" );
  }
}



#pragma ENDDUMP
