/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTEXTBROWSER_H
#define SLOTSQTEXTBROWSER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QTextBrowser>

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

class SlotsQTextBrowser: public QObject
{
  Q_OBJECT
  public:
  SlotsQTextBrowser(QObject *parent = 0);
  ~SlotsQTextBrowser();
  public slots:
  void anchorClicked ( const QUrl & link );
  void backwardAvailable ( bool available );
  void forwardAvailable ( bool available );
  void highlighted ( const QUrl & link );
  void highlighted ( const QString & link );
  void historyChanged ();
  void sourceChanged ( const QUrl & src );
};

#endif // SLOTSQTEXTBROWSER_H
