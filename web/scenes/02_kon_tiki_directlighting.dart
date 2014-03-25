const String SCENE = """
Sampler "stratified" 
  "integer xsamples" [2] "integer ysamples" [2]
  "bool jitter" ["false"]

PixelFilter "mitchell"

Accelerator "grid"

LookAt 15 7.5 -15   0 0 0   0 1 0
Camera "perspective"
  "float fov" [60]

SurfaceIntegrator "directlighting"
  "integer maxdepth" [5]

WorldBegin

# ----------
# Shapes
# ----------
AttributeBegin # bluey sky, encloses the upper part of the scene and lights the scene
  Material "matte" "color Kd" [1 1 1]
  AreaLightSource "area" "color L" [0.125 0.312 0.501] "integer nsamples" [60] # clear blue sky 20000 K
  ReverseOrientation
  Translate 0 0 0
# Material "matte" "color Kd" [1 1.5 3]
  Rotate 90 1 0 0
  Shape "sphere" "float radius" [60]  "float zmax" [0]
AttributeEnd

# raft body
AttributeBegin 
  Material "matte" "color Kd" [0.8 0.7 0.5]
  Translate -5.4 0 0
  Shape "cylinder" "float radius" [0.6] "float zmax" [4.5]  "float zmin" [-6.5]
  Translate 1.2 0 0
  Shape "cylinder" "float radius" [0.6] "float zmax" [5]  "float zmin" [-7.2]
  Translate 1.2 0 0
  Shape "cylinder" "float radius" [0.6] "float zmax" [5]  "float zmin" [-7.7]
  Translate 1.2 0 0
  Shape "cylinder" "float radius" [0.6] "float zmax" [5]  "float zmin" [-8.2]
  Translate 1.2 0 0
  Shape "cylinder" "float radius" [0.6] "float zmax" [5]  "float zmin" [-8.7]
  Translate 1.2 0 0
  Shape "cylinder" "float radius" [0.6] "float zmax" [5]  "float zmin" [-8.2]
  Translate 1.2 0 0
  Shape "cylinder" "float radius" [0.6] "float zmax" [5]  "float zmin" [-7.7]
  Translate 1.2 0 0
  Shape "cylinder" "float radius" [0.6] "float zmax" [5]  "float zmin" [-7.2]
  Translate 1.2 0 0
  Shape "cylinder" "float radius" [0.6] "float zmax" [4.5]  "float zmin" [-6.5]
AttributeEnd

# cabin
AttributeBegin 
  Rotate -10 1 0 0
  Rotate 90 0 1 0
  Translate 0 1 0
  Scale 1 1.2 1
  Material "matte" "color Kd" [0.8 0.1 0.1]
  Shape "cylinder" "float radius" [2] "float zmin" [-3]  "float zmax" [3] "float phimax" [200]
AttributeEnd

# masts
AttributeBegin 
  Rotate 90 1 0 0
  Rotate -28 0 1 0
  Translate -3.8 -4 0 
  Material "matte" "color Kd" [0.8 0.7 0.5]
  Shape "cylinder" "float radius" [0.2] "float zmin" [-7.8]  "float zmax" [2.6]
AttributeEnd
AttributeBegin
  Rotate 90 1 0 0
  Rotate 28 0 1 0
  Translate 3.8 -4 0 
  Material "matte" "color Kd" [0.8 0.7 0.5]
  Shape "cylinder" "float radius" [0.2] "float zmin" [-7.8]  "float zmax" [2.6]
AttributeEnd

# sail
AttributeBegin 
  Rotate 90 0 1 0
  Translate 5.2 8 0
  Material "matte" "color Kd" [0.8 0.7 0.5]
  Shape "cylinder" "float radius" [0.1] "float zmin" [-3.8]  "float zmax" [3.8]
AttributeEnd
AttributeBegin 
  Rotate -10 1 0 0
  Rotate 90 0 1 0
  Translate 0 3 0
  Scale 1 1.2 1
  Material "matte" "color Kd" [1 1 1]
  Shape "cylinder" "float radius" [6] "float zmin" [-3.8]  "float zmax" [3.8] "float phimax" [50]
AttributeEnd

# waves
AttributeBegin
  Rotate 75 1 0 0
  Rotate 90 0 1 0
  Scale 1 1 3
  Translate -13.5 0 0
  Material "uber" "color Kd" [0 0 1] "color opacity" [.5 .5 .5] "color Kr" [0 0 1] "color Kt" [0 0 0.5] 
  Shape "cylinder" "float radius" [13] "float zmin" [-20]  "float zmax" [20] "float phimax" [40]
  Translate 1 -4 0
  Shape "cylinder" "float radius" [13] "float zmin" [-20]  "float zmax" [20] "float phimax" [40]
  Translate 1 -4 0
  Shape "cylinder" "float radius" [13] "float zmin" [-20]  "float zmax" [20] "float phimax" [40]
  Translate 1 -4 0
  Shape "cylinder" "float radius" [13] "float zmin" [-20]  "float zmax" [20] "float phimax" [40]
  Translate 1 -4 0
  Shape "cylinder" "float radius" [13] "float zmin" [-20]  "float zmax" [20] "float phimax" [40]
  Translate 1 -4 0
  Shape "cylinder" "float radius" [13] "float zmin" [-20]  "float zmax" [20] "float phimax" [40]
  Translate -6 24 0
  Shape "cylinder" "float radius" [13] "float zmin" [-20]  "float zmax" [20] "float phimax" [40]
  Translate -1 4 0
  Shape "cylinder" "float radius" [13] "float zmin" [-20]  "float zmax" [20] "float phimax" [40]
  Translate -1 4 0
  Shape "cylinder" "float radius" [13] "float zmin" [-20]  "float zmax" [20] "float phimax" [40]
  Translate -1 4 0
  Shape "cylinder" "float radius" [13] "float zmin" [-20]  "float zmax" [20] "float phimax" [40]
  Translate -1 4 0
  Shape "cylinder" "float radius" [13] "float zmin" [-20]  "float zmax" [20] "float phimax" [40]
  Translate -1 4 0
  Shape "cylinder" "float radius" [13] "float zmin" [-20]  "float zmax" [20] "float phimax" [40]
  Translate -1 4 0
  Shape "cylinder" "float radius" [13] "float zmin" [-20]  "float zmax" [20] "float phimax" [40]
  Translate -1 4 0
  Shape "cylinder" "float radius" [13] "float zmin" [-20]  "float zmax" [20] "float phimax" [40]
  Translate -1 4 0
  Shape "cylinder" "float radius" [13] "float zmin" [-20]  "float zmax" [20] "float phimax" [40]
  Translate -1 4 0
  Shape "cylinder" "float radius" [13] "float zmin" [-20]  "float zmax" [20] "float phimax" [40]
  Translate -1 4 0
  Shape "cylinder" "float radius" [13] "float zmin" [-20]  "float zmax" [20] "float phimax" [40]
  Translate -1 4 0
  Shape "cylinder" "float radius" [13] "float zmin" [-20]  "float zmax" [20] "float phimax" [40]
  Translate -1 4 0
  Shape "cylinder" "float radius" [13] "float zmin" [-20]  "float zmax" [20] "float phimax" [40]
AttributeEnd

# ----------
# Lights
# ----------
AttributeBegin # "sun" shining from the top left on the scene
  AreaLightSource "area" "color L" [4.08 3.156 2.288] "integer nsamples" [60] # 100 W Tungsten, 2600 K, 400 %
# AreaLightSource "area" "color L" [2.04 1.578 1.144] "integer nsamples" [4] # 100 W Tungsten, 2600 K, 200 %
  Rotate -40 1 0 0
  Rotate 40 0 0 1
  Translate 0 50 0
  Rotate 90 1 0 0
  Material "matte" "color Kd" [1 1 1]
  Shape "disk" "float radius" [40]
AttributeEnd
WorldEnd
""";
