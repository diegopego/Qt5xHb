/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QMediaContainerControl INHERIT QMediaControl

   DATA class_id INIT Class_Id_QMediaContainerControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD containerDescription
   METHOD containerFormat
   METHOD setContainerFormat
   METHOD supportedContainers
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaContainerControl
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
#include <QMediaContainerControl>
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
#include <QMediaContainerControl>
#endif
#endif

#include <QStringList>


HB_FUNC_STATIC( QMEDIACONTAINERCONTROL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMediaContainerControl * obj = (QMediaContainerControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QString containerDescription(const QString & format) const = 0
*/
HB_FUNC_STATIC( QMEDIACONTAINERCONTROL_CONTAINERDESCRIPTION )
{
  QMediaContainerControl * obj = (QMediaContainerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->containerDescription ( par1 ).toLatin1().data() );
  }
}


/*
virtual QString containerFormat() const = 0
*/
HB_FUNC_STATIC( QMEDIACONTAINERCONTROL_CONTAINERFORMAT )
{
  QMediaContainerControl * obj = (QMediaContainerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->containerFormat (  ).toLatin1().data() );
  }
}


/*
virtual void setContainerFormat(const QString & format) = 0
*/
HB_FUNC_STATIC( QMEDIACONTAINERCONTROL_SETCONTAINERFORMAT )
{
  QMediaContainerControl * obj = (QMediaContainerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setContainerFormat ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QStringList supportedContainers() const = 0
*/
HB_FUNC_STATIC( QMEDIACONTAINERCONTROL_SUPPORTEDCONTAINERS )
{
  QMediaContainerControl * obj = (QMediaContainerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->supportedContainers (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}



#pragma ENDDUMP
