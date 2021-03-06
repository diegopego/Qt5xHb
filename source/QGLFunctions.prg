/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QGLFunctions

   DATA pointer
   DATA class_id INIT Class_Id_QGLFunctions
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD glActiveTexture
   METHOD glAttachShader
   METHOD glBindAttribLocation
   METHOD glBindBuffer
   METHOD glBindFramebuffer
   METHOD glBindRenderbuffer
   METHOD glBlendColor
   METHOD glBlendEquation
   METHOD glBlendEquationSeparate
   METHOD glBlendFuncSeparate
   METHOD glCheckFramebufferStatus
   METHOD glClearDepthf
   METHOD glCompileShader
   METHOD glCreateProgram
   METHOD glCreateShader
   METHOD glDeleteBuffers
   METHOD glDeleteFramebuffers
   METHOD glDeleteProgram
   METHOD glDeleteRenderbuffers
   METHOD glDeleteShader
   METHOD glDepthRangef
   METHOD glDetachShader
   METHOD glDisableVertexAttribArray
   METHOD glEnableVertexAttribArray
   METHOD glFramebufferRenderbuffer
   METHOD glFramebufferTexture2D
   METHOD glGenBuffers
   METHOD glGenFramebuffers
   METHOD glGenRenderbuffers
   METHOD glGenerateMipmap
   METHOD glGetActiveAttrib
   METHOD glGetActiveUniform
   METHOD glGetAttachedShaders
   METHOD glGetAttribLocation
   METHOD glGetBufferParameteriv
   METHOD glGetFramebufferAttachmentParameteriv
   METHOD glGetProgramInfoLog
   METHOD glGetProgramiv
   METHOD glGetRenderbufferParameteriv
   METHOD glGetShaderInfoLog
   METHOD glGetShaderPrecisionFormat
   METHOD glGetShaderSource
   METHOD glGetShaderiv
   METHOD glGetUniformLocation
   METHOD glGetUniformfv
   METHOD glGetUniformiv
   METHOD glGetVertexAttribfv
   METHOD glGetVertexAttribiv
   METHOD glIsBuffer
   METHOD glIsFramebuffer
   METHOD glIsProgram
   METHOD glIsRenderbuffer
   METHOD glIsShader
   METHOD glLinkProgram
   METHOD glReleaseShaderCompiler
   METHOD glRenderbufferStorage
   METHOD glSampleCoverage
   METHOD glStencilFuncSeparate
   METHOD glStencilMaskSeparate
   METHOD glStencilOpSeparate
   METHOD glUniform1f
   METHOD glUniform1i
   METHOD glUniform2f
   METHOD glUniform2i
   METHOD glUniform3f
   METHOD glUniform3i
   METHOD glUniform4f
   METHOD glUniform4i
   METHOD glUseProgram
   METHOD glValidateProgram
   METHOD glVertexAttrib1f
   METHOD glVertexAttrib2f
   METHOD glVertexAttrib3f
   METHOD glVertexAttrib4f
   METHOD hasOpenGLFeature
   METHOD initializeGLFunctions
   METHOD openGLFeatures
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGLFunctions
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
#include <QGLFunctions>
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
#include <QGLFunctions>
#endif
#endif

/*
QGLFunctions()
*/
HB_FUNC_STATIC( QGLFUNCTIONS_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGLFunctions * o = new QGLFunctions (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGLFunctions *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QGLFunctions(const QGLContext * context)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGLContext * par1 = (QGLContext *) _qtxhb_itemGetPtr(1);
  QGLFunctions * o = new QGLFunctions ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGLFunctions *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QGLFunctions()
//[2]QGLFunctions(const QGLContext * context)

HB_FUNC_STATIC( QGLFUNCTIONS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGLFUNCTIONS_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGLCONTEXT(1) )
  {
    HB_FUNC_EXEC( QGLFUNCTIONS_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLFUNCTIONS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGLFunctions * obj = (QGLFunctions *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void glActiveTexture(GLenum texture)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLACTIVETEXTURE )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glActiveTexture ( (GLenum) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glAttachShader(GLuint program, GLuint shader)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLATTACHSHADER )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glAttachShader ( (GLuint) hb_parni(1), (GLuint) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glBindAttribLocation(GLuint program, GLuint index, const char * name)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLBINDATTRIBLOCATION )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par3 = hb_parc(3);
    obj->glBindAttribLocation ( (GLuint) hb_parni(1), (GLuint) hb_parni(2),  (const char *) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glBindBuffer(GLenum target, GLuint buffer)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLBINDBUFFER )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glBindBuffer ( (GLenum) hb_parni(1), (GLuint) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glBindFramebuffer(GLenum target, GLuint framebuffer)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLBINDFRAMEBUFFER )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glBindFramebuffer ( (GLenum) hb_parni(1), (GLuint) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glBindRenderbuffer(GLenum target, GLuint renderbuffer)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLBINDRENDERBUFFER )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glBindRenderbuffer ( (GLenum) hb_parni(1), (GLuint) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glBlendColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLBLENDCOLOR )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLclampf par1 = hb_parnd(1);
    GLclampf par2 = hb_parnd(2);
    GLclampf par3 = hb_parnd(3);
    GLclampf par4 = hb_parnd(4);
    obj->glBlendColor ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glBlendEquation(GLenum mode)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLBLENDEQUATION )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glBlendEquation ( (GLenum) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glBlendEquationSeparate(GLenum modeRGB, GLenum modeAlpha)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLBLENDEQUATIONSEPARATE )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glBlendEquationSeparate ( (GLenum) hb_parni(1), (GLenum) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glBlendFuncSeparate(GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLBLENDFUNCSEPARATE )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glBlendFuncSeparate ( (GLenum) hb_parni(1), (GLenum) hb_parni(2), (GLenum) hb_parni(3), (GLenum) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
GLenum glCheckFramebufferStatus(GLenum target)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLCHECKFRAMEBUFFERSTATUS )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->glCheckFramebufferStatus ( (GLenum) hb_parni(1) ) );
  }
}


/*
void glClearDepthf(GLclampf depth)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLCLEARDEPTHF )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLclampf par1 = hb_parnd(1);
    obj->glClearDepthf ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glCompileShader(GLuint shader)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLCOMPILESHADER )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glCompileShader ( (GLuint) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
GLuint glCreateProgram()
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLCREATEPROGRAM )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->glCreateProgram (  ) );
  }
}


/*
GLuint glCreateShader(GLenum type)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLCREATESHADER )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->glCreateShader ( (GLenum) hb_parni(1) ) );
  }
}


/*
void glDeleteBuffers(GLsizei n, const GLuint * buffers)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLDELETEBUFFERS )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const GLuint * par2 = (const GLuint *) _qtxhb_itemGetPtr(2);
    obj->glDeleteBuffers ( (GLsizei) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glDeleteFramebuffers(GLsizei n, const GLuint * framebuffers)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLDELETEFRAMEBUFFERS )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const GLuint * par2 = (const GLuint *) _qtxhb_itemGetPtr(2);
    obj->glDeleteFramebuffers ( (GLsizei) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glDeleteProgram(GLuint program)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLDELETEPROGRAM )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glDeleteProgram ( (GLuint) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glDeleteRenderbuffers(GLsizei n, const GLuint * renderbuffers)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLDELETERENDERBUFFERS )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const GLuint * par2 = (const GLuint *) _qtxhb_itemGetPtr(2);
    obj->glDeleteRenderbuffers ( (GLsizei) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glDeleteShader(GLuint shader)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLDELETESHADER )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glDeleteShader ( (GLuint) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glDepthRangef(GLclampf zNear, GLclampf zFar)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLDEPTHRANGEF )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLclampf par1 = hb_parnd(1);
    GLclampf par2 = hb_parnd(2);
    obj->glDepthRangef ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glDetachShader(GLuint program, GLuint shader)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLDETACHSHADER )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glDetachShader ( (GLuint) hb_parni(1), (GLuint) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glDisableVertexAttribArray(GLuint index)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLDISABLEVERTEXATTRIBARRAY )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glDisableVertexAttribArray ( (GLuint) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glEnableVertexAttribArray(GLuint index)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLENABLEVERTEXATTRIBARRAY )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glEnableVertexAttribArray ( (GLuint) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glFramebufferRenderbuffer(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLFRAMEBUFFERRENDERBUFFER )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glFramebufferRenderbuffer ( (GLenum) hb_parni(1), (GLenum) hb_parni(2), (GLenum) hb_parni(3), (GLuint) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glFramebufferTexture2D(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLFRAMEBUFFERTEXTURE2D )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glFramebufferTexture2D ( (GLenum) hb_parni(1), (GLenum) hb_parni(2), (GLenum) hb_parni(3), (GLuint) hb_parni(4), (GLint) hb_parni(5) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glGenBuffers(GLsizei n, GLuint * buffers)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGENBUFFERS )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLuint * par2 = (GLuint *) _qtxhb_itemGetPtr(2);
    obj->glGenBuffers ( (GLsizei) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glGenFramebuffers(GLsizei n, GLuint * framebuffers)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGENFRAMEBUFFERS )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLuint * par2 = (GLuint *) _qtxhb_itemGetPtr(2);
    obj->glGenFramebuffers ( (GLsizei) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glGenRenderbuffers(GLsizei n, GLuint * renderbuffers)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGENRENDERBUFFERS )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLuint * par2 = (GLuint *) _qtxhb_itemGetPtr(2);
    obj->glGenRenderbuffers ( (GLsizei) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glGenerateMipmap(GLenum target)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGENERATEMIPMAP )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glGenerateMipmap ( (GLenum) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glGetActiveAttrib(GLuint program, GLuint index, GLsizei bufsize, GLsizei * length, GLint * size, GLenum * type, char * name)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETACTIVEATTRIB )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLsizei * par4 = (GLsizei *) _qtxhb_itemGetPtr(4);
    GLint * par5 = (GLint *) _qtxhb_itemGetPtr(5);
    GLenum * par6 = (GLenum *) _qtxhb_itemGetPtr(6);
    char * par7 = (char *) _qtxhb_itemGetPtr(7);
    obj->glGetActiveAttrib ( (GLuint) hb_parni(1), (GLuint) hb_parni(2), (GLsizei) hb_parni(3), par4, par5, par6, par7 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glGetActiveUniform(GLuint program, GLuint index, GLsizei bufsize, GLsizei * length, GLint * size, GLenum * type, char * name)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETACTIVEUNIFORM )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLsizei * par4 = (GLsizei *) _qtxhb_itemGetPtr(4);
    GLint * par5 = (GLint *) _qtxhb_itemGetPtr(5);
    GLenum * par6 = (GLenum *) _qtxhb_itemGetPtr(6);
    char * par7 = (char *) _qtxhb_itemGetPtr(7);
    obj->glGetActiveUniform ( (GLuint) hb_parni(1), (GLuint) hb_parni(2), (GLsizei) hb_parni(3), par4, par5, par6, par7 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glGetAttachedShaders(GLuint program, GLsizei maxcount, GLsizei * count, GLuint * shaders)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETATTACHEDSHADERS )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLsizei * par3 = (GLsizei *) _qtxhb_itemGetPtr(3);
    GLuint * par4 = (GLuint *) _qtxhb_itemGetPtr(4);
    obj->glGetAttachedShaders ( (GLuint) hb_parni(1), (GLsizei) hb_parni(2), par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int glGetAttribLocation(GLuint program, const char * name)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETATTRIBLOCATION )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par2 = hb_parc(2);
    hb_retni( obj->glGetAttribLocation ( (GLuint) hb_parni(1),  (const char *) par2 ) );
  }
}


/*
void glGetBufferParameteriv(GLenum target, GLenum pname, GLint * params)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETBUFFERPARAMETERIV )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLint * par3 = (GLint *) _qtxhb_itemGetPtr(3);
    obj->glGetBufferParameteriv ( (GLenum) hb_parni(1), (GLenum) hb_parni(2), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glGetFramebufferAttachmentParameteriv(GLenum target, GLenum attachment, GLenum pname, GLint * params)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETFRAMEBUFFERATTACHMENTPARAMETERIV )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLint * par4 = (GLint *) _qtxhb_itemGetPtr(4);
    obj->glGetFramebufferAttachmentParameteriv ( (GLenum) hb_parni(1), (GLenum) hb_parni(2), (GLenum) hb_parni(3), par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glGetProgramInfoLog(GLuint program, GLsizei bufsize, GLsizei * length, char * infolog)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETPROGRAMINFOLOG )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLsizei * par3 = (GLsizei *) _qtxhb_itemGetPtr(3);
    char * par4 = (char *) _qtxhb_itemGetPtr(4);
    obj->glGetProgramInfoLog ( (GLuint) hb_parni(1), (GLsizei) hb_parni(2), par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glGetProgramiv(GLuint program, GLenum pname, GLint * params)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETPROGRAMIV )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLint * par3 = (GLint *) _qtxhb_itemGetPtr(3);
    obj->glGetProgramiv ( (GLuint) hb_parni(1), (GLenum) hb_parni(2), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glGetRenderbufferParameteriv(GLenum target, GLenum pname, GLint * params)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETRENDERBUFFERPARAMETERIV )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLint * par3 = (GLint *) _qtxhb_itemGetPtr(3);
    obj->glGetRenderbufferParameteriv ( (GLenum) hb_parni(1), (GLenum) hb_parni(2), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glGetShaderInfoLog(GLuint shader, GLsizei bufsize, GLsizei * length, char * infolog)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETSHADERINFOLOG )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLsizei * par3 = (GLsizei *) _qtxhb_itemGetPtr(3);
    char * par4 = (char *) _qtxhb_itemGetPtr(4);
    obj->glGetShaderInfoLog ( (GLuint) hb_parni(1), (GLsizei) hb_parni(2), par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glGetShaderPrecisionFormat(GLenum shadertype, GLenum precisiontype, GLint * range, GLint * precision)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETSHADERPRECISIONFORMAT )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLint * par3 = (GLint *) _qtxhb_itemGetPtr(3);
    GLint * par4 = (GLint *) _qtxhb_itemGetPtr(4);
    obj->glGetShaderPrecisionFormat ( (GLenum) hb_parni(1), (GLenum) hb_parni(2), par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glGetShaderSource(GLuint shader, GLsizei bufsize, GLsizei * length, char * source)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETSHADERSOURCE )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLsizei * par3 = (GLsizei *) _qtxhb_itemGetPtr(3);
    char * par4 = (char *) _qtxhb_itemGetPtr(4);
    obj->glGetShaderSource ( (GLuint) hb_parni(1), (GLsizei) hb_parni(2), par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glGetShaderiv(GLuint shader, GLenum pname, GLint * params)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETSHADERIV )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLint * par3 = (GLint *) _qtxhb_itemGetPtr(3);
    obj->glGetShaderiv ( (GLuint) hb_parni(1), (GLenum) hb_parni(2), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int glGetUniformLocation(GLuint program, const char * name)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETUNIFORMLOCATION )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par2 = hb_parc(2);
    hb_retni( obj->glGetUniformLocation ( (GLuint) hb_parni(1),  (const char *) par2 ) );
  }
}


/*
void glGetUniformfv(GLuint program, GLint location, GLfloat * params)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETUNIFORMFV )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLfloat * par3 = (GLfloat *) _qtxhb_itemGetPtr(3);
    obj->glGetUniformfv ( (GLuint) hb_parni(1), (GLint) hb_parni(2), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glGetUniformiv(GLuint program, GLint location, GLint * params)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETUNIFORMIV )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLint * par3 = (GLint *) _qtxhb_itemGetPtr(3);
    obj->glGetUniformiv ( (GLuint) hb_parni(1), (GLint) hb_parni(2), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void glGetVertexAttribfv(GLuint index, GLenum pname, GLfloat * params)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETVERTEXATTRIBFV )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLfloat * par3 = (GLfloat *) _qtxhb_itemGetPtr(3);
    obj->glGetVertexAttribfv ( (GLuint) hb_parni(1), (GLenum) hb_parni(2), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glGetVertexAttribiv(GLuint index, GLenum pname, GLint * params)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLGETVERTEXATTRIBIV )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLint * par3 = (GLint *) _qtxhb_itemGetPtr(3);
    obj->glGetVertexAttribiv ( (GLuint) hb_parni(1), (GLenum) hb_parni(2), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
GLboolean glIsBuffer(GLuint buffer)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLISBUFFER )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->glIsBuffer ( (GLuint) hb_parni(1) ) );
  }
}


/*
GLboolean glIsFramebuffer(GLuint framebuffer)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLISFRAMEBUFFER )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->glIsFramebuffer ( (GLuint) hb_parni(1) ) );
  }
}


/*
GLboolean glIsProgram(GLuint program)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLISPROGRAM )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->glIsProgram ( (GLuint) hb_parni(1) ) );
  }
}


/*
GLboolean glIsRenderbuffer(GLuint renderbuffer)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLISRENDERBUFFER )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->glIsRenderbuffer ( (GLuint) hb_parni(1) ) );
  }
}


/*
GLboolean glIsShader(GLuint shader)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLISSHADER )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->glIsShader ( (GLuint) hb_parni(1) ) );
  }
}


/*
void glLinkProgram(GLuint program)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLLINKPROGRAM )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glLinkProgram ( (GLuint) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glReleaseShaderCompiler()
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLRELEASESHADERCOMPILER )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glReleaseShaderCompiler (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glRenderbufferStorage(GLenum target, GLenum internalformat, GLsizei width, GLsizei height)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLRENDERBUFFERSTORAGE )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glRenderbufferStorage ( (GLenum) hb_parni(1), (GLenum) hb_parni(2), (GLsizei) hb_parni(3), (GLsizei) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glSampleCoverage(GLclampf value, GLboolean invert)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLSAMPLECOVERAGE )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLclampf par1 = hb_parnd(1);
    obj->glSampleCoverage ( par1, (GLboolean) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
void glStencilFuncSeparate(GLenum face, GLenum func, GLint ref, GLuint mask)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLSTENCILFUNCSEPARATE )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glStencilFuncSeparate ( (GLenum) hb_parni(1), (GLenum) hb_parni(2), (GLint) hb_parni(3), (GLuint) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glStencilMaskSeparate(GLenum face, GLuint mask)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLSTENCILMASKSEPARATE )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glStencilMaskSeparate ( (GLenum) hb_parni(1), (GLuint) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glStencilOpSeparate(GLenum face, GLenum fail, GLenum zfail, GLenum zpass)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLSTENCILOPSEPARATE )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glStencilOpSeparate ( (GLenum) hb_parni(1), (GLenum) hb_parni(2), (GLenum) hb_parni(3), (GLenum) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glUniform1f(GLint location, GLfloat x)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLUNIFORM1F )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLfloat par2 = hb_parnd(2);
    obj->glUniform1f ( (GLint) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void glUniform1i(GLint location, GLint x)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLUNIFORM1I )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glUniform1i ( (GLint) hb_parni(1), (GLint) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void glUniform2f(GLint location, GLfloat x, GLfloat y)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLUNIFORM2F )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLfloat par2 = hb_parnd(2);
    GLfloat par3 = hb_parnd(3);
    obj->glUniform2f ( (GLint) hb_parni(1), par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void glUniform2i(GLint location, GLint x, GLint y)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLUNIFORM2I )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glUniform2i ( (GLint) hb_parni(1), (GLint) hb_parni(2), (GLint) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void glUniform3f(GLint location, GLfloat x, GLfloat y, GLfloat z)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLUNIFORM3F )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLfloat par2 = hb_parnd(2);
    GLfloat par3 = hb_parnd(3);
    GLfloat par4 = hb_parnd(4);
    obj->glUniform3f ( (GLint) hb_parni(1), par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void glUniform3i(GLint location, GLint x, GLint y, GLint z)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLUNIFORM3I )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glUniform3i ( (GLint) hb_parni(1), (GLint) hb_parni(2), (GLint) hb_parni(3), (GLint) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void glUniform4f(GLint location, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLUNIFORM4F )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLfloat par2 = hb_parnd(2);
    GLfloat par3 = hb_parnd(3);
    GLfloat par4 = hb_parnd(4);
    GLfloat par5 = hb_parnd(5);
    obj->glUniform4f ( (GLint) hb_parni(1), par2, par3, par4, par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void glUniform4i(GLint location, GLint x, GLint y, GLint z, GLint w)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLUNIFORM4I )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glUniform4i ( (GLint) hb_parni(1), (GLint) hb_parni(2), (GLint) hb_parni(3), (GLint) hb_parni(4), (GLint) hb_parni(5) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}






/*
void glUseProgram(GLuint program)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLUSEPROGRAM )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glUseProgram ( (GLuint) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glValidateProgram(GLuint program)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLVALIDATEPROGRAM )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->glValidateProgram ( (GLuint) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void glVertexAttrib1f(GLuint indx, GLfloat x)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLVERTEXATTRIB1F )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLfloat par2 = hb_parnd(2);
    obj->glVertexAttrib1f ( (GLuint) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void glVertexAttrib2f(GLuint indx, GLfloat x, GLfloat y)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLVERTEXATTRIB2F )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLfloat par2 = hb_parnd(2);
    GLfloat par3 = hb_parnd(3);
    obj->glVertexAttrib2f ( (GLuint) hb_parni(1), par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void glVertexAttrib3f(GLuint indx, GLfloat x, GLfloat y, GLfloat z)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLVERTEXATTRIB3F )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLfloat par2 = hb_parnd(2);
    GLfloat par3 = hb_parnd(3);
    GLfloat par4 = hb_parnd(4);
    obj->glVertexAttrib3f ( (GLuint) hb_parni(1), par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void glVertexAttrib4f(GLuint indx, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_GLVERTEXATTRIB4F )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    GLfloat par2 = hb_parnd(2);
    GLfloat par3 = hb_parnd(3);
    GLfloat par4 = hb_parnd(4);
    GLfloat par5 = hb_parnd(5);
    obj->glVertexAttrib4f ( (GLuint) hb_parni(1), par2, par3, par4, par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
bool hasOpenGLFeature(QGLFunctions::OpenGLFeature feature) const
*/
HB_FUNC_STATIC( QGLFUNCTIONS_HASOPENGLFEATURE )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->hasOpenGLFeature (  (QGLFunctions::OpenGLFeature) par1 ) );
  }
}


/*
void initializeGLFunctions(const QGLContext * context = 0)
*/
HB_FUNC_STATIC( QGLFUNCTIONS_INITIALIZEGLFUNCTIONS )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QGLContext * par1 = ISNIL(1)? 0 : (const QGLContext *) _qtxhb_itemGetPtr(1);
    obj->initializeGLFunctions ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QGLFunctions::OpenGLFeatures openGLFeatures() const
*/
HB_FUNC_STATIC( QGLFUNCTIONS_OPENGLFEATURES )
{
  QGLFunctions * obj = (QGLFunctions *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->openGLFeatures (  );
    hb_retni( i );
  }
}



HB_FUNC_STATIC( QGLFUNCTIONS_NEWFROM )
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

HB_FUNC_STATIC( QGLFUNCTIONS_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QGLFUNCTIONS_NEWFROM );
}

HB_FUNC_STATIC( QGLFUNCTIONS_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QGLFUNCTIONS_NEWFROM );
}

HB_FUNC_STATIC( QGLFUNCTIONS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGLFUNCTIONS_SETSELFDESTRUCTION )
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