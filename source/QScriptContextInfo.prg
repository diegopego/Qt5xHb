/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QScriptContextInfo

   DATA pointer
   DATA class_id INIT Class_Id_QScriptContextInfo
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD fileName
   METHOD functionEndLineNumber
   METHOD functionMetaIndex
   METHOD functionName
   METHOD functionParameterNames
   METHOD functionStartLineNumber
   METHOD functionType
   METHOD isNull
   METHOD lineNumber
   METHOD scriptId
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScriptContextInfo
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
#include <QScriptContextInfo>
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
#include <QScriptContextInfo>
#endif
#endif

/*
QScriptContextInfo(const QScriptContext * context)
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  const QScriptContext * par1 = (const QScriptContext *) _qtxhb_itemGetPtr(1);
  QScriptContextInfo * o = new QScriptContextInfo ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptContextInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QScriptContextInfo(const QScriptContextInfo & other)
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QScriptContextInfo * par1 = (QScriptContextInfo *) _qtxhb_itemGetPtr(1);
  QScriptContextInfo * o = new QScriptContextInfo ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptContextInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QScriptContextInfo()
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QScriptContextInfo * o = new QScriptContextInfo (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptContextInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QScriptContextInfo(const QScriptContext * context)
//[2]QScriptContextInfo(const QScriptContextInfo & other)
//[3]QScriptContextInfo()

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW )
{
  if( ISNUMPAR(1) && ISQSCRIPTCONTEXT(1) )
  {
    HB_FUNC_EXEC( QSCRIPTCONTEXTINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSCRIPTCONTEXTINFO(1) )
  {
    HB_FUNC_EXEC( QSCRIPTCONTEXTINFO_NEW2 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSCRIPTCONTEXTINFO_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QScriptContextInfo * obj = (QScriptContextInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString fileName() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FILENAME )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->fileName (  ).toLatin1().data() );
  }
}


/*
int functionEndLineNumber() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONENDLINENUMBER )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->functionEndLineNumber (  ) );
  }
}


/*
int functionMetaIndex() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONMETAINDEX )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->functionMetaIndex (  ) );
  }
}


/*
QString functionName() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONNAME )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->functionName (  ).toLatin1().data() );
  }
}


/*
QStringList functionParameterNames() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONPARAMETERNAMES )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->functionParameterNames (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
int functionStartLineNumber() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONSTARTLINENUMBER )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->functionStartLineNumber (  ) );
  }
}


/*
FunctionType functionType() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONTYPE )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->functionType (  );
    hb_retni( i );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_ISNULL )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
int lineNumber() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_LINENUMBER )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->lineNumber (  ) );
  }
}


/*
qint64 scriptId() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_SCRIPTID )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->scriptId (  ) );
  }
}



HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEWFROM )
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

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QSCRIPTCONTEXTINFO_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QSCRIPTCONTEXTINFO_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_SETSELFDESTRUCTION )
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