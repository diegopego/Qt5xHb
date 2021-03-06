/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

/*
enum QCameraImageCapture::CaptureDestination
flags QCameraImageCapture::CaptureDestinations
*/
#define QCameraImageCapture_CaptureToFile                            0x01
#define QCameraImageCapture_CaptureToBuffer                          0x02

/*
enum QCameraImageCapture::DriveMode
*/
#define QCameraImageCapture_SingleImageCapture                       0

/*
enum QCameraImageCapture::Error
*/
#define QCameraImageCapture_NoError                                  0
#define QCameraImageCapture_NotReadyError                            1
#define QCameraImageCapture_ResourceError                            2
#define QCameraImageCapture_OutOfSpaceError                          3
#define QCameraImageCapture_NotSupportedFeatureError                 4
#define QCameraImageCapture_FormatError                              5
