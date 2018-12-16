" syntax/edios.vim
" Language: SLiM's edios language
" Maintainer:  vsbuffalo <vsbuffalo@gmail.com>



syntax match ediosComment "//.*$"
syntax region ediosBlockComment start="/\*" end="\*/" 

syntax keyword ediosKeywords if else while do for in next break return function

syntax keyword ediosFunctions
      \ abs acos asin atan atan2 ceil cos cumProduct cumSum exp floor integerDev integerMod isFinite isInfinite isNAN log log2 log10 
      \ product round setDifference setIntersection setSymmetricDifference setUnion sin sqrt sum sumExacttan trunc
      \ cor cov max mean min pmax pmin range sd ttest var 
      \ dmvnorm dnorm rbinom rcauchy rdunif rexp rgamma rgeom rlnorm rmvnorm rnorm rpois runif rweibull 
      \ c float integer logical object rep repEach sample seq seqAlong seqLen string
      \ all any cat catn format identical ifelse match nchar order paste paste0 print rev size sort sortBy str strsplit substr unique which whichMax whichMin
      \ asFloat asInteger asLogical asString elementType isFloat isInteger isLogical isNULL isObject isString type 
      \ apply array cbind dim drop matrix matrixMult ncol nrow rbind t
      \ createDirectory deleteFile filesAtPath getwd readFile setwd writeFile writeTempFile 
      \ cmColors color2rgb heatColors hsv2rgb rainbow rgb2color rgb2hsv terrainColors 
      \ beep citation clock date defineConstant doCall executeLambda exists functionSignature getSeed license ls rm sapply setSeed source 
      \ stop suppressWarnings system time usage version 
      \ str length methodSignature propertySignature size 
      \ initializeGeneConversion initializeGenomicElement initializeGenomicElementType initializeInteractionType initializeMutationRate initializeMutationType initializeRecombinationRate initializeSex initializeSex initializeSLiMOptions initializeTreeSeq
      \ initialize fitness mateChoice mateChoice recombination interaction reproduction

"edios number types
syntax match ediosNumber "\v<\d+>"
syntax match ediosNumber "\v<\d+\.\d+>"
syntax match ediosNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"

"edios strings
syntax region ediosString start=/"/ skip=/\\"/ end=/"/ 

"" edios logical types
syntax keyword ediosBoolean T F

" Set highlights
highlight default link ediosBlockComment Comment
highlight default link ediosComment Comment
highlight default link ediosNumber Number
highlight default link ediosBoolean Boolean
highlight default link ediosKeywords Keyword
highlight default link ediosFunctions Function
highlight default link ediosString String
