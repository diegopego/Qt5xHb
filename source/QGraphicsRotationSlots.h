/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGRAPHICSROTATION_H
#define SLOTSQGRAPHICSROTATION_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsRotation>

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

class SlotsQGraphicsRotation: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsRotation(QObject *parent = 0);
  ~SlotsQGraphicsRotation();
  public slots:
  void angleChanged ();
  void axisChanged ();
  void originChanged ();
};

#endif // SLOTSQGRAPHICSROTATION_H
