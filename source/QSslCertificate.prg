/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBYTEARRAY
REQUEST QDATETIME
REQUEST QSSLKEY

CLASS QSslCertificate

   DATA pointer
   DATA class_id INIT Class_Id_QSslCertificate
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD clear
   METHOD digest
   METHOD effectiveDate
   METHOD expiryDate
   METHOD isNull
   METHOD issuerInfo1
   METHOD issuerInfo2
   METHOD issuerInfo
   METHOD publicKey
   METHOD serialNumber
   METHOD subjectInfo1
   METHOD subjectInfo2
   METHOD subjectInfo
   METHOD swap
   METHOD toDer
   METHOD toPem
   METHOD toText
   METHOD version
   METHOD fromData
   METHOD fromDevice
   METHOD fromPath
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSslCertificate
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
#include <QSslCertificate>
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
#include <QSslCertificate>
#endif
#endif

#include <QDateTime>
#include <QSslKey>
#include <QStringList>

/*
QSslCertificate ( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QIODevice * par1 = (QIODevice *) _qtxhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) QSsl::Pem : hb_parni(2);
  QSslCertificate * o = new QSslCertificate ( par1,  (QSsl::EncodingFormat) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSslCertificate *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QSslCertificate ( const QByteArray & data = QByteArray(), QSsl::EncodingFormat format = QSsl::Pem )
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QByteArray par1 = ISNIL(1)? QByteArray() : *(QByteArray *) _qtxhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) QSsl::Pem : hb_parni(2);
  QSslCertificate * o = new QSslCertificate ( par1,  (QSsl::EncodingFormat) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSslCertificate *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QSslCertificate ( const QSslCertificate & other )
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSslCertificate * par1 = (QSslCertificate *) _qtxhb_itemGetPtr(1);
  QSslCertificate * o = new QSslCertificate ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSslCertificate *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QSslCertificate ( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
//[2]QSslCertificate ( const QByteArray & data = QByteArray(), QSsl::EncodingFormat format = QSsl::Pem )
//[3]QSslCertificate ( const QSslCertificate & other )

HB_FUNC_STATIC( QSSLCERTIFICATE_NEW )
{
  if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_NEW1 );
  }
  else if( ISBETWEEN(0,2) && (ISQBYTEARRAY(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQSSLCERTIFICATE(1) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSSLCERTIFICATE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSslCertificate * obj = (QSslCertificate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void clear ()
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_CLEAR )
{
  QSslCertificate * obj = (QSslCertificate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray digest ( QCryptographicHash::Algorithm algorithm = QCryptographicHash::Md5 ) const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_DIGEST )
{
  QSslCertificate * obj = (QSslCertificate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QCryptographicHash::Md5 : hb_parni(1);
    QByteArray * ptr = new QByteArray( obj->digest (  (QCryptographicHash::Algorithm) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QDateTime effectiveDate () const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_EFFECTIVEDATE )
{
  QSslCertificate * obj = (QSslCertificate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->effectiveDate (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QDateTime expiryDate () const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_EXPIRYDATE )
{
  QSslCertificate * obj = (QSslCertificate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->expiryDate (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}





/*
bool isNull () const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_ISNULL )
{
  QSslCertificate * obj = (QSslCertificate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}



/*
QStringList issuerInfo ( SubjectInfo subject ) const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_ISSUERINFO1 )
{
  QSslCertificate * obj = (QSslCertificate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QStringList strl = obj->issuerInfo (  (QSslCertificate::SubjectInfo) par1 );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QStringList issuerInfo ( const QByteArray & attribute ) const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_ISSUERINFO2 )
{
  QSslCertificate * obj = (QSslCertificate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    QStringList strl = obj->issuerInfo ( *par1 );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


//[1]QStringList issuerInfo ( SubjectInfo subject ) const
//[2]QStringList issuerInfo ( const QByteArray & tag ) const

HB_FUNC_STATIC( QSSLCERTIFICATE_ISSUERINFO )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_ISSUERINFO1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_ISSUERINFO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


/*
QSslKey publicKey () const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_PUBLICKEY )
{
  QSslCertificate * obj = (QSslCertificate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslKey * ptr = new QSslKey( obj->publicKey (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSSLKEY", true );
  }
}


/*
QByteArray serialNumber () const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_SERIALNUMBER )
{
  QSslCertificate * obj = (QSslCertificate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->serialNumber (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}



/*
QStringList subjectInfo ( SubjectInfo subject ) const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_SUBJECTINFO1 )
{
  QSslCertificate * obj = (QSslCertificate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QStringList strl = obj->subjectInfo (  (QSslCertificate::SubjectInfo) par1 );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QString subjectInfo ( const QByteArray & attribute ) const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_SUBJECTINFO2 )
{
  QSslCertificate * obj = (QSslCertificate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    QStringList strl = obj->subjectInfo ( *par1 );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


//[1]QStringList subjectInfo(SubjectInfo subject) const
//[2]QStringList subjectInfo(const QByteArray & attribute) const

HB_FUNC_STATIC( QSSLCERTIFICATE_SUBJECTINFO )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_SUBJECTINFO1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_SUBJECTINFO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


/*
void swap(QSslCertificate & other)
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_SWAP )
{
  QSslCertificate * obj = (QSslCertificate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslCertificate * par1 = (QSslCertificate *) _qtxhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray toDer () const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_TODER )
{
  QSslCertificate * obj = (QSslCertificate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toDer (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray toPem () const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_TOPEM )
{
  QSslCertificate * obj = (QSslCertificate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toPem (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QString toText() const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_TOTEXT )
{
  QSslCertificate * obj = (QSslCertificate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toText (  ).toLatin1().data() );
  }
}


/*
QByteArray version () const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_VERSION )
{
  QSslCertificate * obj = (QSslCertificate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->version (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
static QList<QSslCertificate> fromData ( const QByteArray & data, QSsl::EncodingFormat format = QSsl::Pem )
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_FROMDATA )
{
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) QSsl::Pem : hb_parni(2);
  QList<QSslCertificate> list = QSslCertificate::fromData ( *par1,  (QSsl::EncodingFormat) par2 );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QSSLCERTIFICATE" );
  #else
  pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}


/*
static QList<QSslCertificate> fromDevice ( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_FROMDEVICE )
{
  QIODevice * par1 = (QIODevice *) _qtxhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) QSsl::Pem : hb_parni(2);
  QList<QSslCertificate> list = QSslCertificate::fromDevice ( par1,  (QSsl::EncodingFormat) par2 );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QSSLCERTIFICATE" );
  #else
  pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}


/*
static QList<QSslCertificate> fromPath ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_FROMPATH )
{
  QString par1 = QLatin1String( hb_parc(1) );
  int par2 = ISNIL(2)? (int) QSsl::Pem : hb_parni(2);
  int par3 = ISNIL(3)? (int) QRegExp::FixedString : hb_parni(3);
  QList<QSslCertificate> list = QSslCertificate::fromPath ( par1,  (QSsl::EncodingFormat) par2,  (QRegExp::PatternSyntax) par3 );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QSSLCERTIFICATE" );
  #else
  pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}




HB_FUNC_STATIC( QSSLCERTIFICATE_NEWFROM )
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

HB_FUNC_STATIC( QSSLCERTIFICATE_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QSSLCERTIFICATE_NEWFROM );
}

HB_FUNC_STATIC( QSSLCERTIFICATE_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QSSLCERTIFICATE_NEWFROM );
}

HB_FUNC_STATIC( QSSLCERTIFICATE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSSLCERTIFICATE_SETSELFDESTRUCTION )
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