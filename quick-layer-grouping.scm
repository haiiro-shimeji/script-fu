(define 
    (quick-layer-grouping image drawable)
    (let*
        (
            (name (car (gimp-item-get-name drawable)))
            (group (car (gimp-layer-group-new image)))
            (layer (car (gimp-layer-copy drawable TRUE)))
            (parent (car (gimp-item-get-parent drawable)))
            (position (car (gimp-image-get-item-position image drawable)))
            (mode (car (gimp-layer-get-mode drawable)))
        )
        (gimp-image-remove-layer image drawable)
        (gimp-item-set-name group name)
        (gimp-layer-set-mode group mode)
        (gimp-item-set-name layer name)
        (gimp-layer-set-mode layer 0)
        (gimp-image-insert-layer image group parent position)
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
