/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QXmlSimpleReader INHERIT QXmlReader

   DATA class_id INIT Class_Id_QXmlSimpleReader
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD parse
   METHOD parseContinue
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlSimpleReader
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
#include <QXmlSimpleReader>
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
#include <QXmlSimpleReader>
#endif
#endif

/*
QXmlSimpleReader ()
*/
HB_FUNC_STATIC( QXMLSIMPLEREADER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlSimpleReader * o = new QXmlSimpleReader (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlSimpleReader *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QXMLSIMPLEREADER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlSimpleReader * obj = (QXmlSimpleReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool parse ( const QXmlInputSource * input, bool incremental )
*/
HB_FUNC_STATIC( QXMLSIMPLEREADER_PARSE )
{
  QXmlSimpleReader * obj = (QXmlSimpleReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlInputSource * par1 = (QXmlInputSource *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->parse ( par1, (bool) hb_parl(2) ) );
  }
}


/*
virtual bool parseContinue ()
*/
HB_FUNC_STATIC( QXMLSIMPLEREADER_PARSECONTINUE )
{
  QXmlSimpleReader * obj = (QXmlSimpleReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->parseContinue (  ) );
  }
}



#pragma ENDDUMP
