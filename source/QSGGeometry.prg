/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QSGGeometry

   DATA pointer
   DATA class_id INIT Class_Id_QSGGeometry
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD allocate
   METHOD attributeCount
   METHOD drawingMode
   METHOD indexCount
   METHOD indexDataPattern
   METHOD indexType
   METHOD lineWidth
   METHOD markIndexDataDirty
   METHOD markVertexDataDirty
   METHOD setDrawingMode
   METHOD setIndexDataPattern
   METHOD setLineWidth
   METHOD setVertexDataPattern
   METHOD sizeOfIndex
   METHOD sizeOfVertex
   METHOD vertexCount
   METHOD vertexDataPattern
   METHOD updateRectGeometry
   METHOD updateTexturedRectGeometry
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSGGeometry
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
#include <QSGGeometry>
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
#include <QSGGeometry>
#endif
#endif


HB_FUNC_STATIC( QSGGEOMETRY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSGGeometry * obj = (QSGGeometry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void allocate(int vertexCount, int indexCount = 0)
*/
HB_FUNC_STATIC( QSGGEOMETRY_ALLOCATE )
{
  QSGGeometry * obj = (QSGGeometry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->allocate ( (int) hb_parni(1), (int) ISNIL(2)? 0 : hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int attributeCount() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_ATTRIBUTECOUNT )
{
  QSGGeometry * obj = (QSGGeometry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->attributeCount (  ) );
  }
}



/*
GLenum drawingMode() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_DRAWINGMODE )
{
  QSGGeometry * obj = (QSGGeometry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->drawingMode (  ) );
  }
}


/*
int indexCount() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_INDEXCOUNT )
{
  QSGGeometry * obj = (QSGGeometry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->indexCount (  ) );
  }
}








/*
DataPattern indexDataPattern() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_INDEXDATAPATTERN )
{
  QSGGeometry * obj = (QSGGeometry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->indexDataPattern (  );
    hb_retni( i );
  }
}


/*
int indexType() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_INDEXTYPE )
{
  QSGGeometry * obj = (QSGGeometry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->indexType (  ) );
  }
}


/*
float lineWidth() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_LINEWIDTH )
{
  QSGGeometry * obj = (QSGGeometry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->lineWidth (  ) );
  }
}


/*
void markIndexDataDirty()
*/
HB_FUNC_STATIC( QSGGEOMETRY_MARKINDEXDATADIRTY )
{
  QSGGeometry * obj = (QSGGeometry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->markIndexDataDirty (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void markVertexDataDirty()
*/
HB_FUNC_STATIC( QSGGEOMETRY_MARKVERTEXDATADIRTY )
{
  QSGGeometry * obj = (QSGGeometry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->markVertexDataDirty (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDrawingMode(GLenum mode)
*/
HB_FUNC_STATIC( QSGGEOMETRY_SETDRAWINGMODE )
{
  QSGGeometry * obj = (QSGGeometry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDrawingMode ( (GLenum) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIndexDataPattern(DataPattern p)
*/
HB_FUNC_STATIC( QSGGEOMETRY_SETINDEXDATAPATTERN )
{
  QSGGeometry * obj = (QSGGeometry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setIndexDataPattern (  (QSGGeometry::DataPattern) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLineWidth(float width)
*/
HB_FUNC_STATIC( QSGGEOMETRY_SETLINEWIDTH )
{
  QSGGeometry * obj = (QSGGeometry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    float par1 = hb_parnd(1);
    obj->setLineWidth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVertexDataPattern(DataPattern p)
*/
HB_FUNC_STATIC( QSGGEOMETRY_SETVERTEXDATAPATTERN )
{
  QSGGeometry * obj = (QSGGeometry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setVertexDataPattern (  (QSGGeometry::DataPattern) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int sizeOfIndex() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_SIZEOFINDEX )
{
  QSGGeometry * obj = (QSGGeometry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sizeOfIndex (  ) );
  }
}


/*
int sizeOfVertex() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_SIZEOFVERTEX )
{
  QSGGeometry * obj = (QSGGeometry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sizeOfVertex (  ) );
  }
}


/*
int vertexCount() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_VERTEXCOUNT )
{
  QSGGeometry * obj = (QSGGeometry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->vertexCount (  ) );
  }
}










/*
DataPattern vertexDataPattern() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_VERTEXDATAPATTERN )
{
  QSGGeometry * obj = (QSGGeometry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->vertexDataPattern (  );
    hb_retni( i );
  }
}





/*
static void updateRectGeometry(QSGGeometry * g, const QRectF & rect)
*/
HB_FUNC_STATIC( QSGGEOMETRY_UPDATERECTGEOMETRY )
{
  QSGGeometry * par1 = (QSGGeometry *) _qtxhb_itemGetPtr(1);
  QRectF * par2 = (QRectF *) _qtxhb_itemGetPtr(2);
  QSGGeometry::updateRectGeometry ( par1, *par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void updateTexturedRectGeometry(QSGGeometry * g, const QRectF & rect, const QRectF & textureRect)
*/
HB_FUNC_STATIC( QSGGEOMETRY_UPDATETEXTUREDRECTGEOMETRY )
{
  QSGGeometry * par1 = (QSGGeometry *) _qtxhb_itemGetPtr(1);
  QRectF * par2 = (QRectF *) _qtxhb_itemGetPtr(2);
  QRectF * par3 = (QRectF *) _qtxhb_itemGetPtr(3);
  QSGGeometry::updateTexturedRectGeometry ( par1, *par2, *par3 );
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QSGGEOMETRY_NEWFROM )
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

HB_FUNC_STATIC( QSGGEOMETRY_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QSGGEOMETRY_NEWFROM );
}

HB_FUNC_STATIC( QSGGEOMETRY_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QSGGEOMETRY_NEWFROM );
}

HB_FUNC_STATIC( QSGGEOMETRY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSGGEOMETRY_SETSELFDESTRUCTION )
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