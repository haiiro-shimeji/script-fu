(define 
  (add-shadow-layer image) 
  (gimp-image-insert-layer
    image
    (car (gimp-layer-new
      image
      (car (gimp-image-width image))
      (car (gimp-image-height image))
      1 "shadow" 100 3
    ))
    0 -1
  )
)
(define 
  (add-light-layer image) 
  (gimp-image-insert-layer
    image
    (car (gimp-layer-new
      image
      (car (gimp-image-width image))
      (car (gimp-image-height image))
      1 "light" 100 7
    ))
    0 -1
  )
)

(script-fu-register
  "add-shadow-layer" ;func name
  "Add a shadow layer" ;menu label
  ""                     ;description
  "haiiro.shimeji"       ;author
  ""                     ;copyright notice
  "2014"                 ;date created
  ""                     ;required image type
  SF-IMAGE       "Image" 0
  )

(script-fu-register
  "add-light-layer" ;func name
  "Add a light layer" ;menu label
  ""                     ;description
  "haiiro.shimeji"       ;author
  ""                     ;copyright notice
  "2014"                 ;date created
  ""                     ;required image type
  SF-IMAGE       "Image" 0
  )
(script-fu-menu-register "add-light-layer" "<Image>/Layer")
(script-fu-menu-register "add-shadow-layer" "<Image>/Layer")
