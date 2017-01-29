/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

/*
enum QFileDevice::FileError
*/
#define QFileDevice_NoError                                          0
#define QFileDevice_ReadError                                        1
#define QFileDevice_WriteError                                       2
#define QFileDevice_FatalError                                       3
#define QFileDevice_ResourceError                                    4
#define QFileDevice_OpenError                                        5
#define QFileDevice_AbortError                                       6
#define QFileDevice_TimeOutError                                     7
#define QFileDevice_UnspecifiedError                                 8
#define QFileDevice_RemoveError                                      9
#define QFileDevice_RenameError                                      10
#define QFileDevice_PositionError                                    11
#define QFileDevice_ResizeError                                      12
#define QFileDevice_PermissionsError                                 13
#define QFileDevice_CopyError                                        14

/*
enum QFileDevice::FileHandleFlag
flags QFileDevice::FileHandleFlags
*/
#define QFileDevice_AutoCloseHandle                                  0x0001
#define QFileDevice_DontCloseHandle                                  0

/*
enum QFileDevice::MemoryMapFlags
*/
#define QFileDevice_NoOptions                                        0

/*
enum QFileDevice::Permission
flags QFileDevice::Permissions
*/
#define QFileDevice_ReadOwner                                        0x4000
#define QFileDevice_WriteOwner                                       0x2000
#define QFileDevice_ExeOwner                                         0x1000
#define QFileDevice_ReadUser                                         0x0400
#define QFileDevice_WriteUser                                        0x0200
#define QFileDevice_ExeUser                                          0x0100
#define QFileDevice_ReadGroup                                        0x0040
#define QFileDevice_WriteGroup                                       0x0020
#define QFileDevice_ExeGroup                                         0x0010
#define QFileDevice_ReadOther                                        0x0004
#define QFileDevice_WriteOther                                       0x0002
#define QFileDevice_ExeOther                                         0x0001