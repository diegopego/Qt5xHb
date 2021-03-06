/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QAudioInputSelectorControl INHERIT QMediaControl

   DATA class_id INIT Class_Id_QAudioInputSelectorControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD activeInput
   METHOD availableInputs
   METHOD defaultInput
   METHOD inputDescription
   METHOD setActiveInput
   METHOD onActiveInputChanged
   METHOD onAvailableInputsChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAudioInputSelectorControl
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
#include <QAudioInputSelectorControl>
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
#include <QAudioInputSelectorControl>
#endif
#endif


HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QString activeInput() const = 0
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_ACTIVEINPUT )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->activeInput (  ).toLatin1().data() );
  }
}


/*
virtual QList<QString> availableInputs() const = 0
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_AVAILABLEINPUTS )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QString> strl = obj->availableInputs (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
virtual QString defaultInput() const = 0
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_DEFAULTINPUT )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->defaultInput (  ).toLatin1().data() );
  }
}


/*
virtual QString inputDescription(const QString & name) const = 0
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_INPUTDESCRIPTION )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->inputDescription ( par1 ).toLatin1().data() );
  }
}


/*
virtual void setActiveInput(const QString & name) = 0
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_SETACTIVEINPUT )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setActiveInput ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
