/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTEXTDOCUMENT_H
#define SLOTSQTEXTDOCUMENT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QTextDocument>

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

class SlotsQTextDocument: public QObject
{
  Q_OBJECT
  public:
  SlotsQTextDocument(QObject *parent = 0);
  ~SlotsQTextDocument();
  public slots:
  void contentsChange(int from, int charsRemoves, int charsAdded);
  void contentsChanged();
  void undoAvailable(bool b);
  void redoAvailable(bool b);
  void undoCommandAdded();
  void modificationChanged(bool m);
  void cursorPositionChanged(const QTextCursor &cursor);
  void blockCountChanged(int newBlockCount);
  void documentLayoutChanged();
};

#endif // SLOTSQTEXTDOCUMENT_H
