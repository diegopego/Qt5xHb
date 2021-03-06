/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQWEBPAGE_H
#define SLOTSQWEBPAGE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QWebPage>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal ( QObject * object, QString signal );
bool Signals_is_signal_connected( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_release_codeblocks ();
void Signals_disconnect_all_signals (QObject * obj);

class SlotsQWebPage: public QObject
{
  Q_OBJECT
  public:
  SlotsQWebPage(QObject *parent = 0);
  ~SlotsQWebPage();
  public slots:
  void contentsChanged ();
  void databaseQuotaExceeded ( QWebFrame * frame, QString databaseName );
  void downloadRequested ( const QNetworkRequest & request );
  void frameCreated ( QWebFrame * frame );
  void geometryChangeRequested ( const QRect & geom );
  void linkClicked ( const QUrl & url );
  void linkHovered ( const QString & link, const QString & title, const QString & textContent );
  void loadFinished ( bool ok );
  void loadProgress ( int progress );
  void loadStarted ();
  void menuBarVisibilityChangeRequested ( bool visible );
  void microFocusChanged ();
  void printRequested ( QWebFrame * frame );
  void repaintRequested ( const QRect & dirtyRect );
  void restoreFrameStateRequested ( QWebFrame * frame );
  void saveFrameStateRequested ( QWebFrame * frame, QWebHistoryItem * item );
  void scrollRequested ( int dx, int dy, const QRect & rectToScroll );
  void selectionChanged ();
  void statusBarMessage ( const QString & text );
  void statusBarVisibilityChangeRequested ( bool visible );
  void toolBarVisibilityChangeRequested ( bool visible );
  void unsupportedContent ( QNetworkReply * reply );
  void windowCloseRequested ();
};

#endif // SLOTSQWEBPAGE_H
