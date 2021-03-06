/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

/*
enum QCamera::CaptureMode
flags QCamera::CaptureModes
*/
#define QCamera_CaptureViewfinder                                    0
#define QCamera_CaptureStillImage                                    0x01
#define QCamera_CaptureVideo                                         0x02

/*
enum QCamera::Error
*/
#define QCamera_NoError                                              0
#define QCamera_CameraError                                          1
#define QCamera_InvalidRequestError                                  2
#define QCamera_ServiceMissingError                                  3
#define QCamera_NotSupportedFeatureError                             4

/*
enum QCamera::LockChangeReason
*/
#define QCamera_UserRequest                                          0
#define QCamera_LockAcquired                                         1
#define QCamera_LockFailed                                           2
#define QCamera_LockLost                                             3
#define QCamera_LockTemporaryLost                                    4

/*
enum QCamera::LockStatus
*/
#define QCamera_Unlocked                                             0
#define QCamera_Searching                                            1
#define QCamera_Locked                                               2

/*
enum QCamera::LockType
flags QCamera::LockTypes
*/
#define QCamera_NoLock                                               0
#define QCamera_LockExposure                                         0x01
#define QCamera_LockWhiteBalance                                     0x02
#define QCamera_LockFocus                                            0x04

/*
enum QCamera::State
*/
#define QCamera_UnloadedState                                        0
#define QCamera_LoadedState                                          1
#define QCamera_ActiveState                                          2

/*
enum QCamera::Status
*/
#define QCamera_ActiveStatus                                         8
#define QCamera_StartingStatus                                       6
#define QCamera_StoppingStatus                                       7
#define QCamera_StandbyStatus                                        5
#define QCamera_LoadedStatus                                         4
#define QCamera_LoadingStatus                                        2
#define QCamera_UnloadingStatus                                      3
#define QCamera_UnloadedStatus                                       1
#define QCamera_UnavailableStatus                                    0
