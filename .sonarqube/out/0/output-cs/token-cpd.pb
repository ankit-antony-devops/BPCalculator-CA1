?3
?C:\Users\EANTANK\source\repos\bp2\BPCalculator\BloodPressure.cs
	namespace 	
BPCalculator
 
{ 
public 

enum 

BPCategory 
{ 
[		 	
Display			 
(		 
Name		 
=		 
$str		 *
)		* +
]		+ ,
Low		- 0
,		0 1
[

 	
Display

	 
(

 
Name

 
=

 
$str

 ,
)

, -
]

- .
Ideal

0 5
,

5 6
[ 	
Display	 
( 
Name 
= 
$str /
)/ 0
]0 1
PreHigh2 9
,9 :
[ 	
Display	 
( 
Name 
= 
$str ,
), -
]- .
High0 4
} 
; 
public 

enum 
BPSuggestTreatment "
{ 
[ 	
Display	 
( 
Name 
= 
$str h
)h i
]i j
Lowk n
,n o
[ 	
Display	 
( 
Name 
= 
$str .
). /
]/ 0
Ideal1 6
,6 7
[ 	
Display	 
( 
Name 
= 
$str F
)F G
]G H
PreHighI P
,P Q
[ 	
Display	 
( 
Name 
= 
$str a
)a b
]b c
Highd h
} 
; 
public 

class 
BloodPressure 
{ 
public 
const 
int 
SystolicMin $
=% &
$num' )
;) *
public 
const 
int 
SystolicMax $
=% &
$num' *
;* +
public 
const 
int 
DiastolicMin %
=& '
$num( *
;* +
public 
const 
int 
DiastolicMax %
=& '
$num( +
;+ ,
[ 	
Range	 
( 
SystolicMin 
, 
SystolicMax '
,' (
ErrorMessage) 5
=6 7
$str8 P
)P Q
]Q R
public 
int 
Systolic 
{ 
get !
;! "
set# &
;& '
}( )
[!! 	
Range!!	 
(!! 
DiastolicMin!! 
,!! 
DiastolicMax!! )
,!!) *
ErrorMessage!!+ 7
=!!8 9
$str!!: S
)!!S T
]!!T U
public"" 
int"" 
	Diastolic"" 
{"" 
get"" "
;""" #
set""$ '
;""' (
}"") *
public%% 

BPCategory%% 
Category%% "
{&& 	
get'' 
{(( 
if)) 
()) 
()) 
Systolic)) 
>=))  
$num))! #
&&))$ &
Systolic))' /
<=))0 2
$num))3 5
)))5 6
||))7 9
()): ;
	Diastolic)); D
>=))E G
$num))H J
&&))K M
	Diastolic))N W
<=))X Z
$num))[ ]
)))] ^
)))^ _
{** 
return++ 

BPCategory++ %
.++% &
Low++& )
;++) *
},, 
else-- 
if-- 
(-- 
(-- 
Systolic-- "
>--# $
$num--% '
&&--( *
Systolic--+ 3
<=--4 6
$num--7 :
)--: ;
&&--< >
(--? @
	Diastolic--@ I
>--J K
$num--L N
&&--O Q
	Diastolic--R [
<=--\ ^
$num--_ a
)--a b
)--b c
{.. 
return// 

BPCategory// %
.//% &
Ideal//& +
;//+ ,
}00 
else11 
if11 
(11 
(11 
Systolic11 "
>11# $
$num11% (
&&11) +
Systolic11, 4
<=115 7
$num118 ;
)11; <
||11= ?
(11@ A
	Diastolic11A J
>11K L
$num11M O
&&11P R
	Diastolic11S \
<=11] _
$num11` b
)11b c
)11c d
{22 
return33 

BPCategory33 %
.33% &
PreHigh33& -
;33- .
}44 
else55 
if55 
(55 
(55 
Systolic55 "
>55# $
$num55% (
&&55) +
Systolic55, 4
<=555 7
$num558 ;
)55; <
||55= ?
(55@ A
	Diastolic55A J
>55K L
$num55M O
&&55P R
	Diastolic55S \
<=55] _
$num55` c
)55c d
)55d e
{66 
return77 

BPCategory77 %
.77% &
High77& *
;77* +
}88 
{99 
throw:: 
new:: 
	Exception:: '
(::' (
$str::( @
)::@ A
;::A B
};; 
}<< 
}== 	
public?? 
BPSuggestTreatment?? !
SuggestTreatment??" 2
{@@ 	
getAA 
{BB 
switchCC 
(CC 
CategoryCC  
)CC  !
{DD 
caseEE 

BPCategoryEE #
.EE# $
LowEE$ '
:EE' (
returnFF 
BPSuggestTreatmentFF 1
.FF1 2
LowFF2 5
;FF5 6
caseGG 

BPCategoryGG #
.GG# $
HighGG$ (
:GG( )
returnHH 
BPSuggestTreatmentHH 1
.HH1 2
HighHH2 6
;HH6 7
caseII 

BPCategoryII #
.II# $
IdealII$ )
:II) *
returnJJ 
BPSuggestTreatmentJJ 1
.JJ1 2
IdealJJ2 7
;JJ7 8
caseKK 

BPCategoryKK #
.KK# $
PreHighKK$ +
:KK+ ,
returnLL 
BPSuggestTreatmentLL 1
.LL1 2
PreHighLL2 9
;LL9 :
defaultMM 
:MM 
throwNN 
newNN !
	ExceptionNN" +
(NN+ ,
$strNN, ;
)NN; <
;NN< =
}OO 
}PP 
}QQ 	
}RR 
}SS ?
DC:\Users\EANTANK\source\repos\bp2\BPCalculator\Pages\Error.cshtml.cs
	namespace

 	
BPCalculator


 
.

 
Pages

 
{ 
[ 
ResponseCache 
( 
Duration 
= 
$num 
,  
Location! )
=* +!
ResponseCacheLocation, A
.A B
NoneB F
,F G
NoStoreH O
=P Q
trueR V
)V W
]W X
public 

class 

ErrorModel 
: 
	PageModel '
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
private 
readonly 
ILogger  
<  !

ErrorModel! +
>+ ,
_logger- 4
;4 5
public 

ErrorModel 
( 
ILogger !
<! "

ErrorModel" ,
>, -
logger. 4
)4 5
{ 	
_logger 
= 
logger 
; 
} 	
public 
void 
OnGet 
( 
) 
{ 	
	RequestId 
= 
Activity  
.  !
Current! (
?( )
.) *
Id* ,
??- /
HttpContext0 ;
.; <
TraceIdentifier< K
;K L
} 	
} 
} ?
DC:\Users\EANTANK\source\repos\bp2\BPCalculator\Pages\Index.cshtml.cs
	namespace 	
BPCalculator
 
. 
Pages 
{ 
public 

class 
BloodPressureModel #
:$ %
	PageModel& /
{		 
[

 	
BindProperty

	 
]

 
public 
BloodPressure 
BP 
{  !
get" %
;% &
set' *
;* +
}, -
public 
void 
OnGet 
( 
) 
{ 	
BP 
= 
new 
BloodPressure "
(" #
)# $
{% &
Systolic' /
=0 1
$num2 5
,5 6
	Diastolic7 @
=A B
$numC E
}F G
;G H
} 	
public 
IActionResult 
OnPost #
(# $
)$ %
{ 	
if 
( 
! 
( 
BP 
. 
Systolic 
> 
BP  "
." #
	Diastolic# ,
), -
)- .
{ 

ModelState 
. 
AddModelError (
(( )
$str) +
,+ ,
$str- V
)V W
;W X
} 
return 
Page 
( 
) 
; 
} 	
} 
} ?
FC:\Users\EANTANK\source\repos\bp2\BPCalculator\Pages\Privacy.cshtml.cs
	namespace		 	
BPCalculator		
 
.		 
Pages		 
{

 
public 

class 
PrivacyModel 
: 
	PageModel  )
{ 
private 
readonly 
ILogger  
<  !
PrivacyModel! -
>- .
_logger/ 6
;6 7
public 
PrivacyModel 
( 
ILogger #
<# $
PrivacyModel$ 0
>0 1
logger2 8
)8 9
{ 	
_logger 
= 
logger 
; 
} 	
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} ?

9C:\Users\EANTANK\source\repos\bp2\BPCalculator\Program.cs
	namespace

 	
BPCalculator


 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} ?
9C:\Users\EANTANK\source\repos\bp2\BPCalculator\Startup.cs
	namespace 	
BPCalculator
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddRazorPages "
(" #
)# $
;$ %
} 	
public 
void 
	Configure 
( 
IApplicationBuilder 1
app2 5
,5 6
IWebHostEnvironment7 J
envK N
)N O
{ 	
if 
( 
env 
. 
IsDevelopment !
(! "
)" #
)# $
{   
app!! 
.!! %
UseDeveloperExceptionPage!! -
(!!- .
)!!. /
;!!/ 0
}"" 
else## 
{$$ 
app%% 
.%% 
UseExceptionHandler%% '
(%%' (
$str%%( 0
)%%0 1
;%%1 2
}&& 
app(( 
.(( 
UseStaticFiles(( 
((( 
)((  
;((  !
app** 
.** 

UseRouting** 
(** 
)** 
;** 
app,, 
.,, 
UseAuthorization,,  
(,,  !
),,! "
;,," #
app.. 
... 
UseEndpoints.. 
(.. 
	endpoints.. &
=>..' )
{// 
	endpoints00 
.00 
MapRazorPages00 '
(00' (
)00( )
;00) *
}11 
)11 
;11 
}22 	
}33 
}44 