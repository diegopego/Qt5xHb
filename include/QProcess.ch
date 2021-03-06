/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

/*
enum QProcess::ExitStatus
*/
#define QProcess_NormalExit                                          0
#define QProcess_CrashExit                                           1

/*
enum QProcess::ProcessChannel
*/
#define QProcess_StandardOutput                                      0
#define QProcess_StandardError                                       1

/*
enum QProcess::ProcessChannelMode
*/
#define QProcess_SeparateChannels                                    0
#define QProcess_MergedChannels                                      1
#define QProcess_ForwardedChannels                                   2
#define QProcess_ForwardedOutputChannel                              3
#define QProcess_ForwardedErrorChannel                               4

/*
enum QProcess::ProcessError
*/
#define QProcess_FailedToStart                                       0
#define QProcess_Crashed                                             1
#define QProcess_Timedout                                            2
#define QProcess_ReadError                                           3
#define QProcess_WriteError                                          4
#define QProcess_UnknownError                                        5

/*
enum QProcess::ProcessState
*/
#define QProcess_NotRunning                                          0
#define QProcess_Starting                                            1
#define QProcess_Running                                             2

/*
enum QProcess::InputChannelMode
*/
#define QProcess_ManagedInputChannel                                 0
#define QProcess_ForwardedInputChannel                               1
