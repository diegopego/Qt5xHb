/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDoubleValidator INHERIT QValidator

   DATA class_id INIT Class_Id_QDoubleValidator
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bottom
   METHOD decimals
   METHOD notation
   METHOD setBottom
   METHOD setDecimals
   METHOD setNotation
   METHOD setRange
   METHOD setTop
   METHOD top
   METHOD validate
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDoubleValidator
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
#include <QDoubleValidator>
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
#include <QDoubleValidator>
#endif
#endif

/*
QDoubleValidator ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QDoubleValidator * o = new QDoubleValidator ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDoubleValidator *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QDoubleValidator ( double bottom, double top, int decimals, QObject * parent )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  double par1 = hb_parnd(1);
  double par2 = hb_parnd(2);
  int par3 = hb_parni(3);
  QObject * par4 = (QObject *) _qtxhb_itemGetPtr(4);
  QDoubleValidator * o = new QDoubleValidator ( par1, par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDoubleValidator *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QDoubleValidator ( QObject * parent = 0 )
//[2]QDoubleValidator ( double bottom, double top, int decimals, QObject * parent = 0 )

HB_FUNC_STATIC( QDOUBLEVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDOUBLEVALIDATOR_NEW1 );
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QDOUBLEVALIDATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOUBLEVALIDATOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDoubleValidator * obj = (QDoubleValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
double bottom () const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_BOTTOM )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->bottom (  ) );
  }
}


/*
int decimals () const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_DECIMALS )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->decimals (  ) );
  }
}


/*
Notation notation () const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_NOTATION )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->notation (  );
    hb_retni( i );
  }
}


/*
void setBottom ( double )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETBOTTOM )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->setBottom ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDecimals ( int )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETDECIMALS )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDecimals ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNotation ( Notation )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETNOTATION )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setNotation (  (QDoubleValidator::Notation) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setRange ( double minimum, double maximum, int decimals = 0 )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETRANGE )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    double par2 = hb_parnd(2);
    obj->setRange ( par1, par2, (int) ISNIL(3)? 0 : hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTop ( double )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETTOP )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->setTop ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
double top () const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_TOP )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->top (  ) );
  }
}


/*
virtual QValidator::State validate ( QString & input, int & pos ) const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_VALIDATE )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2;
    int i = obj->validate ( par1, par2 );
    hb_retni( i );
  }
}



#pragma ENDDUMP
