/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPROCESSENVIRONMENT
REQUEST QBYTEARRAY

CLASS QProcess INHERIT QIODevice

   DATA class_id INIT Class_Id_QProcess
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD closeReadChannel
   METHOD closeWriteChannel
   METHOD environment
   METHOD error
   METHOD exitCode
   METHOD exitStatus
   METHOD nativeArguments
   METHOD processChannelMode
   METHOD processEnvironment
   METHOD readAllStandardError
   METHOD readAllStandardOutput
   METHOD readChannel
   METHOD setEnvironment
   METHOD setNativeArguments
   METHOD setProcessChannelMode
   METHOD setProcessEnvironment
   METHOD setReadChannel
   METHOD setStandardErrorFile
   METHOD setStandardInputFile
   METHOD setStandardOutputFile
   METHOD setStandardOutputProcess
   METHOD setWorkingDirectory
   METHOD start1
   METHOD start2
   METHOD start3
   METHOD start
   METHOD state
   METHOD waitForFinished
   METHOD waitForStarted
   METHOD workingDirectory
   METHOD atEnd
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD isSequential
   METHOD waitForBytesWritten
   METHOD waitForReadyRead
   METHOD kill
   METHOD terminate
   METHOD execute1
   METHOD execute2
   METHOD execute
   METHOD startDetached1
   METHOD startDetached2
   METHOD startDetached3
   METHOD startDetached
   METHOD systemEnvironment
   METHOD open
   METHOD program
   METHOD setProgram
   METHOD arguments
   METHOD setArguments
   METHOD readChannelMode
   METHOD setReadChannelMode
   METHOD inputChannelMode
   METHOD setInputChannelMode
   METHOD processId
   METHOD nullDevice
   METHOD onError
   METHOD onFinished
   METHOD onReadyReadStandardError
   METHOD onReadyReadStandardOutput
   METHOD onStarted
   METHOD onStateChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QProcess
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
#include <QProcess>
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
#include <QProcess>
#endif
#endif

/*
explicit QProcess ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QPROCESS_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QProcess * o = new QProcess ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QProcess *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QPROCESS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void closeReadChannel ( ProcessChannel channel )
*/
HB_FUNC_STATIC( QPROCESS_CLOSEREADCHANNEL )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->closeReadChannel (  (QProcess::ProcessChannel) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void closeWriteChannel ()
*/
HB_FUNC_STATIC( QPROCESS_CLOSEWRITECHANNEL )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->closeWriteChannel (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList environment () const
*/
HB_FUNC_STATIC( QPROCESS_ENVIRONMENT )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->environment (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QProcess::ProcessError error () const
*/
HB_FUNC_STATIC( QPROCESS_ERROR )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->error (  );
    hb_retni( i );
  }
}


/*
int exitCode () const
*/
HB_FUNC_STATIC( QPROCESS_EXITCODE )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->exitCode (  ) );
  }
}


/*
QProcess::ExitStatus exitStatus () const
*/
HB_FUNC_STATIC( QPROCESS_EXITSTATUS )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->exitStatus (  );
    hb_retni( i );
  }
}


/*
QString nativeArguments () const
*/
HB_FUNC_STATIC( QPROCESS_NATIVEARGUMENTS )
{
#if defined(Q_OS_WIN)
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->nativeArguments (  ).toLatin1().data() );
  }
#endif
}



/*
ProcessChannelMode processChannelMode () const
*/
HB_FUNC_STATIC( QPROCESS_PROCESSCHANNELMODE )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->processChannelMode (  );
    hb_retni( i );
  }
}


/*
QProcessEnvironment processEnvironment () const
*/
HB_FUNC_STATIC( QPROCESS_PROCESSENVIRONMENT )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QProcessEnvironment * ptr = new QProcessEnvironment( obj->processEnvironment (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPROCESSENVIRONMENT", true );
  }
}


/*
QByteArray readAllStandardError ()
*/
HB_FUNC_STATIC( QPROCESS_READALLSTANDARDERROR )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->readAllStandardError (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray readAllStandardOutput ()
*/
HB_FUNC_STATIC( QPROCESS_READALLSTANDARDOUTPUT )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->readAllStandardOutput (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
ProcessChannel readChannel () const
*/
HB_FUNC_STATIC( QPROCESS_READCHANNEL )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->readChannel (  );
    hb_retni( i );
  }
}


/*
void setEnvironment ( const QStringList & environment )
*/
HB_FUNC_STATIC( QPROCESS_SETENVIRONMENT )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
    obj->setEnvironment ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNativeArguments ( const QString & arguments )
*/
HB_FUNC_STATIC( QPROCESS_SETNATIVEARGUMENTS )
{
#if defined(Q_OS_WIN)
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setNativeArguments ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setProcessChannelMode ( ProcessChannelMode mode )
*/
HB_FUNC_STATIC( QPROCESS_SETPROCESSCHANNELMODE )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setProcessChannelMode (  (QProcess::ProcessChannelMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProcessEnvironment ( const QProcessEnvironment & environment )
*/
HB_FUNC_STATIC( QPROCESS_SETPROCESSENVIRONMENT )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QProcessEnvironment * par1 = (QProcessEnvironment *) _qtxhb_itemGetPtr(1);
    obj->setProcessEnvironment ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setReadChannel ( ProcessChannel channel )
*/
HB_FUNC_STATIC( QPROCESS_SETREADCHANNEL )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setReadChannel (  (QProcess::ProcessChannel) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStandardErrorFile ( const QString & fileName, OpenMode mode = Truncate )
*/
HB_FUNC_STATIC( QPROCESS_SETSTANDARDERRORFILE )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) QIODevice::Truncate : hb_parni(2);
    obj->setStandardErrorFile ( par1,  (QIODevice::OpenMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStandardInputFile ( const QString & fileName )
*/
HB_FUNC_STATIC( QPROCESS_SETSTANDARDINPUTFILE )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setStandardInputFile ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStandardOutputFile ( const QString & fileName, OpenMode mode = Truncate )
*/
HB_FUNC_STATIC( QPROCESS_SETSTANDARDOUTPUTFILE )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) QIODevice::Truncate : hb_parni(2);
    obj->setStandardOutputFile ( par1,  (QIODevice::OpenMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStandardOutputProcess ( QProcess * destination )
*/
HB_FUNC_STATIC( QPROCESS_SETSTANDARDOUTPUTPROCESS )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QProcess * par1 = (QProcess *) _qtxhb_itemGetPtr(1);
    obj->setStandardOutputProcess ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWorkingDirectory ( const QString & dir )
*/
HB_FUNC_STATIC( QPROCESS_SETWORKINGDIRECTORY )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setWorkingDirectory ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void start(const QString &program, const QStringList &arguments, OpenMode mode = ReadWrite)
*/
HB_FUNC_STATIC( QPROCESS_START1 )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
QStringList par2;
PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aStrings2);
for (i2=0;i2<nLen2;i2++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings2, i2+1) );
par2 << temp;
}
    int par3 = ISNIL(3)? (int) QIODevice::ReadWrite : hb_parni(3);
    obj->start ( par1, par2,  (QIODevice::OpenMode) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void start(const QString &command, OpenMode mode = ReadWrite)
*/
HB_FUNC_STATIC( QPROCESS_START2 )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) QIODevice::ReadWrite : hb_parni(2);
    obj->start ( par1,  (QIODevice::OpenMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void start(OpenMode mode = ReadWrite)
*/
HB_FUNC_STATIC( QPROCESS_START3 )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QIODevice::ReadWrite : hb_parni(1);
    obj->start (  (QIODevice::OpenMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void start(const QString &program, const QStringList &arguments, OpenMode mode = ReadWrite)
//[2]void start(const QString &command, OpenMode mode = ReadWrite)
//[3]void start(OpenMode mode = ReadWrite)

HB_FUNC_STATIC( QPROCESS_START )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISARRAY(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPROCESS_START1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPROCESS_START2 );
  }
  else if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QPROCESS_START3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QProcess::ProcessState state () const
*/
HB_FUNC_STATIC( QPROCESS_STATE )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->state (  );
    hb_retni( i );
  }
}


/*
bool waitForFinished ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QPROCESS_WAITFORFINISHED )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForFinished ( (int) ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
bool waitForStarted ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QPROCESS_WAITFORSTARTED )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForStarted ( (int) ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
QString workingDirectory () const
*/
HB_FUNC_STATIC( QPROCESS_WORKINGDIRECTORY )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->workingDirectory (  ).toLatin1().data() );
  }
}


/*
bool atEnd () const
*/
HB_FUNC_STATIC( QPROCESS_ATEND )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->atEnd (  ) );
  }
}


/*
qint64 bytesAvailable () const
*/
HB_FUNC_STATIC( QPROCESS_BYTESAVAILABLE )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesAvailable (  ) );
  }
}


/*
qint64 bytesToWrite () const
*/
HB_FUNC_STATIC( QPROCESS_BYTESTOWRITE )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesToWrite (  ) );
  }
}


/*
bool canReadLine () const
*/
HB_FUNC_STATIC( QPROCESS_CANREADLINE )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->canReadLine (  ) );
  }
}


/*
void close ()
*/
HB_FUNC_STATIC( QPROCESS_CLOSE )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isSequential () const
*/
HB_FUNC_STATIC( QPROCESS_ISSEQUENTIAL )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSequential (  ) );
  }
}


/*
virtual bool waitForBytesWritten ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QPROCESS_WAITFORBYTESWRITTEN )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForBytesWritten ( (int) ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
virtual bool waitForReadyRead ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QPROCESS_WAITFORREADYREAD )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForReadyRead ( (int) ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
void kill ()
*/
HB_FUNC_STATIC( QPROCESS_KILL )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->kill (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void terminate ()
*/
HB_FUNC_STATIC( QPROCESS_TERMINATE )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->terminate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static int execute ( const QString & program, const QStringList & arguments )
*/
HB_FUNC_STATIC( QPROCESS_EXECUTE1 )
{
  QString par1 = QLatin1String( hb_parc(1) );
QStringList par2;
PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aStrings2);
for (i2=0;i2<nLen2;i2++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings2, i2+1) );
par2 << temp;
}
  hb_retni( QProcess::execute ( par1, par2 ) );
}

/*
static int execute ( const QString & command )
*/
HB_FUNC_STATIC( QPROCESS_EXECUTE2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  hb_retni( QProcess::execute ( par1 ) );
}


//[1]int execute ( const QString & program, const QStringList & arguments )
//[2]int execute ( const QString & program )

HB_FUNC_STATIC( QPROCESS_EXECUTE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QPROCESS_EXECUTE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QPROCESS_EXECUTE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool startDetached ( const QString & program, const QStringList & arguments, const QString & workingDirectory, qint64 * pid = 0 )
*/
HB_FUNC_STATIC( QPROCESS_STARTDETACHED1 )
{
  QString par1 = QLatin1String( hb_parc(1) );
QStringList par2;
PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aStrings2);
for (i2=0;i2<nLen2;i2++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings2, i2+1) );
par2 << temp;
}
  QString par3 = QLatin1String( hb_parc(3) );
  qint64 * par4 = (qint64 *) _qtxhb_itemGetPtr(4);
  hb_retl( QProcess::startDetached ( par1, par2, par3, par4 ) );
}

/*
static bool startDetached ( const QString & program, const QStringList & arguments )
*/
HB_FUNC_STATIC( QPROCESS_STARTDETACHED2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
QStringList par2;
PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aStrings2);
for (i2=0;i2<nLen2;i2++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings2, i2+1) );
par2 << temp;
}
  hb_retl( QProcess::startDetached ( par1, par2 ) );
}

/*
static bool startDetached ( const QString & program )
*/
HB_FUNC_STATIC( QPROCESS_STARTDETACHED3 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  hb_retl( QProcess::startDetached ( par1 ) );
}


//[1]bool startDetached ( const QString & program, const QStringList & arguments, const QString & workingDirectory, qint64 * pid = 0 )
//[2]bool startDetached ( const QString & program, const QStringList & arguments )
//[3]bool startDetached ( const QString & program )

HB_FUNC_STATIC( QPROCESS_STARTDETACHED )
{
  if( ISBETWEEN(3,4) && ISCHAR(1) && ISARRAY(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPROCESS_STARTDETACHED1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QPROCESS_STARTDETACHED2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QPROCESS_STARTDETACHED3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QStringList systemEnvironment ()
*/
HB_FUNC_STATIC( QPROCESS_SYSTEMENVIRONMENT )
{
  QStringList strl = QProcess::systemEnvironment (  );
  _qtxhb_convert_qstringlist_to_array ( strl );
}


/*
bool open(OpenMode mode = ReadWrite) Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QPROCESS_OPEN )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QIODevice::ReadWrite : hb_parni(1);
    hb_retl( obj->open (  (QIODevice::OpenMode) par1 ) );
  }
}


/*
QString program() const
*/
HB_FUNC_STATIC( QPROCESS_PROGRAM )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->program (  ).toLatin1().data() );
  }
}

/*
void setProgram(const QString &program)
*/
HB_FUNC_STATIC( QPROCESS_SETPROGRAM )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setProgram ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList arguments() const
*/
HB_FUNC_STATIC( QPROCESS_ARGUMENTS )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->arguments (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}

/*
void setArguments(const QStringList & arguments)
*/
HB_FUNC_STATIC( QPROCESS_SETARGUMENTS )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
    obj->setArguments ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
ProcessChannelMode readChannelMode() const
*/
HB_FUNC_STATIC( QPROCESS_READCHANNELMODE )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->readChannelMode (  );
    hb_retni( i );
  }
}

/*
void setReadChannelMode(ProcessChannelMode mode)
*/
HB_FUNC_STATIC( QPROCESS_SETREADCHANNELMODE )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setReadChannelMode (  (QProcess::ProcessChannelMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
InputChannelMode inputChannelMode() const
*/
HB_FUNC_STATIC( QPROCESS_INPUTCHANNELMODE )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->inputChannelMode (  );
    hb_retni( i );
  }
}

/*
void setInputChannelMode(InputChannelMode mode)
*/
HB_FUNC_STATIC( QPROCESS_SETINPUTCHANNELMODE )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setInputChannelMode (  (QProcess::InputChannelMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qint64 processId() const
*/
HB_FUNC_STATIC( QPROCESS_PROCESSID )
{
  QProcess * obj = (QProcess *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->processId (  ) );
  }
}


/*
static QString nullDevice()
*/
HB_FUNC_STATIC( QPROCESS_NULLDEVICE )
{
  hb_retc( (const char *) QProcess::nullDevice (  ).toLatin1().data() );
}




#pragma ENDDUMP
