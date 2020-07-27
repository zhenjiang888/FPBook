%include polycode.fmt

%options ghci -pgmL lhs2TeX -optL --pre -i..

%if style == newcode

%format (Q(x)) = [| x |]
%format (P(x)) = [p| x |]
%format (D(x)) = [d| x |]
%format DOT = .

%else

%format $ = "{^\$}"
%format (Q(x)) = "[\kern-1.5pt[\," x "\,]\kern-1.5pt]"
%format (P(x)) = "\mathrlap{^\mathbb{P}}\phantom{^\mathbb{D}}[\kern-1.5pt[\," x "\,]\kern-1.5pt]"
%format (D(x)) = "{^\mathbb{D}}[\kern-1.5pt[\," x "\,]\kern-1.5pt]"

%format DOT = "\kern-\smallskipamount."

%format ... = "\ldots"

%format == = "\mathop{\kern1pt\shorteq\kern1pt\shorteq\kern1pt}"

%format <=> = "\Leftrightarrow"
% format { = "\lbag"
% format } = "\rbag"
%format { = "\{"
%format } = "\}"
%format (over (x) (y)) = "{{" x "}^{" y "}}"
%format (under (x) (y)) = "{{" x "}_{" y "}}"


% TODO: fix spacing for \lbag and \rbag

%format `u` = "\mathbin{\uplus}"
%format ~++ = "\mathbin{\times_{\!\!" ++ "}}"

%format mininf = "-\infty"
%format `max`  = "\mathbin{\uparrow}"
%format `min`  = "\mathbin{\downarrow}"

%format `plus`    = "\mathbin{\oplus}"
%format `times`   = "\mathbin{\otimes}"
%format `plus'`   = "\mathbin{\oplus^\prime}"
%format `times'`  = "\mathbin{\otimes^\prime}"

%format zero  = "\identity_{" `plus`   "}"
%format one   = "\identity_{" `times`  "}"
%format zero' = "\identity_{" `plus'`  "}"
%format one'  = "\identity_{" `times'` "}"

%format S' = "S^\prime"
%format s' = "s^\prime"

%format Int    = "\mathbb{Z}"
%format InfInt = "\mathbb{Z}_{" mininf "}"
%format Nat    = "\mathbb{N}"

%format SA = (A -> S)

%format weightW = weight "_w"

%format MW     = "M_w"
%format `addW` = "\mathbin{+_{\!\!w}}"

%format postprocessW = postprocess "_w"
%format maxvalueW      = maxvalue "_w"

%format M5     = "M_5"
%format `add5` = "\mathbin{+_5}"

%format postprocess5 = postprocess "_5"
%format maxvalue5      = maxvalue "_5"

%format postprocessM = postprocess "_M"
%format maxvalueM      = maxvalue "_M"

%format InfIntM5 = InfInt "^{" 7 "}"
%format `max7`   = `max` "^{\!7}"
%format `add7`   = "+^{7}"

%format sublistsS = sublists "_{" `plus` "," `times` "}"
%format sublistsB = sublists "_{" `u` "," ~++ "}"
%format sublistsI = sublists "_{" `max` "," + "}"
%format sublists5 = sublists "_{" `max7` "," `add7` "}"

%format generateS = generate "_{" `plus` "," `times` "}"
%format generateB = generate "_{" `u` "," ~++ "}"

%format SM  = "S^M"
%format SMF = "\{ \{f_m\}_{m\in M} | f_m \in S \}"

%format famsum_m  = (f `mplus` f') "_m"
%format famprod_m = (f `mtimes` f') "_m"

%format f'
%format f_m
%format f'_m
%format f_k
%format f'_l

%format mzero_m = (mzero) "_m"
%format mone_m  = (mone) "_m"

%format BigPlusM = "\bigoplus\limits_{\substack{k,l\in M\\" k `dot` l = m "}}"

%format `mplus`  = "\mathbin{\oplus_M}"
%format `mtimes` = "\mathbin{\otimes_M}"
%format mzero    = "\identity_{" `mplus` "}"
%format mone     = "\identity_{" `mtimes` "}"

%format `dot`  = "\mathbin{\odot}"
%format unit   = "\identity_{" `dot` "}"
%format `dot'` = "\mathbin{\odot^\prime}"
%format unit'  = "\identity_{" `dot'` "}"

%format hM    = "h_M"
%format hS    = "h_S"
%format hSM   = "h_{S}^{M}"

%format generateSM = generate "_{" `mplus` "," `mtimes` "}"

%format aggregateM = aggregate "_{M}"

%format lowerOK   = lower "^M_{ok}"
%format BigPlusOK = "\bigoplus\limits_{\substack{m\in M\\ok~m = \m{True}}}"

%format fls  = "f^{\m{ls}}"
%format fls' = "f^{\m{ls}^\prime}"
%format fx   = f "^{" {[x]} "}"

%format fls_m  = fls "_m"
%format fls'_m = fls' "_m"
%format fls_k  = fls "_k"
%format fls'_l = fls' "_l"
%format fx_m = fx "_m"

%format aggregateM_m = (aggregateM {[x]}) "_m"

%format fzero  = f "^{" {} "}_m"
%format fone   = f "^{" {[]} "}_m"
%format fplus  = f "^{" ls`u`ls' "}_m"
%format ftimes = f "^{" ls~++ls' "}_m"

%format reduceDot   = reduce "_{" `dot` "}"
%format reducePlus  = reduce "_{" + "}"
%format reduceOPlus = reduce "_{" `plus` "}"
%format reduceDia   = reduce "_{" `dia` "}"

%format assignTransS = assignTrans "_{" `plus` "," `times` "}"
%format assignTransB = assignTrans "_{" `u` "," ~++ "}"

%format assignTrans2S = assignTrans2 "_{" `plus` "," `times` "}"
%format assignTrans2B = assignTrans2 "_{" `u` "," ~++ "}"

%format StimesS    = S "\times" S
%format StimesSBox = (StimesS) "_{" box "}"

%format S4    = (StimesS) "\times" (StimesS)
%format S4Box = (S4) "_{" box "}"

%format maxLikelinessK = maxLikeliness "_k"
%format maxprobK       = maxprob "_k"

%format PK       = [[0,1]]
%format `maxK`   = `max` "_k"
%format `timesK` = * "_k"

%format not   = "not"
%format box   = "\Box"
%format `dia` = "\mathbin{\diamond}"
%format idia  = "\identity_{" `dia` "}"

%format XSS = X "\times" (StimesS)

%format MaxSeq = [0,1] "\times" {[S]}

%format countW = count "_w"
%format count3 = count "_3" 

%format Bool2    = Bool "\times" Bool
%format Bool2Box = (Bool2) "_" box

%format `star` = "\mathbin{\star}"
%format istar  = "\identity_{" `star` "}"

%format s0
%format s1
%format s2
%format s3
%format t0
%format t1
%format t2
%format t3

%format v0
%format v1
%format v2
%format v3
%format v4
%format v5
%format v6
%format vi = v "_{" i "}"

%format v0'
%format v1'
%format v2'
%format v3'
%format v4'
%format v5'
%format v6'

%format `cross` = "\mathbin{\times}"

%format x_1
%format x_2
%format x_n

%format genS = gen "_{" `plus` "," `times` "}"
%format genB = gen "_{" `u` "," ~++ "}"
%format `timesp`   = "*^\prime"
%format `max'` = "\uparrow^\prime"
%format maxProdk = maxProd "_{k}"
%format `timesk`   = "\times^{(k)}"
%format `maxk` = "\uparrow^{(k)}"
%format pathsI = paths "_{" `max` "," + "}"
%format pathsS = paths "_{" `plus` "," `times` "}"
%format pathsB = paths "_{" `u` "," ~++ "}"

%format selections  = selects
%format selectionsS = selections "_{" `plus` "," phi_N "," phi_L "}"
%format selectionsB = selections "_{" `u` "," phiNX "," phiLX "}"
%format selectionsI = selections "_{" `max` "," phiSum "," 0 "}"

%format a_s
%format a_t
%format b_s
%format b_t

%format phi_N
%format phi_L
%format phiSum = phi "_{" sum "}"
%format phiNX = "\Phi_{" N "}"
%format phiLX = "\Phi_{" L "}"
%format phi = "\phi"
%format phiIndep = phi "_{" indep "}"
%format phi_Ck
%format phiX_Ck
%formap phiX = "\Phi"

%format l_i
%format l_t
%format r_i
%format r_t
%format l_1
%format l_2
%format r_1
%format r_2

%format a_TT
%format a_TF
%format a_FT
%format a_FF
%format b_TT
%format b_TF
%format b_FT
%format b_FF



%format C1 = "C_1"
%format Ck = "C_k"
%format Cn = "C_n"
%format akj  = a "_{ k j }"
%format a11  = a "_{ 1 1 }"
%format a1l1 = a "_{ 1 l_1 }"
%format an1  = a "_{ n 1 }"
%format anln = a "_{ n l_n }"

%format a1 = "a_1"
%format ak = "a_k"
%format an = "a_n"

%format a_1
%format a_j  
%format b_j  
%format a_l_k = a "_{ l_k }"

%format c_1
%format c_j  
%format d_j  
%format c_l_k = c "_{ l_k }"
%format d_l_k = d "_{ l_k }"

%format pi = "\pi"
%format aggregateE = aggregate "_{E}"

%format ck  = "c_k"
%format cks = "\{ " ck " \}_{k=1}^n"
%format phiks = "\{ " phik " \}_{k=1}^n"
%format phik  = "\phi_k"
%format phikX  = "\Phi_k"
%format phiksX = "\{ " phikX " \}_{k=1}^n"
%format D1  = "D_1"
%format Dl1 = "D_{l_1}"
%format Dn  = "D_n"
%format Dln = "D_{l_n}"
%format Dk  = "D_k"
%format Dlk = "D_{l_k}"
%format A1  = "A_1"
%format Al1 = "A_{l_1}"
%format An  = "A_n"
%format Aln = "A_{l_n}"
%format Ak  = "A_k"
%format Ai  = "A_i"
%format Alk = "A_{l_k}"

%format generateD = generate 
%format generateDB = generate "_{ " `u` ", " phiksX "}" 
%format generateDS = generate "_{ " `plus` ", " cks "}" 
%format aggregateD = aggregate

%format ==> = "\Longrightarrow"
%format Int = "\mathit{Int}"

%endif

%format l = "\ell"
