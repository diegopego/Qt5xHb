/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

/*
enum QDir::Filter
flags QDir::Filters
*/
#define QDir_Dirs                                                    0x001
#define QDir_AllDirs                                                 0x400
#define QDir_Files                                                   0x002
#define QDir_Drives                                                  0x004
#define QDir_NoSymLinks                                              0x008
#define QDir_NoDotAndDotDot                                          hb_bitor(QDir::NoDot,QDir::NoDotDot)
#define QDir_NoDot                                                   0x2000
#define QDir_NoDotDot                                                0x4000
#define QDir_AllEntries                                              hb_bitor(hb_bitor(QDir::Dirs,QDir::Files),QDir::Drives)
#define QDir_Readable                                                0x010
#define QDir_Writable                                                0x020
#define QDir_Executable                                              0x040
#define QDir_Modified                                                0x080
#define QDir_Hidden                                                  0x100
#define QDir_System                                                  0x200
#define QDir_CaseSensitive                                           0x800

/*
enum QDir::SortFlag
flags QDir::SortFlags
*/
#define QDir_Name                                                    0x00
#define QDir_Time                                                    0x01
#define QDir_Size                                                    0x02
#define QDir_Type                                                    0x80
#define QDir_Unsorted                                                0x03
#define QDir_NoSort                                                  -1
#define QDir_DirsFirst                                               0x04
#define QDir_DirsLast                                                0x20
#define QDir_Reversed                                                0x08
#define QDir_IgnoreCase                                              0x10
#define QDir_LocaleAware                                             0x40
