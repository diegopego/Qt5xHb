/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QREGULAREXPRESSION

CLASS QRegularExpressionValidator INHERIT QValidator

   DATA class_id INIT Class_Id_QRegularExpressionValidator
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD regularExpression
   METHOD setRegularExpression
   METHOD onRegularExpressionChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRegularExpressionValidator
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
#include <QRegularExpressionValidator>
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
#include <QRegularExpressionValidator>
#endif
#endif

/*
QRegularExpressionValidator(QObject *parent = 0)
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QRegularExpressionValidator * o = new QRegularExpressionValidator ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRegularExpressionValidator *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QRegularExpressionValidator(const QRegularExpression &re, QObject *parent = 0)
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QRegularExpression * par1 = (QRegularExpression *) _qtxhb_itemGetPtr(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qtxhb_itemGetPtr(2);
  QRegularExpressionValidator * o = new QRegularExpressionValidator ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRegularExpressionValidator *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QRegularExpressionValidator(QObject *parent = 0)
//[2]QRegularExpressionValidator(const QRegularExpression &re, QObject *parent = 0)

HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QREGULAREXPRESSIONVALIDATOR_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQREGULAREXPRESSION(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QREGULAREXPRESSIONVALIDATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QRegularExpressionValidator * obj = (QRegularExpressionValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QRegularExpression regularExpression() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_REGULAREXPRESSION )
{
  QRegularExpressionValidator * obj = (QRegularExpressionValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegularExpression * ptr = new QRegularExpression( obj->regularExpression (  ) );
    _qt4xhb_createReturnClass ( ptr, "QREGULAREXPRESSION", true );
  }
}


/*
void setRegularExpression(const QRegularExpression &re)
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_SETREGULAREXPRESSION )
{
  QRegularExpressionValidator * obj = (QRegularExpressionValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegularExpression * par1 = (QRegularExpression *) _qtxhb_itemGetPtr(1);
    obj->setRegularExpression ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
