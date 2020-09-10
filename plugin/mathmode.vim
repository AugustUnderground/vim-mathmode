" """"""""""""""""""""""""""""""""""""
" Math Mode for Vim:
"   This plugin enables writing Math
"   Symbols LaTeX style in Vim.
" """"""""""""""""""""""""""""""""""""

" Global Variables
let g:math_mode=0
let g:math_symbols=0
let g:greek_letters=0
let g:hebrew_letters=0

" Main Toggle function for everything
function! Toggle_math_mode()
	if !g:math_mode
        let g:math_mode=1
		call Math_symbols_on()
        call Greek_letters_on()
        call Hebrew_letters_on()
	    echo "Math Mode on."
	else
        let g:math_mode=0
		call Math_symbols_off()
        call Greek_letters_off()
        call Hebrew_letters_off()
	    echo "Math Mode off."
	endif
endfunction

" Toggle Funcitons for individual use
function! Toggle_math_symbols()
	if !g:greek_letters
		call Math_symbols_on()
	else
		call Math_symbols_off()
	endif
endfunction

function! Toggle_greek_letters()
	if !g:greek_letters
		call Greek_letters_on()
	else
		call Greek_letters_off()
	endif
endfunction

function! Toggle_hebrew_letters()
	if !g:greek_letters
		call Hebrew_letters_on()
	else
		call Hebrew_letters_off()
	endif
endfunction

" Functions
function! Math_symbols_on()
    let g:math_symbols=1
    imap \freq ƒ
    imap \sum ∑
    imap \int ∫
    imap \biguplus ⊎
    imap \bigoplus ⊕
    imap \bigvee ∨
    imap \prod ∏
    imap \oint ∮
    imap \bigcap ⋂
    imap \bigotimes ⊗
    imap \bigwedge ∧
    imap \coprod ∐
    "imap \iint ∫∫
    imap \bigcup ⋃
    imap \bigodot ⊙
    imap \bigsqcup ⊔
    imap \ast ∗
    imap \pm ±
    imap \cap ∩
    imap \mp ∓
    imap \cup ∪
    imap \cdot ·
    imap \bullet •
    imap \bigcirc ©
    imap \oplus ⊕
    imap \wedge ∧
    imap \vee ∨
    imap \times ×
    imap \otimes ⊗
    imap \dagger †
    imap \div ÷
    imap \ddagger ‡
    imap \bot ⊥
    imap \intercal ᵀ
    imap \equiv ≡
    imap \leq ≤
    imap \geq ≥
    imap \neq ≠
    imap \perp ⊥
    imap \prec ≺
    imap \parallel ‖
    imap \sim ∼
    imap \subset ⊂
    imap \supseto ⊃
    imap \approx ≈
    imap \subseteq ⊆
    imap \supseteq ⊇
    imap \propto ∝
    imap \in ∈
    "imap \notin ∈
    imap \lessgtr ≶
    imap \lll ≪
    imap \ggg ≫
    imap \gtrless ≷
    imap \thickapprox ≈
    imap \varpropto ∝
    imap \therefore ∴
    imap \because ∵
    imap \nmid -
    imap \nparalle ∦
    imap \nless ≮
    imap \ngtr ≯
    imap \nprec ⊀
    imap \infty ∞
    imap \forall ∀
    imap \wp ℘
    imap \nabla ∇
    imap \exists ∃
    imap \angle ∠
    imap \partial ∂
    imap \eth ð
    imap \emptyset ∅
    imap \varnothing ∅
    imap \imath ı
    imap \jmath 
    imap \cdots ·
    imap \iiiint ∫∫∫∫
    imap \vdots .
    imap \iiint ∫∫∫
    imap \ldots .
    imap \iint ∫∫
    imap \prime ′
    imap \surd √
    imap \deg °
endfunction

function! Greek_letters_on()
	let g:greek_letters=1
    imap \alpha α
    imap \kappa κ
    imap \psi ψ
    imap \digamma z
    imap \Delta ∆
    imap \Theta Θ
    imap \beta β
    imap \lambda λ
    imap \rho ρ
    imap \varepsilon ε
    imap \Gamma Γ
    imap \Upsilon Υ
    imap \chi χ
    imap \mu μ
    imap \sigma σ
    imap \varkappa κ
    imap \Lambda Λ
    imap \Xi Ξ
    imap \delta δ
    imap \nu ν
    imap \tau τ
    imap \varphi φ
    imap \Omega Ω
    imap \epsilon ε
    imap \theta θ
    imap \varpi $
    imap \Phi Φ
    imap \eta η
    imap \omega ω
    imap \upsilon υ
    "imap \varrho %
    imap \Pi Π
    imap \gamma γ
    imap \phi φ
    imap \xi ξ
    imap \varsigma ς
    imap \Psi Ψ
    imap \iota ι
    imap \pi π
    imap \zeta ζ
    imap \vartheta θ
    imap \Sigma Σ
endfunction

function! Hebrew_letters_on()
	let g:hebrew_letters=1
    imap \aleph א
    imap \beth i
    imap \daleth k
    imap \gimel ג
endfunction

function! Math_symbols_off()
    let g:math_symbols=0
    iunmap \freq
    iunmap \sum
    iunmap \int
    iunmap \biguplus
    iunmap \bigoplus
    iunmap \bigvee
    iunmap \prod
    iunmap \oint
    iunmap \bigcap
    iunmap \bigotimes
    iunmap \bigwedge
    iunmap \coprod
    "iunmap \iint 
    iunmap \bigcup
    iunmap \bigodot
    iunmap \bigsqcup
    iunmap \ast
    iunmap \pm
    iunmap \cap
    iunmap \mp
    iunmap \cup
    iunmap \cdot
    iunmap \bullet
    iunmap \bigcirc
    iunmap \oplus
    iunmap \wedge
    iunmap \vee
    iunmap \times
    iunmap \otimes
    iunmap \dagger
    iunmap \div
    iunmap \ddagger
    iunmap \bot
    iunmap \intercal
    iunmap \equiv
    iunmap \leq
    iunmap \geq
    iunmap \neq
    iunmap \perp
    iunmap \prec
    iunmap \parallel
    iunmap \sim
    iunmap \subset
    iunmap \supseto
    iunmap \approx
    iunmap \subseteq
    iunmap \supseteq
    iunmap \propto
    iunmap \in
    "iunmap \notin
    iunmap \lessgtr
    iunmap \lll
    iunmap \ggg
    iunmap \gtrless
    iunmap \thickapprox
    iunmap \varpropto
    iunmap \therefore
    iunmap \because
    iunmap \nmid
    iunmap \nparalle
    iunmap \nless
    iunmap \ngtr
    iunmap \nprec
    iunmap \infty
    iunmap \forall
    iunmap \wp
    iunmap \nabla
    iunmap \exists
    iunmap \angle
    iunmap \partial
    iunmap \eth
    iunmap \emptyset
    iunmap \varnothing
    iunmap \imath
    iunmap \jmath
    iunmap \cdots
    iunmap \iiiint
    iunmap \vdots
    iunmap \iiint
    iunmap \ldots
    "iunmap \iint 
    iunmap \prime
    iunmap \surd
    iunmap \deg
endfunction

function! Greek_letters_off()
	let g:greek_letters=0
    iunmap \alpha
    iunmap \kappa
    iunmap \psi
    iunmap \digamma
    iunmap \Delta
    iunmap \Theta
    iunmap \beta
    iunmap \lambda
    iunmap \rho
    iunmap \varepsilon
    iunmap \Gamma
    iunmap \Upsilon
    iunmap \chi
    iunmap \mu
    iunmap \sigma
    iunmap \varkappa
    iunmap \Lambda
    iunmap \Xi
    iunmap \delta
    iunmap \nu
    iunmap \tau
    iunmap \varphi
    iunmap \Omega
    iunmap \epsilon
    iunmap \theta
    iunmap \varpi
    iunmap \Phi
    iunmap \eta
    iunmap \omega
    iunmap \upsilon
    "iunmap \varrho
    iunmap \Pi
    iunmap \gamma
    iunmap \phi
    iunmap \xi
    iunmap \varsigma
    iunmap \Psi
    iunmap \iota
    iunmap \pi
    iunmap \zeta
    iunmap \vartheta
    iunmap \Sigma
endfunction

function! Hebrew_letters_off()
	let g:hebrew_letters=0
    iunmap \aleph
    iunmap \beth
    iunmap \daleth
    iunmap \gimel
endfunction
