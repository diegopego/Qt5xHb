/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QCHAR
REQUEST QDATE
REQUEST QDATETIME
REQUEST QTIME

CLASS QLocale

   DATA pointer
   DATA class_id INIT Class_Id_QLocale
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD amText
   METHOD bcp47Name
   METHOD country
   METHOD createSeparatedList
   METHOD currencySymbol
   METHOD dateFormat
   METHOD dateTimeFormat
   METHOD dayName
   METHOD decimalPoint
   METHOD exponential
   METHOD firstDayOfWeek
   METHOD groupSeparator
   METHOD language
   METHOD measurementSystem
   METHOD monthName
   METHOD name
   METHOD nativeCountryName
   METHOD nativeLanguageName
   METHOD negativeSign
   METHOD numberOptions
   METHOD percent
   METHOD pmText
   METHOD positiveSign
   METHOD quoteString1
   METHOD quoteString2
   METHOD quoteString
   METHOD script
   METHOD setNumberOptions
   METHOD standaloneDayName
   METHOD standaloneMonthName
   METHOD textDirection
   METHOD timeFormat
   METHOD toCurrencyString1
   METHOD toCurrencyString2
   METHOD toCurrencyString3
   METHOD toCurrencyString4
   METHOD toCurrencyString5
   METHOD toCurrencyString6
   METHOD toCurrencyString7
   METHOD toCurrencyString8
   METHOD toCurrencyString
   METHOD toDate1
   METHOD toDate2
   METHOD toDate
   METHOD toDateTime1
   METHOD toDateTime2
   METHOD toDateTime
   METHOD toDouble
   METHOD toFloat
   METHOD toLower
   METHOD toString1
   METHOD toString2
   METHOD toString3
   METHOD toString4
   METHOD toString5
   METHOD toString6
   METHOD toString7
   METHOD toString8
   METHOD toString9
   METHOD toString10
   METHOD toString11
   METHOD toString12
   METHOD toString13
   METHOD toString14
   METHOD toString
   METHOD toTime1
   METHOD toTime2
   METHOD toTime
   METHOD toUpper
   METHOD uiLanguages
   METHOD weekdays
   METHOD zeroDigit
   METHOD c
   METHOD countryToString
   METHOD languageToString
   METHOD matchingLocales
   METHOD scriptToString
   METHOD setDefault
   METHOD system
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLocale
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
#include <QLocale>
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
#include <QLocale>
#endif
#endif

#include <QDate>
#include <QStringList>

/*
QLocale ()
*/
HB_FUNC_STATIC( QLOCALE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QLocale * o = new QLocale (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLocale *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QLocale ( const QString & name )
*/
HB_FUNC_STATIC( QLOCALE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QLocale * o = new QLocale ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLocale *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QLocale ( Language language, Country country = AnyCountry )
*/
HB_FUNC_STATIC( QLOCALE_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  int par2 = ISNIL(2)? (int) QLocale::AnyCountry : hb_parni(2);
  QLocale * o = new QLocale (  (QLocale::Language) par1,  (QLocale::Country) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLocale *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QLocale ( Language language, Script script, Country country )
*/
HB_FUNC_STATIC( QLOCALE_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  QLocale * o = new QLocale (  (QLocale::Language) par1,  (QLocale::Script) par2,  (QLocale::Country) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLocale *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QLocale ( const QLocale & other )
*/
HB_FUNC_STATIC( QLOCALE_NEW5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QLocale * par1 = (QLocale *) _qtxhb_itemGetPtr(1);
  QLocale * o = new QLocale ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLocale *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1] QLocale ()
//[2] QLocale ( const QString & name )
//[3] QLocale ( Language language, Country country = AnyCountry )
//[4] QLocale ( Language language, Script script, Country country )
//[5] QLocale ( const QLocale & other )

// TODO: resolver conflito entre [3] e [4] quando forem 2 par�metros

HB_FUNC_STATIC( QLOCALE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QLOCALE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QLOCALE_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QLOCALE_NEW3 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QLOCALE_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQLOCALE(1) )
  {
    HB_FUNC_EXEC( QLOCALE_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLOCALE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString amText () const
*/
HB_FUNC_STATIC( QLOCALE_AMTEXT )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->amText (  ).toLatin1().data() );
  }
}


/*
QString bcp47Name () const
*/
HB_FUNC_STATIC( QLOCALE_BCP47NAME )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->bcp47Name (  ).toLatin1().data() );
  }
}


/*
Country country () const
*/
HB_FUNC_STATIC( QLOCALE_COUNTRY )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->country (  );
    hb_retni( i );
  }
}


/*
QString createSeparatedList ( const QStringList & list ) const
*/
HB_FUNC_STATIC( QLOCALE_CREATESEPARATEDLIST )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
    hb_retc( (const char *) obj->createSeparatedList ( par1 ).toLatin1().data() );
  }
}


/*
QString currencySymbol ( CurrencySymbolFormat format = CurrencySymbol ) const
*/
HB_FUNC_STATIC( QLOCALE_CURRENCYSYMBOL )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QLocale::CurrencySymbol : hb_parni(1);
    hb_retc( (const char *) obj->currencySymbol (  (QLocale::CurrencySymbolFormat) par1 ).toLatin1().data() );
  }
}


/*
QString dateFormat ( FormatType format = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_DATEFORMAT )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QLocale::LongFormat : hb_parni(1);
    hb_retc( (const char *) obj->dateFormat (  (QLocale::FormatType) par1 ).toLatin1().data() );
  }
}


/*
QString dateTimeFormat ( FormatType format = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_DATETIMEFORMAT )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QLocale::LongFormat : hb_parni(1);
    hb_retc( (const char *) obj->dateTimeFormat (  (QLocale::FormatType) par1 ).toLatin1().data() );
  }
}


/*
QString dayName ( int day, FormatType type = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_DAYNAME )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    hb_retc( (const char *) obj->dayName ( (int) hb_parni(1),  (QLocale::FormatType) par2 ).toLatin1().data() );
  }
}


/*
QChar decimalPoint () const
*/
HB_FUNC_STATIC( QLOCALE_DECIMALPOINT )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QChar * ptr = new QChar( obj->decimalPoint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
QChar exponential () const
*/
HB_FUNC_STATIC( QLOCALE_EXPONENTIAL )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QChar * ptr = new QChar( obj->exponential (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
Qt::DayOfWeek firstDayOfWeek () const
*/
HB_FUNC_STATIC( QLOCALE_FIRSTDAYOFWEEK )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->firstDayOfWeek (  );
    hb_retni( i );
  }
}


/*
QChar groupSeparator () const
*/
HB_FUNC_STATIC( QLOCALE_GROUPSEPARATOR )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QChar * ptr = new QChar( obj->groupSeparator (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
Language language () const
*/
HB_FUNC_STATIC( QLOCALE_LANGUAGE )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->language (  );
    hb_retni( i );
  }
}


/*
MeasurementSystem measurementSystem () const
*/
HB_FUNC_STATIC( QLOCALE_MEASUREMENTSYSTEM )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->measurementSystem (  );
    hb_retni( i );
  }
}


/*
QString monthName ( int month, FormatType type = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_MONTHNAME )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    hb_retc( (const char *) obj->monthName ( (int) hb_parni(1),  (QLocale::FormatType) par2 ).toLatin1().data() );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QLOCALE_NAME )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}


/*
QString nativeCountryName () const
*/
HB_FUNC_STATIC( QLOCALE_NATIVECOUNTRYNAME )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->nativeCountryName (  ).toLatin1().data() );
  }
}


/*
QString nativeLanguageName () const
*/
HB_FUNC_STATIC( QLOCALE_NATIVELANGUAGENAME )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->nativeLanguageName (  ).toLatin1().data() );
  }
}


/*
QChar negativeSign () const
*/
HB_FUNC_STATIC( QLOCALE_NEGATIVESIGN )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QChar * ptr = new QChar( obj->negativeSign (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
NumberOptions numberOptions () const
*/
HB_FUNC_STATIC( QLOCALE_NUMBEROPTIONS )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->numberOptions (  );
    hb_retni( i );
  }
}


/*
QChar percent () const
*/
HB_FUNC_STATIC( QLOCALE_PERCENT )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QChar * ptr = new QChar( obj->percent (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
QString pmText () const
*/
HB_FUNC_STATIC( QLOCALE_PMTEXT )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->pmText (  ).toLatin1().data() );
  }
}


/*
QChar positiveSign () const
*/
HB_FUNC_STATIC( QLOCALE_POSITIVESIGN )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QChar * ptr = new QChar( obj->positiveSign (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
QString quoteString ( const QString & str, QuotationStyle style = StandardQuotation ) const
*/
HB_FUNC_STATIC( QLOCALE_QUOTESTRING1 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) QLocale::StandardQuotation : hb_parni(2);
    hb_retc( (const char *) obj->quoteString ( par1,  (QLocale::QuotationStyle) par2 ).toLatin1().data() );
  }
}


/*
QString quoteString ( const QStringRef & str, QuotationStyle style = StandardQuotation ) const
*/
HB_FUNC_STATIC( QLOCALE_QUOTESTRING2 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringRef * par1 = (QStringRef *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QLocale::StandardQuotation : hb_parni(2);
    hb_retc( (const char *) obj->quoteString ( *par1,  (QLocale::QuotationStyle) par2 ).toLatin1().data() );
  }
}


//[1]QString quoteString ( const QString & str, QuotationStyle style = StandardQuotation ) const
//[2]QString quoteString ( const QStringRef & str, QuotationStyle style = StandardQuotation ) const

// TODO: resolver caso do QStringRef

HB_FUNC_STATIC( QLOCALE_QUOTESTRING )
{
  HB_FUNC_EXEC( QLOCALE_QUOTESTRING1 );
}

/*
Script script () const
*/
HB_FUNC_STATIC( QLOCALE_SCRIPT )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->script (  );
    hb_retni( i );
  }
}


/*
void setNumberOptions ( NumberOptions options )
*/
HB_FUNC_STATIC( QLOCALE_SETNUMBEROPTIONS )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setNumberOptions (  (QLocale::NumberOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString standaloneDayName ( int day, FormatType type = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_STANDALONEDAYNAME )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    hb_retc( (const char *) obj->standaloneDayName ( (int) hb_parni(1),  (QLocale::FormatType) par2 ).toLatin1().data() );
  }
}


/*
QString standaloneMonthName ( int month, FormatType type = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_STANDALONEMONTHNAME )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    hb_retc( (const char *) obj->standaloneMonthName ( (int) hb_parni(1),  (QLocale::FormatType) par2 ).toLatin1().data() );
  }
}


/*
Qt::LayoutDirection textDirection () const
*/
HB_FUNC_STATIC( QLOCALE_TEXTDIRECTION )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->textDirection (  );
    hb_retni( i );
  }
}


/*
QString timeFormat ( FormatType format = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_TIMEFORMAT )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QLocale::LongFormat : hb_parni(1);
    hb_retc( (const char *) obj->timeFormat (  (QLocale::FormatType) par1 ).toLatin1().data() );
  }
}


/*
QString toCurrencyString ( qlonglong value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING1 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qlonglong par1 = hb_parnl(1);
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    hb_retc( (const char *) obj->toCurrencyString ( par1, par2 ).toLatin1().data() );
  }
}


/*
QString toCurrencyString ( short value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING2 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    hb_retc( (const char *) obj->toCurrencyString ( (short) hb_parni(1), par2 ).toLatin1().data() );
  }
}


/*
QString toCurrencyString ( ushort value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING3 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    hb_retc( (const char *) obj->toCurrencyString ( (ushort) hb_parni(1), par2 ).toLatin1().data() );
  }
}


/*
QString toCurrencyString ( int value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING4 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    hb_retc( (const char *) obj->toCurrencyString ( (int) hb_parni(1), par2 ).toLatin1().data() );
  }
}


/*
QString toCurrencyString ( uint value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING5 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    hb_retc( (const char *) obj->toCurrencyString ( (uint) hb_parni(1), par2 ).toLatin1().data() );
  }
}


/*
QString toCurrencyString ( float value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING6 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    float par1 = hb_parnd(1);
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    hb_retc( (const char *) obj->toCurrencyString ( par1, par2 ).toLatin1().data() );
  }
}


/*
QString toCurrencyString ( qulonglong value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING7 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qulonglong par1 = hb_parnl(1);
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    hb_retc( (const char *) obj->toCurrencyString ( par1, par2 ).toLatin1().data() );
  }
}


/*
QString toCurrencyString ( double value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING8 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    hb_retc( (const char *) obj->toCurrencyString ( par1, par2 ).toLatin1().data() );
  }
}


//[1]QString toCurrencyString ( qlonglong value, const QString & symbol = QString() ) const
//[2]QString toCurrencyString ( short value, const QString & symbol = QString() ) const
//[3]QString toCurrencyString ( ushort value, const QString & symbol = QString() ) const
//[4]QString toCurrencyString ( int value, const QString & symbol = QString() ) const
//[5]QString toCurrencyString ( uint value, const QString & symbol = QString() ) const
//[6]QString toCurrencyString ( float value, const QString & symbol = QString() ) const
//[7]QString toCurrencyString ( qulonglong value, const QString & symbol = QString() ) const
//[8]QString toCurrencyString ( double value, const QString & symbol = QString() ) const

// TODO: verificar se � poss�vel identificar o valor passado como par�metro

HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING )
{
}

/*
QDate toDate ( const QString & string, FormatType format = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_TODATE1 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    QDate * ptr = new QDate( obj->toDate ( par1,  (QLocale::FormatType) par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QDATE", true );
  }
}


/*
QDate toDate ( const QString & string, const QString & format ) const
*/
HB_FUNC_STATIC( QLOCALE_TODATE2 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QDate * ptr = new QDate( obj->toDate ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QDATE", true );
  }
}


//[1]QDate toDate ( const QString & string, FormatType format = LongFormat ) const
//[2]QDate toDate ( const QString & string, const QString & format ) const

HB_FUNC_STATIC( QLOCALE_TODATE )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QLOCALE_TODATE1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QLOCALE_TODATE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QDateTime toDateTime ( const QString & string, FormatType format = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_TODATETIME1 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    QDateTime * ptr = new QDateTime( obj->toDateTime ( par1,  (QLocale::FormatType) par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QDateTime toDateTime ( const QString & string, const QString & format ) const
*/
HB_FUNC_STATIC( QLOCALE_TODATETIME2 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QDateTime * ptr = new QDateTime( obj->toDateTime ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


//[1]QDateTime toDateTime ( const QString & string, FormatType format = LongFormat ) const
//[2]QDateTime toDateTime ( const QString & string, const QString & format ) const

HB_FUNC_STATIC( QLOCALE_TODATETIME )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QLOCALE_TODATETIME1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QLOCALE_TODATETIME2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
double toDouble ( const QString & s, bool * ok = 0 ) const
*/
HB_FUNC_STATIC( QLOCALE_TODOUBLE )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    bool par2;
    hb_retnd( obj->toDouble ( par1, &par2 ) );
    hb_storl( par2, 2 );
  }
}


/*
float toFloat ( const QString & s, bool * ok = 0 ) const
*/
HB_FUNC_STATIC( QLOCALE_TOFLOAT )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    bool par2;
    hb_retnd( obj->toFloat ( par1, &par2 ) );
    hb_storl( par2, 2 );
  }
}




/*
QString toLower ( const QString & str ) const
*/
HB_FUNC_STATIC( QLOCALE_TOLOWER )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->toLower ( par1 ).toLatin1().data() );
  }
}



/*
QString toString ( qlonglong i ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING1 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qlonglong par1 = hb_parnl(1);
    hb_retc( (const char *) obj->toString ( par1 ).toLatin1().data() );
  }
}


/*
QString toString ( const QDate & date, const QString & format ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING2 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDate * par1 = (QDate *) _qtxhb_itemGetPtr(1);
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retc( (const char *) obj->toString ( *par1, par2 ).toLatin1().data() );
  }
}


/*
QString toString ( const QDate & date, FormatType format = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING3 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDate * par1 = (QDate *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    hb_retc( (const char *) obj->toString ( *par1,  (QLocale::FormatType) par2 ).toLatin1().data() );
  }
}


/*
QString toString ( const QTime & time, const QString & format ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING4 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTime * par1 = (QTime *) _qtxhb_itemGetPtr(1);
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retc( (const char *) obj->toString ( *par1, par2 ).toLatin1().data() );
  }
}


/*
QString toString ( const QTime & time, FormatType format = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING5 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTime * par1 = (QTime *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    hb_retc( (const char *) obj->toString ( *par1,  (QLocale::FormatType) par2 ).toLatin1().data() );
  }
}


/*
QString toString ( const QDateTime & dateTime, FormatType format = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING6 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    hb_retc( (const char *) obj->toString ( *par1,  (QLocale::FormatType) par2 ).toLatin1().data() );
  }
}


/*
QString toString ( const QDateTime & dateTime, const QString & format ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING7 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) _qtxhb_itemGetPtr(1);
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retc( (const char *) obj->toString ( *par1, par2 ).toLatin1().data() );
  }
}


/*
QString toString ( short i ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING8 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toString ( (short) hb_parni(1) ).toLatin1().data() );
  }
}


/*
QString toString ( ushort i ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING9 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toString ( (ushort) hb_parni(1) ).toLatin1().data() );
  }
}


/*
QString toString ( int i ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING10 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toString ( (int) hb_parni(1) ).toLatin1().data() );
  }
}


/*
QString toString ( uint i ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING11 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toString ( (uint) hb_parni(1) ).toLatin1().data() );
  }
}


/*
QString toString ( float i, char f = 'g', int prec = 6 ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING12 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    float par1 = hb_parnd(1);
    char par2 = ISNIL(2)? 103 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
    hb_retc( (const char *) obj->toString ( par1, par2, (int) ISNIL(3)? 6 : hb_parni(3) ).toLatin1().data() );
  }
}


/*
QString toString ( qulonglong i ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING13 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qulonglong par1 = hb_parnl(1);
    hb_retc( (const char *) obj->toString ( par1 ).toLatin1().data() );
  }
}


/*
QString toString ( double i, char f = 'g', int prec = 6 ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING14 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    char par2 = ISNIL(2)? 103 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
    hb_retc( (const char *) obj->toString ( par1, par2, (int) ISNIL(3)? 6 : hb_parni(3) ).toLatin1().data() );
  }
}


//[01]QString toString ( qlonglong i ) const
//[02]QString toString ( const QDate & date, const QString & format ) const
//[03]QString toString ( const QDate & date, FormatType format = LongFormat ) const
//[04]QString toString ( const QTime & time, const QString & format ) const
//[05]QString toString ( const QTime & time, FormatType format = LongFormat ) const
//[06]QString toString ( const QDateTime & dateTime, FormatType format = LongFormat ) const
//[07]QString toString ( const QDateTime & dateTime, const QString & format ) const
//[08]QString toString ( short i ) const
//[09]QString toString ( ushort i ) const
//[10]QString toString ( int i ) const
//[11]QString toString ( uint i ) const
//[12]QString toString ( float i, char f = 'g', int prec = 6 ) const
//[13]QString toString ( qulonglong i ) const
//[14]QString toString ( double i, char f = 'g', int prec = 6 ) const

// TODO: implementar verifica��o dos par�metros

HB_FUNC_STATIC( QLOCALE_TOSTRING )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QLOCALE_TOSTRING10 );
  }
  else if( ISNUMPAR(2) && ISQDATE(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QLOCALE_TOSTRING2 );
  }
  else if( ISBETWEEN(1,2) && ISQDATE(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QLOCALE_TOSTRING3 );
  }
  else if( ISNUMPAR(2) && ISQTIME(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QLOCALE_TOSTRING4 );
  }
  else if( ISBETWEEN(1,2) && ISQTIME(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QLOCALE_TOSTRING5 );
  }
  else if( ISBETWEEN(1,2) && ISQDATETIME(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QLOCALE_TOSTRING6 );
  }
  else if( ISNUMPAR(2) && ISQDATETIME(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QLOCALE_TOSTRING7 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTime toTime ( const QString & string, FormatType format = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_TOTIME1 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    QTime * ptr = new QTime( obj->toTime ( par1,  (QLocale::FormatType) par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QTIME", true );
  }
}


/*
QTime toTime ( const QString & string, const QString & format ) const
*/
HB_FUNC_STATIC( QLOCALE_TOTIME2 )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QTime * ptr = new QTime( obj->toTime ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QTIME", true );
  }
}


//[1]QTime toTime ( const QString & string, FormatType format = LongFormat ) const
//[2]QTime toTime ( const QString & string, const QString & format ) const

HB_FUNC_STATIC( QLOCALE_TOTIME )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QLOCALE_TOTIME1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QLOCALE_TOTIME2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}




/*
QString toUpper ( const QString & str ) const
*/
HB_FUNC_STATIC( QLOCALE_TOUPPER )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->toUpper ( par1 ).toLatin1().data() );
  }
}


/*
QStringList uiLanguages () const
*/
HB_FUNC_STATIC( QLOCALE_UILANGUAGES )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->uiLanguages (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QList<Qt::DayOfWeek> weekdays () const
*/
HB_FUNC_STATIC( QLOCALE_WEEKDAYS )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<Qt::DayOfWeek> list = obj->weekdays (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QChar zeroDigit () const
*/
HB_FUNC_STATIC( QLOCALE_ZERODIGIT )
{
  QLocale * obj = (QLocale *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QChar * ptr = new QChar( obj->zeroDigit (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
static QLocale c ()
*/
HB_FUNC_STATIC( QLOCALE_C )
{
  QLocale * ptr = new QLocale( QLocale::c (  ) );
  _qt4xhb_createReturnClass ( ptr, "QLOCALE" );
}


/*
static QString countryToString ( Country country )
*/
HB_FUNC_STATIC( QLOCALE_COUNTRYTOSTRING )
{
  int par1 = hb_parni(1);
  hb_retc( (const char *) QLocale::countryToString (  (QLocale::Country) par1 ).toLatin1().data() );
}


/*
static QString languageToString ( Language language )
*/
HB_FUNC_STATIC( QLOCALE_LANGUAGETOSTRING )
{
  int par1 = hb_parni(1);
  hb_retc( (const char *) QLocale::languageToString (  (QLocale::Language) par1 ).toLatin1().data() );
}


/*
static QList<QLocale> matchingLocales ( QLocale::Language language, QLocale::Script script, QLocale::Country country )
*/
HB_FUNC_STATIC( QLOCALE_MATCHINGLOCALES )
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  QList<QLocale> list = QLocale::matchingLocales (  (QLocale::Language) par1,  (QLocale::Script) par2,  (QLocale::Country) par3 );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QLOCALE" );
  #else
  pDynSym = hb_dynsymFindName( "QLOCALE" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QLocale *) new QLocale ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}


/*
static QString scriptToString ( Script script )
*/
HB_FUNC_STATIC( QLOCALE_SCRIPTTOSTRING )
{
  int par1 = hb_parni(1);
  hb_retc( (const char *) QLocale::scriptToString (  (QLocale::Script) par1 ).toLatin1().data() );
}


/*
static void setDefault ( const QLocale & locale )
*/
HB_FUNC_STATIC( QLOCALE_SETDEFAULT )
{
  QLocale * par1 = (QLocale *) _qtxhb_itemGetPtr(1);
  QLocale::setDefault ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QLocale system ()
*/
HB_FUNC_STATIC( QLOCALE_SYSTEM )
{
  QLocale * ptr = new QLocale( QLocale::system (  ) );
  _qt4xhb_createReturnClass ( ptr, "QLOCALE" );
}



HB_FUNC_STATIC( QLOCALE_NEWFROM )
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

HB_FUNC_STATIC( QLOCALE_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QLOCALE_NEWFROM );
}

HB_FUNC_STATIC( QLOCALE_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QLOCALE_NEWFROM );
}

HB_FUNC_STATIC( QLOCALE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QLOCALE_SETSELFDESTRUCTION )
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