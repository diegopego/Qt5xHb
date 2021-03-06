/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"



CLASS QSGNode

   DATA pointer
   DATA class_id INIT Class_Id_QSGNode
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD appendChildNode
   METHOD childAtIndex
   METHOD childCount
   METHOD firstChild
   METHOD flags
   METHOD insertChildNodeAfter
   METHOD insertChildNodeBefore
   METHOD isSubtreeBlocked
   METHOD lastChild
   METHOD markDirty
   METHOD nextSibling
   METHOD parent
   METHOD prependChildNode
   METHOD preprocess
   METHOD previousSibling
   METHOD removeAllChildNodes
   METHOD removeChildNode
   METHOD setFlag
   METHOD setFlags
   METHOD type
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSGNode
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
#include <QSGNode>
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
#include <QSGNode>
#endif
#endif

/*
QSGNode()
*/
HB_FUNC_STATIC( QSGNODE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSGNode * o = new QSGNode (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSGNode *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSGNODE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSGNode * obj = (QSGNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void appendChildNode(QSGNode * node)
*/
HB_FUNC_STATIC( QSGNODE_APPENDCHILDNODE )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * par1 = (QSGNode *) _qtxhb_itemGetPtr(1);
    obj->appendChildNode ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSGNode * childAtIndex(int i) const
*/
HB_FUNC_STATIC( QSGNODE_CHILDATINDEX )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * ptr = obj->childAtIndex ( (int) hb_parni(1) );
    _qt4xhb_createReturnClass ( ptr, "QSGNODE" );
  }
}


/*
int childCount() const
*/
HB_FUNC_STATIC( QSGNODE_CHILDCOUNT )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->childCount (  ) );
  }
}


/*
QSGNode * firstChild() const
*/
HB_FUNC_STATIC( QSGNODE_FIRSTCHILD )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * ptr = obj->firstChild (  );
    _qt4xhb_createReturnClass ( ptr, "QSGNODE" );
  }
}


/*
Flags flags() const
*/
HB_FUNC_STATIC( QSGNODE_FLAGS )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->flags (  );
    hb_retni( i );
  }
}


/*
void insertChildNodeAfter(QSGNode * node, QSGNode * after)
*/
HB_FUNC_STATIC( QSGNODE_INSERTCHILDNODEAFTER )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * par1 = (QSGNode *) _qtxhb_itemGetPtr(1);
    QSGNode * par2 = (QSGNode *) _qtxhb_itemGetPtr(2);
    obj->insertChildNodeAfter ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertChildNodeBefore(QSGNode * node, QSGNode * before)
*/
HB_FUNC_STATIC( QSGNODE_INSERTCHILDNODEBEFORE )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * par1 = (QSGNode *) _qtxhb_itemGetPtr(1);
    QSGNode * par2 = (QSGNode *) _qtxhb_itemGetPtr(2);
    obj->insertChildNodeBefore ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isSubtreeBlocked() const
*/
HB_FUNC_STATIC( QSGNODE_ISSUBTREEBLOCKED )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSubtreeBlocked (  ) );
  }
}


/*
QSGNode * lastChild() const
*/
HB_FUNC_STATIC( QSGNODE_LASTCHILD )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * ptr = obj->lastChild (  );
    _qt4xhb_createReturnClass ( ptr, "QSGNODE" );
  }
}


/*
void markDirty(DirtyState bits)
*/
HB_FUNC_STATIC( QSGNODE_MARKDIRTY )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->markDirty (  (QSGNode::DirtyState) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSGNode * nextSibling() const
*/
HB_FUNC_STATIC( QSGNODE_NEXTSIBLING )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * ptr = obj->nextSibling (  );
    _qt4xhb_createReturnClass ( ptr, "QSGNODE" );
  }
}


/*
QSGNode * parent() const
*/
HB_FUNC_STATIC( QSGNODE_PARENT )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * ptr = obj->parent (  );
    _qt4xhb_createReturnClass ( ptr, "QSGNODE" );
  }
}


/*
void prependChildNode(QSGNode * node)
*/
HB_FUNC_STATIC( QSGNODE_PREPENDCHILDNODE )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * par1 = (QSGNode *) _qtxhb_itemGetPtr(1);
    obj->prependChildNode ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void preprocess()
*/
HB_FUNC_STATIC( QSGNODE_PREPROCESS )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->preprocess (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSGNode * previousSibling() const
*/
HB_FUNC_STATIC( QSGNODE_PREVIOUSSIBLING )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * ptr = obj->previousSibling (  );
    _qt4xhb_createReturnClass ( ptr, "QSGNODE" );
  }
}


/*
void removeAllChildNodes()
*/
HB_FUNC_STATIC( QSGNODE_REMOVEALLCHILDNODES )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeAllChildNodes (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeChildNode(QSGNode * node)
*/
HB_FUNC_STATIC( QSGNODE_REMOVECHILDNODE )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * par1 = (QSGNode *) _qtxhb_itemGetPtr(1);
    obj->removeChildNode ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFlag(Flag f, bool enabled = true)
*/
HB_FUNC_STATIC( QSGNODE_SETFLAG )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFlag (  (QSGNode::Flag) par1, (bool) ISNIL(2)? true : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFlags(Flags f, bool enabled = true)
*/
HB_FUNC_STATIC( QSGNODE_SETFLAGS )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFlags (  (QSGNode::Flags) par1, (bool) ISNIL(2)? true : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
NodeType type() const
*/
HB_FUNC_STATIC( QSGNODE_TYPE )
{
  QSGNode * obj = (QSGNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->type (  );
    hb_retni( i );
  }
}



HB_FUNC_STATIC( QSGNODE_NEWFROM )
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

HB_FUNC_STATIC( QSGNODE_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QSGNODE_NEWFROM );
}

HB_FUNC_STATIC( QSGNODE_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QSGNODE_NEWFROM );
}

HB_FUNC_STATIC( QSGNODE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSGNODE_SETSELFDESTRUCTION )
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