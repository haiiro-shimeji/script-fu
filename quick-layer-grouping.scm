(define 
    (quick-layer-grouping image drawable)
    (let*
        (
            (name (car (gimp-item-get-name drawable)))
            (group (car (gimp-layer-group-new image)))
            (layer (car (gimp-layer-copy drawable TRUE)))
        )
        (gimp-image-remove-layer image drawable)
        (gimp-item-set-name group name)
        (gimp-item-set-name layer name)
        (gimp-image-insert-layer image group 0 -1)
        (gimp-image-insert-layer image layer group 0)
    )
)

(script-fu-register
 "quick-layer-grouping" ;func name
 "Quick layer grouping" ;menu label
 ""                     ;description
 "haiiro.shimeji"       ;author
 ""                     ;copyright notice
 "2012"                 ;date created
 ""                     ;required image type
 SF-IMAGE       "Image" 0
 SF-DRAWABLE    "Drawable" 0
)
(script-fu-menu-register "quick-layer-grouping" "<Image>/Layer")
