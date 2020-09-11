" Vim syntax file
" Language:     Racket 5.1
" Maintainer:   Will Langstroth <will@langstroth.com>
" URL:          http://github.com/wlangstroth/vim-racket.git
" Last Change:  2011-06-08
" Description:  Contains all of the keywords in #lang racket

" Initializing:
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

" Highlight unmatched parens
syn match racketError ,[])],

if version < 600
  set iskeyword=33,35-39,42-58,60-90,94,95,97-122,126,_
else
  setlocal iskeyword=33,35-39,42-58,60-90,94,95,97-122,126,_
endif

" Forms in order of appearance at
" http://docs.racket-lang.org/reference/index.html
"
syn keyword racketSyntax module require provide quote
syn keyword racketSyntax #%datum #%expression #%top #%variable-reference #%app
syn keyword racketSyntax lambda case-lambda let let* letrec
syn keyword racketSyntax let-values let*-values let-syntax letrec-syntax
syn keyword racketSyntax let-syntaxes letrec-syntaxes letrec-syntaxes+values
syn keyword racketSyntax local shared
syn keyword racketSyntax if cond and or case define
syn keyword racketSyntax define define-values define-syntax define-syntaxes
syn keyword racketSyntax define-for-syntax define-require-syntax define-provide-syntax
syn keyword racketSyntax define-syntax-rule
syn keyword racketSyntax begin begin0 begin-for-syntax
syn keyword racketSyntax when unless
syn keyword racketSyntax set! set!-values
syn keyword racketSyntax for for/list for/vector for/hash for/hasheq for/hasheqv
syn keyword racketSyntax for/and for/or for/lists for/first
syn keyword racketSyntax for/last for/fold
syn keyword racketSyntax for* for*/list for*/vector for*/hash for*/hasheq for*/hasheqv
syn keyword racketSyntax for*/and for*/or for*/lists for*/first
syn keyword racketSyntax for*/last for*/fold
syn keyword racketSyntax for/fold/derived for*/fold/derived
syn keyword racketSyntax define-sequence-syntax :do-in do
syn keyword racketSyntax with-continuation-mark
syn keyword racketSyntax quasiquote unquote unquote-splicing quote-syntax
syn keyword racketSyntax #%top-interaction
syn keyword racketSyntax define-package open-package package-begin
syn keyword racketSyntax define* define*-values define*-syntax define*-syntaxes open*-package
syn keyword racketSyntax package? package-exported-identifiers package-original-identifiers
syn keyword racketSyntax block #%stratified-body

" lambda sign
syn match racketSyntax /\<[\u03bb]\>/

" Functions

syn keyword racketFunc boolean? not equal? eqv? eq? equal?/recur immutable?
syn keyword racketFunc true false symbol=? boolean=? false?
syn keyword racketFunc number? complex? real? rational? integer?
syn keyword racketFunc exact-integer? exact-nonnegative-integer?
syn keyword racketFunc exact-positive-integer? inexact-real?
syn keyword racketFunc fixnum? flonum? zero? positive? negative?
syn keyword racketFunc even? odd? exact? inexact?
syn keyword racketFunc inexact->exact exact->inexact

" 3.2.2 General Arithmetic

" 3.2.2.1 Arithmetic
syn keyword racketFunc + - * / quotient remainder quotient/remainder modulo
syn keyword racketFunc add1 sub1 abs max min gcd lcm round floor ceiling
syn keyword racketFunc truncate numerator denominator rationalize

" 3.2.2.2 Number Comparison
syn keyword racketFunc = < <= > >=

" 3.2.2.3 Powers and Roots
syn keyword racketFunc sqrt integer-sqrt integer-sqrt/remainder
syn keyword racketFunc expt exp log

" 3.2.2.3 Trigonometric Functions
syn keyword racketFunc sin cos tan asin acos atan

" 3.2.2.4 Complex Numbers
syn keyword racketFunc make-rectangular make-polar
syn keyword racketFunc real-part imag-part magnitude angle
syn keyword racketFunc bitwise-ior bitwise-and bitwise-xor bitwise-not
syn keyword racketFunc bitwise-bit-set? bitwise-bit-field arithmetic-shift
syn keyword racketFunc integer-length

" 3.2.2.5 Random Numbers
syn keyword racketFunc random random-seed
syn keyword racketFunc make-pseudo-random-generator pseudo-random-generator?
syn keyword racketFunc current-pseudo-random-generator pseudo-random-generator->vector
syn keyword racketFunc vector->pseudo-random-generator vector->pseudo-random-generator!

" 3.2.2.8 Number-String Conversions
syn keyword racketFunc number->string string->number real->decimal-string
syn keyword racketFunc integer->integer-bytes
syn keyword racketFunc floating-point-bytes->real real->floating-point-bytes
syn keyword racketFunc system-big-endian?

" 3.2.2.9 Extra Constants and Functions
syn keyword racketFunc pi sqr sgn conjugate sinh cosh tanh order-of-magnitude

" 3.2.3 Flonums

" 3.2.3.1 Flonum Arithmetic
syn keyword racketFunc fl+ fl- fl* fl/ flabs
syn keyword racketFunc fl= fl< fl> fl<= fl>= flmin flmax
syn keyword racketFunc flround flfloor flceiling fltruncate
syn keyword racketFunc flsin flcos fltan flasin flacos flatan
syn keyword racketFunc fllog flexp flsqrt
syn keyword racketFunc ->fl fl->exact-integer make-flrectangular
syn keyword racketFunc flreal-part flimag-part

" 3.2.3.2 Flonum Vectors
syn keyword racketFunc flvector? flvector make-flvector flvector-length
syn keyword racketFunc flvector-ref flvector-set! flvector-copy in-flvector
syn keyword racketFunc for/flvector for*/flvector
syn keyword racketFunc shared-flvector make-shared-flvector

" 3.2.4 Fixnums
syn keyword racketFunc fx+ fx- fx* fxquotient fxremainder fxmodulo fxabs
syn keyword racketFunc fxand fxior fxxor fxnot fxlshift fxrshift
syn keyword racketFunc fx= fx< fx> fx<= fx>= fxmin fxmax fx->fl fl->fx

" 3.2.4.2 Fixnum Vectors
syn keyword racketFunc fxvector? fxvector make-fxvector fxvector-length
syn keyword racketFunc fxvector-ref fxvector-set! fxvector-copy in-fxvector
syn keyword racketFunc for/fxvector for*/fxvector
syn keyword racketFunc shared-fxvector make-shared-fxvector

" 3.3 Strings
syn keyword racketFunc string? make-string string string->immutable-string string-length
syn keyword racketFunc string-ref string-set! substring string-copy string-copy!
syn keyword racketFunc string-fill! string-append string->list list->string
syn keyword racketFunc build-string string=? string<? string<=? string>? string>=?
syn keyword racketFunc string-ci=? string-ci<? string-ci<=? string-ci>? string-ci>=?
syn keyword racketFunc string-upcase string-downcase string-titlecase string-foldcase
syn keyword racketFunc string-normalize-nfd string-normalize-nfc string-normalize-nfkc 
syn keyword racketFunc string-locale=? string-locale>? string-locale<?
syn keyword racketFunc string-locale-ci=? string-locale<=?
syn keyword racketFunc string-locale-upcase string-locale-downcase
syn keyword racketFunc string-append* string-join

" 3.4 Bytestrings
syn keyword racketFunc bytes? make-bytes bytes bytes->immutable-bytes byte?
syn keyword racketFunc bytes-length bytes-ref bytes-set! subbytes bytes-copy
syn keyword racketFunc bytes-copy! bytes-fill! bytes-append bytes->list list->bytes
syn keyword racketFunc make-shared-bytes shared-bytes
syn keyword racketFunc bytes=? bytes<? bytes>?
syn keyword racketFunc bytes->string/utf-8 bytes->string/latin-1
syn keyword racketFunc string->bytes/locale string->bytes/latin-1
syn keyword racketFunc string-utf-8-length bytes-utf8-ref bytes-utf-8-index
syn keyword racketFunc bytes-open-converter bytes-close-converter
syn keyword racketFunc bytes-convert bytes-convert-end bytes-converter?
syn keyword racketFunc locale-string-encoding

" 3.5 Characters
syn keyword racketFunc char? char->integer integer->char
syn keyword racketFunc char=? char<? char<=? char>? char>=?
syn keyword racketFunc char-ci=? char-ci<? char-ci<=? char-ci>? char-ci>=?
syn keyword racketFunc char-alphabetic? char-lowercase? char-uppercase? char-title-case?
syn keyword racketFunc char-numeric? char-symbolic? char-punctuation? char-graphic?
syn keyword racketFunc char-whitespace? char-blank?
syn keyword racketFunc char-iso-control? char-general-category
syn keyword racketFunc make-known-char-range-list
syn keyword racketFunc char-upcase char-downcase char-titlecase char-foldcase

" 3.6 Symbols
syn keyword racketFunc symbol? symbol-interned? symbol-unreadable?
syn keyword racketFunc symbol->string string->symbol
syn keyword racketFunc string->uninterned-symbol string->unreadable-symbol
syn keyword racketFunc gensym

" 3.7 Regular Expressions
syn keyword racketFunc regexp? pregexp? byte-regexp? byte-pregexp?
syn keyword racketFunc regexp pregexp byte-regexp byte-pregexp
syn keyword racketFunc regexp-quote regexp-match regexp-match*
syn keyword racketFunc regexp-try-match regexp-match-positions
syn keyword racketFunc regexp-match-positions* regexp-match?
syn keyword racketFunc regexp-match-peek-positions regexp-match-peek-immediate
syn keyword racketFunc regexp-match-peek regexp-match-peek-positions*
syn keyword racketFunc regexp-match/end regexp-match-positions/end
syn keyword racketFunc regexp-match-peek-positions-immediat/end
syn keyword racketFunc regexp-split regexp-replace regexp-replace*
syn keyword racketFunc regexp-replace-quote

" 3.8 Keywords
syn keyword racketFunc keyword? keyword->string string->keyword keyword<?

" 3.9 Pairs and Lists
syn keyword racketFunc pair? null? cons car cdr null
syn keyword racketFunc list? list list* build-list length
syn keyword racketFunc list-ref list-tail append reverse map andmap ormap
syn keyword racketFunc for-each foldl foldr filter remove remq remv remove*
syn keyword racketFunc remq* remv* sort member memv memq memf
syn keyword racketFunc findf assoc assv assq assf
syn keyword racketFunc caar cadr cdar cddr caaar caadr cadar caddr cdaar
syn keyword racketFunc cddar cdddr caaaar caaadr caadar caaddr cadadr caddar
syn keyword racketFunc cadddr cdaaar cdaadr cdadar cddaar cdddar cddddr

" 3.9.7 Additional List Functions and Synonyms
" (require racket/list)
syn keyword racketFunc empty cons? empty? first rest
syn keyword racketFunc second third fourth fifth sixth seventh eighth ninth tenth
syn keyword racketFunc last last-pair make-list take drop split-at
syn keyword racketFunc take-right drop-right split-at-right add-between
syn keyword racketFunc append* flatten remove-duplicates filter-map
syn keyword racketFunc count partition append-map filter-not shuffle
syn keyword racketFunc argmin argmax make-reader-graph placeholder? make-placeholder
syn keyword racketFunc placeholder-set! placeholder-get hash-placeholder?
syn keyword racketFunc make-hash-placeholder make-hasheq-placeholder
syn keyword racketFunc make-hasheqv-placeholder make-immutable-hasheqv

" 3.10 Mutable Pairs and Lists
syn keyword racketFunc mpair? mcons mcar mcdr

" 3.11 Vectors
syn keyword racketFunc vector?  make-vector vector vector-immutable vector-length
syn keyword racketFunc vector-ref vector-set!  vector->list list->vector
syn keyword racketFunc vector->immutable-vector vector-fill!  vector-copy!
syn keyword racketFunc vector->values build-vector vector-set*!  vector-map
syn keyword racketFunc vector-map!  vector-append vector-take vector-take-right
syn keyword racketFunc vector-drop vector-drop-right vector-split-at
syn keyword racketFunc vector-split-at-right vector-copy vector-filter
syn keyword racketFunc vector-filter-not vector-count vector-argmin vector-argmax
syn keyword racketFunc vector-member vector-memv vector-memq

" 3.12 Boxes
syn keyword racketFunc box?  box box-immutable unbox set-box!

" 3.13 Hash Tables
syn keyword racketFunc hash? hash-equal? hash-eqv? hash-eq? hash-weak? hash
syn keyword racketFunc hasheq hasheqv
syn keyword racketFunc make-hash make-hasheqv make-hasheq make-weak-hash make-weak-hasheqv
syn keyword racketFunc make-weak-hasheq make-immutable-hash make-immutable-hasheqv
syn keyword racketFunc make-immutable-hasheq
syn keyword racketFunc hash-set! hash-set*! hash-set hash-set* hash-ref hash-ref!
syn keyword racketFunc hash-has-key? hash-update! hash-update hash-remove!
syn keyword racketFunc hash-remove hash-map hash-keys hash-values
syn keyword racketFunc hash->list hash-for-each hash-count
syn keyword racketFunc hash-iterate-first hash-iterate-next hash-iterate-key
syn keyword racketFunc hash-iterate-value hash-copy eq-hash-code eqv-hash-code
syn keyword racketFunc equal-hash-code equal-secondary-hash-code

" 3.15 Dictionaries
syn keyword racketFunc dict? dict-mutable? dict-can-remove-keys? dict-can-functional-set?
syn keyword racketFunc dict-set! dict-set*! dict-set dict-set* dict-has-key? dict-ref
syn keyword racketFunc dict-ref! dict-update! dict-update dict-remove! dict-remove
syn keyword racketFunc dict-map dict-for-each dict-count dict-iterate-first dict-iterate-next
syn keyword racketFunc dict-iterate-key dict-iterate-value in-dict in-dict-keys
syn keyword racketFunc in-dict-values in-dict-pairs dict-keys dict-values
syn keyword racketFunc dict->list prop: dict prop: dict/contract dict-key-contract
syn keyword racketFunc dict-value-contract dict-iter-contract make-custom-hash
syn keyword racketFunc make-immutable-custom-hash make-weak-custom-hash

" 3.16 Sets
syn keyword racketFunc set seteqv seteq set-empty? set-count set-member?
syn keyword racketFunc set-add set-remove set-union set-intersect set-subtract
syn keyword racketFunc set-symmetric-difference set=? subset? proper-subset?
syn keyword racketFunc set-map set-for-each set? set-equal? set-eqv? set-eq?
syn keyword racketFunc set/c in-set for/set for/seteq for/seteqv for*/set
syn keyword racketFunc for*/seteq for*/seteqv list->set list->seteq
syn keyword racketFunc list->seteqv set->list

" 3.17 Procedures
syn keyword racketFunc procedure? apply compose compose1 procedure-rename procedure->method
syn keyword racketFunc keyword-apply procedure-arity procedure-arity?
syn keyword racketFunc procedure-arity-includes? procedure-reduce-arity
syn keyword racketFunc procedure-keywords make-keyword-procedure
syn keyword racketFunc procedure-reduce-keyword-arity procedure-struct-type?
syn keyword racketFunc procedure-extract-target checked-procedure-check-and-extract
syn keyword racketFunc primitive? primitive-closure? primitive-result-arity
syn keyword racketFunc identity const thunk thunk* negate curry curryr

" 3.18 Void
syn keyword racketFunc void void?

syn match racketDelimiter !\<\.\>!

syn match racketSymbol    ,\k+,  contained

syn cluster racketNormal  contains=racketSyntax,racketFunc,racketDelimiter
syn cluster racketQuotedStuff  contains=racketSymbol
syn cluster racketQuotedOrNormal  contains=racketDelimiter

syn match racketConstant  ,\<\*\k\+\*\>,
syn match racketConstant  ,\<<\k\+>\>,

syn region racketQuotedStruc start="("rs=s+1 end=")"re=e-1     contains=@racketQuotedStuff,@racketQuotedOrNormal contained
syn region racketQuotedStruc start="#("rs=s+2 end=")"re=e-1    contains=@racketQuotedStuff,@racketQuotedOrNormal contained
syn region racketQuotedStruc start="\["rs=s+1 end="\]"re=e-1   contains=@racketQuotedStuff,@racketQuotedOrNormal contained
syn region racketQuotedStruc start="#\["rs=s+2 end="\]"re=e-1  contains=@racketQuotedStuff,@racketQuotedOrNormal contained

syn cluster racketQuotedStuff  add=racketQuotedStruc

" Non-quoted lists, and strings
syn region racketStruc matchgroup=Delimiter start="("rs=s+1 matchgroup=Delimiter end=")"re=e-1 contains=@racketNormal
syn region racketStruc matchgroup=Delimiter start="#("rs=s+2 matchgroup=Delimiter end=")"re=e-1 contains=@racketNormal

syn region racketStruc matchgroup=Delimiter start="\["rs=s+1 matchgroup=Delimiter end="\]"re=e-1 contains=@racketNormal
syn region racketStruc matchgroup=Delimiter start="#\["rs=s+2 matchgroup=Delimiter end="\]"re=e-1 contains=@racketNormal

" Simple literals
syn region racketString start=/\%(\\\)\@<!"/ skip=/\\[\\"]/ end=/"/

syn cluster racketNormal  add=racketError,racketConstant,racketStruc,racketString
syn cluster racketQuotedOrNormal  add=racketString

" Numbers

" anything which doesn't match the below rules, but starts with a #d, #b, #o,
" #x, #i, or #e, is an error
syn match racketNumberError         "\<#[xdobie]\k*"

syn match racketContainedNumberError   "\<#o\k*[^-+0-7delfinas#./@]"
syn match racketContainedNumberError   "\<#b\k*[^-+01delfinas#./@]"
syn match racketContainedNumberError   "\<#[ei]#[ei]"
syn match racketContainedNumberError   "\<#[xdob]#[xdob]"

" start with the simpler sorts
syn match racketNumber    "\<\(#[dobie]\)\{0,2}[-+]\?\(\d\+\|\d\+#*\.\|\d*\.\d\+\)#*\(/\d\+#*\)\?\([sdlef][-+]\?\d\+#*\)\?\>" contains=racketContainedNumberError
syn match racketNumber    "\<\(#[dobie]\)\{0,2}[-+]\?\d\+/\d\+\>" contains=racketContainedNumberError
syn match racketNumber    "\<\(#[dobie]\)\{0,2}[-+]\?\d\+/\d\+[-+]\d\+\(/\d\+\)\?i\>" contains=racketContainedNumberError

" different possible ways of expressing complex values
syn match racketNumber    "\<\(#[dobie]\)\{0,2}[-+]\(\d\+\|\d\+#*\.\|\d*\.\d\+\)#*\(/\d\+#*\)\?\([sdlef][-+]\?\d\+#*\)\?i\>" contains=racketContainedNumberError
syn match racketNumber    "\<\(#[dobie]\)\{0,2}[-+]\?\(\d\+\|\d\+#*\.\|\d*\.\d\+\)#*\(/\d\+#*\)\?\([sdlef][-+]\?\d\+#*\)\?[-+]\(\d\+\|\d\+#*\.\|\d*\.\d\+\)#*\(/\d\+#*\)\?\([sdlef][-+]\?\d\+#*\)\?i\>" contains=racketContainedNumberError
syn match racketNumber    "\<\(#[dobie]\)\{0,2}[-+]\(inf\|nan\)\.[0f][-+]\(\d\+\|\d\+#*\.\|\d*\.\d\+\)#*\(/\d\+#*\)\?\([sdlef][-+]\?\d\+#*\)\?i\>" contains=racketContainedNumberError
syn match racketNumber    "\<\(#[dobie]\)\{0,2}[-+]\?\(\d\+\|\d\+#*\.\|\d*\.\d\+\)#*\(/\d\+#*\)\?\([sdlef][-+]\?\d\+#*\)\?[-+]\(inf\|nan\)\.[0f]i\>" contains=racketContainedNumberError
syn match racketNumber    "\<\(#[dobie]\)\{0,2}[-+]\?\(\d\+\|\d\+#*\.\|\d*\.\d\+\)#*\(/\d\+#*\)\?\([sdlef][-+]\?\d\+#*\)\?@[-+]\?\(\d\+\|\d\+#*\.\|\d*\.\d\+\)#*\(/\d\+#*\)\?\([sdlef][-+]\?\d\+#*\)\?\>" contains=racketContainedNumberError
syn match racketNumber    "\<\(#[dobie]\)\{0,2}[-+]\(inf\|nan\)\.[0f]@[-+]\?\(\d\+\|\d\+#*\.\|\d*\.\d\+\)#*\(/\d\+#*\)\?\([sdlef][-+]\?\d\+#*\)\?\>" contains=racketContainedNumberError
syn match racketNumber    "\<\(#[dobie]\)\{0,2}[-+]\?\(\d\+\|\d\+#*\.\|\d*\.\d\+\)#*\(/\d\+#*\)\?\([sdlef][-+]\?\d\+#*\)\?@[-+]\(inf\|nan\)\.[0f]\>" contains=racketContainedNumberError

" hex versions of the above (separate because of the different possible exponent markers)
syn match racketNumber    "\<\(#x\|#[ei]#x\|#x#[ei]\)[-+]\?\(\x\+\|\x\+#*\.\|\x*\.\x\+\)#*\(/\x\+#*\)\?\([sl][-+]\?\x\+#*\)\?\>"
syn match racketNumber    "\<\(#x\|#[ei]#x\|#x#[ei]\)[-+]\?\x\+/\x\+\>"
syn match racketNumber    "\<\(#x\|#[ei]#x\|#x#[ei]\)[-+]\?\x\+/\x\+[-+]\x\+\(/\x\+\)\?i\>"

syn match racketNumber    "\<\(#x\|#[ei]#x\|#x#[ei]\)[-+]\(\x\+\|\x\+#*\.\|\x*\.\x\+\)#*\(/\x\+#*\)\?\([sl][-+]\?\x\+#*\)\?i\>"
syn match racketNumber    "\<\(#x\|#[ei]#x\|#x#[ei]\)[-+]\?\(\x\+\|\x\+#*\.\|\x*\.\x\+\)#*\(/\x\+#*\)\?\([sl][-+]\?\x\+#*\)\?[-+]\(\x\+\|\x\+#*\.\|\x*\.\x\+\)#*\(/\x\+#*\)\?\([sl][-+]\?\x\+#*\)\?i\>"
syn match racketNumber    "\<\(#x\|#[ei]#x\|#x#[ei]\)[-+]\(inf\|nan\)\.[0f][-+]\(\x\+\|\x\+#*\.\|\x*\.\x\+\)#*\(/\x\+#*\)\?\([sl][-+]\?\x\+#*\)\?i\>"
syn match racketNumber    "\<\(#x\|#[ei]#x\|#x#[ei]\)[-+]\?\(\x\+\|\x\+#*\.\|\x*\.\x\+\)#*\(/\x\+#*\)\?\([sl][-+]\?\x\+#*\)\?[-+]\(inf\|nan\)\.[0f]i\>"
syn match racketNumber    "\<\(#x\|#[ei]#x\|#x#[ei]\)[-+]\?\(\x\+\|\x\+#*\.\|\x*\.\x\+\)#*\(/\x\+#*\)\?\([sl][-+]\?\x\+#*\)\?@[-+]\?\(\x\+\|\x\+#*\.\|\x*\.\x\+\)#*\(/\x\+#*\)\?\([sl][-+]\?\x\+#*\)\?\>"
syn match racketNumber    "\<\(#x\|#[ei]#x\|#x#[ei]\)[-+]\(inf\|nan\)\.[0f]@[-+]\?\(\x\+\|\x\+#*\.\|\x*\.\x\+\)#*\(/\x\+#*\)\?\([sl][-+]\?\x\+#*\)\?\>"
syn match racketNumber    "\<\(#x\|#[ei]#x\|#x#[ei]\)[-+]\?\(\x\+\|\x\+#*\.\|\x*\.\x\+\)#*\(/\x\+#*\)\?\([sl][-+]\?\x\+#*\)\?@[-+]\(inf\|nan\)\.[0f]\>"

" these work for any radix
syn match racketNumber    "\<\(#[xdobie]\)\{0,2}[-+]\(inf\|nan\)\.[0f]i\?\>" contains=racketContainedNumberError
syn match racketNumber    "\<\(#[xdobie]\)\{0,2}[-+]\(inf\|nan\)\.[0f][-+]\(inf\|nan\)\.[0f]i\>" contains=racketContainedNumberError
syn match racketNumber    "\<\(#[xdobie]\)\{0,2}[-+]\(inf\|nan\)\.[0f]@[-+]\(inf\|nan\)\.[0f]\>" contains=racketContainedNumberError

syn keyword racketBoolean  #t #f #true #false #T #F

syn match racketError   "\<#\\\k*\>"
syn match racketChar    "\<#\\.\>"
syn match racketChar    "\<#\\space\>"
syn match racketChar    "\<#\\newline\>"
syn match racketChar    "\<#\\return\>"
syn match racketChar    "\<#\\null\?\>"
syn match racketChar    "\<#\\backspace\>"
syn match racketChar    "\<#\\tab\>"
syn match racketChar    "\<#\\linefeed\>"
syn match racketChar    "\<#\\vtab\>"
syn match racketChar    "\<#\\page\>"
syn match racketChar    "\<#\\rubout\>"
syn match racketChar    "\<#\\[0-7]\{1,3}\>"
syn match racketChar    "\<#\\x[0-9a-f]\{1,2}\>"
syn match racketChar    "\<#\\u[0-9a-f]\{1,6}\>"

syn cluster racketNormal  add=racketNumber,racketBoolean,racketChar
syn cluster racketQuotedOrNormal  add=racketNumber,racketBoolean,racketChar

" Command-line parsing
syn keyword racketExtFunc command-line current-command-line-arguments once-any help-labels multi once-each

syn match racketSyntax    "#lang "
syn match racketExtSyntax "#:\k\+"

syn cluster racketNormal  add=racketExtFunc,racketExtSyntax


" syntax quoting, unquoting and quasiquotation
syn region racketQuoted matchgroup=Delimiter start="['`]"rs=s+1 end=![ \t()\[\]";]!re=e-1,me=e-1 contains=@racketQuotedStuff,@racketQuotedOrNormal
syn region racketQuoted matchgroup=Delimiter start="['`]("rs=s+2 matchgroup=Delimiter end=")"re=e-1 contains=@racketQuotedStuff,@racketQuotedOrNormal
syn region racketQuoted matchgroup=Delimiter start="['`]#("rs=s+3 matchgroup=Delimiter end=")"re=e-1 contains=@racketQuotedStuff,@racketQuotedOrNormal

syn region racketUnquote matchgroup=Delimiter start="\<#,"rs=s+2 end=![ \t\[\]()";]!re=e-1,me=e-1 contained contains=@racketNormal
syn region racketUnquote matchgroup=Delimiter start="\<#,@"rs=s+3 end=![ \t\[\]()";]!re=e-1,me=e-1 contained contains=@racketNormal
syn region racketUnquote matchgroup=Delimiter start="\<#,("rs=s+3 end=")"re=e-1 contained contains=@racketNormal
syn region racketUnquote matchgroup=Delimiter start="\<#,@("rs=s+4 end=")"re=e-1 contained contains=@racketNormal
syn region racketUnquote matchgroup=Delimiter start="\<#,\["rs=s+3 end="\]"re=e-1 contained contains=@racketNormal
syn region racketUnquote matchgroup=Delimiter start="\<#,@\["rs=s+4 end="\]"re=e-1 contained contains=@racketNormal
syn region racketUnquote matchgroup=Delimiter start="\<,"rs=s+1 end=![ \t\[\]()";]!re=e-1,me=e-1 contained contains=@racketNormal
syn region racketUnquote matchgroup=Delimiter start="\<,@"rs=s+2 end=![ \t\[\]()";]!re=e-1,me=e-1 contained contains=@racketNormal
syn region racketUnquote matchgroup=Delimiter start="\<,("rs=s+2 end=")"re=e-1 contained contains=@racketNormal
syn region racketUnquote matchgroup=Delimiter start="\<,@("rs=s+3 end=")"re=e-1 contained contains=@racketNormal
syn region racketUnquote matchgroup=Delimiter start="\<,#("rs=s+3 end=")"re=e-1 contained contains=@racketNormal
syn region racketUnquote matchgroup=Delimiter start="\<,@#("rs=s+4 end=")"re=e-1 contained contains=@racketNormal
syn region racketUnquote matchgroup=Delimiter start="\<,\["rs=s+2 end="\]"re=e-1 contained contains=@racketNormal
syn region racketUnquote matchgroup=Delimiter start="\<,@\["rs=s+3 end="\]"re=e-1 contained contains=@racketNormal
syn region racketUnquote matchgroup=Delimiter start="\<,#\["rs=s+3 end="\]"re=e-1 contained contains=@racketNormal
syn region racketUnquote matchgroup=Delimiter start="\<,@#\["rs=s+4 end="\]"re=e-1 contained contains=@racketNormal

syn cluster racketQuotedStuff add=racketUnquote

syn region racketQuoted matchgroup=Delimiter start="#['`]"rs=s+2 end=![ \t()\[\]";]!re=e-1,me=e-1 contains=@racketQuotedStuff,@racketQuotedOrNormal
syn region racketQuoted matchgroup=Delimiter start="#['`]("rs=s+3 matchgroup=Delimiter end=")"re=e-1 contains=@racketQuotedStuff,@racketQuotedOrNormal

" Comments
syn match racketComment /;.*$/
syn region racketMultilineComment start=/#|/ end=/|#/ contains=racketMultilineComment

syn cluster racketNormal  add=racketQuoted,racketComment,racketMultilineComment
syn cluster racketQuotedOrNormal  add=racketComment,racketMultilineComment


" Synchronization and the wrapping up...
syn sync match matchPlace grouphere NONE "^[^ \t]"
" ... i.e. synchronize on a line that starts at the left margin

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_racket_syntax_inits")
  if version < 508
    let did_racket_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink racketSyntax             Statement
  HiLink racketFunc               Function

  HiLink racketString             String
  HiLink racketChar               Character
  HiLink racketBoolean            Boolean

  HiLink racketNumber             Number
  HiLink racketNumberError        Error
  HiLink racketContainedNumberError Error

  HiLink racketQuoted             Structure
  HiLink racketQuotedStruc        Structure
  HiLink racketSymbol             Structure

  HiLink racketDelimiter          Delimiter
  HiLink racketConstant           Constant

  HiLink racketComment            Comment
  HiLink racketMultilineComment   Comment
  HiLink racketError              Error

  HiLink racketExtSyntax          Type
  HiLink racketExtFunc            PreProc
  delcommand HiLink
endif

let b:current_syntax = "racket"