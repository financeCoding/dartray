const String SCENE = """
Sampler "stratified" 
  "integer xsamples" [4] "integer ysamples" [4]
  "bool jitter" ["true"]

PixelFilter "mitchell"

LookAt 0 0 -20   0 0 1   0 1 0
Camera "perspective"
  "float fov" [60]

SurfaceIntegrator "directlighting" "string strategy" "all"


WorldBegin

# ----------
# Shapes
# ----------

AttributeBegin # bluey sky, encloses the whole scene
  Translate 0 0 0
  Material "matte" "color Kd" [0 0 1]
  Shape "sphere" "float radius" [60] 
AttributeEnd

AttributeBegin # gray sphere
  Translate 0 0 0
  Material "matte" "color Kd" [1 1 1]
  Shape "sphere" "float radius" [3] 
AttributeEnd

AttributeBegin # gray disk
  Translate 0 -3 0
  Rotate 90 1 0 0
  Material "matte" "color Kd" [1 1 1]
  Shape "disk" "float radius" [6] 
AttributeEnd

AttributeBegin # yellow ball
  Translate 6 6 -4
  Material "matte" "color Kd" [1 1 0]
  Shape "sphere" "float radius" [1]
AttributeEnd

AttributeBegin # cyan ball
  Translate -6 -2 -3
  Material "matte" "color Kd" [0 1 1]
  Shape "sphere" "float radius" [1]
AttributeEnd

AttributeBegin # blue ball
  Translate 4.5 0 -4.5
  Material "matte" "color Kd" [0 0 1]
  Shape "sphere" "float radius" [1]
AttributeEnd

AttributeBegin # magenta ball
  Translate 4 8 -1
  Material "matte" "color Kd" [1 0 1]
  Shape "sphere" "float radius" [1]
AttributeEnd

AttributeBegin # green ball
  Translate -4 4 -1
  Material "matte" "color Kd" [0 1 0]
  Shape "sphere" "float radius" [1]
AttributeEnd

# ----------
# Lights
# ----------
AttributeBegin # area light source
  Translate -3 6 0
  Rotate 90 1 0 0
  Material "matte" "color Kd" [1 0 1]
  AreaLightSource "area" "color L" [3 3 3] "integer nsamples" [4]  
  Shape  "disk" "float radius" [5]
AttributeEnd

WorldEnd
""";