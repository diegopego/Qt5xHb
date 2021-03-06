/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QPdfWriter INHERIT QObject,QPagedPaintDevice

   DATA class_id INIT Class_Id_QPdfWriter
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD title
   METHOD setTitle
   METHOD creator
   METHOD setCreator
   METHOD newPage
   METHOD setPageSize
   METHOD setPageSizeMM
   METHOD resolution
   METHOD setResolution
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPdfWriter
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
#include <QPdfWriter>
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
#include <QPdfWriter>
#endif
#endif

/*
explicit QPdfWriter(const QString & filename)
*/
HB_FUNC_STATIC( QPDFWRITER_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QPdfWriter * o = new QPdfWriter ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPdfWriter *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
explicit QPdfWriter(QIODevice * device)
*/
HB_FUNC_STATIC( QPDFWRITER_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QIODevice * par1 = (QIODevice *) _qtxhb_itemGetPtr(1);
  QPdfWriter * o = new QPdfWriter ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPdfWriter *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]explicit QPdfWriter(const QString & filename)
//[2]explicit QPdfWriter(QIODevice * device)

HB_FUNC_STATIC( QPDFWRITER_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QPDFWRITER_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QPDFWRITER_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPDFWRITER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPdfWriter * obj = (QPdfWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString title() const
*/
HB_FUNC_STATIC( QPDFWRITER_TITLE )
{
  QPdfWriter * obj = (QPdfWriter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->title (  ).toLatin1().data() );
  }
}

/*
void setTitle(const QString & title)
*/
HB_FUNC_STATIC( QPDFWRITER_SETTITLE )
{
  QPdfWriter * obj = (QPdfWriter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setTitle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString creator() const
*/
HB_FUNC_STATIC( QPDFWRITER_CREATOR )
{
  QPdfWriter * obj = (QPdfWriter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->creator (  ).toLatin1().data() );
  }
}

/*
void setCreator(const QString & creator)
*/
HB_FUNC_STATIC( QPDFWRITER_SETCREATOR )
{
  QPdfWriter * obj = (QPdfWriter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setCreator ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool newPage()
*/
HB_FUNC_STATIC( QPDFWRITER_NEWPAGE )
{
  QPdfWriter * obj = (QPdfWriter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->newPage (  ) );
  }
}


/*
void setPageSize(PageSize size)
*/
HB_FUNC_STATIC( QPDFWRITER_SETPAGESIZE )
{
  QPdfWriter * obj = (QPdfWriter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPageSize (  (QPagedPaintDevice::PageSize) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPageSizeMM(const QSizeF & size)
*/
HB_FUNC_STATIC( QPDFWRITER_SETPAGESIZEMM )
{
  QPdfWriter * obj = (QPdfWriter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * par1 = (QSizeF *) _qtxhb_itemGetPtr(1);
    obj->setPageSizeMM ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
int resolution() const
*/
HB_FUNC_STATIC( QPDFWRITER_RESOLUTION )
{
  QPdfWriter * obj = (QPdfWriter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->resolution (  ) );
  }
}

/*
void setResolution(int resolution)
*/
HB_FUNC_STATIC( QPDFWRITER_SETRESOLUTION )
{
  QPdfWriter * obj = (QPdfWriter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setResolution ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
