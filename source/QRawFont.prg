/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINTF
REQUEST QIMAGE
REQUEST QPAINTERPATH
REQUEST QRECTF
REQUEST QBYTEARRAY

CLASS QRawFont

   DATA pointer
   DATA class_id INIT Class_Id_QRawFont
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD swap
   METHOD familyName
   METHOD styleName
   METHOD style
   METHOD weight
   METHOD glyphIndexesForString
   METHOD advancesForGlyphIndexes1
   METHOD glyphIndexesForChars
   METHOD advancesForGlyphIndexes2
   METHOD alphaMapForGlyph
   METHOD pathForGlyph
   METHOD boundingRect
   METHOD setPixelSize
   METHOD pixelSize
   METHOD hintingPreference
   METHOD ascent
   METHOD descent
   METHOD leading
   METHOD xHeight
   METHOD averageCharWidth
   METHOD maxCharWidth
   METHOD lineThickness
   METHOD underlinePosition
   METHOD unitsPerEm
   METHOD loadFromFile
   METHOD loadFromData
   METHOD supportsCharacter1
   METHOD supportsCharacter2
   METHOD supportedWritingSystems
   METHOD fontTable
   METHOD fromFont
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRawFont
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
#include <QRawFont>
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
#include <QRawFont>
#endif
#endif

#include <QImage>

/*
QRawFont()
*/
HB_FUNC_STATIC( QRAWFONT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QRawFont * o = new QRawFont (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRawFont *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QRawFont(const QString &fileName,qreal pixelSize,QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting)
*/
HB_FUNC_STATIC( QRAWFONT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  qreal par2 = hb_parnd(2);
  int par3 = ISNIL(3)? (int) QFont::PreferDefaultHinting : hb_parni(3);
  QRawFont * o = new QRawFont ( par1, par2,  (QFont::HintingPreference) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRawFont *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QRawFont(const QByteArray &fontData,qreal pixelSize,QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting)
*/
HB_FUNC_STATIC( QRAWFONT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  qreal par2 = hb_parnd(2);
  int par3 = ISNIL(3)? (int) QFont::PreferDefaultHinting : hb_parni(3);
  QRawFont * o = new QRawFont ( *par1, par2,  (QFont::HintingPreference) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRawFont *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QRawFont(const QRawFont &other)
*/
HB_FUNC_STATIC( QRAWFONT_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QRawFont * par1 = (QRawFont *) _qtxhb_itemGetPtr(1);
  QRawFont * o = new QRawFont ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRawFont *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QRawFont()
//[2]QRawFont(const QString &fileName,qreal pixelSize,QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting)
//[3]QRawFont(const QByteArray &fontData,qreal pixelSize,QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting)
//[4]QRawFont(const QRawFont &other)

HB_FUNC_STATIC( QRAWFONT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QRAWFONT_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QRAWFONT_NEW2 );
  }
  else if( ISBETWEEN(2,3) && ISQBYTEARRAY(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QRAWFONT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQRAWFONT(1) )
  {
    HB_FUNC_EXEC( QRAWFONT_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QRAWFONT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QRAWFONT_ISVALID )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
void swap(QRawFont &other)
*/
HB_FUNC_STATIC( QRAWFONT_SWAP )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRawFont * par1 = (QRawFont *) _qtxhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString familyName() const
*/
HB_FUNC_STATIC( QRAWFONT_FAMILYNAME )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->familyName (  ).toLatin1().data() );
  }
}


/*
QString styleName() const
*/
HB_FUNC_STATIC( QRAWFONT_STYLENAME )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->styleName (  ).toLatin1().data() );
  }
}


/*
QFont::Style style() const
*/
HB_FUNC_STATIC( QRAWFONT_STYLE )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->style (  );
    hb_retni( i );
  }
}


/*
int weight() const
*/
HB_FUNC_STATIC( QRAWFONT_WEIGHT )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->weight (  ) );
  }
}


/*
QVector<quint32> glyphIndexesForString(const QString &text) const
*/
HB_FUNC_STATIC( QRAWFONT_GLYPHINDEXESFORSTRING )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVector<quint32> list = obj->glyphIndexesForString ( par1 );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
inline QVector<QPointF> advancesForGlyphIndexes(const QVector<quint32> &glyphIndexes) const
*/
HB_FUNC_STATIC( QRAWFONT_ADVANCESFORGLYPHINDEXES1 )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QVector<quint32> par1;
PHB_ITEM aValues1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aValues1);
int temp1;
for (i1=0;i1<nLen1;i1++)
{
temp1 = hb_arrayGetNI(aValues1, i1+1);
par1 << temp1;
}
    QVector<QPointF> list = obj->advancesForGlyphIndexes ( par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QPOINTF" );
    #else
    pDynSym = hb_dynsymFindName( "QPOINTF" );
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
        hb_itemPutPtr( pItem, (QPointF *) new QPointF ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
bool glyphIndexesForChars(const QChar *chars, int numChars, quint32 *glyphIndexes, int *numGlyphs) const
*/
HB_FUNC_STATIC( QRAWFONT_GLYPHINDEXESFORCHARS )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QChar * par1 = (const QChar *) _qtxhb_itemGetPtr(1);
    quint32 * par3 = (quint32 *) _qtxhb_itemGetPtr(3);
    int par4;
    hb_retl( obj->glyphIndexesForChars ( par1, (int) hb_parni(2), par3, &par4 ) );
    hb_storni( par4, 4 );
  }
}


/*
bool advancesForGlyphIndexes(const quint32 *glyphIndexes, QPointF *advances, int numGlyphs) const
*/
HB_FUNC_STATIC( QRAWFONT_ADVANCESFORGLYPHINDEXES2 )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const quint32 * par1 = (const quint32 *) _qtxhb_itemGetPtr(1);
    QPointF * par2 = (QPointF *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->advancesForGlyphIndexes ( par1, par2, (int) hb_parni(3) ) );
  }
}


/*
QImage alphaMapForGlyph(quint32 glyphIndex,AntialiasingType antialiasingType = SubPixelAntialiasing,const QTransform &transform = QTransform()) const
*/
HB_FUNC_STATIC( QRAWFONT_ALPHAMAPFORGLYPH )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QRawFont::SubPixelAntialiasing : hb_parni(2);
    QTransform par3 = ISNIL(3)? QTransform() : *(QTransform *) _qtxhb_itemGetPtr(3);
    QImage * ptr = new QImage( obj->alphaMapForGlyph ( (quint32) hb_parni(1),  (QRawFont::AntialiasingType) par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
QPainterPath pathForGlyph(quint32 glyphIndex) const
*/
HB_FUNC_STATIC( QRAWFONT_PATHFORGLYPH )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->pathForGlyph ( (quint32) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
QRectF boundingRect(quint32 glyphIndex) const
*/
HB_FUNC_STATIC( QRAWFONT_BOUNDINGRECT )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect ( (quint32) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
void setPixelSize(qreal pixelSize)
*/
HB_FUNC_STATIC( QRAWFONT_SETPIXELSIZE )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setPixelSize ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal pixelSize() const
*/
HB_FUNC_STATIC( QRAWFONT_PIXELSIZE )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->pixelSize (  ) );
  }
}


/*
QFont::HintingPreference hintingPreference() const
*/
HB_FUNC_STATIC( QRAWFONT_HINTINGPREFERENCE )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->hintingPreference (  );
    hb_retni( i );
  }
}


/*
qreal ascent() const
*/
HB_FUNC_STATIC( QRAWFONT_ASCENT )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->ascent (  ) );
  }
}


/*
qreal descent() const
*/
HB_FUNC_STATIC( QRAWFONT_DESCENT )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->descent (  ) );
  }
}


/*
qreal leading() const
*/
HB_FUNC_STATIC( QRAWFONT_LEADING )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->leading (  ) );
  }
}


/*
qreal xHeight() const
*/
HB_FUNC_STATIC( QRAWFONT_XHEIGHT )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->xHeight (  ) );
  }
}


/*
qreal averageCharWidth() const
*/
HB_FUNC_STATIC( QRAWFONT_AVERAGECHARWIDTH )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->averageCharWidth (  ) );
  }
}


/*
qreal maxCharWidth() const
*/
HB_FUNC_STATIC( QRAWFONT_MAXCHARWIDTH )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->maxCharWidth (  ) );
  }
}


/*
qreal lineThickness() const
*/
HB_FUNC_STATIC( QRAWFONT_LINETHICKNESS )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->lineThickness (  ) );
  }
}


/*
qreal underlinePosition() const
*/
HB_FUNC_STATIC( QRAWFONT_UNDERLINEPOSITION )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->underlinePosition (  ) );
  }
}


/*
qreal unitsPerEm() const
*/
HB_FUNC_STATIC( QRAWFONT_UNITSPEREM )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->unitsPerEm (  ) );
  }
}


/*
void loadFromFile(const QString &fileName,qreal pixelSize,QFont::HintingPreference hintingPreference)
*/
HB_FUNC_STATIC( QRAWFONT_LOADFROMFILE )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    qreal par2 = hb_parnd(2);
    int par3 = hb_parni(3);
    obj->loadFromFile ( par1, par2,  (QFont::HintingPreference) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void loadFromData(const QByteArray &fontData,qreal pixelSize,QFont::HintingPreference hintingPreference)
*/
HB_FUNC_STATIC( QRAWFONT_LOADFROMDATA )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    qreal par2 = hb_parnd(2);
    int par3 = hb_parni(3);
    obj->loadFromData ( *par1, par2,  (QFont::HintingPreference) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool supportsCharacter(uint ucs4) const
*/
HB_FUNC_STATIC( QRAWFONT_SUPPORTSCHARACTER1 )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->supportsCharacter ( (uint) hb_parni(1) ) );
  }
}


/*
bool supportsCharacter(QChar character) const
*/
HB_FUNC_STATIC( QRAWFONT_SUPPORTSCHARACTER2 )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QChar * par1 = (QChar *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->supportsCharacter ( *par1 ) );
  }
}


/*
QList<QFontDatabase::WritingSystem> supportedWritingSystems() const
*/
HB_FUNC_STATIC( QRAWFONT_SUPPORTEDWRITINGSYSTEMS )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QFontDatabase::WritingSystem> list = obj->supportedWritingSystems (  );
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
QByteArray fontTable(const char *tagName) const
*/
HB_FUNC_STATIC( QRAWFONT_FONTTABLE )
{
  QRawFont * obj = (QRawFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QByteArray * ptr = new QByteArray( obj->fontTable (  (const char *) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
static QRawFont fromFont(const QFont &font,QFontDatabase::WritingSystem writingSystem = QFontDatabase::Any)
*/
HB_FUNC_STATIC( QRAWFONT_FROMFONT )
{
  QFont * par1 = (QFont *) _qtxhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) QFontDatabase::Any : hb_parni(2);
  QRawFont * ptr = new QRawFont( QRawFont::fromFont ( *par1,  (QFontDatabase::WritingSystem) par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QRAWFONT", true );
}



HB_FUNC_STATIC( QRAWFONT_NEWFROM )
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

HB_FUNC_STATIC( QRAWFONT_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QRAWFONT_NEWFROM );
}

HB_FUNC_STATIC( QRAWFONT_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QRAWFONT_NEWFROM );
}

HB_FUNC_STATIC( QRAWFONT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QRAWFONT_SETSELFDESTRUCTION )
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