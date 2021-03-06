/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBLUETOOTHADDRESS

CLASS QBluetoothSocket INHERIT QIODevice

   DATA class_id INIT Class_Id_QBluetoothSocket
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD abort
   METHOD close
   METHOD isSequential
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD connectToService1
   METHOD connectToService2
   METHOD connectToService3
   METHOD connectToService
   METHOD disconnectFromService
   METHOD localName
   METHOD localAddress
   METHOD localPort
   METHOD peerName
   METHOD peerAddress
   METHOD peerPort
   METHOD setSocketDescriptor
   METHOD socketDescriptor
   METHOD socketType
   METHOD state
   METHOD error
   METHOD errorString
   METHOD onConnected
   METHOD onDisconnected
   METHOD onError
   METHOD onStateChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBluetoothSocket
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothSocket>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothSocket>
#endif
#endif

/*
QBluetoothSocket(QBluetoothServiceInfo::Protocol socketType, QObject *parent = 0)
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  int par1 = hb_parni(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qtxhb_itemGetPtr(2);
  QBluetoothSocket * o = new QBluetoothSocket (  (QBluetoothServiceInfo::Protocol) par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBluetoothSocket *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QBluetoothSocket(QObject *parent = 0)
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QBluetoothSocket * o = new QBluetoothSocket ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBluetoothSocket *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QBluetoothSocket(QBluetoothServiceInfo::Protocol socketType, QObject *parent = 0)
//[2]QBluetoothSocket(QObject *parent = 0)

HB_FUNC_STATIC( QBLUETOOTHSOCKET_NEW )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBLUETOOTHSOCKET_NEW1 );
  }
  else if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QBLUETOOTHSOCKET_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBLUETOOTHSOCKET_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void abort()
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_ABORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->abort (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
virtual void close()
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_CLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isSequential() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_ISSEQUENTIAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSequential (  ) );
  }
#endif
}


/*
virtual qint64 bytesAvailable() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_BYTESAVAILABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesAvailable (  ) );
  }
#endif
}


/*
virtual qint64 bytesToWrite() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_BYTESTOWRITE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesToWrite (  ) );
  }
#endif
}


/*
virtual bool canReadLine() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_CANREADLINE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->canReadLine (  ) );
  }
#endif
}


/*
void connectToService(const QBluetoothServiceInfo &service, OpenMode openMode = ReadWrite)
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_CONNECTTOSERVICE1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothServiceInfo * par1 = (QBluetoothServiceInfo *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QIODevice::ReadWrite : hb_parni(2);
    obj->connectToService ( *par1,  (QIODevice::OpenMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void connectToService(const QBluetoothAddress &address, const QBluetoothUuid &uuid, OpenMode openMode = ReadWrite)
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_CONNECTTOSERVICE2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothAddress * par1 = (QBluetoothAddress *) _qtxhb_itemGetPtr(1);
    QBluetoothUuid * par2 = (QBluetoothUuid *) _qtxhb_itemGetPtr(2);
    int par3 = ISNIL(3)? (int) QIODevice::ReadWrite : hb_parni(3);
    obj->connectToService ( *par1, *par2,  (QIODevice::OpenMode) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void connectToService(const QBluetoothAddress &address, quint16 port, OpenMode openMode = ReadWrite)
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_CONNECTTOSERVICE3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothAddress * par1 = (QBluetoothAddress *) _qtxhb_itemGetPtr(1);
    int par3 = ISNIL(3)? (int) QIODevice::ReadWrite : hb_parni(3);
    obj->connectToService ( *par1, (quint16) hb_parni(2),  (QIODevice::OpenMode) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


//[1]void connectToService(const QBluetoothServiceInfo &service, OpenMode openMode = ReadWrite)
//[2]void connectToService(const QBluetoothAddress &address, const QBluetoothUuid &uuid, OpenMode openMode = ReadWrite)
//[3]void connectToService(const QBluetoothAddress &address, quint16 port, OpenMode openMode = ReadWrite)

HB_FUNC_STATIC( QBLUETOOTHSOCKET_CONNECTTOSERVICE )
{
  if( ISBETWEEN(1,2) && ISQBLUETOOTHSERVICEINFO(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBLUETOOTHSOCKET_CONNECTTOSERVICE1 );
  }
  else if( ISBETWEEN(2,3) && ISQBLUETOOTHADDRESS(1) && ISQBLUETOOTHUUID(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QBLUETOOTHSOCKET_CONNECTTOSERVICE2 );
  }
  else if( ISBETWEEN(2,3) && ISQBLUETOOTHADDRESS(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QBLUETOOTHSOCKET_CONNECTTOSERVICE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void disconnectFromService()
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_DISCONNECTFROMSERVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->disconnectFromService (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString localName() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_LOCALNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->localName (  ).toLatin1().data() );
  }
#endif
}


/*
QBluetoothAddress localAddress() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_LOCALADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothAddress * ptr = new QBluetoothAddress( obj->localAddress (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBLUETOOTHADDRESS" );
  }
#endif
}


/*
quint16 localPort() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_LOCALPORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->localPort (  ) );
  }
#endif
}


/*
QString peerName() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_PEERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->peerName (  ).toLatin1().data() );
  }
#endif
}


/*
QBluetoothAddress peerAddress() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_PEERADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothAddress * ptr = new QBluetoothAddress( obj->peerAddress (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBLUETOOTHADDRESS" );
  }
#endif
}


/*
quint16 peerPort() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_PEERPORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->peerPort (  ) );
  }
#endif
}


/*
bool setSocketDescriptor(int socketDescriptor, QBluetoothServiceInfo::Protocol socketType,SocketState socketState = ConnectedState,OpenMode openMode = ReadWrite)
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_SETSOCKETDESCRIPTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    int par3 = ISNIL(3)? (int) QBluetoothSocket::ConnectedState : hb_parni(3);
    int par4 = ISNIL(4)? (int) QIODevice::ReadWrite : hb_parni(4);
    hb_retl( obj->setSocketDescriptor ( (int) hb_parni(1),  (QBluetoothServiceInfo::Protocol) par2,  (QBluetoothSocket::SocketState) par3,  (QIODevice::OpenMode) par4 ) );
  }
#endif
}

/*
int socketDescriptor() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_SOCKETDESCRIPTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->socketDescriptor (  ) );
  }
#endif
}


/*
QBluetoothServiceInfo::Protocol socketType() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_SOCKETTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->socketType (  );
    hb_retni( i );
  }
#endif
}


/*
SocketState state() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_STATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->state (  );
    hb_retni( i );
  }
#endif
}


/*
SocketError error() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->error (  );
    hb_retni( i );
  }
#endif
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
#endif
}




#pragma ENDDUMP
