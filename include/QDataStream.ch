/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

/*
enum QDataStream::Version
*/
#define QDataStream_Qt_1_0                                           1
#define QDataStream_Qt_2_0                                           2
#define QDataStream_Qt_2_1                                           3
#define QDataStream_Qt_3_0                                           4
#define QDataStream_Qt_3_1                                           5
#define QDataStream_Qt_3_3                                           6
#define QDataStream_Qt_4_0                                           7
#define QDataStream_Qt_4_1                                           Qt_4_0
#define QDataStream_Qt_4_2                                           8
#define QDataStream_Qt_4_3                                           9
#define QDataStream_Qt_4_4                                           10
#define QDataStream_Qt_4_5                                           11
#define QDataStream_Qt_4_6                                           12
#define QDataStream_Qt_4_7                                           Qt_4_6
#define QDataStream_Qt_4_8                                           Qt_4_7
#define QDataStream_Qt_4_9                                           Qt_4_8
#define QDataStream_Qt_5_0                                           13
#define QDataStream_Qt_5_1                                           14
#define QDataStream_Qt_5_2                                           15

/*
enum QDataStream::ByteOrder
*/
#define QDataStream_BigEndian                                        QSysInfo_BigEndian
#define QDataStream_LittleEndian                                     QSysInfo_LittleEndian

/*
enum QDataStream::Status
*/
#define QDataStream_Ok                                               0
#define QDataStream_ReadPastEnd                                      1
#define QDataStream_ReadCorruptData                                  2
#define QDataStream_WriteFailed                                      3

/*
enum QDataStream::FloatingPointPrecision
*/
#define QDataStream_SinglePrecision                                  0
#define QDataStream_DoublePrecision                                  1
