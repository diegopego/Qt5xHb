/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPIXMAP

CLASS QWizardPage INHERIT QWidget

   DATA class_id INIT Class_Id_QWizardPage
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD buttonText
   METHOD setButtonText
   METHOD cleanupPage
   METHOD initializePage
   METHOD isCommitPage
   METHOD setCommitPage
   METHOD isComplete
   METHOD isFinalPage
   METHOD setFinalPage
   METHOD nextId
   METHOD pixmap
   METHOD setPixmap
   METHOD subTitle
   METHOD setSubTitle
   METHOD title
   METHOD setTitle
   METHOD validatePage
   METHOD onCompleteChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWizardPage
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
#include <QWizardPage>
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
#include <QWizardPage>
#endif
#endif

/*
explicit QWizardPage ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QWIZARDPAGE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  QWizardPage * o = new QWizardPage ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWizardPage *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QWIZARDPAGE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString buttonText ( QWizard::WizardButton which ) const
*/
HB_FUNC_STATIC( QWIZARDPAGE_BUTTONTEXT )
{
  QWizardPage * obj = (QWizardPage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retc( (const char *) obj->buttonText (  (QWizard::WizardButton) par1 ).toLatin1().data() );
  }
}

/*
void setButtonText ( QWizard::WizardButton which, const QString & text )
*/
HB_FUNC_STATIC( QWIZARDPAGE_SETBUTTONTEXT )
{
  QWizardPage * obj = (QWizardPage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setButtonText (  (QWizard::WizardButton) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void cleanupPage ()
*/
HB_FUNC_STATIC( QWIZARDPAGE_CLEANUPPAGE )
{
  QWizardPage * obj = (QWizardPage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->cleanupPage (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void initializePage ()
*/
HB_FUNC_STATIC( QWIZARDPAGE_INITIALIZEPAGE )
{
  QWizardPage * obj = (QWizardPage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->initializePage (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isCommitPage () const
*/
HB_FUNC_STATIC( QWIZARDPAGE_ISCOMMITPAGE )
{
  QWizardPage * obj = (QWizardPage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isCommitPage (  ) );
  }
}

/*
void setCommitPage ( bool commitPage )
*/
HB_FUNC_STATIC( QWIZARDPAGE_SETCOMMITPAGE )
{
  QWizardPage * obj = (QWizardPage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCommitPage ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isComplete () const
*/
HB_FUNC_STATIC( QWIZARDPAGE_ISCOMPLETE )
{
  QWizardPage * obj = (QWizardPage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isComplete (  ) );
  }
}


/*
bool isFinalPage () const
*/
HB_FUNC_STATIC( QWIZARDPAGE_ISFINALPAGE )
{
  QWizardPage * obj = (QWizardPage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFinalPage (  ) );
  }
}

/*
void setFinalPage ( bool finalPage )
*/
HB_FUNC_STATIC( QWIZARDPAGE_SETFINALPAGE )
{
  QWizardPage * obj = (QWizardPage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFinalPage ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int nextId () const
*/
HB_FUNC_STATIC( QWIZARDPAGE_NEXTID )
{
  QWizardPage * obj = (QWizardPage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nextId (  ) );
  }
}


/*
QPixmap pixmap ( QWizard::WizardPixmap which ) const
*/
HB_FUNC_STATIC( QWIZARDPAGE_PIXMAP )
{
  QWizardPage * obj = (QWizardPage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QPixmap * ptr = new QPixmap( obj->pixmap (  (QWizard::WizardPixmap) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
void setPixmap ( QWizard::WizardPixmap which, const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QWIZARDPAGE_SETPIXMAP )
{
  QWizardPage * obj = (QWizardPage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QPixmap * par2 = (QPixmap *) _qtxhb_itemGetPtr(2);
    obj->setPixmap (  (QWizard::WizardPixmap) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString subTitle () const
*/
HB_FUNC_STATIC( QWIZARDPAGE_SUBTITLE )
{
  QWizardPage * obj = (QWizardPage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->subTitle (  ).toLatin1().data() );
  }
}

/*
void setSubTitle ( const QString & subTitle )
*/
HB_FUNC_STATIC( QWIZARDPAGE_SETSUBTITLE )
{
  QWizardPage * obj = (QWizardPage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setSubTitle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString title () const
*/
HB_FUNC_STATIC( QWIZARDPAGE_TITLE )
{
  QWizardPage * obj = (QWizardPage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->title (  ).toLatin1().data() );
  }
}

/*
void setTitle ( const QString & title )
*/
HB_FUNC_STATIC( QWIZARDPAGE_SETTITLE )
{
  QWizardPage * obj = (QWizardPage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setTitle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool validatePage ()
*/
HB_FUNC_STATIC( QWIZARDPAGE_VALIDATEPAGE )
{
  QWizardPage * obj = (QWizardPage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->validatePage (  ) );
  }
}




#pragma ENDDUMP
