/****************************************************************************
 * Copyright (C) 2014 by Brendan Duncan.                                    *
 *                                                                          *
 * This file is part of DartRay.                                            *
 *                                                                          *
 * Licensed under the Apache License, Version 2.0 (the "License");          *
 * you may not use this file except in compliance with the License.         *
 * You may obtain a copy of the License at                                  *
 *                                                                          *
 * http://www.apache.org/licenses/LICENSE-2.0                               *
 *                                                                          *
 * Unless required by applicable law or agreed to in writing, software      *
 * distributed under the License is distributed on an "AS IS" BASIS,        *
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. *
 * See the License for the specific language governing permissions and      *
 * limitations under the License.                                           *
 *                                                                          *
 * This project is based on PBRT v2 ; see http://www.pbrt.org               *
 * pbrt2 source code Copyright(c) 1998-2010 Matt Pharr and Greg Humphreys.  *
 ****************************************************************************/
part of core;

class ConstantTexture<T> extends Texture {
  ConstantTexture(this.value);

  static ConstantTexture CreateSpectrum(Transform tex2world, TextureParams tp) {
    return new ConstantTexture(tp.findSpectrum("value", new Spectrum(1.0)));
  }

  static ConstantTexture CreateFloat(Transform tex2world, TextureParams tp) {
    return new ConstantTexture(tp.findFloat("value", 1.0));
  }

  evaluate(DifferentialGeometry dg) {
    return value;
  }

  T value;
}
