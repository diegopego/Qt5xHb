/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QOPENGLFRAMEBUFFEROBJECTFORMAT
REQUEST QSIZE
REQUEST QIMAGE

CLASS QOpenGLFramebufferObject

   DATA pointer
   DATA class_id INIT Class_Id_QOpenGLFramebufferObject
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new
   METHOD delete
   METHOD format
   METHOD isValid
   METHOD isBound
   METHOD bind
   METHOD release
   METHOD width
   METHOD height
   METHOD texture
   METHOD size
   METHOD toImage
   METHOD attachment
   METHOD setAttachment
   METHOD handle
   METHOD bindDefault
   METHOD hasOpenGLFramebufferObjects
   METHOD hasOpenGLFramebufferBlit
   METHOD blitFramebuffer1
   METHOD blitFramebuffer2
   METHOD blitFramebuffer
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOpenGLFramebufferObject
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
#include <QOpenGLFramebufferObject>
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
#include <QOpenGLFramebufferObject>
#endif
#endif

#include <QImage>

/*
QOpenGLFramebufferObject(const QSize &size, GLenum target = GL_TEXTURE_2D)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
  GLenum par2 = ISNIL(2)? GL_TEXTURE_2D : hb_parni(2);
  QOpenGLFramebufferObject * o = new QOpenGLFramebufferObject ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLFramebufferObject *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


/*
QOpenGLFramebufferObject(int width, int height, GLenum target = GL_TEXTURE_2D)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  GLenum par3 = ISNIL(3)? GL_TEXTURE_2D : hb_parni(3);
  QOpenGLFramebufferObject * o = new QOpenGLFramebufferObject ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLFramebufferObject *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


#if !defined(QT_OPENGL_ES) || defined(Q_QDOC)
/*
QOpenGLFramebufferObject(const QSize &size, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  GLenum par3 = ISNIL(3)? GL_TEXTURE_2D : hb_parni(3);
  GLenum par4 = ISNIL(4)? GL_RGBA8 : hb_parni(4);
  QOpenGLFramebufferObject * o = new QOpenGLFramebufferObject ( *par1,  (QOpenGLFramebufferObject::Attachment) par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLFramebufferObject *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QOpenGLFramebufferObject(int width, int height, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  GLenum par4 = ISNIL(4)? GL_TEXTURE_2D : hb_parni(4);
  GLenum par5 = ISNIL(5)? GL_RGBA8 : hb_parni(5);
  QOpenGLFramebufferObject * o = new QOpenGLFramebufferObject ( par1, par2,  (QOpenGLFramebufferObject::Attachment) par3, par4, par5 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLFramebufferObject *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW5 )
{
}
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW6 )
{
}
#else
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW3 )
{
}
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW4 )
{
}
/*
QOpenGLFramebufferObject(const QSize &size, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  GLenum par3 = ISNIL(3)? GL_TEXTURE_2D : hb_parni(3);
  GLenum par4 = ISNIL(4)? GL_RGBA : hb_parni(4);
  QOpenGLFramebufferObject * o = new QOpenGLFramebufferObject ( *par1,  (QOpenGLFramebufferObject::Attachment) par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLFramebufferObject *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QOpenGLFramebufferObject(int width, int height, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW6 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  GLenum par4 = ISNIL(4)? GL_TEXTURE_2D : hb_parni(4);
  GLenum par5 = ISNIL(5)? GL_RGBA : hb_parni(5);
  QOpenGLFramebufferObject * o = new QOpenGLFramebufferObject ( par1, par2,  (QOpenGLFramebufferObject::Attachment) par3, par4, par5 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLFramebufferObject *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

#endif

/*
QOpenGLFramebufferObject(const QSize &size, const QOpenGLFramebufferObjectFormat &format)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW7 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
  QOpenGLFramebufferObjectFormat * par2 = (QOpenGLFramebufferObjectFormat *) _qtxhb_itemGetPtr(2);
  QOpenGLFramebufferObject * o = new QOpenGLFramebufferObject ( *par1, *par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLFramebufferObject *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


/*
QOpenGLFramebufferObject(int width, int height, const QOpenGLFramebufferObjectFormat &format)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW8 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  QOpenGLFramebufferObjectFormat * par3 = (QOpenGLFramebufferObjectFormat *) _qtxhb_itemGetPtr(3);
  QOpenGLFramebufferObject * o = new QOpenGLFramebufferObject ( par1, par2, *par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLFramebufferObject *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QOpenGLFramebufferObject(const QSize &size, GLenum target = GL_TEXTURE_2D)
//[2]QOpenGLFramebufferObject(int width, int height, GLenum target = GL_TEXTURE_2D)
//[3]QOpenGLFramebufferObject(const QSize &size, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8)
//[4]QOpenGLFramebufferObject(int width, int height, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8)
//[5]QOpenGLFramebufferObject(const QSize &size, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA)
//[6]QOpenGLFramebufferObject(int width, int height, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA)
//[7]QOpenGLFramebufferObject(const QSize &size, const QOpenGLFramebufferObjectFormat &format)
//[8]QOpenGLFramebufferObject(int width, int height, const QOpenGLFramebufferObjectFormat &format)

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW )
{
  if( ISBETWEEN(1,2) && ISQSIZE(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW2 );
  }
#if !defined(QT_OPENGL_ES) || defined(Q_QDOC)
  else if( ISBETWEEN(2,4) && ISQSIZE(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW3 );
  }
  else if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW4 );
  }
#else
  else if( ISBETWEEN(2,4) && ISQSIZE(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW5 );
  }
  else if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW6 );
  }
#endif
  else if( ISNUMPAR(2) && ISQSIZE(1) && ISQOPENGLFRAMEBUFFEROBJECTFORMAT(2) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW7 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQOPENGLFRAMEBUFFEROBJECTFORMAT(3) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QOpenGLFramebufferObjectFormat format() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_FORMAT )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLFramebufferObjectFormat * ptr = new QOpenGLFramebufferObjectFormat( obj->format (  ) );
    _qt4xhb_createReturnClass ( ptr, "QOPENGLFRAMEBUFFEROBJECTFORMAT" );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_ISVALID )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
bool isBound() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_ISBOUND )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isBound (  ) );
  }
}


/*
bool bind()
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_BIND )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->bind (  ) );
  }
}


/*
bool release()
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_RELEASE )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->release (  ) );
  }
}


/*
int width() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_WIDTH )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->width (  ) );
  }
}


/*
int height() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_HEIGHT )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->height (  ) );
  }
}


/*
GLuint texture() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_TEXTURE )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->texture (  ) );
  }
}


/*
QSize size() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_SIZE )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->size (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QImage toImage() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_TOIMAGE )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage * ptr = new QImage( obj->toImage (  ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
Attachment attachment() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_ATTACHMENT )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->attachment (  );
    hb_retni( i );
  }
}


/*
void setAttachment(Attachment attachment)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_SETATTACHMENT )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAttachment (  (QOpenGLFramebufferObject::Attachment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
GLuint handle() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_HANDLE )
{
  QOpenGLFramebufferObject * obj = (QOpenGLFramebufferObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->handle (  ) );
  }
}


/*
static bool bindDefault()
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_BINDDEFAULT )
{
  hb_retl( QOpenGLFramebufferObject::bindDefault (  ) );
}


/*
static bool hasOpenGLFramebufferObjects()
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_HASOPENGLFRAMEBUFFEROBJECTS )
{
  hb_retl( QOpenGLFramebufferObject::hasOpenGLFramebufferObjects (  ) );
}


/*
static bool hasOpenGLFramebufferBlit()
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_HASOPENGLFRAMEBUFFERBLIT )
{
  hb_retl( QOpenGLFramebufferObject::hasOpenGLFramebufferBlit (  ) );
}


/*
static void blitFramebuffer(QOpenGLFramebufferObject *target, const QRect &targetRect,QOpenGLFramebufferObject *source, const QRect &sourceRect,GLbitfield buffers = GL_COLOR_BUFFER_BIT,GLenum filter = GL_NEAREST)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_BLITFRAMEBUFFER1 )
{
  QOpenGLFramebufferObject * par1 = (QOpenGLFramebufferObject *) _qtxhb_itemGetPtr(1);
  QRect * par2 = (QRect *) _qtxhb_itemGetPtr(2);
  QOpenGLFramebufferObject * par3 = (QOpenGLFramebufferObject *) _qtxhb_itemGetPtr(3);
  QRect * par4 = (QRect *) _qtxhb_itemGetPtr(4);
  QOpenGLFramebufferObject::blitFramebuffer ( par1, *par2, par3, *par4, (GLenum) ISNIL(6)? GL_NEAREST : hb_parni(6) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void blitFramebuffer(QOpenGLFramebufferObject *target,QOpenGLFramebufferObject *source,GLbitfield buffers = GL_COLOR_BUFFER_BIT,GLenum filter = GL_NEAREST)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_BLITFRAMEBUFFER2 )
{
  QOpenGLFramebufferObject * par1 = (QOpenGLFramebufferObject *) _qtxhb_itemGetPtr(1);
  QOpenGLFramebufferObject * par2 = (QOpenGLFramebufferObject *) _qtxhb_itemGetPtr(2);
  QOpenGLFramebufferObject::blitFramebuffer ( par1, par2, (GLenum) ISNIL(4)? GL_NEAREST : hb_parni(4) );
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void blitFramebuffer(QOpenGLFramebufferObject *target, const QRect &targetRect,QOpenGLFramebufferObject *source, const QRect &sourceRect,GLbitfield buffers = GL_COLOR_BUFFER_BIT,GLenum filter = GL_NEAREST)
//[2]void blitFramebuffer(QOpenGLFramebufferObject *target,QOpenGLFramebufferObject *source,GLbitfield buffers = GL_COLOR_BUFFER_BIT,GLenum filter = GL_NEAREST)

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_BLITFRAMEBUFFER )
{
  if( ISBETWEEN(4,6) && ISQOPENGLFRAMEBUFFEROBJECT(1) && ISQRECT(2) && ISQOPENGLFRAMEBUFFEROBJECT(3) && ISQRECT(4) && (ISNUM(5)||ISNIL(5)) && (ISNUM(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_BLITFRAMEBUFFER1 );
  }
  else if( ISBETWEEN(2,4) && ISQOPENGLFRAMEBUFFEROBJECT(1) && ISQOPENGLFRAMEBUFFEROBJECT(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_BLITFRAMEBUFFER1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEWFROMOBJECT )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEWFROM );
}

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEWFROM );
}

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
