" syntax/eidos.vim
" Language: SLiM's eidos language
" Maintainer:  vsbuffalo <vsbuffalo@gmail.com>



syntax match eidosComment "//.*$"
syntax region eidosBlockComment start="/\*" end="\*/" 

syntax keyword eidosKeywords if else while do for in next break return function

syntax keyword eidosFunctions
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

"eidos number types
syntax match eidosNumber "\v<\d+>"
syntax match eidosNumber "\v<\d+\.\d+>"
syntax match eidosNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"

"eidos strings
syntax region eidosString start=/"/ skip=/\\"/ end=/"/ 

"" eidos logical types
syntax keyword eidosBoolean T F
syntax keyword eidosBoolean NULL

" Set highlights
highlight default link eidosBlockComment Comment
highlight default link eidosComment Comment
highlight default link eidosNumber Number
highlight default link eidosBoolean Boolean
highlight default link eidosKeywords Keyword
highlight default link eidosFunctions Function
highlight default link eidosString String
