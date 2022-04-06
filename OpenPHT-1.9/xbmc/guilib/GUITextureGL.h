/*!
\file GUITextureGL.h
\brief
*/

#ifndef GUILIB_GUITEXTUREGL_H
#define GUILIB_GUITEXTUREGL_H

#pragma once

/*
 *      Copyright (C) 2005-2012 Team XBMC
 *      http://www.xbmc.org
 *
 *  This Program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2, or (at your option)
 *  any later version.
 *
 *  This Program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with XBMC; see the file COPYING.  If not, see
 *  <http://www.gnu.org/licenses/>.
 *
 */

#include "GUITexture.h"

#include "system_gl.h"

class CGUITextureGL : public CGUITextureBase
{
public:
#ifndef __PLEX__
  CGUITextureGL(float posX, float posY, float width, float height, const CTextureInfo& texture);
#else
  CGUITextureGL(float posX, float posY, float width, float height, const CTextureInfo& texture, float minWidth=0.0f);
#endif
  static void DrawQuad(const CRect &coords, color_t color, CBaseTexture *texture = NULL, const CRect *texCoords = NULL);
protected:
  void Begin(color_t color);
  void Draw(float *x, float *y, float *z, const CRect &texture, const CRect &diffuse, int orientation);
  void End();
private:
  GLubyte m_col[4];
};

#endif
