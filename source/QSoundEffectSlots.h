/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSOUNDEFFECT_H
#define SLOTSQSOUNDEFFECT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QSoundEffect>

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

class SlotsQSoundEffect: public QObject
{
  Q_OBJECT
  public:
  SlotsQSoundEffect(QObject *parent = 0);
  ~SlotsQSoundEffect();
  public slots:
  void sourceChanged();
  void loopCountChanged();
  void loopsRemainingChanged();
  void volumeChanged();
  void mutedChanged();
  void loadedChanged();
  void playingChanged();
  void statusChanged();
  void categoryChanged();
};

#endif // SLOTSQSOUNDEFFECT_H
