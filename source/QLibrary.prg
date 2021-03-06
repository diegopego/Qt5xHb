/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QFUNCTIONPOINTER

CLASS QLibrary INHERIT QObject

   DATA class_id INIT Class_Id_QLibrary
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD resolve1
   METHOD load
   METHOD unload
   METHOD isLoaded
   METHOD setFileName
   METHOD fileName
   METHOD setFileNameAndVersion1
   METHOD setFileNameAndVersion2
   METHOD setFileNameAndVersion
   METHOD errorString
   METHOD setLoadHints
   METHOD loadHints
   METHOD resolve2
   METHOD resolve3
   METHOD resolve4
   METHOD resolve
   METHOD isLibrary
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLibrary
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
#include <QLibrary>
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
#include <QLibrary>
#endif
#endif

/*
QLibrary(QObject *parent = 0)
*/
HB_FUNC_STATIC( QLIBRARY_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QLibrary * o = new QLibrary ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLibrary *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QLibrary(const QString& fileName, QObject *parent = 0)
*/
HB_FUNC_STATIC( QLIBRARY_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qtxhb_itemGetPtr(2);
  QLibrary * o = new QLibrary ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLibrary *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QLibrary(const QString& fileName, int verNum, QObject *parent = 0)
*/
HB_FUNC_STATIC( QLIBRARY_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  int par2 = hb_parni(2);
  QObject * par3 = ISNIL(3)? 0 : (QObject *) _qtxhb_itemGetPtr(3);
  QLibrary * o = new QLibrary ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLibrary *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QLibrary(const QString& fileName, const QString &version, QObject *parent = 0)
*/
HB_FUNC_STATIC( QLIBRARY_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = QLatin1String( hb_parc(2) );
  QObject * par3 = ISNIL(3)? 0 : (QObject *) _qtxhb_itemGetPtr(3);
  QLibrary * o = new QLibrary ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLibrary *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QLibrary(QObject *parent = 0)
//[2]QLibrary(const QString& fileName, QObject *parent = 0)
//[3]QLibrary(const QString& fileName, int verNum, QObject *parent = 0)
//[4]QLibrary(const QString& fileName, const QString &version, QObject *parent = 0)

HB_FUNC_STATIC( QLIBRARY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QLIBRARY_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QLIBRARY_NEW2 );
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QLIBRARY_NEW3 );
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISCHAR(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QLIBRARY_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLIBRARY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QLibrary * obj = (QLibrary *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QFunctionPointer resolve(const char *symbol)
*/
HB_FUNC_STATIC( QLIBRARY_RESOLVE1 )
{
  QLibrary * obj = (QLibrary *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QFunctionPointer * ptr = new QFunctionPointer( obj->resolve (  (const char *) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QFUNCTIONPOINTER" );
  }
}


/*
bool load()
*/
HB_FUNC_STATIC( QLIBRARY_LOAD )
{
  QLibrary * obj = (QLibrary *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->load (  ) );
  }
}


/*
bool unload()
*/
HB_FUNC_STATIC( QLIBRARY_UNLOAD )
{
  QLibrary * obj = (QLibrary *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->unload (  ) );
  }
}


/*
bool isLoaded() const
*/
HB_FUNC_STATIC( QLIBRARY_ISLOADED )
{
  QLibrary * obj = (QLibrary *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isLoaded (  ) );
  }
}


/*
void setFileName(const QString &fileName)
*/
HB_FUNC_STATIC( QLIBRARY_SETFILENAME )
{
  QLibrary * obj = (QLibrary *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setFileName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString fileName() const
*/
HB_FUNC_STATIC( QLIBRARY_FILENAME )
{
  QLibrary * obj = (QLibrary *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->fileName (  ).toLatin1().data() );
  }
}


/*
void setFileNameAndVersion(const QString &fileName, int verNum)
*/
HB_FUNC_STATIC( QLIBRARY_SETFILENAMEANDVERSION1 )
{
  QLibrary * obj = (QLibrary *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setFileNameAndVersion ( par1, (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFileNameAndVersion(const QString &fileName, const QString &version)
*/
HB_FUNC_STATIC( QLIBRARY_SETFILENAMEANDVERSION2 )
{
  QLibrary * obj = (QLibrary *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setFileNameAndVersion ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setFileNameAndVersion(const QString &fileName, int verNum)
//[2]void setFileNameAndVersion(const QString &fileName, const QString &version)

HB_FUNC_STATIC( QLIBRARY_SETFILENAMEANDVERSION )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLIBRARY_SETFILENAMEANDVERSION1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QLIBRARY_SETFILENAMEANDVERSION2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QLIBRARY_ERRORSTRING )
{
  QLibrary * obj = (QLibrary *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
void setLoadHints(LoadHints hints)
*/
HB_FUNC_STATIC( QLIBRARY_SETLOADHINTS )
{
  QLibrary * obj = (QLibrary *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLoadHints (  (QLibrary::LoadHints) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
LoadHints loadHints() const
*/
HB_FUNC_STATIC( QLIBRARY_LOADHINTS )
{
  QLibrary * obj = (QLibrary *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->loadHints (  );
    hb_retni( i );
  }
}


/*
static QFunctionPointer resolve(const QString &fileName, const char *symbol)
*/
HB_FUNC_STATIC( QLIBRARY_RESOLVE2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  const char * par2 = hb_parc(2);
  QFunctionPointer * ptr = new QFunctionPointer( QLibrary::resolve ( par1,  (const char *) par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QFUNCTIONPOINTER" );
}


/*
static QFunctionPointer resolve(const QString &fileName, int verNum, const char *symbol)
*/
HB_FUNC_STATIC( QLIBRARY_RESOLVE3 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  const char * par3 = hb_parc(3);
  QFunctionPointer * ptr = new QFunctionPointer( QLibrary::resolve ( par1, (int) hb_parni(2),  (const char *) par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QFUNCTIONPOINTER" );
}


/*
static QFunctionPointer resolve(const QString &fileName, const QString &version, const char *symbol)
*/
HB_FUNC_STATIC( QLIBRARY_RESOLVE4 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = QLatin1String( hb_parc(2) );
  const char * par3 = hb_parc(3);
  QFunctionPointer * ptr = new QFunctionPointer( QLibrary::resolve ( par1, par2,  (const char *) par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QFUNCTIONPOINTER" );
}


//[1]QFunctionPointer resolve(const char *symbol)
//[2]static QFunctionPointer resolve(const QString &fileName, const char *symbol)
//[3]static QFunctionPointer resolve(const QString &fileName, int verNum, const char *symbol)
//[4]static QFunctionPointer resolve(const QString &fileName, const QString &version, const char *symbol)

HB_FUNC_STATIC( QLIBRARY_RESOLVE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QLIBRARY_RESOLVE1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QLIBRARY_RESOLVE2 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QLIBRARY_RESOLVE3 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QLIBRARY_RESOLVE4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool isLibrary(const QString &fileName)
*/
HB_FUNC_STATIC( QLIBRARY_ISLIBRARY )
{
  QString par1 = QLatin1String( hb_parc(1) );
  hb_retl( QLibrary::isLibrary ( par1 ) );
}



#pragma ENDDUMP
