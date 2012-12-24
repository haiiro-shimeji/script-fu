(define 
 (quick-selection-grow image) 
 (gimp-selection-grow image 1)
)
(define 
 (quick-selection-shrink image) 
 (gimp-selection-shrink image 1)
)

(script-fu-register
 "quick-selection-grow" ;func name
 "Quick selection grow" ;menu label
 ""                     ;description
 "haiiro.shimeji"       ;author
 ""                     ;copyright notice
 "2012"                 ;date created
 ""                     ;required image type
 SF-IMAGE       "Image" 0
)

(script-fu-register
 "quick-selection-shrink" ;func name
 "Quick selection shrink" ;menu label
 ""                     ;description
 "haiiro.shimeji"       ;author
 ""                     ;copyright notice
 "2012"                 ;date created
 ""                     ;required image type
 SF-IMAGE       "Image" 0
)
