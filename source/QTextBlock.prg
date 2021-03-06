/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTLAYOUT
REQUEST QTEXTBLOCKFORMAT
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTDOCUMENT
REQUEST QTEXTLIST
REQUEST QTEXTBLOCKUSERDATA
REQUEST QTEXTDOCUMENTPRIVATE

CLASS QTextBlock

   DATA pointer
   DATA class_id INIT Class_Id_QTextBlock
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD position
   METHOD length
   METHOD contains
   METHOD layout
   METHOD clearLayout
   METHOD blockFormat
   METHOD blockFormatIndex
   METHOD charFormat
   METHOD charFormatIndex
   METHOD textDirection
   METHOD text
   METHOD document
   METHOD textList
   METHOD userData
   METHOD setUserData
   METHOD userState
   METHOD setUserState
   METHOD revision
   METHOD setRevision
   METHOD isVisible
   METHOD setVisible
   METHOD blockNumber
   METHOD firstLineNumber
   METHOD setLineCount
   METHOD lineCount
   METHOD next
   METHOD previous
   METHOD docHandle
   METHOD fragmentIndex
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextBlock
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTextBlock>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTextBlock>
#endif
#endif

/*
QTextBlock(QTextDocumentPrivate *priv, int b)
*/
HB_FUNC_STATIC( QTEXTBLOCK_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextDocumentPrivate * par1 = (QTextDocumentPrivate *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QTextBlock * o = new QTextBlock ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextBlock *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QTextBlock()
*/
HB_FUNC_STATIC( QTEXTBLOCK_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextBlock * o = new QTextBlock (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextBlock *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QTextBlock(const QTextBlock &o)
*/
HB_FUNC_STATIC( QTEXTBLOCK_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextBlock * par1 = (QTextBlock *) _qtxhb_itemGetPtr(1);
  QTextBlock * o = new QTextBlock ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextBlock *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QTextBlock(QTextDocumentPrivate *priv, int b)
//[2]QTextBlock()
//[3]QTextBlock(const QTextBlock &o)

HB_FUNC_STATIC( QTEXTBLOCK_NEW )
{
  if( ISNUMPAR(2) && ISOBJECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTEXTBLOCK_NEW1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTBLOCK_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCK(1) )
  {
    HB_FUNC_EXEC( QTEXTBLOCK_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTBLOCK_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_ISVALID )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
int position() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_POSITION )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->position (  ) );
  }
}


/*
int length() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_LENGTH )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->length (  ) );
  }
}


/*
bool contains(int position) const
*/
HB_FUNC_STATIC( QTEXTBLOCK_CONTAINS )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->contains ( (int) hb_parni(1) ) );
  }
}


/*
QTextLayout *layout() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_LAYOUT )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextLayout * ptr = obj->layout (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLAYOUT" );
  }
}


/*
void clearLayout()
*/
HB_FUNC_STATIC( QTEXTBLOCK_CLEARLAYOUT )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearLayout (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextBlockFormat blockFormat() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_BLOCKFORMAT )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlockFormat * ptr = new QTextBlockFormat( obj->blockFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCKFORMAT" );
  }
}


/*
int blockFormatIndex() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_BLOCKFORMATINDEX )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->blockFormatIndex (  ) );
  }
}


/*
QTextCharFormat charFormat() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_CHARFORMAT )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->charFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}


/*
int charFormatIndex() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_CHARFORMATINDEX )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->charFormatIndex (  ) );
  }
}


/*
Qt::LayoutDirection textDirection() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_TEXTDIRECTION )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->textDirection (  );
    hb_retni( i );
  }
}


/*
QString text() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_TEXT )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->text (  ).toLatin1().data() );
  }
}


/*
const QTextDocument *document() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_DOCUMENT )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QTextDocument * ptr = obj->document (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}


/*
QTextList *textList() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_TEXTLIST )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextList * ptr = obj->textList (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLIST" );
  }
}


/*
QTextBlockUserData *userData() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_USERDATA )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlockUserData * ptr = obj->userData (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCKUSERDATA" );
  }
}


/*
void setUserData(QTextBlockUserData *data)
*/
HB_FUNC_STATIC( QTEXTBLOCK_SETUSERDATA )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlockUserData * par1 = (QTextBlockUserData *) _qtxhb_itemGetPtr(1);
    obj->setUserData ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int userState() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_USERSTATE )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->userState (  ) );
  }
}


/*
void setUserState(int state)
*/
HB_FUNC_STATIC( QTEXTBLOCK_SETUSERSTATE )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUserState ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int revision() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_REVISION )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->revision (  ) );
  }
}


/*
void setRevision(int rev)
*/
HB_FUNC_STATIC( QTEXTBLOCK_SETREVISION )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRevision ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isVisible() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_ISVISIBLE )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isVisible (  ) );
  }
}


/*
void setVisible(bool visible)
*/
HB_FUNC_STATIC( QTEXTBLOCK_SETVISIBLE )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int blockNumber() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_BLOCKNUMBER )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->blockNumber (  ) );
  }
}


/*
int firstLineNumber() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_FIRSTLINENUMBER )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->firstLineNumber (  ) );
  }
}


/*
void setLineCount(int count)
*/
HB_FUNC_STATIC( QTEXTBLOCK_SETLINECOUNT )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLineCount ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int lineCount() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_LINECOUNT )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->lineCount (  ) );
  }
}




/*
QTextBlock next() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_NEXT )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->next (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
QTextBlock previous() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_PREVIOUS )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->previous (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
QTextDocumentPrivate *docHandle() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_DOCHANDLE )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocumentPrivate * ptr = obj->docHandle (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENTPRIVATE" );
  }
}


/*
int fragmentIndex() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_FRAGMENTINDEX )
{
  QTextBlock * obj = (QTextBlock *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->fragmentIndex (  ) );
  }
}



HB_FUNC_STATIC( QTEXTBLOCK_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTEXTBLOCK_NEWFROMOBJECT )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QTEXTBLOCK_NEWFROM );
}

HB_FUNC_STATIC( QTEXTBLOCK_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QTEXTBLOCK_NEWFROM );
}

HB_FUNC_STATIC( QTEXTBLOCK_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTBLOCK_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
