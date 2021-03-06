/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"



CLASS QCoreApplication INHERIT QObject

   DATA class_id INIT Class_Id_QCoreApplication
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD notify
   METHOD quit
   METHOD addLibraryPath
   METHOD applicationDirPath
   METHOD applicationFilePath
   METHOD applicationName
   METHOD applicationPid
   METHOD applicationVersion
   METHOD arguments
   METHOD closingDown
   METHOD exec
   METHOD exit
   METHOD flush
   METHOD hasPendingEvents
   METHOD installTranslator
   METHOD instance
   METHOD libraryPaths
   METHOD organizationDomain
   METHOD organizationName
   METHOD postEvent1
   METHOD postEvent2
   METHOD postEvent
   METHOD processEvents1
   METHOD processEvents2
   METHOD processEvents
   METHOD removeLibraryPath
   METHOD removePostedEvents1
   METHOD removePostedEvents2
   METHOD removePostedEvents
   METHOD removeTranslator
   METHOD sendEvent
   METHOD sendPostedEvents1
   METHOD sendPostedEvents2
   METHOD sendPostedEvents
   METHOD setApplicationName
   METHOD setApplicationVersion
   METHOD setAttribute
   METHOD setLibraryPaths
   METHOD setOrganizationDomain
   METHOD setOrganizationName
   METHOD startingUp
   METHOD testAttribute
   METHOD translate
   METHOD onAboutToQuit
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCoreApplication
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
#include <QCoreApplication>
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
#include <QCoreApplication>
#endif
#endif

#include <QStringList>

/*
QCoreApplication ( int & argc, char ** argv )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QCoreApplication * o = NULL;
  o = new QCoreApplication( argc, argv );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,   (QCoreApplication *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QCOREAPPLICATION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QCoreApplication * obj = (QCoreApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool notify ( QObject * receiver, QEvent * event )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_NOTIFY )
{
  QCoreApplication * obj = (QCoreApplication *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    QEvent * par2 = (QEvent *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->notify ( par1, par2 ) );
  }
}




/*
void quit ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_QUIT )
{
  QCoreApplication * obj = (QCoreApplication *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->quit (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void addLibraryPath ( const QString & path )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_ADDLIBRARYPATH )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QCoreApplication::addLibraryPath ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QString applicationDirPath ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONDIRPATH )
{
  hb_retc( (const char *) QCoreApplication::applicationDirPath (  ).toLatin1().data() );
}


/*
static QString applicationFilePath ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONFILEPATH )
{
  hb_retc( (const char *) QCoreApplication::applicationFilePath (  ).toLatin1().data() );
}


/*
static QString applicationName ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONNAME )
{
  hb_retc( (const char *) QCoreApplication::applicationName (  ).toLatin1().data() );
}


/*
static qint64 applicationPid ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONPID )
{
  hb_retni( QCoreApplication::applicationPid (  ) );
}


/*
static QString applicationVersion ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONVERSION )
{
  hb_retc( (const char *) QCoreApplication::applicationVersion (  ).toLatin1().data() );
}


/*
static QStringList arguments ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_ARGUMENTS )
{
  QStringList strl = QCoreApplication::arguments (  );
  _qtxhb_convert_qstringlist_to_array ( strl );
}


/*
static bool closingDown ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_CLOSINGDOWN )
{
  hb_retl( QCoreApplication::closingDown (  ) );
}


/*
static int exec ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_EXEC )
{
  hb_retni( QCoreApplication::exec (  ) );
}


/*
static void exit ( int returnCode = 0 )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_EXIT )
{
  QCoreApplication::exit ( (int) ISNIL(1)? 0 : hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void flush ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_FLUSH )
{
  QCoreApplication::flush (  );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool hasPendingEvents ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_HASPENDINGEVENTS )
{
  hb_retl( QCoreApplication::hasPendingEvents (  ) );
}


/*
static void installTranslator ( QTranslator * translationFile )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_INSTALLTRANSLATOR )
{
  QTranslator * par1 = (QTranslator *) _qtxhb_itemGetPtr(1);
  QCoreApplication::installTranslator ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QCoreApplication * instance ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_INSTANCE )
{
  QCoreApplication * ptr = QCoreApplication::instance (  );
  _qt4xhb_createReturnClass ( ptr, "QCOREAPPLICATION" );
}


/*
static QStringList libraryPaths ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_LIBRARYPATHS )
{
  QStringList strl = QCoreApplication::libraryPaths (  );
  _qtxhb_convert_qstringlist_to_array ( strl );
}


/*
static QString organizationDomain ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_ORGANIZATIONDOMAIN )
{
  hb_retc( (const char *) QCoreApplication::organizationDomain (  ).toLatin1().data() );
}


/*
static QString organizationName ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_ORGANIZATIONNAME )
{
  hb_retc( (const char *) QCoreApplication::organizationName (  ).toLatin1().data() );
}


/*
static void postEvent ( QObject * receiver, QEvent * event )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_POSTEVENT1 )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QEvent * par2 = (QEvent *) _qtxhb_itemGetPtr(2);
  QCoreApplication::postEvent ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void postEvent ( QObject * receiver, QEvent * event, int priority )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_POSTEVENT2 )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QEvent * par2 = (QEvent *) _qtxhb_itemGetPtr(2);
  QCoreApplication::postEvent ( par1, par2, (int) hb_parni(3) );
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void postEvent ( QObject * receiver, QEvent * event )
//[2]void postEvent ( QObject * receiver, QEvent * event, int priority )

HB_FUNC_STATIC( QCOREAPPLICATION_POSTEVENT )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISOBJECT(2) )
  {
    HB_FUNC_EXEC( QCOREAPPLICATION_POSTEVENT1 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISOBJECT(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QCOREAPPLICATION_POSTEVENT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void processEvents ( QEventLoop::ProcessEventsFlags flags = QEventLoop::AllEvents )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_PROCESSEVENTS1 )
{
  int par1 = ISNIL(1)? (int) QEventLoop::AllEvents : hb_parni(1);
  QCoreApplication::processEvents (  (QEventLoop::ProcessEventsFlags) par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void processEvents ( QEventLoop::ProcessEventsFlags flags, int maxtime )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_PROCESSEVENTS2 )
{
  int par1 = hb_parni(1);
  QCoreApplication::processEvents (  (QEventLoop::ProcessEventsFlags) par1, (int) hb_parni(2) );
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void processEvents ( QEventLoop::ProcessEventsFlags flags = QEventLoop::AllEvents )
//[2]void processEvents ( QEventLoop::ProcessEventsFlags flags, int maxtime )

HB_FUNC_STATIC( QCOREAPPLICATION_PROCESSEVENTS )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QCOREAPPLICATION_PROCESSEVENTS1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QCOREAPPLICATION_PROCESSEVENTS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void removeLibraryPath ( const QString & path )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_REMOVELIBRARYPATH )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QCoreApplication::removeLibraryPath ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void removePostedEvents ( QObject * receiver )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_REMOVEPOSTEDEVENTS1 )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QCoreApplication::removePostedEvents ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void removePostedEvents ( QObject * receiver, int eventType )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_REMOVEPOSTEDEVENTS2 )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QCoreApplication::removePostedEvents ( par1, (int) hb_parni(2) );
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void removePostedEvents ( QObject * receiver )
//[2]void removePostedEvents ( QObject * receiver, int eventType )

HB_FUNC_STATIC( QCOREAPPLICATION_REMOVEPOSTEDEVENTS )
{
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QCOREAPPLICATION_REMOVEPOSTEDEVENTS1 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QCOREAPPLICATION_REMOVEPOSTEDEVENTS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void removeTranslator ( QTranslator * translationFile )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_REMOVETRANSLATOR )
{
  QTranslator * par1 = (QTranslator *) _qtxhb_itemGetPtr(1);
  QCoreApplication::removeTranslator ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool sendEvent ( QObject * receiver, QEvent * event )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SENDEVENT )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QEvent * par2 = (QEvent *) _qtxhb_itemGetPtr(2);
  hb_retl( QCoreApplication::sendEvent ( par1, par2 ) );
}


/*
static void sendPostedEvents ( QObject * receiver, int event_type )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SENDPOSTEDEVENTS1 )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QCoreApplication::sendPostedEvents ( par1, (int) hb_parni(2) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void sendPostedEvents ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SENDPOSTEDEVENTS2 )
{
  QCoreApplication::sendPostedEvents (  );
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void sendPostedEvents ( QObject * receiver, int event_type )
//[2]void sendPostedEvents ()

HB_FUNC_STATIC( QCOREAPPLICATION_SENDPOSTEDEVENTS )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QCOREAPPLICATION_SENDPOSTEDEVENTS1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCOREAPPLICATION_SENDPOSTEDEVENTS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setApplicationName ( const QString & application )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETAPPLICATIONNAME )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QCoreApplication::setApplicationName ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setApplicationVersion ( const QString & version )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETAPPLICATIONVERSION )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QCoreApplication::setApplicationVersion ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setAttribute ( Qt::ApplicationAttribute attribute, bool on = true )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETATTRIBUTE )
{
  int par1 = hb_parni(1);
  QCoreApplication::setAttribute (  (Qt::ApplicationAttribute) par1, (bool) ISNIL(2)? true : hb_parl(2) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setLibraryPaths ( const QStringList & paths )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETLIBRARYPATHS )
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
  QCoreApplication::setLibraryPaths ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setOrganizationDomain ( const QString & orgDomain )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETORGANIZATIONDOMAIN )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QCoreApplication::setOrganizationDomain ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setOrganizationName ( const QString & orgName )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETORGANIZATIONNAME )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QCoreApplication::setOrganizationName ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool startingUp ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_STARTINGUP )
{
  hb_retl( QCoreApplication::startingUp (  ) );
}


/*
static bool testAttribute ( Qt::ApplicationAttribute attribute )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_TESTATTRIBUTE )
{
  int par1 = hb_parni(1);
  hb_retl( QCoreApplication::testAttribute (  (Qt::ApplicationAttribute) par1 ) );
}



/*
static QString translate(const char * context, const char * sourceText, const char * disambiguation = 0, int n = -1)
*/
HB_FUNC_STATIC( QCOREAPPLICATION_TRANSLATE )
{
  const char * par1 = hb_parc(1);
  const char * par2 = hb_parc(2);
  const char * par3 = ISNIL(3)? 0 : hb_parc(3);
  hb_retc( (const char *) QCoreApplication::translate (  (const char *) par1,  (const char *) par2,  (const char *) par3, (int) ISNIL(4)? -1 : hb_parni(4) ).toLatin1().data() );
}





#pragma ENDDUMP
