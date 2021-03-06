/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QACCESSIBLEINTERFACE

CLASS QAccessibleTableInterface

   DATA pointer
   DATA class_id INIT Class_Id_QAccessibleTableInterface
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD cellAt
   METHOD caption
   METHOD columnDescription
   METHOD columnCount
   METHOD rowCount
   METHOD selectedCellCount
   METHOD selectedColumnCount
   METHOD selectedRowCount
   METHOD rowDescription
   METHOD selectedCells
   METHOD selectedColumns
   METHOD selectedRows
   METHOD summary
   METHOD isColumnSelected
   METHOD isRowSelected
   METHOD selectRow
   METHOD selectColumn
   METHOD unselectRow
   METHOD unselectColumn
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleTableInterface
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
#include <QAccessibleTableInterface>
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
#include <QAccessibleTableInterface>
#endif
#endif


HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QAccessibleInterface *cellAt (int row, int column) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_CELLAT )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->cellAt ( (int) hb_parni(1), (int) hb_parni(2) );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
virtual QAccessibleInterface *caption() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_CAPTION )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->caption (  );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
virtual QString columnDescription(int column) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_COLUMNDESCRIPTION )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->columnDescription ( (int) hb_parni(1) ).toLatin1().data() );
  }
}


/*
virtual int columnCount() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_COLUMNCOUNT )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->columnCount (  ) );
  }
}


/*
virtual int rowCount() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_ROWCOUNT )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rowCount (  ) );
  }
}


/*
virtual int selectedCellCount() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SELECTEDCELLCOUNT )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->selectedCellCount (  ) );
  }
}


/*
virtual int selectedColumnCount() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SELECTEDCOLUMNCOUNT )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->selectedColumnCount (  ) );
  }
}


/*
virtual int selectedRowCount() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SELECTEDROWCOUNT )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->selectedRowCount (  ) );
  }
}


/*
virtual QString rowDescription(int row) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_ROWDESCRIPTION )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->rowDescription ( (int) hb_parni(1) ).toLatin1().data() );
  }
}


/*
virtual QList<QAccessibleInterface*> selectedCells() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SELECTEDCELLS )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
virtual QList<int> selectedColumns() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SELECTEDCOLUMNS )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<int> list = obj->selectedColumns (  );
    _qtxhb_convert_qlist_int_to_array ( list );
  }
}


/*
virtual QList<int> selectedRows() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SELECTEDROWS )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<int> list = obj->selectedRows (  );
    _qtxhb_convert_qlist_int_to_array ( list );
  }
}


/*
virtual QAccessibleInterface *summary() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SUMMARY )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->summary (  );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
virtual bool isColumnSelected(int column) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_ISCOLUMNSELECTED )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isColumnSelected ( (int) hb_parni(1) ) );
  }
}


/*
virtual bool isRowSelected(int row) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_ISROWSELECTED )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isRowSelected ( (int) hb_parni(1) ) );
  }
}


/*
virtual bool selectRow(int row) = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SELECTROW )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->selectRow ( (int) hb_parni(1) ) );
  }
}


/*
virtual bool selectColumn(int column) = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SELECTCOLUMN )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->selectColumn ( (int) hb_parni(1) ) );
  }
}


/*
virtual bool unselectRow(int row) = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_UNSELECTROW )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->unselectRow ( (int) hb_parni(1) ) );
  }
}


/*
virtual bool unselectColumn(int column) = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_UNSELECTCOLUMN )
{
  QAccessibleTableInterface * obj = (QAccessibleTableInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->unselectColumn ( (int) hb_parni(1) ) );
  }
}



HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_NEWFROM )
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

HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QACCESSIBLETABLEINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QACCESSIBLETABLEINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QACCESSIBLETABLEINTERFACE_SETSELFDESTRUCTION )
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