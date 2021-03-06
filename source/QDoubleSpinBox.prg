/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDoubleSpinBox INHERIT QAbstractSpinBox

   DATA class_id INIT Class_Id_QDoubleSpinBox
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD cleanText
   METHOD decimals
   METHOD setDecimals
   METHOD maximum
   METHOD setMaximum
   METHOD minimum
   METHOD setMinimum
   METHOD prefix
   METHOD setPrefix
   METHOD setRange
   METHOD singleStep
   METHOD setSingleStep
   METHOD suffix
   METHOD setSuffix
   METHOD textFromValue
   METHOD value
   METHOD setValue
   METHOD valueFromText
   METHOD fixup
   METHOD validate
   METHOD onValueChanged1
   METHOD onValueChanged2
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDoubleSpinBox
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
#include <QDoubleSpinBox>
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
#include <QDoubleSpinBox>
#endif
#endif

/*
explicit QDoubleSpinBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  QDoubleSpinBox * o = new QDoubleSpinBox ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDoubleSpinBox *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QDOUBLESPINBOX_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDoubleSpinBox * obj = (QDoubleSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString cleanText () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_CLEANTEXT )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->cleanText (  ).toLatin1().data() );
  }
}


/*
int decimals () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_DECIMALS )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->decimals (  ) );
  }
}

/*
void setDecimals ( int prec )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETDECIMALS )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDecimals ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
double maximum () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_MAXIMUM )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->maximum (  ) );
  }
}

/*
void setMaximum ( double max )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETMAXIMUM )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->setMaximum ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
double minimum () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_MINIMUM )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->minimum (  ) );
  }
}

/*
void setMinimum ( double min )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETMINIMUM )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->setMinimum ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString prefix () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_PREFIX )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->prefix (  ).toLatin1().data() );
  }
}

/*
void setPrefix ( const QString & prefix )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETPREFIX )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setPrefix ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRange ( double min, double max )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETRANGE )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    double par2 = hb_parnd(2);
    obj->setRange ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
double singleStep () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SINGLESTEP )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->singleStep (  ) );
  }
}

/*
void setSingleStep ( double val )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETSINGLESTEP )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->setSingleStep ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString suffix () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SUFFIX )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->suffix (  ).toLatin1().data() );
  }
}

/*
void setSuffix ( const QString & suffix )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETSUFFIX )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setSuffix ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QString textFromValue ( double value ) const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_TEXTFROMVALUE )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    hb_retc( (const char *) obj->textFromValue ( par1 ).toLatin1().data() );
  }
}


/*
double value () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_VALUE )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->value (  ) );
  }
}

/*
void setValue ( double val )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETVALUE )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->setValue ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual double valueFromText ( const QString & text ) const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_VALUEFROMTEXT )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retnd( obj->valueFromText ( par1 ) );
  }
}


/*
virtual void fixup ( QString & str ) const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_FIXUP )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->fixup ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QValidator::State validate ( QString & text, int & pos ) const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_VALIDATE )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
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