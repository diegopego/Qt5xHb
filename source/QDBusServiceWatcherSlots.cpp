/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QDBusServiceWatcherSlots.h"


static SlotsQDBusServiceWatcher * s = NULL;

SlotsQDBusServiceWatcher::SlotsQDBusServiceWatcher(QObject *parent) : QObject(parent)
{
}

SlotsQDBusServiceWatcher::~SlotsQDBusServiceWatcher()
{
}

void SlotsQDBusServiceWatcher::serviceRegistered(const QString &service)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "serviceRegistered(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pservice = hb_itemPutC( NULL, (const char *) service.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pservice );
    hb_itemRelease( psender );
    hb_itemRelease( pservice );
  }
#endif
}

void SlotsQDBusServiceWatcher::serviceUnregistered(const QString &service)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "serviceUnregistered(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pservice = hb_itemPutC( NULL, (const char *) service.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pservice );
    hb_itemRelease( psender );
    hb_itemRelease( pservice );
  }
#endif
}

void SlotsQDBusServiceWatcher::serviceOwnerChanged(const QString &service, const QString &oldOwner, const QString &newOwner)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "serviceOwnerChanged(QString,QString,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pservice = hb_itemPutC( NULL, (const char *) service.toLatin1().data() );
    PHB_ITEM poldOwner = hb_itemPutC( NULL, (const char *) oldOwner.toLatin1().data() );
    PHB_ITEM pnewOwner = hb_itemPutC( NULL, (const char *) newOwner.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pservice, poldOwner, pnewOwner );
    hb_itemRelease( psender );
    hb_itemRelease( pservice );
    hb_itemRelease( poldOwner );
    hb_itemRelease( pnewOwner );
  }
#endif
}

HB_FUNC( QDBUSSERVICEWATCHER_ONSERVICEREGISTERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQDBusServiceWatcher(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "serviceRegistered(QString)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(serviceRegistered(QString)), s, SLOT(serviceRegistered(QString)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "serviceRegistered(QString)";
    ret = object->disconnect(object, SIGNAL(serviceRegistered(QString)), s, SLOT(serviceRegistered(QString)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}

HB_FUNC( QDBUSSERVICEWATCHER_ONSERVICEUNREGISTERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQDBusServiceWatcher(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "serviceUnregistered(QString)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(serviceUnregistered(QString)), s, SLOT(serviceUnregistered(QString)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "serviceUnregistered(QString)";
    ret = object->disconnect(object, SIGNAL(serviceUnregistered(QString)), s, SLOT(serviceUnregistered(QString)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}

HB_FUNC( QDBUSSERVICEWATCHER_ONSERVICEOWNERCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQDBusServiceWatcher(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "serviceOwnerChanged(QString,QString,QString)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(serviceOwnerChanged(QString,QString,QString)), s, SLOT(serviceOwnerChanged(QString,QString,QString)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "serviceOwnerChanged(QString,QString,QString)";
    ret = object->disconnect(object, SIGNAL(serviceOwnerChanged(QString,QString,QString)), s, SLOT(serviceOwnerChanged(QString,QString,QString)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}

