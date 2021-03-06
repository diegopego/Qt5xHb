/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTextBoundaryFinder

   DATA pointer
   DATA class_id INIT Class_Id_QTextBoundaryFinder
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD type
   METHOD string
   METHOD toStart
   METHOD toEnd
   METHOD position
   METHOD setPosition
   METHOD toNextBoundary
   METHOD toPreviousBoundary
   METHOD isAtBoundary
   METHOD boundaryReasons
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextBoundaryFinder
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
#include <QTextBoundaryFinder>
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
#include <QTextBoundaryFinder>
#endif
#endif

/*
QTextBoundaryFinder()
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextBoundaryFinder * o = new QTextBoundaryFinder (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextBoundaryFinder *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QTextBoundaryFinder(const QTextBoundaryFinder &other)
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextBoundaryFinder * par1 = (QTextBoundaryFinder *) _qtxhb_itemGetPtr(1);
  QTextBoundaryFinder * o = new QTextBoundaryFinder ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextBoundaryFinder *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QTextBoundaryFinder(BoundaryType type, const QString &string)
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QTextBoundaryFinder * o = new QTextBoundaryFinder (  (QTextBoundaryFinder::BoundaryType) par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextBoundaryFinder *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QTextBoundaryFinder(BoundaryType type, const QChar *chars, int length, unsigned char *buffer = 0, int bufferSize = 0)
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  const QChar * par2 = (const QChar *) _qtxhb_itemGetPtr(2);
  int par3 = hb_parni(3);
  unsigned char * par4 = ISNIL(4)? 0 : (unsigned char *) _qtxhb_itemGetPtr(4);
  int par5 = ISNIL(5)? 0 : hb_parni(5);
  QTextBoundaryFinder * o = new QTextBoundaryFinder (  (QTextBoundaryFinder::BoundaryType) par1, par2, par3, par4, par5 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextBoundaryFinder *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QTextBoundaryFinder()
//[2]QTextBoundaryFinder(const QTextBoundaryFinder &other)
//[3]QTextBoundaryFinder(BoundaryType type, const QString &string)
//[4]QTextBoundaryFinder(BoundaryType type, const QChar *chars, int length, unsigned char *buffer = 0, int bufferSize = 0)

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTBOUNDARYFINDER_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTBOUNDARYFINDER(1) )
  {
    HB_FUNC_EXEC( QTEXTBOUNDARYFINDER_NEW2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QTEXTBOUNDARYFINDER_NEW3 );
  }
  else if( ISBETWEEN(3,5) && ISNUM(1) && ISQCHAR(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QTEXTBOUNDARYFINDER_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_ISVALID )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
BoundaryType type() const
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_TYPE )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->type (  );
    hb_retni( i );
  }
}


/*
QString string() const
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_STRING )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->string (  ).toLatin1().data() );
  }
}


/*
void toStart()
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_TOSTART )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->toStart (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void toEnd()
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_TOEND )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->toEnd (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int position() const
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_POSITION )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->position (  ) );
  }
}


/*
void setPosition(int position)
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_SETPOSITION )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPosition ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int toNextBoundary()
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_TONEXTBOUNDARY )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->toNextBoundary (  ) );
  }
}


/*
int toPreviousBoundary()
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_TOPREVIOUSBOUNDARY )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->toPreviousBoundary (  ) );
  }
}


/*
bool isAtBoundary() const
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_ISATBOUNDARY )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAtBoundary (  ) );
  }
}


/*
BoundaryReasons boundaryReasons() const
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_BOUNDARYREASONS )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->boundaryReasons (  );
    hb_retni( i );
  }
}



HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEWFROM )
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

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QTEXTBOUNDARYFINDER_NEWFROM );
}

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QTEXTBOUNDARYFINDER_NEWFROM );
}

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_SETSELFDESTRUCTION )
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