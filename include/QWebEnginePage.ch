/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

/*
enum QWebEnginePage::WebAction
*/
#define QWebEnginePage_NoWebAction                                   -1
#define QWebEnginePage_Back                                          0
#define QWebEnginePage_Forward                                       1
#define QWebEnginePage_Stop                                          2
#define QWebEnginePage_Reload                                        3
#define QWebEnginePage_Cut                                           4
#define QWebEnginePage_Copy                                          5
#define QWebEnginePage_Paste                                         6
#define QWebEnginePage_Undo                                          7
#define QWebEnginePage_Redo                                          8
#define QWebEnginePage_SelectAll                                     9
#define QWebEnginePage_ReloadAndBypassCache                          10
#define QWebEnginePage_PasteAndMatchStyle                            11
#define QWebEnginePage_WebActionCount                                12

/*
enum QWebEnginePage::FindFlag
flags QWebEnginePage::FindFlags
*/
#define QWebEnginePage_FindBackward                                  1
#define QWebEnginePage_FindCaseSensitively                           2

/*
enum QWebEnginePage::WebWindowType
*/
#define QWebEnginePage_WebBrowserWindow                              0
#define QWebEnginePage_WebBrowserTab                                 1
#define QWebEnginePage_WebDialog                                     2

/*
enum QWebEnginePage::PermissionPolicy
*/
#define QWebEnginePage_PermissionUnknown                             0
#define QWebEnginePage_PermissionGrantedByUser                       1
#define QWebEnginePage_PermissionDeniedByUser                        2

/*
enum QWebEnginePage::Feature
*/
#define QWebEnginePage_Notifications                                 0
#define QWebEnginePage_Geolocation                                   1
#define QWebEnginePage_MediaAudioDevices                             2
#define QWebEnginePage_MediaVideoDevices                             3
#define QWebEnginePage_MediaAudioVideoDevices                        4

/*
enum QWebEnginePage::FileSelectionMode
*/
#define QWebEnginePage_FileSelectOpen                                0
#define QWebEnginePage_FileSelectOpenMultiple                        1

/*
enum QWebEnginePage::JavaScriptConsoleMessageLevel
*/
#define QWebEnginePage_InfoMessageLevel                              0
#define QWebEnginePage_WarningMessageLevel                           1
#define QWebEnginePage_ErrorMessageLevel                             2