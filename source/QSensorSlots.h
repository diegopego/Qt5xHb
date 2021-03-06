/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSENSOR_H
#define SLOTSQSENSOR_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensor>
#endif


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

class SlotsQSensor: public QObject
{
  Q_OBJECT
  public:
  SlotsQSensor(QObject *parent = 0);
  ~SlotsQSensor();
  public slots:
  void busyChanged();
  void activeChanged();
  void readingChanged();
  void sensorError(int error);
  void availableSensorsChanged();
  void alwaysOnChanged();
  void dataRateChanged();
  void skipDuplicatesChanged(bool skipDuplicates);
  void axesOrientationModeChanged(QSensor::AxesOrientationMode axesOrientationMode);
  void currentOrientationChanged(int currentOrientation);
  void userOrientationChanged(int userOrientation);
  void maxBufferSizeChanged(int maxBufferSize);
  void efficientBufferSizeChanged(int efficientBufferSize);
  void bufferSizeChanged(int bufferSize);
};

#endif // SLOTSQSENSOR_H
