/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT

CLASS QDBusArgument

   DATA pointer
   DATA class_id INIT Class_Id_QDBusArgument
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD beginStructure
   METHOD endStructure
   METHOD beginArray1
   METHOD beginArray2
   METHOD beginArray
   METHOD endArray
   METHOD beginMap1
   METHOD beginMap2
   METHOD beginMap
   METHOD endMap
   METHOD beginMapEntry
   METHOD endMapEntry
   METHOD appendVariant
   METHOD currentSignature
   METHOD currentType
   METHOD atEnd
   METHOD asVariant
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusArgument
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
#include <QDBusArgument>
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
#include <QDBusArgument>
#endif
#endif

/*
QDBusArgument()
*/
HB_FUNC_STATIC( QDBUSARGUMENT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDBusArgument * o = new QDBusArgument (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDBusArgument *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QDBusArgument(const QDBusArgument &other)
*/
HB_FUNC_STATIC( QDBUSARGUMENT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDBusArgument * o = new QDBusArgument (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDBusArgument *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QDBusArgument()
//[2]QDBusArgument(const QDBusArgument &other)

HB_FUNC_STATIC( QDBUSARGUMENT_NEW )
{
  // TODO: implementar
}

HB_FUNC_STATIC( QDBUSARGUMENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDBusArgument * obj = (QDBusArgument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void beginStructure()
*/
HB_FUNC_STATIC( QDBUSARGUMENT_BEGINSTRUCTURE )
{
  QDBusArgument * obj = (QDBusArgument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->beginStructure (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void endStructure()
*/
HB_FUNC_STATIC( QDBUSARGUMENT_ENDSTRUCTURE )
{
  QDBusArgument * obj = (QDBusArgument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endStructure (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void beginArray(int elementMetaTypeId)
*/
HB_FUNC_STATIC( QDBUSARGUMENT_BEGINARRAY1 )
{
  QDBusArgument * obj = (QDBusArgument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->beginArray ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void beginArray() const
*/
HB_FUNC_STATIC( QDBUSARGUMENT_BEGINARRAY2 )
{
  QDBusArgument * obj = (QDBusArgument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->beginArray (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void beginArray(int elementMetaTypeId)
//[2]void beginArray() const

HB_FUNC_STATIC( QDBUSARGUMENT_BEGINARRAY )
{
  // TODO: implementar
}

/*
void endArray()
*/
HB_FUNC_STATIC( QDBUSARGUMENT_ENDARRAY )
{
  QDBusArgument * obj = (QDBusArgument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endArray (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void beginMap(int keyMetaTypeId, int valueMetaTypeId)
*/
HB_FUNC_STATIC( QDBUSARGUMENT_BEGINMAP1 )
{
  QDBusArgument * obj = (QDBusArgument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->beginMap ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void beginMap() const
*/
HB_FUNC_STATIC( QDBUSARGUMENT_BEGINMAP2 )
{
  QDBusArgument * obj = (QDBusArgument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->beginMap (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void beginMap(int keyMetaTypeId, int valueMetaTypeId)
//[2]void beginMap() const

HB_FUNC_STATIC( QDBUSARGUMENT_BEGINMAP )
{
  // TODO: implementar
}

/*
void endMap()
*/
HB_FUNC_STATIC( QDBUSARGUMENT_ENDMAP )
{
  QDBusArgument * obj = (QDBusArgument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endMap (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void beginMapEntry()
*/
HB_FUNC_STATIC( QDBUSARGUMENT_BEGINMAPENTRY )
{
  QDBusArgument * obj = (QDBusArgument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->beginMapEntry (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void endMapEntry()
*/
HB_FUNC_STATIC( QDBUSARGUMENT_ENDMAPENTRY )
{
  QDBusArgument * obj = (QDBusArgument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endMapEntry (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void appendVariant(const QVariant &v)
*/
HB_FUNC_STATIC( QDBUSARGUMENT_APPENDVARIANT )
{
  QDBusArgument * obj = (QDBusArgument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par1 = (QVariant *) _qtxhb_itemGetPtr(1);
    obj->appendVariant ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString currentSignature() const
*/
HB_FUNC_STATIC( QDBUSARGUMENT_CURRENTSIGNATURE )
{
  QDBusArgument * obj = (QDBusArgument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->currentSignature (  ).toLatin1().data() );
  }
}


/*
ElementType currentType() const
*/
HB_FUNC_STATIC( QDBUSARGUMENT_CURRENTTYPE )
{
  QDBusArgument * obj = (QDBusArgument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->currentType (  );
    hb_retni( i );
  }
}


/*
bool atEnd() const
*/
HB_FUNC_STATIC( QDBUSARGUMENT_ATEND )
{
  QDBusArgument * obj = (QDBusArgument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->atEnd (  ) );
  }
}


/*
QVariant asVariant() const
*/
HB_FUNC_STATIC( QDBUSARGUMENT_ASVARIANT )
{
  QDBusArgument * obj = (QDBusArgument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->asVariant (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



HB_FUNC_STATIC( QDBUSARGUMENT_NEWFROM )
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

HB_FUNC_STATIC( QDBUSARGUMENT_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QDBUSARGUMENT_NEWFROM );
}

HB_FUNC_STATIC( QDBUSARGUMENT_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QDBUSARGUMENT_NEWFROM );
}

HB_FUNC_STATIC( QDBUSARGUMENT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDBUSARGUMENT_SETSELFDESTRUCTION )
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