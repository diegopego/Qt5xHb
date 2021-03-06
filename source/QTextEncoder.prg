/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBYTEARRAY

CLASS QTextEncoder

   DATA pointer
   DATA class_id INIT Class_Id_QTextEncoder
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD fromUnicode1
   METHOD fromUnicode2
   METHOD fromUnicode
   METHOD hasFailure
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextEncoder
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
#include <QTextEncoder>
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
#include <QTextEncoder>
#endif
#endif

/*
QTextEncoder(const QTextCodec * codec)
*/
HB_FUNC_STATIC( QTEXTENCODER_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  const QTextCodec * par1 = (const QTextCodec *) _qtxhb_itemGetPtr(1);
  QTextEncoder * o = new QTextEncoder ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextEncoder *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QTextEncoder(const QTextCodec * codec, QTextCodec::ConversionFlags flags)
*/
HB_FUNC_STATIC( QTEXTENCODER_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  const QTextCodec * par1 = (const QTextCodec *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QTextEncoder * o = new QTextEncoder ( par1,  (QTextCodec::ConversionFlags) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextEncoder *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QTextEncoder(const QTextCodec * codec)
//[2]QTextEncoder(const QTextCodec * codec, QTextCodec::ConversionFlags flags)

HB_FUNC_STATIC( QTEXTENCODER_NEW )
{
  if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
    HB_FUNC_EXEC( QTEXTENCODER_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQTEXTCODEC(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTEXTENCODER_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTENCODER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextEncoder * obj = (QTextEncoder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QByteArray fromUnicode(const QString & str)
*/
HB_FUNC_STATIC( QTEXTENCODER_FROMUNICODE1 )
{
  QTextEncoder * obj = (QTextEncoder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QByteArray * ptr = new QByteArray( obj->fromUnicode ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
QByteArray fromUnicode(const QChar * uc, int len)
*/
HB_FUNC_STATIC( QTEXTENCODER_FROMUNICODE2 )
{
  QTextEncoder * obj = (QTextEncoder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QChar * par1 = (const QChar *) _qtxhb_itemGetPtr(1);
    QByteArray * ptr = new QByteArray( obj->fromUnicode ( par1, (int) hb_parni(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


//[1]QByteArray fromUnicode(const QString & str)
//[2]QByteArray fromUnicode(const QChar * uc, int len)

HB_FUNC_STATIC( QTEXTENCODER_FROMUNICODE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTEXTENCODER_FROMUNICODE1 );
  }
  else if( ISNUMPAR(2) && ISQCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTEXTENCODER_FROMUNICODE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool hasFailure() const
*/
HB_FUNC_STATIC( QTEXTENCODER_HASFAILURE )
{
  QTextEncoder * obj = (QTextEncoder *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasFailure (  ) );
  }
}



HB_FUNC_STATIC( QTEXTENCODER_NEWFROM )
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

HB_FUNC_STATIC( QTEXTENCODER_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QTEXTENCODER_NEWFROM );
}

HB_FUNC_STATIC( QTEXTENCODER_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QTEXTENCODER_NEWFROM );
}

HB_FUNC_STATIC( QTEXTENCODER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTENCODER_SETSELFDESTRUCTION )
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