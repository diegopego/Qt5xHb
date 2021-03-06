/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QOpenGLShaderProgram INHERIT QObject

   DATA class_id INIT Class_Id_QOpenGLShaderProgram
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addShader
   METHOD removeShader
   METHOD shaders
   METHOD addShaderFromSourceCode1
   METHOD addShaderFromSourceCode2
   METHOD addShaderFromSourceCode3
   METHOD addShaderFromSourceCode
   METHOD addShaderFromSourceFile
   METHOD removeAllShaders
   METHOD link
   METHOD isLinked
   METHOD log
   METHOD bind
   METHOD release
   METHOD programId
   METHOD maxGeometryOutputVertices
   METHOD setPatchVertexCount
   METHOD patchVertexCount
   METHOD hasOpenGLShaderPrograms
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOpenGLShaderProgram
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
#include <QOpenGLShaderProgram>
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
#include <QOpenGLShaderProgram>
#endif
#endif

/*
QOpenGLShaderProgram(QObject *parent = 0)
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QOpenGLShaderProgram * o = new QOpenGLShaderProgram ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLShaderProgram *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool addShader(QOpenGLShader *shader)
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADER )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLShader * par1 = (QOpenGLShader *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->addShader ( par1 ) );
  }
}


/*
void removeShader(QOpenGLShader *shader)
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_REMOVESHADER )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLShader * par1 = (QOpenGLShader *) _qtxhb_itemGetPtr(1);
    obj->removeShader ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QOpenGLShader *> shaders() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_SHADERS )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const char *source)
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE1 )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    const char * par2 = hb_parc(2);
    hb_retl( obj->addShaderFromSourceCode (  (QOpenGLShader::ShaderType) par1,  (const char *) par2 ) );
  }
}


/*
bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const QByteArray& source)
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE2 )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QByteArray * par2 = (QByteArray *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->addShaderFromSourceCode (  (QOpenGLShader::ShaderType) par1, *par2 ) );
  }
}


/*
bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const QString& source)
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE3 )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retl( obj->addShaderFromSourceCode (  (QOpenGLShader::ShaderType) par1, par2 ) );
  }
}


//[1]bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const char *source)
//[2]bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const QByteArray& source)
//[3]bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const QString& source)

HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE )
{
  // TODO: implementar
}

/*
bool addShaderFromSourceFile(QOpenGLShader::ShaderType type, const QString& fileName)
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCEFILE )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retl( obj->addShaderFromSourceFile (  (QOpenGLShader::ShaderType) par1, par2 ) );
  }
}


/*
void removeAllShaders()
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_REMOVEALLSHADERS )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeAllShaders (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool link()
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_LINK )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->link (  ) );
  }
}


/*
bool isLinked() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ISLINKED )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isLinked (  ) );
  }
}


/*
QString log() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_LOG )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->log (  ).toLatin1().data() );
  }
}


/*
bool bind()
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_BIND )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->bind (  ) );
  }
}


/*
void release()
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_RELEASE )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->release (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
GLuint programId() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_PROGRAMID )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->programId (  ) );
  }
}


/*
int maxGeometryOutputVertices() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_MAXGEOMETRYOUTPUTVERTICES )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->maxGeometryOutputVertices (  ) );
  }
}


/*
void setPatchVertexCount(int count)
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_SETPATCHVERTEXCOUNT )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPatchVertexCount ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int patchVertexCount() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_PATCHVERTEXCOUNT )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->patchVertexCount (  ) );
  }
}





































































































































/*
static bool hasOpenGLShaderPrograms(QOpenGLContext *context = 0)
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_HASOPENGLSHADERPROGRAMS )
{
  QOpenGLContext * par1 = ISNIL(1)? 0 : (QOpenGLContext *) _qtxhb_itemGetPtr(1);
  hb_retl( QOpenGLShaderProgram::hasOpenGLShaderPrograms ( par1 ) );
}



#pragma ENDDUMP
