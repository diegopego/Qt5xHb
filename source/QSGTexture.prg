/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECTF
REQUEST QSIZE

CLASS QSGTexture INHERIT QObject

   DATA class_id INIT Class_Id_QSGTexture
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD bind
   METHOD convertToNormalizedSourceRect
   METHOD filtering
   METHOD hasAlphaChannel
   METHOD hasMipmaps
   METHOD horizontalWrapMode
   METHOD isAtlasTexture
   METHOD mipmapFiltering
   METHOD normalizedTextureSubRect
   METHOD removedFromAtlas
   METHOD setFiltering
   METHOD setHorizontalWrapMode
   METHOD setMipmapFiltering
   METHOD setVerticalWrapMode
   METHOD textureId
   METHOD textureSize
   METHOD updateBindOptions
   METHOD verticalWrapMode
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSGTexture
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
#include <QSGTexture>
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
#include <QSGTexture>
#endif
#endif


HB_FUNC_STATIC( QSGTEXTURE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSGTexture * obj = (QSGTexture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void bind() = 0
*/
HB_FUNC_STATIC( QSGTEXTURE_BIND )
{
  QSGTexture * obj = (QSGTexture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->bind (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRectF convertToNormalizedSourceRect(const QRectF & rect) const
*/
HB_FUNC_STATIC( QSGTEXTURE_CONVERTTONORMALIZEDSOURCERECT )
{
  QSGTexture * obj = (QSGTexture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->convertToNormalizedSourceRect ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QSGTexture::Filtering filtering() const
*/
HB_FUNC_STATIC( QSGTEXTURE_FILTERING )
{
  QSGTexture * obj = (QSGTexture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->filtering (  );
    hb_retni( i );
  }
}


/*
virtual bool hasAlphaChannel() const = 0
*/
HB_FUNC_STATIC( QSGTEXTURE_HASALPHACHANNEL )
{
  QSGTexture * obj = (QSGTexture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasAlphaChannel (  ) );
  }
}


/*
virtual bool hasMipmaps() const = 0
*/
HB_FUNC_STATIC( QSGTEXTURE_HASMIPMAPS )
{
  QSGTexture * obj = (QSGTexture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasMipmaps (  ) );
  }
}


/*
QSGTexture::WrapMode horizontalWrapMode() const
*/
HB_FUNC_STATIC( QSGTEXTURE_HORIZONTALWRAPMODE )
{
  QSGTexture * obj = (QSGTexture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->horizontalWrapMode (  );
    hb_retni( i );
  }
}


/*
virtual bool isAtlasTexture() const
*/
HB_FUNC_STATIC( QSGTEXTURE_ISATLASTEXTURE )
{
  QSGTexture * obj = (QSGTexture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAtlasTexture (  ) );
  }
}


/*
QSGTexture::Filtering mipmapFiltering() const
*/
HB_FUNC_STATIC( QSGTEXTURE_MIPMAPFILTERING )
{
  QSGTexture * obj = (QSGTexture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->mipmapFiltering (  );
    hb_retni( i );
  }
}


/*
virtual QRectF normalizedTextureSubRect() const
*/
HB_FUNC_STATIC( QSGTEXTURE_NORMALIZEDTEXTURESUBRECT )
{
  QSGTexture * obj = (QSGTexture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->normalizedTextureSubRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
virtual QSGTexture * removedFromAtlas() const
*/
HB_FUNC_STATIC( QSGTEXTURE_REMOVEDFROMATLAS )
{
  QSGTexture * obj = (QSGTexture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGTexture * ptr = obj->removedFromAtlas (  );
    _qt4xhb_createReturnClass ( ptr, "QSGTEXTURE" );
  }
}


/*
void setFiltering(Filtering filter)
*/
HB_FUNC_STATIC( QSGTEXTURE_SETFILTERING )
{
  QSGTexture * obj = (QSGTexture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFiltering (  (QSGTexture::Filtering) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHorizontalWrapMode(WrapMode hwrap)
*/
HB_FUNC_STATIC( QSGTEXTURE_SETHORIZONTALWRAPMODE )
{
  QSGTexture * obj = (QSGTexture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setHorizontalWrapMode (  (QSGTexture::WrapMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMipmapFiltering(Filtering filter)
*/
HB_FUNC_STATIC( QSGTEXTURE_SETMIPMAPFILTERING )
{
  QSGTexture * obj = (QSGTexture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMipmapFiltering (  (QSGTexture::Filtering) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVerticalWrapMode(WrapMode vwrap)
*/
HB_FUNC_STATIC( QSGTEXTURE_SETVERTICALWRAPMODE )
{
  QSGTexture * obj = (QSGTexture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setVerticalWrapMode (  (QSGTexture::WrapMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int textureId() const = 0
*/
HB_FUNC_STATIC( QSGTEXTURE_TEXTUREID )
{
  QSGTexture * obj = (QSGTexture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->textureId (  ) );
  }
}


/*
virtual QSize textureSize() const = 0
*/
HB_FUNC_STATIC( QSGTEXTURE_TEXTURESIZE )
{
  QSGTexture * obj = (QSGTexture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->textureSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void updateBindOptions(bool force = false)
*/
HB_FUNC_STATIC( QSGTEXTURE_UPDATEBINDOPTIONS )
{
  QSGTexture * obj = (QSGTexture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->updateBindOptions ( (bool) ISNIL(1)? false : hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSGTexture::WrapMode verticalWrapMode() const
*/
HB_FUNC_STATIC( QSGTEXTURE_VERTICALWRAPMODE )
{
  QSGTexture * obj = (QSGTexture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->verticalWrapMode (  );
    hb_retni( i );
  }
}



#pragma ENDDUMP
