Π"
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint?
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
?
conv2d_266/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameconv2d_266/kernel

%conv2d_266/kernel/Read/ReadVariableOpReadVariableOpconv2d_266/kernel*&
_output_shapes
:@*
dtype0
v
conv2d_266/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_266/bias
o
#conv2d_266/bias/Read/ReadVariableOpReadVariableOpconv2d_266/bias*
_output_shapes
:@*
dtype0
?
conv2d_267/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *"
shared_nameconv2d_267/kernel

%conv2d_267/kernel/Read/ReadVariableOpReadVariableOpconv2d_267/kernel*&
_output_shapes
:@ *
dtype0
v
conv2d_267/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_267/bias
o
#conv2d_267/bias/Read/ReadVariableOpReadVariableOpconv2d_267/bias*
_output_shapes
: *
dtype0
~
dense_425/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_425/kernel
w
$dense_425/kernel/Read/ReadVariableOpReadVariableOpdense_425/kernel* 
_output_shapes
:
??*
dtype0
u
dense_425/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_425/bias
n
"dense_425/bias/Read/ReadVariableOpReadVariableOpdense_425/bias*
_output_shapes	
:?*
dtype0
~
dense_426/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_426/kernel
w
$dense_426/kernel/Read/ReadVariableOpReadVariableOpdense_426/kernel* 
_output_shapes
:
??*
dtype0
u
dense_426/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_426/bias
n
"dense_426/bias/Read/ReadVariableOpReadVariableOpdense_426/bias*
_output_shapes	
:?*
dtype0
~
dense_427/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_427/kernel
w
$dense_427/kernel/Read/ReadVariableOpReadVariableOpdense_427/kernel* 
_output_shapes
:
??*
dtype0
u
dense_427/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_427/bias
n
"dense_427/bias/Read/ReadVariableOpReadVariableOpdense_427/bias*
_output_shapes	
:?*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0	
l

Variable_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_1
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:*
dtype0	
l

Variable_2VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_2
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:*
dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv2d_266/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/conv2d_266/kernel/m
?
,Adam/conv2d_266/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_266/kernel/m*&
_output_shapes
:@*
dtype0
?
Adam/conv2d_266/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_266/bias/m
}
*Adam/conv2d_266/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_266/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_267/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *)
shared_nameAdam/conv2d_267/kernel/m
?
,Adam/conv2d_267/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_267/kernel/m*&
_output_shapes
:@ *
dtype0
?
Adam/conv2d_267/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_267/bias/m
}
*Adam/conv2d_267/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_267/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_425/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_425/kernel/m
?
+Adam/dense_425/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_425/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_425/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_425/bias/m
|
)Adam/dense_425/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_425/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_426/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_426/kernel/m
?
+Adam/dense_426/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_426/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_426/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_426/bias/m
|
)Adam/dense_426/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_426/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_427/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_427/kernel/m
?
+Adam/dense_427/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_427/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_427/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_427/bias/m
|
)Adam/dense_427/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_427/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_266/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/conv2d_266/kernel/v
?
,Adam/conv2d_266/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_266/kernel/v*&
_output_shapes
:@*
dtype0
?
Adam/conv2d_266/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_266/bias/v
}
*Adam/conv2d_266/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_266/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_267/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *)
shared_nameAdam/conv2d_267/kernel/v
?
,Adam/conv2d_267/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_267/kernel/v*&
_output_shapes
:@ *
dtype0
?
Adam/conv2d_267/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_267/bias/v
}
*Adam/conv2d_267/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_267/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_425/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_425/kernel/v
?
+Adam/dense_425/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_425/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_425/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_425/bias/v
|
)Adam/dense_425/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_425/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_426/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_426/kernel/v
?
+Adam/dense_426/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_426/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_426/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_426/bias/v
|
)Adam/dense_426/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_426/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_427/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_427/kernel/v
?
+Adam/dense_427/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_427/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_427/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_427/bias/v
|
)Adam/dense_427/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_427/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?G
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?F
value?FB?F B?F
?
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-0
layer-5
layer-6
layer_with_weights-1
layer-7
	layer-8

layer-9
layer_with_weights-2
layer-10
layer-11
layer_with_weights-3
layer-12
layer-13
layer_with_weights-4
layer-14
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures

	keras_api

_rng
	keras_api

_rng
	keras_api

_rng
	keras_api

	keras_api
h

kernel
bias
 trainable_variables
!regularization_losses
"	variables
#	keras_api
R
$trainable_variables
%regularization_losses
&	variables
'	keras_api
h

(kernel
)bias
*trainable_variables
+regularization_losses
,	variables
-	keras_api
R
.trainable_variables
/regularization_losses
0	variables
1	keras_api
R
2trainable_variables
3regularization_losses
4	variables
5	keras_api
h

6kernel
7bias
8trainable_variables
9regularization_losses
:	variables
;	keras_api
R
<trainable_variables
=regularization_losses
>	variables
?	keras_api
h

@kernel
Abias
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
R
Ftrainable_variables
Gregularization_losses
H	variables
I	keras_api
h

Jkernel
Kbias
Ltrainable_variables
Mregularization_losses
N	variables
O	keras_api
?
Piter

Qbeta_1

Rbeta_2
	Sdecay
Tlearning_ratem?m?(m?)m?6m?7m?@m?Am?Jm?Km?v?v?(v?)v?6v?7v?@v?Av?Jv?Kv?
F
0
1
(2
)3
64
75
@6
A7
J8
K9
 
F
0
1
(2
)3
64
75
@6
A7
J8
K9
?

Ulayers
trainable_variables
Vmetrics
Wnon_trainable_variables
regularization_losses
Xlayer_metrics
	variables
Ylayer_regularization_losses
 
 

Z
_state_var
 

[
_state_var
 

\
_state_var
 
 
][
VARIABLE_VALUEconv2d_266/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_266/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

]layers
 trainable_variables
^metrics
_non_trainable_variables
!regularization_losses
`layer_metrics
"	variables
alayer_regularization_losses
 
 
 
?

blayers
$trainable_variables
cmetrics
dnon_trainable_variables
%regularization_losses
elayer_metrics
&	variables
flayer_regularization_losses
][
VARIABLE_VALUEconv2d_267/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_267/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

(0
)1
 

(0
)1
?

glayers
*trainable_variables
hmetrics
inon_trainable_variables
+regularization_losses
jlayer_metrics
,	variables
klayer_regularization_losses
 
 
 
?

llayers
.trainable_variables
mmetrics
nnon_trainable_variables
/regularization_losses
olayer_metrics
0	variables
player_regularization_losses
 
 
 
?

qlayers
2trainable_variables
rmetrics
snon_trainable_variables
3regularization_losses
tlayer_metrics
4	variables
ulayer_regularization_losses
\Z
VARIABLE_VALUEdense_425/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_425/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

60
71
 

60
71
?

vlayers
8trainable_variables
wmetrics
xnon_trainable_variables
9regularization_losses
ylayer_metrics
:	variables
zlayer_regularization_losses
 
 
 
?

{layers
<trainable_variables
|metrics
}non_trainable_variables
=regularization_losses
~layer_metrics
>	variables
layer_regularization_losses
\Z
VARIABLE_VALUEdense_426/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_426/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

@0
A1
 

@0
A1
?
?layers
Btrainable_variables
?metrics
?non_trainable_variables
Cregularization_losses
?layer_metrics
D	variables
 ?layer_regularization_losses
 
 
 
?
?layers
Ftrainable_variables
?metrics
?non_trainable_variables
Gregularization_losses
?layer_metrics
H	variables
 ?layer_regularization_losses
\Z
VARIABLE_VALUEdense_427/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_427/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

J0
K1
 

J0
K1
?
?layers
Ltrainable_variables
?metrics
?non_trainable_variables
Mregularization_losses
?layer_metrics
N	variables
 ?layer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
n
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14

?0
?1
 
 
 
PN
VARIABLE_VALUEVariable2layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUE
Variable_12layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUE
Variable_22layer-3/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
?~
VARIABLE_VALUEAdam/conv2d_266/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_266/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_267/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_267/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_425/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_425/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_426/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_426/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_427/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_427/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_266/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_266/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_267/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_267/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_425/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_425/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_426/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_426/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_427/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_427/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
#serving_default_rescaling_135_inputPlaceholder*/
_output_shapes
:?????????88*
dtype0*$
shape:?????????88
?
StatefulPartitionedCallStatefulPartitionedCall#serving_default_rescaling_135_inputconv2d_266/kernelconv2d_266/biasconv2d_267/kernelconv2d_267/biasdense_425/kerneldense_425/biasdense_426/kerneldense_426/biasdense_427/kerneldense_427/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_4758131
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_266/kernel/Read/ReadVariableOp#conv2d_266/bias/Read/ReadVariableOp%conv2d_267/kernel/Read/ReadVariableOp#conv2d_267/bias/Read/ReadVariableOp$dense_425/kernel/Read/ReadVariableOp"dense_425/bias/Read/ReadVariableOp$dense_426/kernel/Read/ReadVariableOp"dense_426/bias/Read/ReadVariableOp$dense_427/kernel/Read/ReadVariableOp"dense_427/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOpVariable_2/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv2d_266/kernel/m/Read/ReadVariableOp*Adam/conv2d_266/bias/m/Read/ReadVariableOp,Adam/conv2d_267/kernel/m/Read/ReadVariableOp*Adam/conv2d_267/bias/m/Read/ReadVariableOp+Adam/dense_425/kernel/m/Read/ReadVariableOp)Adam/dense_425/bias/m/Read/ReadVariableOp+Adam/dense_426/kernel/m/Read/ReadVariableOp)Adam/dense_426/bias/m/Read/ReadVariableOp+Adam/dense_427/kernel/m/Read/ReadVariableOp)Adam/dense_427/bias/m/Read/ReadVariableOp,Adam/conv2d_266/kernel/v/Read/ReadVariableOp*Adam/conv2d_266/bias/v/Read/ReadVariableOp,Adam/conv2d_267/kernel/v/Read/ReadVariableOp*Adam/conv2d_267/bias/v/Read/ReadVariableOp+Adam/dense_425/kernel/v/Read/ReadVariableOp)Adam/dense_425/bias/v/Read/ReadVariableOp+Adam/dense_426/kernel/v/Read/ReadVariableOp)Adam/dense_426/bias/v/Read/ReadVariableOp+Adam/dense_427/kernel/v/Read/ReadVariableOp)Adam/dense_427/bias/v/Read/ReadVariableOpConst*7
Tin0
.2,				*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_save_4759276
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_266/kernelconv2d_266/biasconv2d_267/kernelconv2d_267/biasdense_425/kerneldense_425/biasdense_426/kerneldense_426/biasdense_427/kerneldense_427/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariable
Variable_1
Variable_2totalcounttotal_1count_1Adam/conv2d_266/kernel/mAdam/conv2d_266/bias/mAdam/conv2d_267/kernel/mAdam/conv2d_267/bias/mAdam/dense_425/kernel/mAdam/dense_425/bias/mAdam/dense_426/kernel/mAdam/dense_426/bias/mAdam/dense_427/kernel/mAdam/dense_427/bias/mAdam/conv2d_266/kernel/vAdam/conv2d_266/bias/vAdam/conv2d_267/kernel/vAdam/conv2d_267/bias/vAdam/dense_425/kernel/vAdam/dense_425/bias/vAdam/dense_426/kernel/vAdam/dense_426/bias/vAdam/dense_427/kernel/vAdam/dense_427/bias/v*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__traced_restore_4759412??
??
?
K__inference_sequential_135_layer_call_and_return_conditional_losses_4758693

inputs-
)conv2d_266_conv2d_readvariableop_resource.
*conv2d_266_biasadd_readvariableop_resource-
)conv2d_267_conv2d_readvariableop_resource.
*conv2d_267_biasadd_readvariableop_resource,
(dense_425_matmul_readvariableop_resource-
)dense_425_biasadd_readvariableop_resource,
(dense_426_matmul_readvariableop_resource-
)dense_426_biasadd_readvariableop_resource,
(dense_427_matmul_readvariableop_resource-
)dense_427_biasadd_readvariableop_resource
identity??Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert?Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert?!conv2d_266/BiasAdd/ReadVariableOp? conv2d_266/Conv2D/ReadVariableOp?0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp?3conv2d_266/kernel/Regularizer/Square/ReadVariableOp?!conv2d_267/BiasAdd/ReadVariableOp? conv2d_267/Conv2D/ReadVariableOp?0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp?3conv2d_267/kernel/Regularizer/Square/ReadVariableOp? dense_425/BiasAdd/ReadVariableOp?dense_425/MatMul/ReadVariableOp?/dense_425/kernel/Regularizer/Abs/ReadVariableOp?2dense_425/kernel/Regularizer/Square/ReadVariableOp? dense_426/BiasAdd/ReadVariableOp?dense_426/MatMul/ReadVariableOp?/dense_426/kernel/Regularizer/Abs/ReadVariableOp?2dense_426/kernel/Regularizer/Square/ReadVariableOp? dense_427/BiasAdd/ReadVariableOp?dense_427/MatMul/ReadVariableOpq
rescaling_135/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling_135/Cast/xu
rescaling_135/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_135/Cast_1/x?
rescaling_135/mulMulinputsrescaling_135/Cast/x:output:0*
T0*/
_output_shapes
:?????????882
rescaling_135/mul?
rescaling_135/addAddV2rescaling_135/mul:z:0rescaling_135/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????882
rescaling_135/addo
center_crop_3/ShapeShaperescaling_135/add:z:0*
T0*
_output_shapes
:2
center_crop_3/Shape?
!center_crop_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!center_crop_3/strided_slice/stack?
#center_crop_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#center_crop_3/strided_slice/stack_1?
#center_crop_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#center_crop_3/strided_slice/stack_2?
center_crop_3/strided_sliceStridedSlicecenter_crop_3/Shape:output:0*center_crop_3/strided_slice/stack:output:0,center_crop_3/strided_slice/stack_1:output:0,center_crop_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
center_crop_3/strided_slice?
#center_crop_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#center_crop_3/strided_slice_1/stack?
%center_crop_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%center_crop_3/strided_slice_1/stack_1?
%center_crop_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%center_crop_3/strided_slice_1/stack_2?
center_crop_3/strided_slice_1StridedSlicecenter_crop_3/Shape:output:0,center_crop_3/strided_slice_1/stack:output:0.center_crop_3/strided_slice_1/stack_1:output:0.center_crop_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
center_crop_3/strided_slice_1l
center_crop_3/sub/yConst*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/sub/y?
center_crop_3/subSub$center_crop_3/strided_slice:output:0center_crop_3/sub/y:output:0*
T0*
_output_shapes
: 2
center_crop_3/subp
center_crop_3/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/sub_1/y?
center_crop_3/sub_1Sub&center_crop_3/strided_slice_1:output:0center_crop_3/sub_1/y:output:0*
T0*
_output_shapes
: 2
center_crop_3/sub_1?
'center_crop_3/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0*
value	B : 2)
'center_crop_3/assert_non_negative/Const?
=center_crop_3/assert_non_negative/assert_less_equal/LessEqual	LessEqual0center_crop_3/assert_non_negative/Const:output:0center_crop_3/sub:z:0*
T0*
_output_shapes
: 2?
=center_crop_3/assert_non_negative/assert_less_equal/LessEqual?
8center_crop_3/assert_non_negative/assert_less_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : 2:
8center_crop_3/assert_non_negative/assert_less_equal/Rank?
?center_crop_3/assert_non_negative/assert_less_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2A
?center_crop_3/assert_non_negative/assert_less_equal/range/start?
?center_crop_3/assert_non_negative/assert_less_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2A
?center_crop_3/assert_non_negative/assert_less_equal/range/delta?
9center_crop_3/assert_non_negative/assert_less_equal/rangeRangeHcenter_crop_3/assert_non_negative/assert_less_equal/range/start:output:0Acenter_crop_3/assert_non_negative/assert_less_equal/Rank:output:0Hcenter_crop_3/assert_non_negative/assert_less_equal/range/delta:output:0*
_output_shapes
: 2;
9center_crop_3/assert_non_negative/assert_less_equal/range?
7center_crop_3/assert_non_negative/assert_less_equal/AllAllAcenter_crop_3/assert_non_negative/assert_less_equal/LessEqual:z:0Bcenter_crop_3/assert_non_negative/assert_less_equal/range:output:0*
_output_shapes
: 29
7center_crop_3/assert_non_negative/assert_less_equal/All?
@center_crop_3/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*L
valueCBA B;The crop height 28 should not be greater than input height.2B
@center_crop_3/assert_non_negative/assert_less_equal/Assert/Const?
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2D
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_1?
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*+
value"B  Bx (center_crop_3/sub:0) = 2D
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_2?
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*L
valueCBA B;The crop height 28 should not be greater than input height.2J
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0?
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2J
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1?
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*+
value"B  Bx (center_crop_3/sub:0) = 2J
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2?
Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/AssertAssert@center_crop_3/assert_non_negative/assert_less_equal/All:output:0Qcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0:output:0Qcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1:output:0Qcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2:output:0center_crop_3/sub:z:0*
T
2*
_output_shapes
 2C
Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert?
)center_crop_3/assert_non_negative_1/ConstConst*
_output_shapes
: *
dtype0*
value	B : 2+
)center_crop_3/assert_non_negative_1/Const?
?center_crop_3/assert_non_negative_1/assert_less_equal/LessEqual	LessEqual2center_crop_3/assert_non_negative_1/Const:output:0center_crop_3/sub_1:z:0*
T0*
_output_shapes
: 2A
?center_crop_3/assert_non_negative_1/assert_less_equal/LessEqual?
:center_crop_3/assert_non_negative_1/assert_less_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : 2<
:center_crop_3/assert_non_negative_1/assert_less_equal/Rank?
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2C
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/start?
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2C
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/delta?
;center_crop_3/assert_non_negative_1/assert_less_equal/rangeRangeJcenter_crop_3/assert_non_negative_1/assert_less_equal/range/start:output:0Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Rank:output:0Jcenter_crop_3/assert_non_negative_1/assert_less_equal/range/delta:output:0*
_output_shapes
: 2=
;center_crop_3/assert_non_negative_1/assert_less_equal/range?
9center_crop_3/assert_non_negative_1/assert_less_equal/AllAllCcenter_crop_3/assert_non_negative_1/assert_less_equal/LessEqual:z:0Dcenter_crop_3/assert_non_negative_1/assert_less_equal/range:output:0*
_output_shapes
: 2;
9center_crop_3/assert_non_negative_1/assert_less_equal/All?
Bcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*J
valueAB? B9The crop width 28 should not be greater than input width.2D
Bcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const?
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2F
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_1?
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*-
value$B" Bx (center_crop_3/sub_1:0) = 2F
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_2?
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*J
valueAB? B9The crop width 28 should not be greater than input width.2L
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0?
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2L
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1?
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*-
value$B" Bx (center_crop_3/sub_1:0) = 2L
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2?
Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/AssertAssertBcenter_crop_3/assert_non_negative_1/assert_less_equal/All:output:0Scenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0:output:0Scenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1:output:0Scenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2:output:0center_crop_3/sub_1:z:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/Assert*
T
2*
_output_shapes
 2E
Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert?
center_crop_3/truediv/yConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/truediv/y?
center_crop_3/truediv/CastCastcenter_crop_3/sub:z:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/truediv/Cast?
center_crop_3/truediv/Cast_1Cast center_crop_3/truediv/y:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/truediv/Cast_1?
center_crop_3/truedivRealDivcenter_crop_3/truediv/Cast:y:0 center_crop_3/truediv/Cast_1:y:0*
T0*
_output_shapes
: 2
center_crop_3/truediv{
center_crop_3/CastCastcenter_crop_3/truediv:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/Cast?
center_crop_3/truediv_1/yConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/truediv_1/y?
center_crop_3/truediv_1/CastCastcenter_crop_3/sub_1:z:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/truediv_1/Cast?
center_crop_3/truediv_1/Cast_1Cast"center_crop_3/truediv_1/y:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
center_crop_3/truediv_1/Cast_1?
center_crop_3/truediv_1RealDiv center_crop_3/truediv_1/Cast:y:0"center_crop_3/truediv_1/Cast_1:y:0*
T0*
_output_shapes
: 2
center_crop_3/truediv_1?
center_crop_3/Cast_1Castcenter_crop_3/truediv_1:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/Cast_1?
center_crop_3/stack/0ConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : 2
center_crop_3/stack/0?
center_crop_3/stack/3ConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : 2
center_crop_3/stack/3?
center_crop_3/stackPackcenter_crop_3/stack/0:output:0center_crop_3/Cast:y:0center_crop_3/Cast_1:y:0center_crop_3/stack/3:output:0*
N*
T0*
_output_shapes
:2
center_crop_3/stack?
center_crop_3/stack_1ConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
:*
dtype0*%
valueB"????      ????2
center_crop_3/stack_1?
center_crop_3/SliceSlicerescaling_135/add:z:0center_crop_3/stack:output:0center_crop_3/stack_1:output:0*
Index0*
T0*/
_output_shapes
:?????????2
center_crop_3/Slice?
 conv2d_266/Conv2D/ReadVariableOpReadVariableOp)conv2d_266_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02"
 conv2d_266/Conv2D/ReadVariableOp?
conv2d_266/Conv2DConv2Dcenter_crop_3/Slice:output:0(conv2d_266/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_266/Conv2D?
!conv2d_266/BiasAdd/ReadVariableOpReadVariableOp*conv2d_266_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_266/BiasAdd/ReadVariableOp?
conv2d_266/BiasAddBiasAddconv2d_266/Conv2D:output:0)conv2d_266/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_266/BiasAdd?
conv2d_266/ReluReluconv2d_266/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_266/Relu?
max_pooling2d_265/MaxPoolMaxPoolconv2d_266/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_265/MaxPool?
 conv2d_267/Conv2D/ReadVariableOpReadVariableOp)conv2d_267_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02"
 conv2d_267/Conv2D/ReadVariableOp?
conv2d_267/Conv2DConv2D"max_pooling2d_265/MaxPool:output:0(conv2d_267/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_267/Conv2D?
!conv2d_267/BiasAdd/ReadVariableOpReadVariableOp*conv2d_267_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_267/BiasAdd/ReadVariableOp?
conv2d_267/BiasAddBiasAddconv2d_267/Conv2D:output:0)conv2d_267/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_267/BiasAdd?
conv2d_267/ReluReluconv2d_267/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_267/Relu?
max_pooling2d_266/MaxPoolMaxPoolconv2d_267/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_266/MaxPoolw
flatten_134/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_134/Const?
flatten_134/ReshapeReshape"max_pooling2d_266/MaxPool:output:0flatten_134/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_134/Reshape?
dense_425/MatMul/ReadVariableOpReadVariableOp(dense_425_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_425/MatMul/ReadVariableOp?
dense_425/MatMulMatMulflatten_134/Reshape:output:0'dense_425/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_425/MatMul?
 dense_425/BiasAdd/ReadVariableOpReadVariableOp)dense_425_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_425/BiasAdd/ReadVariableOp?
dense_425/BiasAddBiasAdddense_425/MatMul:product:0(dense_425/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_425/BiasAddw
dense_425/ReluReludense_425/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_425/Relu?
dropout_189/IdentityIdentitydense_425/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout_189/Identity?
dense_426/MatMul/ReadVariableOpReadVariableOp(dense_426_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_426/MatMul/ReadVariableOp?
dense_426/MatMulMatMuldropout_189/Identity:output:0'dense_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_426/MatMul?
 dense_426/BiasAdd/ReadVariableOpReadVariableOp)dense_426_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_426/BiasAdd/ReadVariableOp?
dense_426/BiasAddBiasAdddense_426/MatMul:product:0(dense_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_426/BiasAddw
dense_426/ReluReludense_426/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_426/Relu?
dropout_190/IdentityIdentitydense_426/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout_190/Identity?
dense_427/MatMul/ReadVariableOpReadVariableOp(dense_427_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_427/MatMul/ReadVariableOp?
dense_427/MatMulMatMuldropout_190/Identity:output:0'dense_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_427/MatMul?
 dense_427/BiasAdd/ReadVariableOpReadVariableOp)dense_427_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_427/BiasAdd/ReadVariableOp?
dense_427/BiasAddBiasAdddense_427/MatMul:product:0(dense_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_427/BiasAdd?
dense_427/SoftmaxSoftmaxdense_427/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_427/Softmax?
#conv2d_266/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#conv2d_266/kernel/Regularizer/Const?
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp)conv2d_266_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype022
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp?
!conv2d_266/kernel/Regularizer/AbsAbs8conv2d_266/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2#
!conv2d_266/kernel/Regularizer/Abs?
%conv2d_266/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_266/kernel/Regularizer/Const_1?
!conv2d_266/kernel/Regularizer/SumSum%conv2d_266/kernel/Regularizer/Abs:y:0.conv2d_266/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/Sum?
#conv2d_266/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv2d_266/kernel/Regularizer/mul/x?
!conv2d_266/kernel/Regularizer/mulMul,conv2d_266/kernel/Regularizer/mul/x:output:0*conv2d_266/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/mul?
!conv2d_266/kernel/Regularizer/addAddV2,conv2d_266/kernel/Regularizer/Const:output:0%conv2d_266/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/add?
3conv2d_266/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_266_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype025
3conv2d_266/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_266/kernel/Regularizer/SquareSquare;conv2d_266/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2&
$conv2d_266/kernel/Regularizer/Square?
%conv2d_266/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_266/kernel/Regularizer/Const_2?
#conv2d_266/kernel/Regularizer/Sum_1Sum(conv2d_266/kernel/Regularizer/Square:y:0.conv2d_266/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/Sum_1?
%conv2d_266/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82'
%conv2d_266/kernel/Regularizer/mul_1/x?
#conv2d_266/kernel/Regularizer/mul_1Mul.conv2d_266/kernel/Regularizer/mul_1/x:output:0,conv2d_266/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/mul_1?
#conv2d_266/kernel/Regularizer/add_1AddV2%conv2d_266/kernel/Regularizer/add:z:0'conv2d_266/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/add_1?
#conv2d_267/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#conv2d_267/kernel/Regularizer/Const?
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp)conv2d_267_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype022
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp?
!conv2d_267/kernel/Regularizer/AbsAbs8conv2d_267/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ 2#
!conv2d_267/kernel/Regularizer/Abs?
%conv2d_267/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_267/kernel/Regularizer/Const_1?
!conv2d_267/kernel/Regularizer/SumSum%conv2d_267/kernel/Regularizer/Abs:y:0.conv2d_267/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/Sum?
#conv2d_267/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv2d_267/kernel/Regularizer/mul/x?
!conv2d_267/kernel/Regularizer/mulMul,conv2d_267/kernel/Regularizer/mul/x:output:0*conv2d_267/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/mul?
!conv2d_267/kernel/Regularizer/addAddV2,conv2d_267/kernel/Regularizer/Const:output:0%conv2d_267/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/add?
3conv2d_267/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_267_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype025
3conv2d_267/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_267/kernel/Regularizer/SquareSquare;conv2d_267/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ 2&
$conv2d_267/kernel/Regularizer/Square?
%conv2d_267/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_267/kernel/Regularizer/Const_2?
#conv2d_267/kernel/Regularizer/Sum_1Sum(conv2d_267/kernel/Regularizer/Square:y:0.conv2d_267/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/Sum_1?
%conv2d_267/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82'
%conv2d_267/kernel/Regularizer/mul_1/x?
#conv2d_267/kernel/Regularizer/mul_1Mul.conv2d_267/kernel/Regularizer/mul_1/x:output:0,conv2d_267/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/mul_1?
#conv2d_267/kernel/Regularizer/add_1AddV2%conv2d_267/kernel/Regularizer/add:z:0'conv2d_267/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/add_1?
"dense_425/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_425/kernel/Regularizer/Const?
/dense_425/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp(dense_425_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/dense_425/kernel/Regularizer/Abs/ReadVariableOp?
 dense_425/kernel/Regularizer/AbsAbs7dense_425/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2"
 dense_425/kernel/Regularizer/Abs?
$dense_425/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_425/kernel/Regularizer/Const_1?
 dense_425/kernel/Regularizer/SumSum$dense_425/kernel/Regularizer/Abs:y:0-dense_425/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/Sum?
"dense_425/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_425/kernel/Regularizer/mul/x?
 dense_425/kernel/Regularizer/mulMul+dense_425/kernel/Regularizer/mul/x:output:0)dense_425/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/mul?
 dense_425/kernel/Regularizer/addAddV2+dense_425/kernel/Regularizer/Const:output:0$dense_425/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/add?
2dense_425/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_425_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_425/kernel/Regularizer/Square/ReadVariableOp?
#dense_425/kernel/Regularizer/SquareSquare:dense_425/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_425/kernel/Regularizer/Square?
$dense_425/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_425/kernel/Regularizer/Const_2?
"dense_425/kernel/Regularizer/Sum_1Sum'dense_425/kernel/Regularizer/Square:y:0-dense_425/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/Sum_1?
$dense_425/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82&
$dense_425/kernel/Regularizer/mul_1/x?
"dense_425/kernel/Regularizer/mul_1Mul-dense_425/kernel/Regularizer/mul_1/x:output:0+dense_425/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/mul_1?
"dense_425/kernel/Regularizer/add_1AddV2$dense_425/kernel/Regularizer/add:z:0&dense_425/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/add_1?
"dense_426/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_426/kernel/Regularizer/Const?
/dense_426/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp(dense_426_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/dense_426/kernel/Regularizer/Abs/ReadVariableOp?
 dense_426/kernel/Regularizer/AbsAbs7dense_426/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2"
 dense_426/kernel/Regularizer/Abs?
$dense_426/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_426/kernel/Regularizer/Const_1?
 dense_426/kernel/Regularizer/SumSum$dense_426/kernel/Regularizer/Abs:y:0-dense_426/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/Sum?
"dense_426/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_426/kernel/Regularizer/mul/x?
 dense_426/kernel/Regularizer/mulMul+dense_426/kernel/Regularizer/mul/x:output:0)dense_426/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/mul?
 dense_426/kernel/Regularizer/addAddV2+dense_426/kernel/Regularizer/Const:output:0$dense_426/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/add?
2dense_426/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_426_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_426/kernel/Regularizer/Square/ReadVariableOp?
#dense_426/kernel/Regularizer/SquareSquare:dense_426/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_426/kernel/Regularizer/Square?
$dense_426/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_426/kernel/Regularizer/Const_2?
"dense_426/kernel/Regularizer/Sum_1Sum'dense_426/kernel/Regularizer/Square:y:0-dense_426/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/Sum_1?
$dense_426/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82&
$dense_426/kernel/Regularizer/mul_1/x?
"dense_426/kernel/Regularizer/mul_1Mul-dense_426/kernel/Regularizer/mul_1/x:output:0+dense_426/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/mul_1?
"dense_426/kernel/Regularizer/add_1AddV2$dense_426/kernel/Regularizer/add:z:0&dense_426/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/add_1?
IdentityIdentitydense_427/Softmax:softmax:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert"^conv2d_266/BiasAdd/ReadVariableOp!^conv2d_266/Conv2D/ReadVariableOp1^conv2d_266/kernel/Regularizer/Abs/ReadVariableOp4^conv2d_266/kernel/Regularizer/Square/ReadVariableOp"^conv2d_267/BiasAdd/ReadVariableOp!^conv2d_267/Conv2D/ReadVariableOp1^conv2d_267/kernel/Regularizer/Abs/ReadVariableOp4^conv2d_267/kernel/Regularizer/Square/ReadVariableOp!^dense_425/BiasAdd/ReadVariableOp ^dense_425/MatMul/ReadVariableOp0^dense_425/kernel/Regularizer/Abs/ReadVariableOp3^dense_425/kernel/Regularizer/Square/ReadVariableOp!^dense_426/BiasAdd/ReadVariableOp ^dense_426/MatMul/ReadVariableOp0^dense_426/kernel/Regularizer/Abs/ReadVariableOp3^dense_426/kernel/Regularizer/Square/ReadVariableOp!^dense_427/BiasAdd/ReadVariableOp ^dense_427/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????88::::::::::2?
Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/AssertAcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert2?
Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/AssertCcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert2F
!conv2d_266/BiasAdd/ReadVariableOp!conv2d_266/BiasAdd/ReadVariableOp2D
 conv2d_266/Conv2D/ReadVariableOp conv2d_266/Conv2D/ReadVariableOp2d
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp2j
3conv2d_266/kernel/Regularizer/Square/ReadVariableOp3conv2d_266/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_267/BiasAdd/ReadVariableOp!conv2d_267/BiasAdd/ReadVariableOp2D
 conv2d_267/Conv2D/ReadVariableOp conv2d_267/Conv2D/ReadVariableOp2d
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp2j
3conv2d_267/kernel/Regularizer/Square/ReadVariableOp3conv2d_267/kernel/Regularizer/Square/ReadVariableOp2D
 dense_425/BiasAdd/ReadVariableOp dense_425/BiasAdd/ReadVariableOp2B
dense_425/MatMul/ReadVariableOpdense_425/MatMul/ReadVariableOp2b
/dense_425/kernel/Regularizer/Abs/ReadVariableOp/dense_425/kernel/Regularizer/Abs/ReadVariableOp2h
2dense_425/kernel/Regularizer/Square/ReadVariableOp2dense_425/kernel/Regularizer/Square/ReadVariableOp2D
 dense_426/BiasAdd/ReadVariableOp dense_426/BiasAdd/ReadVariableOp2B
dense_426/MatMul/ReadVariableOpdense_426/MatMul/ReadVariableOp2b
/dense_426/kernel/Regularizer/Abs/ReadVariableOp/dense_426/kernel/Regularizer/Abs/ReadVariableOp2h
2dense_426/kernel/Regularizer/Square/ReadVariableOp2dense_426/kernel/Regularizer/Square/ReadVariableOp2D
 dense_427/BiasAdd/ReadVariableOp dense_427/BiasAdd/ReadVariableOp2B
dense_427/MatMul/ReadVariableOpdense_427/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????88
 
_user_specified_nameinputs
?
?
+__inference_dense_425_layer_call_fn_4758908

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_425_layer_call_and_return_conditional_losses_47570972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_4759052=
9conv2d_266_kernel_regularizer_abs_readvariableop_resource
identity??0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp?3conv2d_266/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_266/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#conv2d_266/kernel/Regularizer/Const?
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp9conv2d_266_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:@*
dtype022
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp?
!conv2d_266/kernel/Regularizer/AbsAbs8conv2d_266/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2#
!conv2d_266/kernel/Regularizer/Abs?
%conv2d_266/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_266/kernel/Regularizer/Const_1?
!conv2d_266/kernel/Regularizer/SumSum%conv2d_266/kernel/Regularizer/Abs:y:0.conv2d_266/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/Sum?
#conv2d_266/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv2d_266/kernel/Regularizer/mul/x?
!conv2d_266/kernel/Regularizer/mulMul,conv2d_266/kernel/Regularizer/mul/x:output:0*conv2d_266/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/mul?
!conv2d_266/kernel/Regularizer/addAddV2,conv2d_266/kernel/Regularizer/Const:output:0%conv2d_266/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/add?
3conv2d_266/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9conv2d_266_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:@*
dtype025
3conv2d_266/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_266/kernel/Regularizer/SquareSquare;conv2d_266/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2&
$conv2d_266/kernel/Regularizer/Square?
%conv2d_266/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_266/kernel/Regularizer/Const_2?
#conv2d_266/kernel/Regularizer/Sum_1Sum(conv2d_266/kernel/Regularizer/Square:y:0.conv2d_266/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/Sum_1?
%conv2d_266/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82'
%conv2d_266/kernel/Regularizer/mul_1/x?
#conv2d_266/kernel/Regularizer/mul_1Mul.conv2d_266/kernel/Regularizer/mul_1/x:output:0,conv2d_266/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/mul_1?
#conv2d_266/kernel/Regularizer/add_1AddV2%conv2d_266/kernel/Regularizer/add:z:0'conv2d_266/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/add_1?
IdentityIdentity'conv2d_266/kernel/Regularizer/add_1:z:01^conv2d_266/kernel/Regularizer/Abs/ReadVariableOp4^conv2d_266/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2d
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp2j
3conv2d_266/kernel/Regularizer/Square/ReadVariableOp3conv2d_266/kernel/Regularizer/Square/ReadVariableOp
?#
?
G__inference_conv2d_266_layer_call_and_return_conditional_losses_4756997

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp?3conv2d_266/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
#conv2d_266/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#conv2d_266/kernel/Regularizer/Const?
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype022
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp?
!conv2d_266/kernel/Regularizer/AbsAbs8conv2d_266/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2#
!conv2d_266/kernel/Regularizer/Abs?
%conv2d_266/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_266/kernel/Regularizer/Const_1?
!conv2d_266/kernel/Regularizer/SumSum%conv2d_266/kernel/Regularizer/Abs:y:0.conv2d_266/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/Sum?
#conv2d_266/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv2d_266/kernel/Regularizer/mul/x?
!conv2d_266/kernel/Regularizer/mulMul,conv2d_266/kernel/Regularizer/mul/x:output:0*conv2d_266/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/mul?
!conv2d_266/kernel/Regularizer/addAddV2,conv2d_266/kernel/Regularizer/Const:output:0%conv2d_266/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/add?
3conv2d_266/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype025
3conv2d_266/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_266/kernel/Regularizer/SquareSquare;conv2d_266/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2&
$conv2d_266/kernel/Regularizer/Square?
%conv2d_266/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_266/kernel/Regularizer/Const_2?
#conv2d_266/kernel/Regularizer/Sum_1Sum(conv2d_266/kernel/Regularizer/Square:y:0.conv2d_266/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/Sum_1?
%conv2d_266/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82'
%conv2d_266/kernel/Regularizer/mul_1/x?
#conv2d_266/kernel/Regularizer/mul_1Mul.conv2d_266/kernel/Regularizer/mul_1/x:output:0,conv2d_266/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/mul_1?
#conv2d_266/kernel/Regularizer/add_1AddV2%conv2d_266/kernel/Regularizer/add:z:0'conv2d_266/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/add_1?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp1^conv2d_266/kernel/Regularizer/Abs/ReadVariableOp4^conv2d_266/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2d
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp2j
3conv2d_266/kernel/Regularizer/Square/ReadVariableOp3conv2d_266/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_265_layer_call_and_return_conditional_losses_4756669

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
d
H__inference_flatten_134_layer_call_and_return_conditional_losses_4758853

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
I
-__inference_dropout_189_layer_call_fn_4758935

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_189_layer_call_and_return_conditional_losses_47571302
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_3_4759112<
8dense_426_kernel_regularizer_abs_readvariableop_resource
identity??/dense_426/kernel/Regularizer/Abs/ReadVariableOp?2dense_426/kernel/Regularizer/Square/ReadVariableOp?
"dense_426/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_426/kernel/Regularizer/Const?
/dense_426/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp8dense_426_kernel_regularizer_abs_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/dense_426/kernel/Regularizer/Abs/ReadVariableOp?
 dense_426/kernel/Regularizer/AbsAbs7dense_426/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2"
 dense_426/kernel/Regularizer/Abs?
$dense_426/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_426/kernel/Regularizer/Const_1?
 dense_426/kernel/Regularizer/SumSum$dense_426/kernel/Regularizer/Abs:y:0-dense_426/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/Sum?
"dense_426/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_426/kernel/Regularizer/mul/x?
 dense_426/kernel/Regularizer/mulMul+dense_426/kernel/Regularizer/mul/x:output:0)dense_426/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/mul?
 dense_426/kernel/Regularizer/addAddV2+dense_426/kernel/Regularizer/Const:output:0$dense_426/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/add?
2dense_426/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8dense_426_kernel_regularizer_abs_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_426/kernel/Regularizer/Square/ReadVariableOp?
#dense_426/kernel/Regularizer/SquareSquare:dense_426/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_426/kernel/Regularizer/Square?
$dense_426/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_426/kernel/Regularizer/Const_2?
"dense_426/kernel/Regularizer/Sum_1Sum'dense_426/kernel/Regularizer/Square:y:0-dense_426/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/Sum_1?
$dense_426/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82&
$dense_426/kernel/Regularizer/mul_1/x?
"dense_426/kernel/Regularizer/mul_1Mul-dense_426/kernel/Regularizer/mul_1/x:output:0+dense_426/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/mul_1?
"dense_426/kernel/Regularizer/add_1AddV2$dense_426/kernel/Regularizer/add:z:0&dense_426/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/add_1?
IdentityIdentity&dense_426/kernel/Regularizer/add_1:z:00^dense_426/kernel/Regularizer/Abs/ReadVariableOp3^dense_426/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2b
/dense_426/kernel/Regularizer/Abs/ReadVariableOp/dense_426/kernel/Regularizer/Abs/ReadVariableOp2h
2dense_426/kernel/Regularizer/Square/ReadVariableOp2dense_426/kernel/Regularizer/Square/ReadVariableOp
?
f
-__inference_dropout_189_layer_call_fn_4758930

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_189_layer_call_and_return_conditional_losses_47571252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
H__inference_dropout_189_layer_call_and_return_conditional_losses_4757130

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
K__inference_sequential_135_layer_call_and_return_conditional_losses_4757455
rescaling_135_input
conv2d_266_4757364
conv2d_266_4757366
conv2d_267_4757370
conv2d_267_4757372
dense_425_4757377
dense_425_4757379
dense_426_4757383
dense_426_4757385
dense_427_4757389
dense_427_4757391
identity??Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert?Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert?"conv2d_266/StatefulPartitionedCall?0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp?3conv2d_266/kernel/Regularizer/Square/ReadVariableOp?"conv2d_267/StatefulPartitionedCall?0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp?3conv2d_267/kernel/Regularizer/Square/ReadVariableOp?!dense_425/StatefulPartitionedCall?/dense_425/kernel/Regularizer/Abs/ReadVariableOp?2dense_425/kernel/Regularizer/Square/ReadVariableOp?!dense_426/StatefulPartitionedCall?/dense_426/kernel/Regularizer/Abs/ReadVariableOp?2dense_426/kernel/Regularizer/Square/ReadVariableOp?!dense_427/StatefulPartitionedCallq
rescaling_135/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling_135/Cast/xu
rescaling_135/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_135/Cast_1/x?
rescaling_135/mulMulrescaling_135_inputrescaling_135/Cast/x:output:0*
T0*/
_output_shapes
:?????????882
rescaling_135/mul?
rescaling_135/addAddV2rescaling_135/mul:z:0rescaling_135/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????882
rescaling_135/addo
center_crop_3/ShapeShaperescaling_135/add:z:0*
T0*
_output_shapes
:2
center_crop_3/Shape?
!center_crop_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!center_crop_3/strided_slice/stack?
#center_crop_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#center_crop_3/strided_slice/stack_1?
#center_crop_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#center_crop_3/strided_slice/stack_2?
center_crop_3/strided_sliceStridedSlicecenter_crop_3/Shape:output:0*center_crop_3/strided_slice/stack:output:0,center_crop_3/strided_slice/stack_1:output:0,center_crop_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
center_crop_3/strided_slice?
#center_crop_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#center_crop_3/strided_slice_1/stack?
%center_crop_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%center_crop_3/strided_slice_1/stack_1?
%center_crop_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%center_crop_3/strided_slice_1/stack_2?
center_crop_3/strided_slice_1StridedSlicecenter_crop_3/Shape:output:0,center_crop_3/strided_slice_1/stack:output:0.center_crop_3/strided_slice_1/stack_1:output:0.center_crop_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
center_crop_3/strided_slice_1l
center_crop_3/sub/yConst*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/sub/y?
center_crop_3/subSub$center_crop_3/strided_slice:output:0center_crop_3/sub/y:output:0*
T0*
_output_shapes
: 2
center_crop_3/subp
center_crop_3/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/sub_1/y?
center_crop_3/sub_1Sub&center_crop_3/strided_slice_1:output:0center_crop_3/sub_1/y:output:0*
T0*
_output_shapes
: 2
center_crop_3/sub_1?
'center_crop_3/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0*
value	B : 2)
'center_crop_3/assert_non_negative/Const?
=center_crop_3/assert_non_negative/assert_less_equal/LessEqual	LessEqual0center_crop_3/assert_non_negative/Const:output:0center_crop_3/sub:z:0*
T0*
_output_shapes
: 2?
=center_crop_3/assert_non_negative/assert_less_equal/LessEqual?
8center_crop_3/assert_non_negative/assert_less_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : 2:
8center_crop_3/assert_non_negative/assert_less_equal/Rank?
?center_crop_3/assert_non_negative/assert_less_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2A
?center_crop_3/assert_non_negative/assert_less_equal/range/start?
?center_crop_3/assert_non_negative/assert_less_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2A
?center_crop_3/assert_non_negative/assert_less_equal/range/delta?
9center_crop_3/assert_non_negative/assert_less_equal/rangeRangeHcenter_crop_3/assert_non_negative/assert_less_equal/range/start:output:0Acenter_crop_3/assert_non_negative/assert_less_equal/Rank:output:0Hcenter_crop_3/assert_non_negative/assert_less_equal/range/delta:output:0*
_output_shapes
: 2;
9center_crop_3/assert_non_negative/assert_less_equal/range?
7center_crop_3/assert_non_negative/assert_less_equal/AllAllAcenter_crop_3/assert_non_negative/assert_less_equal/LessEqual:z:0Bcenter_crop_3/assert_non_negative/assert_less_equal/range:output:0*
_output_shapes
: 29
7center_crop_3/assert_non_negative/assert_less_equal/All?
@center_crop_3/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*L
valueCBA B;The crop height 28 should not be greater than input height.2B
@center_crop_3/assert_non_negative/assert_less_equal/Assert/Const?
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2D
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_1?
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*+
value"B  Bx (center_crop_3/sub:0) = 2D
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_2?
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*L
valueCBA B;The crop height 28 should not be greater than input height.2J
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0?
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2J
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1?
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*+
value"B  Bx (center_crop_3/sub:0) = 2J
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2?
Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/AssertAssert@center_crop_3/assert_non_negative/assert_less_equal/All:output:0Qcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0:output:0Qcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1:output:0Qcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2:output:0center_crop_3/sub:z:0*
T
2*
_output_shapes
 2C
Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert?
)center_crop_3/assert_non_negative_1/ConstConst*
_output_shapes
: *
dtype0*
value	B : 2+
)center_crop_3/assert_non_negative_1/Const?
?center_crop_3/assert_non_negative_1/assert_less_equal/LessEqual	LessEqual2center_crop_3/assert_non_negative_1/Const:output:0center_crop_3/sub_1:z:0*
T0*
_output_shapes
: 2A
?center_crop_3/assert_non_negative_1/assert_less_equal/LessEqual?
:center_crop_3/assert_non_negative_1/assert_less_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : 2<
:center_crop_3/assert_non_negative_1/assert_less_equal/Rank?
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2C
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/start?
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2C
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/delta?
;center_crop_3/assert_non_negative_1/assert_less_equal/rangeRangeJcenter_crop_3/assert_non_negative_1/assert_less_equal/range/start:output:0Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Rank:output:0Jcenter_crop_3/assert_non_negative_1/assert_less_equal/range/delta:output:0*
_output_shapes
: 2=
;center_crop_3/assert_non_negative_1/assert_less_equal/range?
9center_crop_3/assert_non_negative_1/assert_less_equal/AllAllCcenter_crop_3/assert_non_negative_1/assert_less_equal/LessEqual:z:0Dcenter_crop_3/assert_non_negative_1/assert_less_equal/range:output:0*
_output_shapes
: 2;
9center_crop_3/assert_non_negative_1/assert_less_equal/All?
Bcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*J
valueAB? B9The crop width 28 should not be greater than input width.2D
Bcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const?
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2F
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_1?
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*-
value$B" Bx (center_crop_3/sub_1:0) = 2F
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_2?
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*J
valueAB? B9The crop width 28 should not be greater than input width.2L
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0?
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2L
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1?
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*-
value$B" Bx (center_crop_3/sub_1:0) = 2L
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2?
Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/AssertAssertBcenter_crop_3/assert_non_negative_1/assert_less_equal/All:output:0Scenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0:output:0Scenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1:output:0Scenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2:output:0center_crop_3/sub_1:z:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/Assert*
T
2*
_output_shapes
 2E
Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert?
center_crop_3/truediv/yConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/truediv/y?
center_crop_3/truediv/CastCastcenter_crop_3/sub:z:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/truediv/Cast?
center_crop_3/truediv/Cast_1Cast center_crop_3/truediv/y:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/truediv/Cast_1?
center_crop_3/truedivRealDivcenter_crop_3/truediv/Cast:y:0 center_crop_3/truediv/Cast_1:y:0*
T0*
_output_shapes
: 2
center_crop_3/truediv{
center_crop_3/CastCastcenter_crop_3/truediv:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/Cast?
center_crop_3/truediv_1/yConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/truediv_1/y?
center_crop_3/truediv_1/CastCastcenter_crop_3/sub_1:z:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/truediv_1/Cast?
center_crop_3/truediv_1/Cast_1Cast"center_crop_3/truediv_1/y:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
center_crop_3/truediv_1/Cast_1?
center_crop_3/truediv_1RealDiv center_crop_3/truediv_1/Cast:y:0"center_crop_3/truediv_1/Cast_1:y:0*
T0*
_output_shapes
: 2
center_crop_3/truediv_1?
center_crop_3/Cast_1Castcenter_crop_3/truediv_1:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/Cast_1?
center_crop_3/stack/0ConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : 2
center_crop_3/stack/0?
center_crop_3/stack/3ConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : 2
center_crop_3/stack/3?
center_crop_3/stackPackcenter_crop_3/stack/0:output:0center_crop_3/Cast:y:0center_crop_3/Cast_1:y:0center_crop_3/stack/3:output:0*
N*
T0*
_output_shapes
:2
center_crop_3/stack?
center_crop_3/stack_1ConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
:*
dtype0*%
valueB"????      ????2
center_crop_3/stack_1?
center_crop_3/SliceSlicerescaling_135/add:z:0center_crop_3/stack:output:0center_crop_3/stack_1:output:0*
Index0*
T0*/
_output_shapes
:?????????2
center_crop_3/Slice?
"conv2d_266/StatefulPartitionedCallStatefulPartitionedCallcenter_crop_3/Slice:output:0conv2d_266_4757364conv2d_266_4757366*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_266_layer_call_and_return_conditional_losses_47569972$
"conv2d_266/StatefulPartitionedCall?
!max_pooling2d_265/PartitionedCallPartitionedCall+conv2d_266/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_265_layer_call_and_return_conditional_losses_47566692#
!max_pooling2d_265/PartitionedCall?
"conv2d_267/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_265/PartitionedCall:output:0conv2d_267_4757370conv2d_267_4757372*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_267_layer_call_and_return_conditional_losses_47570402$
"conv2d_267/StatefulPartitionedCall?
!max_pooling2d_266/PartitionedCallPartitionedCall+conv2d_267/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_266_layer_call_and_return_conditional_losses_47566812#
!max_pooling2d_266/PartitionedCall?
flatten_134/PartitionedCallPartitionedCall*max_pooling2d_266/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_flatten_134_layer_call_and_return_conditional_losses_47570632
flatten_134/PartitionedCall?
!dense_425/StatefulPartitionedCallStatefulPartitionedCall$flatten_134/PartitionedCall:output:0dense_425_4757377dense_425_4757379*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_425_layer_call_and_return_conditional_losses_47570972#
!dense_425/StatefulPartitionedCall?
dropout_189/PartitionedCallPartitionedCall*dense_425/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_189_layer_call_and_return_conditional_losses_47571302
dropout_189/PartitionedCall?
!dense_426/StatefulPartitionedCallStatefulPartitionedCall$dropout_189/PartitionedCall:output:0dense_426_4757383dense_426_4757385*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_426_layer_call_and_return_conditional_losses_47571692#
!dense_426/StatefulPartitionedCall?
dropout_190/PartitionedCallPartitionedCall*dense_426/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_190_layer_call_and_return_conditional_losses_47572022
dropout_190/PartitionedCall?
!dense_427/StatefulPartitionedCallStatefulPartitionedCall$dropout_190/PartitionedCall:output:0dense_427_4757389dense_427_4757391*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_427_layer_call_and_return_conditional_losses_47572262#
!dense_427/StatefulPartitionedCall?
#conv2d_266/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#conv2d_266/kernel/Regularizer/Const?
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_266_4757364*&
_output_shapes
:@*
dtype022
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp?
!conv2d_266/kernel/Regularizer/AbsAbs8conv2d_266/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2#
!conv2d_266/kernel/Regularizer/Abs?
%conv2d_266/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_266/kernel/Regularizer/Const_1?
!conv2d_266/kernel/Regularizer/SumSum%conv2d_266/kernel/Regularizer/Abs:y:0.conv2d_266/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/Sum?
#conv2d_266/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv2d_266/kernel/Regularizer/mul/x?
!conv2d_266/kernel/Regularizer/mulMul,conv2d_266/kernel/Regularizer/mul/x:output:0*conv2d_266/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/mul?
!conv2d_266/kernel/Regularizer/addAddV2,conv2d_266/kernel/Regularizer/Const:output:0%conv2d_266/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/add?
3conv2d_266/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_266_4757364*&
_output_shapes
:@*
dtype025
3conv2d_266/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_266/kernel/Regularizer/SquareSquare;conv2d_266/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2&
$conv2d_266/kernel/Regularizer/Square?
%conv2d_266/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_266/kernel/Regularizer/Const_2?
#conv2d_266/kernel/Regularizer/Sum_1Sum(conv2d_266/kernel/Regularizer/Square:y:0.conv2d_266/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/Sum_1?
%conv2d_266/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82'
%conv2d_266/kernel/Regularizer/mul_1/x?
#conv2d_266/kernel/Regularizer/mul_1Mul.conv2d_266/kernel/Regularizer/mul_1/x:output:0,conv2d_266/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/mul_1?
#conv2d_266/kernel/Regularizer/add_1AddV2%conv2d_266/kernel/Regularizer/add:z:0'conv2d_266/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/add_1?
#conv2d_267/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#conv2d_267/kernel/Regularizer/Const?
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_267_4757370*&
_output_shapes
:@ *
dtype022
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp?
!conv2d_267/kernel/Regularizer/AbsAbs8conv2d_267/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ 2#
!conv2d_267/kernel/Regularizer/Abs?
%conv2d_267/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_267/kernel/Regularizer/Const_1?
!conv2d_267/kernel/Regularizer/SumSum%conv2d_267/kernel/Regularizer/Abs:y:0.conv2d_267/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/Sum?
#conv2d_267/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv2d_267/kernel/Regularizer/mul/x?
!conv2d_267/kernel/Regularizer/mulMul,conv2d_267/kernel/Regularizer/mul/x:output:0*conv2d_267/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/mul?
!conv2d_267/kernel/Regularizer/addAddV2,conv2d_267/kernel/Regularizer/Const:output:0%conv2d_267/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/add?
3conv2d_267/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_267_4757370*&
_output_shapes
:@ *
dtype025
3conv2d_267/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_267/kernel/Regularizer/SquareSquare;conv2d_267/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ 2&
$conv2d_267/kernel/Regularizer/Square?
%conv2d_267/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_267/kernel/Regularizer/Const_2?
#conv2d_267/kernel/Regularizer/Sum_1Sum(conv2d_267/kernel/Regularizer/Square:y:0.conv2d_267/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/Sum_1?
%conv2d_267/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82'
%conv2d_267/kernel/Regularizer/mul_1/x?
#conv2d_267/kernel/Regularizer/mul_1Mul.conv2d_267/kernel/Regularizer/mul_1/x:output:0,conv2d_267/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/mul_1?
#conv2d_267/kernel/Regularizer/add_1AddV2%conv2d_267/kernel/Regularizer/add:z:0'conv2d_267/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/add_1?
"dense_425/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_425/kernel/Regularizer/Const?
/dense_425/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_425_4757377* 
_output_shapes
:
??*
dtype021
/dense_425/kernel/Regularizer/Abs/ReadVariableOp?
 dense_425/kernel/Regularizer/AbsAbs7dense_425/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2"
 dense_425/kernel/Regularizer/Abs?
$dense_425/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_425/kernel/Regularizer/Const_1?
 dense_425/kernel/Regularizer/SumSum$dense_425/kernel/Regularizer/Abs:y:0-dense_425/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/Sum?
"dense_425/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_425/kernel/Regularizer/mul/x?
 dense_425/kernel/Regularizer/mulMul+dense_425/kernel/Regularizer/mul/x:output:0)dense_425/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/mul?
 dense_425/kernel/Regularizer/addAddV2+dense_425/kernel/Regularizer/Const:output:0$dense_425/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/add?
2dense_425/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_425_4757377* 
_output_shapes
:
??*
dtype024
2dense_425/kernel/Regularizer/Square/ReadVariableOp?
#dense_425/kernel/Regularizer/SquareSquare:dense_425/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_425/kernel/Regularizer/Square?
$dense_425/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_425/kernel/Regularizer/Const_2?
"dense_425/kernel/Regularizer/Sum_1Sum'dense_425/kernel/Regularizer/Square:y:0-dense_425/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/Sum_1?
$dense_425/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82&
$dense_425/kernel/Regularizer/mul_1/x?
"dense_425/kernel/Regularizer/mul_1Mul-dense_425/kernel/Regularizer/mul_1/x:output:0+dense_425/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/mul_1?
"dense_425/kernel/Regularizer/add_1AddV2$dense_425/kernel/Regularizer/add:z:0&dense_425/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/add_1?
"dense_426/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_426/kernel/Regularizer/Const?
/dense_426/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_426_4757383* 
_output_shapes
:
??*
dtype021
/dense_426/kernel/Regularizer/Abs/ReadVariableOp?
 dense_426/kernel/Regularizer/AbsAbs7dense_426/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2"
 dense_426/kernel/Regularizer/Abs?
$dense_426/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_426/kernel/Regularizer/Const_1?
 dense_426/kernel/Regularizer/SumSum$dense_426/kernel/Regularizer/Abs:y:0-dense_426/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/Sum?
"dense_426/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_426/kernel/Regularizer/mul/x?
 dense_426/kernel/Regularizer/mulMul+dense_426/kernel/Regularizer/mul/x:output:0)dense_426/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/mul?
 dense_426/kernel/Regularizer/addAddV2+dense_426/kernel/Regularizer/Const:output:0$dense_426/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/add?
2dense_426/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_426_4757383* 
_output_shapes
:
??*
dtype024
2dense_426/kernel/Regularizer/Square/ReadVariableOp?
#dense_426/kernel/Regularizer/SquareSquare:dense_426/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_426/kernel/Regularizer/Square?
$dense_426/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_426/kernel/Regularizer/Const_2?
"dense_426/kernel/Regularizer/Sum_1Sum'dense_426/kernel/Regularizer/Square:y:0-dense_426/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/Sum_1?
$dense_426/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82&
$dense_426/kernel/Regularizer/mul_1/x?
"dense_426/kernel/Regularizer/mul_1Mul-dense_426/kernel/Regularizer/mul_1/x:output:0+dense_426/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/mul_1?
"dense_426/kernel/Regularizer/add_1AddV2$dense_426/kernel/Regularizer/add:z:0&dense_426/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/add_1?
IdentityIdentity*dense_427/StatefulPartitionedCall:output:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert#^conv2d_266/StatefulPartitionedCall1^conv2d_266/kernel/Regularizer/Abs/ReadVariableOp4^conv2d_266/kernel/Regularizer/Square/ReadVariableOp#^conv2d_267/StatefulPartitionedCall1^conv2d_267/kernel/Regularizer/Abs/ReadVariableOp4^conv2d_267/kernel/Regularizer/Square/ReadVariableOp"^dense_425/StatefulPartitionedCall0^dense_425/kernel/Regularizer/Abs/ReadVariableOp3^dense_425/kernel/Regularizer/Square/ReadVariableOp"^dense_426/StatefulPartitionedCall0^dense_426/kernel/Regularizer/Abs/ReadVariableOp3^dense_426/kernel/Regularizer/Square/ReadVariableOp"^dense_427/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????88::::::::::2?
Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/AssertAcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert2?
Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/AssertCcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert2H
"conv2d_266/StatefulPartitionedCall"conv2d_266/StatefulPartitionedCall2d
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp2j
3conv2d_266/kernel/Regularizer/Square/ReadVariableOp3conv2d_266/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_267/StatefulPartitionedCall"conv2d_267/StatefulPartitionedCall2d
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp2j
3conv2d_267/kernel/Regularizer/Square/ReadVariableOp3conv2d_267/kernel/Regularizer/Square/ReadVariableOp2F
!dense_425/StatefulPartitionedCall!dense_425/StatefulPartitionedCall2b
/dense_425/kernel/Regularizer/Abs/ReadVariableOp/dense_425/kernel/Regularizer/Abs/ReadVariableOp2h
2dense_425/kernel/Regularizer/Square/ReadVariableOp2dense_425/kernel/Regularizer/Square/ReadVariableOp2F
!dense_426/StatefulPartitionedCall!dense_426/StatefulPartitionedCall2b
/dense_426/kernel/Regularizer/Abs/ReadVariableOp/dense_426/kernel/Regularizer/Abs/ReadVariableOp2h
2dense_426/kernel/Regularizer/Square/ReadVariableOp2dense_426/kernel/Regularizer/Square/ReadVariableOp2F
!dense_427/StatefulPartitionedCall!dense_427/StatefulPartitionedCall:d `
/
_output_shapes
:?????????88
-
_user_specified_namerescaling_135_input
??
?

"__inference__wrapped_model_4756663
rescaling_135_input<
8sequential_135_conv2d_266_conv2d_readvariableop_resource=
9sequential_135_conv2d_266_biasadd_readvariableop_resource<
8sequential_135_conv2d_267_conv2d_readvariableop_resource=
9sequential_135_conv2d_267_biasadd_readvariableop_resource;
7sequential_135_dense_425_matmul_readvariableop_resource<
8sequential_135_dense_425_biasadd_readvariableop_resource;
7sequential_135_dense_426_matmul_readvariableop_resource<
8sequential_135_dense_426_biasadd_readvariableop_resource;
7sequential_135_dense_427_matmul_readvariableop_resource<
8sequential_135_dense_427_biasadd_readvariableop_resource
identity??Psequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/Assert?Rsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert?0sequential_135/conv2d_266/BiasAdd/ReadVariableOp?/sequential_135/conv2d_266/Conv2D/ReadVariableOp?0sequential_135/conv2d_267/BiasAdd/ReadVariableOp?/sequential_135/conv2d_267/Conv2D/ReadVariableOp?/sequential_135/dense_425/BiasAdd/ReadVariableOp?.sequential_135/dense_425/MatMul/ReadVariableOp?/sequential_135/dense_426/BiasAdd/ReadVariableOp?.sequential_135/dense_426/MatMul/ReadVariableOp?/sequential_135/dense_427/BiasAdd/ReadVariableOp?.sequential_135/dense_427/MatMul/ReadVariableOp?
#sequential_135/rescaling_135/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2%
#sequential_135/rescaling_135/Cast/x?
%sequential_135/rescaling_135/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%sequential_135/rescaling_135/Cast_1/x?
 sequential_135/rescaling_135/mulMulrescaling_135_input,sequential_135/rescaling_135/Cast/x:output:0*
T0*/
_output_shapes
:?????????882"
 sequential_135/rescaling_135/mul?
 sequential_135/rescaling_135/addAddV2$sequential_135/rescaling_135/mul:z:0.sequential_135/rescaling_135/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????882"
 sequential_135/rescaling_135/add?
"sequential_135/center_crop_3/ShapeShape$sequential_135/rescaling_135/add:z:0*
T0*
_output_shapes
:2$
"sequential_135/center_crop_3/Shape?
0sequential_135/center_crop_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0sequential_135/center_crop_3/strided_slice/stack?
2sequential_135/center_crop_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_135/center_crop_3/strided_slice/stack_1?
2sequential_135/center_crop_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_135/center_crop_3/strided_slice/stack_2?
*sequential_135/center_crop_3/strided_sliceStridedSlice+sequential_135/center_crop_3/Shape:output:09sequential_135/center_crop_3/strided_slice/stack:output:0;sequential_135/center_crop_3/strided_slice/stack_1:output:0;sequential_135/center_crop_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_135/center_crop_3/strided_slice?
2sequential_135/center_crop_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2sequential_135/center_crop_3/strided_slice_1/stack?
4sequential_135/center_crop_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_135/center_crop_3/strided_slice_1/stack_1?
4sequential_135/center_crop_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_135/center_crop_3/strided_slice_1/stack_2?
,sequential_135/center_crop_3/strided_slice_1StridedSlice+sequential_135/center_crop_3/Shape:output:0;sequential_135/center_crop_3/strided_slice_1/stack:output:0=sequential_135/center_crop_3/strided_slice_1/stack_1:output:0=sequential_135/center_crop_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,sequential_135/center_crop_3/strided_slice_1?
"sequential_135/center_crop_3/sub/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_135/center_crop_3/sub/y?
 sequential_135/center_crop_3/subSub3sequential_135/center_crop_3/strided_slice:output:0+sequential_135/center_crop_3/sub/y:output:0*
T0*
_output_shapes
: 2"
 sequential_135/center_crop_3/sub?
$sequential_135/center_crop_3/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_135/center_crop_3/sub_1/y?
"sequential_135/center_crop_3/sub_1Sub5sequential_135/center_crop_3/strided_slice_1:output:0-sequential_135/center_crop_3/sub_1/y:output:0*
T0*
_output_shapes
: 2$
"sequential_135/center_crop_3/sub_1?
6sequential_135/center_crop_3/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0*
value	B : 28
6sequential_135/center_crop_3/assert_non_negative/Const?
Lsequential_135/center_crop_3/assert_non_negative/assert_less_equal/LessEqual	LessEqual?sequential_135/center_crop_3/assert_non_negative/Const:output:0$sequential_135/center_crop_3/sub:z:0*
T0*
_output_shapes
: 2N
Lsequential_135/center_crop_3/assert_non_negative/assert_less_equal/LessEqual?
Gsequential_135/center_crop_3/assert_non_negative/assert_less_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : 2I
Gsequential_135/center_crop_3/assert_non_negative/assert_less_equal/Rank?
Nsequential_135/center_crop_3/assert_non_negative/assert_less_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2P
Nsequential_135/center_crop_3/assert_non_negative/assert_less_equal/range/start?
Nsequential_135/center_crop_3/assert_non_negative/assert_less_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2P
Nsequential_135/center_crop_3/assert_non_negative/assert_less_equal/range/delta?
Hsequential_135/center_crop_3/assert_non_negative/assert_less_equal/rangeRangeWsequential_135/center_crop_3/assert_non_negative/assert_less_equal/range/start:output:0Psequential_135/center_crop_3/assert_non_negative/assert_less_equal/Rank:output:0Wsequential_135/center_crop_3/assert_non_negative/assert_less_equal/range/delta:output:0*
_output_shapes
: 2J
Hsequential_135/center_crop_3/assert_non_negative/assert_less_equal/range?
Fsequential_135/center_crop_3/assert_non_negative/assert_less_equal/AllAllPsequential_135/center_crop_3/assert_non_negative/assert_less_equal/LessEqual:z:0Qsequential_135/center_crop_3/assert_non_negative/assert_less_equal/range:output:0*
_output_shapes
: 2H
Fsequential_135/center_crop_3/assert_non_negative/assert_less_equal/All?
Osequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*L
valueCBA B;The crop height 28 should not be greater than input height.2Q
Osequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/Const?
Qsequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2S
Qsequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/Const_1?
Qsequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (sequential_135/center_crop_3/sub:0) = 2S
Qsequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/Const_2?
Wsequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*L
valueCBA B;The crop height 28 should not be greater than input height.2Y
Wsequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0?
Wsequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2Y
Wsequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1?
Wsequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (sequential_135/center_crop_3/sub:0) = 2Y
Wsequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2?
Psequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertAssertOsequential_135/center_crop_3/assert_non_negative/assert_less_equal/All:output:0`sequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0:output:0`sequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1:output:0`sequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2:output:0$sequential_135/center_crop_3/sub:z:0*
T
2*
_output_shapes
 2R
Psequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/Assert?
8sequential_135/center_crop_3/assert_non_negative_1/ConstConst*
_output_shapes
: *
dtype0*
value	B : 2:
8sequential_135/center_crop_3/assert_non_negative_1/Const?
Nsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/LessEqual	LessEqualAsequential_135/center_crop_3/assert_non_negative_1/Const:output:0&sequential_135/center_crop_3/sub_1:z:0*
T0*
_output_shapes
: 2P
Nsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/LessEqual?
Isequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : 2K
Isequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Rank?
Psequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2R
Psequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/range/start?
Psequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2R
Psequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/range/delta?
Jsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/rangeRangeYsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/range/start:output:0Rsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Rank:output:0Ysequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/range/delta:output:0*
_output_shapes
: 2L
Jsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/range?
Hsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/AllAllRsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/LessEqual:z:0Ssequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/range:output:0*
_output_shapes
: 2J
Hsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/All?
Qsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*J
valueAB? B9The crop width 28 should not be greater than input width.2S
Qsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const?
Ssequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2U
Ssequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_1?
Ssequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+x (sequential_135/center_crop_3/sub_1:0) = 2U
Ssequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_2?
Ysequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*J
valueAB? B9The crop width 28 should not be greater than input width.2[
Ysequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0?
Ysequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2[
Ysequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1?
Ysequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+x (sequential_135/center_crop_3/sub_1:0) = 2[
Ysequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2?
Rsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/AssertAssertQsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/All:output:0bsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0:output:0bsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1:output:0bsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2:output:0&sequential_135/center_crop_3/sub_1:z:0Q^sequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/Assert*
T
2*
_output_shapes
 2T
Rsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert?
&sequential_135/center_crop_3/truediv/yConstQ^sequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertS^sequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_135/center_crop_3/truediv/y?
)sequential_135/center_crop_3/truediv/CastCast$sequential_135/center_crop_3/sub:z:0Q^sequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertS^sequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*

DstT0*

SrcT0*
_output_shapes
: 2+
)sequential_135/center_crop_3/truediv/Cast?
+sequential_135/center_crop_3/truediv/Cast_1Cast/sequential_135/center_crop_3/truediv/y:output:0*

DstT0*

SrcT0*
_output_shapes
: 2-
+sequential_135/center_crop_3/truediv/Cast_1?
$sequential_135/center_crop_3/truedivRealDiv-sequential_135/center_crop_3/truediv/Cast:y:0/sequential_135/center_crop_3/truediv/Cast_1:y:0*
T0*
_output_shapes
: 2&
$sequential_135/center_crop_3/truediv?
!sequential_135/center_crop_3/CastCast(sequential_135/center_crop_3/truediv:z:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!sequential_135/center_crop_3/Cast?
(sequential_135/center_crop_3/truediv_1/yConstQ^sequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertS^sequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_135/center_crop_3/truediv_1/y?
+sequential_135/center_crop_3/truediv_1/CastCast&sequential_135/center_crop_3/sub_1:z:0Q^sequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertS^sequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*

DstT0*

SrcT0*
_output_shapes
: 2-
+sequential_135/center_crop_3/truediv_1/Cast?
-sequential_135/center_crop_3/truediv_1/Cast_1Cast1sequential_135/center_crop_3/truediv_1/y:output:0*

DstT0*

SrcT0*
_output_shapes
: 2/
-sequential_135/center_crop_3/truediv_1/Cast_1?
&sequential_135/center_crop_3/truediv_1RealDiv/sequential_135/center_crop_3/truediv_1/Cast:y:01sequential_135/center_crop_3/truediv_1/Cast_1:y:0*
T0*
_output_shapes
: 2(
&sequential_135/center_crop_3/truediv_1?
#sequential_135/center_crop_3/Cast_1Cast*sequential_135/center_crop_3/truediv_1:z:0*

DstT0*

SrcT0*
_output_shapes
: 2%
#sequential_135/center_crop_3/Cast_1?
$sequential_135/center_crop_3/stack/0ConstQ^sequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertS^sequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_135/center_crop_3/stack/0?
$sequential_135/center_crop_3/stack/3ConstQ^sequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertS^sequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_135/center_crop_3/stack/3?
"sequential_135/center_crop_3/stackPack-sequential_135/center_crop_3/stack/0:output:0%sequential_135/center_crop_3/Cast:y:0'sequential_135/center_crop_3/Cast_1:y:0-sequential_135/center_crop_3/stack/3:output:0*
N*
T0*
_output_shapes
:2$
"sequential_135/center_crop_3/stack?
$sequential_135/center_crop_3/stack_1ConstQ^sequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertS^sequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
:*
dtype0*%
valueB"????      ????2&
$sequential_135/center_crop_3/stack_1?
"sequential_135/center_crop_3/SliceSlice$sequential_135/rescaling_135/add:z:0+sequential_135/center_crop_3/stack:output:0-sequential_135/center_crop_3/stack_1:output:0*
Index0*
T0*/
_output_shapes
:?????????2$
"sequential_135/center_crop_3/Slice?
/sequential_135/conv2d_266/Conv2D/ReadVariableOpReadVariableOp8sequential_135_conv2d_266_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype021
/sequential_135/conv2d_266/Conv2D/ReadVariableOp?
 sequential_135/conv2d_266/Conv2DConv2D+sequential_135/center_crop_3/Slice:output:07sequential_135/conv2d_266/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2"
 sequential_135/conv2d_266/Conv2D?
0sequential_135/conv2d_266/BiasAdd/ReadVariableOpReadVariableOp9sequential_135_conv2d_266_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_135/conv2d_266/BiasAdd/ReadVariableOp?
!sequential_135/conv2d_266/BiasAddBiasAdd)sequential_135/conv2d_266/Conv2D:output:08sequential_135/conv2d_266/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2#
!sequential_135/conv2d_266/BiasAdd?
sequential_135/conv2d_266/ReluRelu*sequential_135/conv2d_266/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2 
sequential_135/conv2d_266/Relu?
(sequential_135/max_pooling2d_265/MaxPoolMaxPool,sequential_135/conv2d_266/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2*
(sequential_135/max_pooling2d_265/MaxPool?
/sequential_135/conv2d_267/Conv2D/ReadVariableOpReadVariableOp8sequential_135_conv2d_267_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype021
/sequential_135/conv2d_267/Conv2D/ReadVariableOp?
 sequential_135/conv2d_267/Conv2DConv2D1sequential_135/max_pooling2d_265/MaxPool:output:07sequential_135/conv2d_267/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2"
 sequential_135/conv2d_267/Conv2D?
0sequential_135/conv2d_267/BiasAdd/ReadVariableOpReadVariableOp9sequential_135_conv2d_267_biasadd_readvariableop_resource*
_output_shapes
: *
dtype022
0sequential_135/conv2d_267/BiasAdd/ReadVariableOp?
!sequential_135/conv2d_267/BiasAddBiasAdd)sequential_135/conv2d_267/Conv2D:output:08sequential_135/conv2d_267/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2#
!sequential_135/conv2d_267/BiasAdd?
sequential_135/conv2d_267/ReluRelu*sequential_135/conv2d_267/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2 
sequential_135/conv2d_267/Relu?
(sequential_135/max_pooling2d_266/MaxPoolMaxPool,sequential_135/conv2d_267/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2*
(sequential_135/max_pooling2d_266/MaxPool?
 sequential_135/flatten_134/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2"
 sequential_135/flatten_134/Const?
"sequential_135/flatten_134/ReshapeReshape1sequential_135/max_pooling2d_266/MaxPool:output:0)sequential_135/flatten_134/Const:output:0*
T0*(
_output_shapes
:??????????2$
"sequential_135/flatten_134/Reshape?
.sequential_135/dense_425/MatMul/ReadVariableOpReadVariableOp7sequential_135_dense_425_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype020
.sequential_135/dense_425/MatMul/ReadVariableOp?
sequential_135/dense_425/MatMulMatMul+sequential_135/flatten_134/Reshape:output:06sequential_135/dense_425/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_135/dense_425/MatMul?
/sequential_135/dense_425/BiasAdd/ReadVariableOpReadVariableOp8sequential_135_dense_425_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/sequential_135/dense_425/BiasAdd/ReadVariableOp?
 sequential_135/dense_425/BiasAddBiasAdd)sequential_135/dense_425/MatMul:product:07sequential_135/dense_425/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 sequential_135/dense_425/BiasAdd?
sequential_135/dense_425/ReluRelu)sequential_135/dense_425/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_135/dense_425/Relu?
#sequential_135/dropout_189/IdentityIdentity+sequential_135/dense_425/Relu:activations:0*
T0*(
_output_shapes
:??????????2%
#sequential_135/dropout_189/Identity?
.sequential_135/dense_426/MatMul/ReadVariableOpReadVariableOp7sequential_135_dense_426_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype020
.sequential_135/dense_426/MatMul/ReadVariableOp?
sequential_135/dense_426/MatMulMatMul,sequential_135/dropout_189/Identity:output:06sequential_135/dense_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_135/dense_426/MatMul?
/sequential_135/dense_426/BiasAdd/ReadVariableOpReadVariableOp8sequential_135_dense_426_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/sequential_135/dense_426/BiasAdd/ReadVariableOp?
 sequential_135/dense_426/BiasAddBiasAdd)sequential_135/dense_426/MatMul:product:07sequential_135/dense_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 sequential_135/dense_426/BiasAdd?
sequential_135/dense_426/ReluRelu)sequential_135/dense_426/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_135/dense_426/Relu?
#sequential_135/dropout_190/IdentityIdentity+sequential_135/dense_426/Relu:activations:0*
T0*(
_output_shapes
:??????????2%
#sequential_135/dropout_190/Identity?
.sequential_135/dense_427/MatMul/ReadVariableOpReadVariableOp7sequential_135_dense_427_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype020
.sequential_135/dense_427/MatMul/ReadVariableOp?
sequential_135/dense_427/MatMulMatMul,sequential_135/dropout_190/Identity:output:06sequential_135/dense_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_135/dense_427/MatMul?
/sequential_135/dense_427/BiasAdd/ReadVariableOpReadVariableOp8sequential_135_dense_427_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/sequential_135/dense_427/BiasAdd/ReadVariableOp?
 sequential_135/dense_427/BiasAddBiasAdd)sequential_135/dense_427/MatMul:product:07sequential_135/dense_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 sequential_135/dense_427/BiasAdd?
 sequential_135/dense_427/SoftmaxSoftmax)sequential_135/dense_427/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2"
 sequential_135/dense_427/Softmax?
IdentityIdentity*sequential_135/dense_427/Softmax:softmax:0Q^sequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertS^sequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert1^sequential_135/conv2d_266/BiasAdd/ReadVariableOp0^sequential_135/conv2d_266/Conv2D/ReadVariableOp1^sequential_135/conv2d_267/BiasAdd/ReadVariableOp0^sequential_135/conv2d_267/Conv2D/ReadVariableOp0^sequential_135/dense_425/BiasAdd/ReadVariableOp/^sequential_135/dense_425/MatMul/ReadVariableOp0^sequential_135/dense_426/BiasAdd/ReadVariableOp/^sequential_135/dense_426/MatMul/ReadVariableOp0^sequential_135/dense_427/BiasAdd/ReadVariableOp/^sequential_135/dense_427/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????88::::::::::2?
Psequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertPsequential_135/center_crop_3/assert_non_negative/assert_less_equal/Assert/Assert2?
Rsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/AssertRsequential_135/center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert2d
0sequential_135/conv2d_266/BiasAdd/ReadVariableOp0sequential_135/conv2d_266/BiasAdd/ReadVariableOp2b
/sequential_135/conv2d_266/Conv2D/ReadVariableOp/sequential_135/conv2d_266/Conv2D/ReadVariableOp2d
0sequential_135/conv2d_267/BiasAdd/ReadVariableOp0sequential_135/conv2d_267/BiasAdd/ReadVariableOp2b
/sequential_135/conv2d_267/Conv2D/ReadVariableOp/sequential_135/conv2d_267/Conv2D/ReadVariableOp2b
/sequential_135/dense_425/BiasAdd/ReadVariableOp/sequential_135/dense_425/BiasAdd/ReadVariableOp2`
.sequential_135/dense_425/MatMul/ReadVariableOp.sequential_135/dense_425/MatMul/ReadVariableOp2b
/sequential_135/dense_426/BiasAdd/ReadVariableOp/sequential_135/dense_426/BiasAdd/ReadVariableOp2`
.sequential_135/dense_426/MatMul/ReadVariableOp.sequential_135/dense_426/MatMul/ReadVariableOp2b
/sequential_135/dense_427/BiasAdd/ReadVariableOp/sequential_135/dense_427/BiasAdd/ReadVariableOp2`
.sequential_135/dense_427/MatMul/ReadVariableOp.sequential_135/dense_427/MatMul/ReadVariableOp:d `
/
_output_shapes
:?????????88
-
_user_specified_namerescaling_135_input
?#
?
G__inference_conv2d_266_layer_call_and_return_conditional_losses_4758788

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp?3conv2d_266/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
#conv2d_266/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#conv2d_266/kernel/Regularizer/Const?
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype022
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp?
!conv2d_266/kernel/Regularizer/AbsAbs8conv2d_266/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2#
!conv2d_266/kernel/Regularizer/Abs?
%conv2d_266/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_266/kernel/Regularizer/Const_1?
!conv2d_266/kernel/Regularizer/SumSum%conv2d_266/kernel/Regularizer/Abs:y:0.conv2d_266/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/Sum?
#conv2d_266/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv2d_266/kernel/Regularizer/mul/x?
!conv2d_266/kernel/Regularizer/mulMul,conv2d_266/kernel/Regularizer/mul/x:output:0*conv2d_266/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/mul?
!conv2d_266/kernel/Regularizer/addAddV2,conv2d_266/kernel/Regularizer/Const:output:0%conv2d_266/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/add?
3conv2d_266/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype025
3conv2d_266/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_266/kernel/Regularizer/SquareSquare;conv2d_266/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2&
$conv2d_266/kernel/Regularizer/Square?
%conv2d_266/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_266/kernel/Regularizer/Const_2?
#conv2d_266/kernel/Regularizer/Sum_1Sum(conv2d_266/kernel/Regularizer/Square:y:0.conv2d_266/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/Sum_1?
%conv2d_266/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82'
%conv2d_266/kernel/Regularizer/mul_1/x?
#conv2d_266/kernel/Regularizer/mul_1Mul.conv2d_266/kernel/Regularizer/mul_1/x:output:0,conv2d_266/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/mul_1?
#conv2d_266/kernel/Regularizer/add_1AddV2%conv2d_266/kernel/Regularizer/add:z:0'conv2d_266/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/add_1?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp1^conv2d_266/kernel/Regularizer/Abs/ReadVariableOp4^conv2d_266/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2d
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp2j
3conv2d_266/kernel/Regularizer/Square/ReadVariableOp3conv2d_266/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
g
H__inference_dropout_190_layer_call_and_return_conditional_losses_4757197

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
Ӱ
?
#__inference__traced_restore_4759412
file_prefix&
"assignvariableop_conv2d_266_kernel&
"assignvariableop_1_conv2d_266_bias(
$assignvariableop_2_conv2d_267_kernel&
"assignvariableop_3_conv2d_267_bias'
#assignvariableop_4_dense_425_kernel%
!assignvariableop_5_dense_425_bias'
#assignvariableop_6_dense_426_kernel%
!assignvariableop_7_dense_426_bias'
#assignvariableop_8_dense_427_kernel%
!assignvariableop_9_dense_427_bias!
assignvariableop_10_adam_iter#
assignvariableop_11_adam_beta_1#
assignvariableop_12_adam_beta_2"
assignvariableop_13_adam_decay*
&assignvariableop_14_adam_learning_rate 
assignvariableop_15_variable"
assignvariableop_16_variable_1"
assignvariableop_17_variable_2
assignvariableop_18_total
assignvariableop_19_count
assignvariableop_20_total_1
assignvariableop_21_count_10
,assignvariableop_22_adam_conv2d_266_kernel_m.
*assignvariableop_23_adam_conv2d_266_bias_m0
,assignvariableop_24_adam_conv2d_267_kernel_m.
*assignvariableop_25_adam_conv2d_267_bias_m/
+assignvariableop_26_adam_dense_425_kernel_m-
)assignvariableop_27_adam_dense_425_bias_m/
+assignvariableop_28_adam_dense_426_kernel_m-
)assignvariableop_29_adam_dense_426_bias_m/
+assignvariableop_30_adam_dense_427_kernel_m-
)assignvariableop_31_adam_dense_427_bias_m0
,assignvariableop_32_adam_conv2d_266_kernel_v.
*assignvariableop_33_adam_conv2d_266_bias_v0
,assignvariableop_34_adam_conv2d_267_kernel_v.
*assignvariableop_35_adam_conv2d_267_bias_v/
+assignvariableop_36_adam_dense_425_kernel_v-
)assignvariableop_37_adam_dense_425_bias_v/
+assignvariableop_38_adam_dense_426_kernel_v-
)assignvariableop_39_adam_dense_426_bias_v/
+assignvariableop_40_adam_dense_427_kernel_v-
)assignvariableop_41_adam_dense_427_bias_v
identity_43??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*?
value?B?+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB2layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB2layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB2layer-3/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+				2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_266_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_266_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_267_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_267_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_425_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_425_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_426_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_426_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_427_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_427_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_variableIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_variable_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_variable_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp,assignvariableop_22_adam_conv2d_266_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv2d_266_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp,assignvariableop_24_adam_conv2d_267_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv2d_267_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_dense_425_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_425_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_dense_426_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_426_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_dense_427_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_427_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp,assignvariableop_32_adam_conv2d_266_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_conv2d_266_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp,assignvariableop_34_adam_conv2d_267_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv2d_267_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_dense_425_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_425_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_dense_426_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_dense_426_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp+assignvariableop_40_adam_dense_427_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_dense_427_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_419
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_42?
Identity_43IdentityIdentity_42:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_43"#
identity_43Identity_43:output:0*?
_input_shapes?
?: ::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?	
?
0__inference_sequential_135_layer_call_fn_4757859
rescaling_135_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallrescaling_135_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_sequential_135_layer_call_and_return_conditional_losses_47578322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????88::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:?????????88
-
_user_specified_namerescaling_135_input
?
f
H__inference_dropout_189_layer_call_and_return_conditional_losses_4758925

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_266_layer_call_fn_4758797

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_266_layer_call_and_return_conditional_losses_47569972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
f
-__inference_dropout_190_layer_call_fn_4759007

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_190_layer_call_and_return_conditional_losses_47571972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_dense_427_layer_call_fn_4759032

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_427_layer_call_and_return_conditional_losses_47572262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
H__inference_flatten_134_layer_call_and_return_conditional_losses_4757063

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?

K__inference_sequential_135_layer_call_and_return_conditional_losses_4757832

inputs;
7random_zoom_4_stateful_uniform_statefuluniform_resource@
<random_rotation_51_stateful_uniform_statefuluniform_resource
conv2d_266_4757741
conv2d_266_4757743
conv2d_267_4757747
conv2d_267_4757749
dense_425_4757754
dense_425_4757756
dense_426_4757760
dense_426_4757762
dense_427_4757766
dense_427_4757768
identity??Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert?Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert?"conv2d_266/StatefulPartitionedCall?0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp?3conv2d_266/kernel/Regularizer/Square/ReadVariableOp?"conv2d_267/StatefulPartitionedCall?0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp?3conv2d_267/kernel/Regularizer/Square/ReadVariableOp?!dense_425/StatefulPartitionedCall?/dense_425/kernel/Regularizer/Abs/ReadVariableOp?2dense_425/kernel/Regularizer/Square/ReadVariableOp?!dense_426/StatefulPartitionedCall?/dense_426/kernel/Regularizer/Abs/ReadVariableOp?2dense_426/kernel/Regularizer/Square/ReadVariableOp?!dense_427/StatefulPartitionedCall?#dropout_189/StatefulPartitionedCall?#dropout_190/StatefulPartitionedCall?3random_rotation_51/stateful_uniform/StatefulUniform?.random_zoom_4/stateful_uniform/StatefulUniformq
rescaling_135/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling_135/Cast/xu
rescaling_135/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_135/Cast_1/x?
rescaling_135/mulMulinputsrescaling_135/Cast/x:output:0*
T0*/
_output_shapes
:?????????882
rescaling_135/mul?
rescaling_135/addAddV2rescaling_135/mul:z:0rescaling_135/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????882
rescaling_135/add?
8random_flip_56/random_flip_left_right/control_dependencyIdentityrescaling_135/add:z:0*
T0*$
_class
loc:@rescaling_135/add*/
_output_shapes
:?????????882:
8random_flip_56/random_flip_left_right/control_dependency?
+random_flip_56/random_flip_left_right/ShapeShapeArandom_flip_56/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2-
+random_flip_56/random_flip_left_right/Shape?
9random_flip_56/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_flip_56/random_flip_left_right/strided_slice/stack?
;random_flip_56/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip_56/random_flip_left_right/strided_slice/stack_1?
;random_flip_56/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip_56/random_flip_left_right/strided_slice/stack_2?
3random_flip_56/random_flip_left_right/strided_sliceStridedSlice4random_flip_56/random_flip_left_right/Shape:output:0Brandom_flip_56/random_flip_left_right/strided_slice/stack:output:0Drandom_flip_56/random_flip_left_right/strided_slice/stack_1:output:0Drandom_flip_56/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3random_flip_56/random_flip_left_right/strided_slice?
:random_flip_56/random_flip_left_right/random_uniform/shapePack<random_flip_56/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2<
:random_flip_56/random_flip_left_right/random_uniform/shape?
8random_flip_56/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2:
8random_flip_56/random_flip_left_right/random_uniform/min?
8random_flip_56/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8random_flip_56/random_flip_left_right/random_uniform/max?
Brandom_flip_56/random_flip_left_right/random_uniform/RandomUniformRandomUniformCrandom_flip_56/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02D
Brandom_flip_56/random_flip_left_right/random_uniform/RandomUniform?
8random_flip_56/random_flip_left_right/random_uniform/MulMulKrandom_flip_56/random_flip_left_right/random_uniform/RandomUniform:output:0Arandom_flip_56/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????2:
8random_flip_56/random_flip_left_right/random_uniform/Mul?
5random_flip_56/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_56/random_flip_left_right/Reshape/shape/1?
5random_flip_56/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_56/random_flip_left_right/Reshape/shape/2?
5random_flip_56/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_56/random_flip_left_right/Reshape/shape/3?
3random_flip_56/random_flip_left_right/Reshape/shapePack<random_flip_56/random_flip_left_right/strided_slice:output:0>random_flip_56/random_flip_left_right/Reshape/shape/1:output:0>random_flip_56/random_flip_left_right/Reshape/shape/2:output:0>random_flip_56/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:25
3random_flip_56/random_flip_left_right/Reshape/shape?
-random_flip_56/random_flip_left_right/ReshapeReshape<random_flip_56/random_flip_left_right/random_uniform/Mul:z:0<random_flip_56/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2/
-random_flip_56/random_flip_left_right/Reshape?
+random_flip_56/random_flip_left_right/RoundRound6random_flip_56/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????2-
+random_flip_56/random_flip_left_right/Round?
4random_flip_56/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:26
4random_flip_56/random_flip_left_right/ReverseV2/axis?
/random_flip_56/random_flip_left_right/ReverseV2	ReverseV2Arandom_flip_56/random_flip_left_right/control_dependency:output:0=random_flip_56/random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:?????????8821
/random_flip_56/random_flip_left_right/ReverseV2?
)random_flip_56/random_flip_left_right/mulMul/random_flip_56/random_flip_left_right/Round:y:08random_flip_56/random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:?????????882+
)random_flip_56/random_flip_left_right/mul?
+random_flip_56/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2-
+random_flip_56/random_flip_left_right/sub/x?
)random_flip_56/random_flip_left_right/subSub4random_flip_56/random_flip_left_right/sub/x:output:0/random_flip_56/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????2+
)random_flip_56/random_flip_left_right/sub?
+random_flip_56/random_flip_left_right/mul_1Mul-random_flip_56/random_flip_left_right/sub:z:0Arandom_flip_56/random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:?????????882-
+random_flip_56/random_flip_left_right/mul_1?
)random_flip_56/random_flip_left_right/addAddV2-random_flip_56/random_flip_left_right/mul:z:0/random_flip_56/random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:?????????882+
)random_flip_56/random_flip_left_right/add?
random_zoom_4/ShapeShape-random_flip_56/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_zoom_4/Shape?
!random_zoom_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_4/strided_slice/stack?
#random_zoom_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_1?
#random_zoom_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_2?
random_zoom_4/strided_sliceStridedSlicerandom_zoom_4/Shape:output:0*random_zoom_4/strided_slice/stack:output:0,random_zoom_4/strided_slice/stack_1:output:0,random_zoom_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice?
#random_zoom_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_1/stack?
%random_zoom_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_1?
%random_zoom_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_2?
random_zoom_4/strided_slice_1StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_1/stack:output:0.random_zoom_4/strided_slice_1/stack_1:output:0.random_zoom_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_1?
random_zoom_4/CastCast&random_zoom_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast?
#random_zoom_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_2/stack?
%random_zoom_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_1?
%random_zoom_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_2?
random_zoom_4/strided_slice_2StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_2/stack:output:0.random_zoom_4/strided_slice_2/stack_1:output:0.random_zoom_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_2?
random_zoom_4/Cast_1Cast&random_zoom_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast_1?
&random_zoom_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_4/stateful_uniform/shape/1?
$random_zoom_4/stateful_uniform/shapePack$random_zoom_4/strided_slice:output:0/random_zoom_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_4/stateful_uniform/shape?
"random_zoom_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?2$
"random_zoom_4/stateful_uniform/min?
"random_zoom_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????2$
"random_zoom_4/stateful_uniform/max?
8random_zoom_4/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_4/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_4/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_4_stateful_uniform_statefuluniform_resourceArandom_zoom_4/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_4/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_4/stateful_uniform/StatefulUniform?
"random_zoom_4/stateful_uniform/subSub+random_zoom_4/stateful_uniform/max:output:0+random_zoom_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_4/stateful_uniform/sub?
"random_zoom_4/stateful_uniform/mulMul7random_zoom_4/stateful_uniform/StatefulUniform:output:0&random_zoom_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_4/stateful_uniform/mul?
random_zoom_4/stateful_uniformAdd&random_zoom_4/stateful_uniform/mul:z:0+random_zoom_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_4/stateful_uniformx
random_zoom_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_4/concat/axis?
random_zoom_4/concatConcatV2"random_zoom_4/stateful_uniform:z:0"random_zoom_4/stateful_uniform:z:0"random_zoom_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_4/concat?
random_zoom_4/zoom_matrix/ShapeShaperandom_zoom_4/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_4/zoom_matrix/Shape?
-random_zoom_4/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_4/zoom_matrix/strided_slice/stack?
/random_zoom_4/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_1?
/random_zoom_4/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_2?
'random_zoom_4/zoom_matrix/strided_sliceStridedSlice(random_zoom_4/zoom_matrix/Shape:output:06random_zoom_4/zoom_matrix/strided_slice/stack:output:08random_zoom_4/zoom_matrix/strided_slice/stack_1:output:08random_zoom_4/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_4/zoom_matrix/strided_slice?
random_zoom_4/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_4/zoom_matrix/sub/y?
random_zoom_4/zoom_matrix/subSubrandom_zoom_4/Cast_1:y:0(random_zoom_4/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_4/zoom_matrix/sub?
#random_zoom_4/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_4/zoom_matrix/truediv/y?
!random_zoom_4/zoom_matrix/truedivRealDiv!random_zoom_4/zoom_matrix/sub:z:0,random_zoom_4/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_4/zoom_matrix/truediv?
/random_zoom_4/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_1/stack?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_1?
!random_zoom_4/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_1/x?
random_zoom_4/zoom_matrix/sub_1Sub*random_zoom_4/zoom_matrix/sub_1/x:output:02random_zoom_4/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_1?
random_zoom_4/zoom_matrix/mulMul%random_zoom_4/zoom_matrix/truediv:z:0#random_zoom_4/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_4/zoom_matrix/mul?
!random_zoom_4/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_2/y?
random_zoom_4/zoom_matrix/sub_2Subrandom_zoom_4/Cast:y:0*random_zoom_4/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_4/zoom_matrix/sub_2?
%random_zoom_4/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_4/zoom_matrix/truediv_1/y?
#random_zoom_4/zoom_matrix/truediv_1RealDiv#random_zoom_4/zoom_matrix/sub_2:z:0.random_zoom_4/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/truediv_1?
/random_zoom_4/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_2/stack?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_2?
!random_zoom_4/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_3/x?
random_zoom_4/zoom_matrix/sub_3Sub*random_zoom_4/zoom_matrix/sub_3/x:output:02random_zoom_4/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_3?
random_zoom_4/zoom_matrix/mul_1Mul'random_zoom_4/zoom_matrix/truediv_1:z:0#random_zoom_4/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/mul_1?
/random_zoom_4/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_3/stack?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_3?
%random_zoom_4/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/zeros/mul/y?
#random_zoom_4/zoom_matrix/zeros/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:0.random_zoom_4/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/zeros/mul?
&random_zoom_4/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_4/zoom_matrix/zeros/Less/y?
$random_zoom_4/zoom_matrix/zeros/LessLess'random_zoom_4/zoom_matrix/zeros/mul:z:0/random_zoom_4/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_4/zoom_matrix/zeros/Less?
(random_zoom_4/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_4/zoom_matrix/zeros/packed/1?
&random_zoom_4/zoom_matrix/zeros/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:01random_zoom_4/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_4/zoom_matrix/zeros/packed?
%random_zoom_4/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_4/zoom_matrix/zeros/Const?
random_zoom_4/zoom_matrix/zerosFill/random_zoom_4/zoom_matrix/zeros/packed:output:0.random_zoom_4/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/zeros?
'random_zoom_4/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_1/mul/y?
%random_zoom_4/zoom_matrix/zeros_1/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_1/mul?
(random_zoom_4/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_1/Less/y?
&random_zoom_4/zoom_matrix/zeros_1/LessLess)random_zoom_4/zoom_matrix/zeros_1/mul:z:01random_zoom_4/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_1/Less?
*random_zoom_4/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_1/packed/1?
(random_zoom_4/zoom_matrix/zeros_1/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_1/packed?
'random_zoom_4/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_1/Const?
!random_zoom_4/zoom_matrix/zeros_1Fill1random_zoom_4/zoom_matrix/zeros_1/packed:output:00random_zoom_4/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_1?
/random_zoom_4/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_4/stack?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_4?
'random_zoom_4/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_2/mul/y?
%random_zoom_4/zoom_matrix/zeros_2/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_2/mul?
(random_zoom_4/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_2/Less/y?
&random_zoom_4/zoom_matrix/zeros_2/LessLess)random_zoom_4/zoom_matrix/zeros_2/mul:z:01random_zoom_4/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_2/Less?
*random_zoom_4/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_2/packed/1?
(random_zoom_4/zoom_matrix/zeros_2/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_2/packed?
'random_zoom_4/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_2/Const?
!random_zoom_4/zoom_matrix/zeros_2Fill1random_zoom_4/zoom_matrix/zeros_2/packed:output:00random_zoom_4/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_2?
%random_zoom_4/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/concat/axis?
 random_zoom_4/zoom_matrix/concatConcatV22random_zoom_4/zoom_matrix/strided_slice_3:output:0(random_zoom_4/zoom_matrix/zeros:output:0!random_zoom_4/zoom_matrix/mul:z:0*random_zoom_4/zoom_matrix/zeros_1:output:02random_zoom_4/zoom_matrix/strided_slice_4:output:0#random_zoom_4/zoom_matrix/mul_1:z:0*random_zoom_4/zoom_matrix/zeros_2:output:0.random_zoom_4/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_4/zoom_matrix/concat?
random_zoom_4/transform/ShapeShape-random_flip_56/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_zoom_4/transform/Shape?
+random_zoom_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_4/transform/strided_slice/stack?
-random_zoom_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_1?
-random_zoom_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_2?
%random_zoom_4/transform/strided_sliceStridedSlice&random_zoom_4/transform/Shape:output:04random_zoom_4/transform/strided_slice/stack:output:06random_zoom_4/transform/strided_slice/stack_1:output:06random_zoom_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_4/transform/strided_slice?
"random_zoom_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_4/transform/fill_value?
2random_zoom_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3-random_flip_56/random_flip_left_right/add:z:0)random_zoom_4/zoom_matrix/concat:output:0.random_zoom_4/transform/strided_slice:output:0+random_zoom_4/transform/fill_value:output:0*/
_output_shapes
:?????????88*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_4/transform/ImageProjectiveTransformV3?
random_rotation_51/ShapeShapeGrandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_rotation_51/Shape?
&random_rotation_51/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_rotation_51/strided_slice/stack?
(random_rotation_51/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_51/strided_slice/stack_1?
(random_rotation_51/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_51/strided_slice/stack_2?
 random_rotation_51/strided_sliceStridedSlice!random_rotation_51/Shape:output:0/random_rotation_51/strided_slice/stack:output:01random_rotation_51/strided_slice/stack_1:output:01random_rotation_51/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 random_rotation_51/strided_slice?
(random_rotation_51/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_51/strided_slice_1/stack?
*random_rotation_51/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_51/strided_slice_1/stack_1?
*random_rotation_51/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_51/strided_slice_1/stack_2?
"random_rotation_51/strided_slice_1StridedSlice!random_rotation_51/Shape:output:01random_rotation_51/strided_slice_1/stack:output:03random_rotation_51/strided_slice_1/stack_1:output:03random_rotation_51/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_51/strided_slice_1?
random_rotation_51/CastCast+random_rotation_51/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_51/Cast?
(random_rotation_51/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_51/strided_slice_2/stack?
*random_rotation_51/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_51/strided_slice_2/stack_1?
*random_rotation_51/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_51/strided_slice_2/stack_2?
"random_rotation_51/strided_slice_2StridedSlice!random_rotation_51/Shape:output:01random_rotation_51/strided_slice_2/stack:output:03random_rotation_51/strided_slice_2/stack_1:output:03random_rotation_51/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_51/strided_slice_2?
random_rotation_51/Cast_1Cast+random_rotation_51/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_51/Cast_1?
)random_rotation_51/stateful_uniform/shapePack)random_rotation_51/strided_slice:output:0*
N*
T0*
_output_shapes
:2+
)random_rotation_51/stateful_uniform/shape?
'random_rotation_51/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2)
'random_rotation_51/stateful_uniform/min?
'random_rotation_51/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2)
'random_rotation_51/stateful_uniform/max?
=random_rotation_51/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2?
=random_rotation_51/stateful_uniform/StatefulUniform/algorithm?
3random_rotation_51/stateful_uniform/StatefulUniformStatefulUniform<random_rotation_51_stateful_uniform_statefuluniform_resourceFrandom_rotation_51/stateful_uniform/StatefulUniform/algorithm:output:02random_rotation_51/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype025
3random_rotation_51/stateful_uniform/StatefulUniform?
'random_rotation_51/stateful_uniform/subSub0random_rotation_51/stateful_uniform/max:output:00random_rotation_51/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2)
'random_rotation_51/stateful_uniform/sub?
'random_rotation_51/stateful_uniform/mulMul<random_rotation_51/stateful_uniform/StatefulUniform:output:0+random_rotation_51/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_51/stateful_uniform/mul?
#random_rotation_51/stateful_uniformAdd+random_rotation_51/stateful_uniform/mul:z:00random_rotation_51/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2%
#random_rotation_51/stateful_uniform?
(random_rotation_51/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(random_rotation_51/rotation_matrix/sub/y?
&random_rotation_51/rotation_matrix/subSubrandom_rotation_51/Cast_1:y:01random_rotation_51/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2(
&random_rotation_51/rotation_matrix/sub?
&random_rotation_51/rotation_matrix/CosCos'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_51/rotation_matrix/Cos?
*random_rotation_51/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_rotation_51/rotation_matrix/sub_1/y?
(random_rotation_51/rotation_matrix/sub_1Subrandom_rotation_51/Cast_1:y:03random_rotation_51/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_51/rotation_matrix/sub_1?
&random_rotation_51/rotation_matrix/mulMul*random_rotation_51/rotation_matrix/Cos:y:0,random_rotation_51/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_51/rotation_matrix/mul?
&random_rotation_51/rotation_matrix/SinSin'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_51/rotation_matrix/Sin?
*random_rotation_51/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_rotation_51/rotation_matrix/sub_2/y?
(random_rotation_51/rotation_matrix/sub_2Subrandom_rotation_51/Cast:y:03random_rotation_51/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_51/rotation_matrix/sub_2?
(random_rotation_51/rotation_matrix/mul_1Mul*random_rotation_51/rotation_matrix/Sin:y:0,random_rotation_51/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/mul_1?
(random_rotation_51/rotation_matrix/sub_3Sub*random_rotation_51/rotation_matrix/mul:z:0,random_rotation_51/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/sub_3?
(random_rotation_51/rotation_matrix/sub_4Sub*random_rotation_51/rotation_matrix/sub:z:0,random_rotation_51/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/sub_4?
,random_rotation_51/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2.
,random_rotation_51/rotation_matrix/truediv/y?
*random_rotation_51/rotation_matrix/truedivRealDiv,random_rotation_51/rotation_matrix/sub_4:z:05random_rotation_51/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2,
*random_rotation_51/rotation_matrix/truediv?
*random_rotation_51/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_rotation_51/rotation_matrix/sub_5/y?
(random_rotation_51/rotation_matrix/sub_5Subrandom_rotation_51/Cast:y:03random_rotation_51/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_51/rotation_matrix/sub_5?
(random_rotation_51/rotation_matrix/Sin_1Sin'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/Sin_1?
*random_rotation_51/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_rotation_51/rotation_matrix/sub_6/y?
(random_rotation_51/rotation_matrix/sub_6Subrandom_rotation_51/Cast_1:y:03random_rotation_51/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_51/rotation_matrix/sub_6?
(random_rotation_51/rotation_matrix/mul_2Mul,random_rotation_51/rotation_matrix/Sin_1:y:0,random_rotation_51/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/mul_2?
(random_rotation_51/rotation_matrix/Cos_1Cos'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/Cos_1?
*random_rotation_51/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_rotation_51/rotation_matrix/sub_7/y?
(random_rotation_51/rotation_matrix/sub_7Subrandom_rotation_51/Cast:y:03random_rotation_51/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_51/rotation_matrix/sub_7?
(random_rotation_51/rotation_matrix/mul_3Mul,random_rotation_51/rotation_matrix/Cos_1:y:0,random_rotation_51/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/mul_3?
&random_rotation_51/rotation_matrix/addAddV2,random_rotation_51/rotation_matrix/mul_2:z:0,random_rotation_51/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_51/rotation_matrix/add?
(random_rotation_51/rotation_matrix/sub_8Sub,random_rotation_51/rotation_matrix/sub_5:z:0*random_rotation_51/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/sub_8?
.random_rotation_51/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @20
.random_rotation_51/rotation_matrix/truediv_1/y?
,random_rotation_51/rotation_matrix/truediv_1RealDiv,random_rotation_51/rotation_matrix/sub_8:z:07random_rotation_51/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2.
,random_rotation_51/rotation_matrix/truediv_1?
(random_rotation_51/rotation_matrix/ShapeShape'random_rotation_51/stateful_uniform:z:0*
T0*
_output_shapes
:2*
(random_rotation_51/rotation_matrix/Shape?
6random_rotation_51/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_51/rotation_matrix/strided_slice/stack?
8random_rotation_51/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_51/rotation_matrix/strided_slice/stack_1?
8random_rotation_51/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_51/rotation_matrix/strided_slice/stack_2?
0random_rotation_51/rotation_matrix/strided_sliceStridedSlice1random_rotation_51/rotation_matrix/Shape:output:0?random_rotation_51/rotation_matrix/strided_slice/stack:output:0Arandom_rotation_51/rotation_matrix/strided_slice/stack_1:output:0Arandom_rotation_51/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0random_rotation_51/rotation_matrix/strided_slice?
(random_rotation_51/rotation_matrix/Cos_2Cos'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/Cos_2?
8random_rotation_51/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_51/rotation_matrix/strided_slice_1/stack?
:random_rotation_51/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_51/rotation_matrix/strided_slice_1/stack_1?
:random_rotation_51/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_51/rotation_matrix/strided_slice_1/stack_2?
2random_rotation_51/rotation_matrix/strided_slice_1StridedSlice,random_rotation_51/rotation_matrix/Cos_2:y:0Arandom_rotation_51/rotation_matrix/strided_slice_1/stack:output:0Crandom_rotation_51/rotation_matrix/strided_slice_1/stack_1:output:0Crandom_rotation_51/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_51/rotation_matrix/strided_slice_1?
(random_rotation_51/rotation_matrix/Sin_2Sin'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/Sin_2?
8random_rotation_51/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_51/rotation_matrix/strided_slice_2/stack?
:random_rotation_51/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_51/rotation_matrix/strided_slice_2/stack_1?
:random_rotation_51/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_51/rotation_matrix/strided_slice_2/stack_2?
2random_rotation_51/rotation_matrix/strided_slice_2StridedSlice,random_rotation_51/rotation_matrix/Sin_2:y:0Arandom_rotation_51/rotation_matrix/strided_slice_2/stack:output:0Crandom_rotation_51/rotation_matrix/strided_slice_2/stack_1:output:0Crandom_rotation_51/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_51/rotation_matrix/strided_slice_2?
&random_rotation_51/rotation_matrix/NegNeg;random_rotation_51/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2(
&random_rotation_51/rotation_matrix/Neg?
8random_rotation_51/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_51/rotation_matrix/strided_slice_3/stack?
:random_rotation_51/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_51/rotation_matrix/strided_slice_3/stack_1?
:random_rotation_51/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_51/rotation_matrix/strided_slice_3/stack_2?
2random_rotation_51/rotation_matrix/strided_slice_3StridedSlice.random_rotation_51/rotation_matrix/truediv:z:0Arandom_rotation_51/rotation_matrix/strided_slice_3/stack:output:0Crandom_rotation_51/rotation_matrix/strided_slice_3/stack_1:output:0Crandom_rotation_51/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_51/rotation_matrix/strided_slice_3?
(random_rotation_51/rotation_matrix/Sin_3Sin'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/Sin_3?
8random_rotation_51/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_51/rotation_matrix/strided_slice_4/stack?
:random_rotation_51/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_51/rotation_matrix/strided_slice_4/stack_1?
:random_rotation_51/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_51/rotation_matrix/strided_slice_4/stack_2?
2random_rotation_51/rotation_matrix/strided_slice_4StridedSlice,random_rotation_51/rotation_matrix/Sin_3:y:0Arandom_rotation_51/rotation_matrix/strided_slice_4/stack:output:0Crandom_rotation_51/rotation_matrix/strided_slice_4/stack_1:output:0Crandom_rotation_51/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_51/rotation_matrix/strided_slice_4?
(random_rotation_51/rotation_matrix/Cos_3Cos'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/Cos_3?
8random_rotation_51/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_51/rotation_matrix/strided_slice_5/stack?
:random_rotation_51/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_51/rotation_matrix/strided_slice_5/stack_1?
:random_rotation_51/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_51/rotation_matrix/strided_slice_5/stack_2?
2random_rotation_51/rotation_matrix/strided_slice_5StridedSlice,random_rotation_51/rotation_matrix/Cos_3:y:0Arandom_rotation_51/rotation_matrix/strided_slice_5/stack:output:0Crandom_rotation_51/rotation_matrix/strided_slice_5/stack_1:output:0Crandom_rotation_51/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_51/rotation_matrix/strided_slice_5?
8random_rotation_51/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_51/rotation_matrix/strided_slice_6/stack?
:random_rotation_51/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_51/rotation_matrix/strided_slice_6/stack_1?
:random_rotation_51/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_51/rotation_matrix/strided_slice_6/stack_2?
2random_rotation_51/rotation_matrix/strided_slice_6StridedSlice0random_rotation_51/rotation_matrix/truediv_1:z:0Arandom_rotation_51/rotation_matrix/strided_slice_6/stack:output:0Crandom_rotation_51/rotation_matrix/strided_slice_6/stack_1:output:0Crandom_rotation_51/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_51/rotation_matrix/strided_slice_6?
.random_rotation_51/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_51/rotation_matrix/zeros/mul/y?
,random_rotation_51/rotation_matrix/zeros/mulMul9random_rotation_51/rotation_matrix/strided_slice:output:07random_rotation_51/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_51/rotation_matrix/zeros/mul?
/random_rotation_51/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?21
/random_rotation_51/rotation_matrix/zeros/Less/y?
-random_rotation_51/rotation_matrix/zeros/LessLess0random_rotation_51/rotation_matrix/zeros/mul:z:08random_rotation_51/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2/
-random_rotation_51/rotation_matrix/zeros/Less?
1random_rotation_51/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_rotation_51/rotation_matrix/zeros/packed/1?
/random_rotation_51/rotation_matrix/zeros/packedPack9random_rotation_51/rotation_matrix/strided_slice:output:0:random_rotation_51/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:21
/random_rotation_51/rotation_matrix/zeros/packed?
.random_rotation_51/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.random_rotation_51/rotation_matrix/zeros/Const?
(random_rotation_51/rotation_matrix/zerosFill8random_rotation_51/rotation_matrix/zeros/packed:output:07random_rotation_51/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/zeros?
.random_rotation_51/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_51/rotation_matrix/concat/axis?
)random_rotation_51/rotation_matrix/concatConcatV2;random_rotation_51/rotation_matrix/strided_slice_1:output:0*random_rotation_51/rotation_matrix/Neg:y:0;random_rotation_51/rotation_matrix/strided_slice_3:output:0;random_rotation_51/rotation_matrix/strided_slice_4:output:0;random_rotation_51/rotation_matrix/strided_slice_5:output:0;random_rotation_51/rotation_matrix/strided_slice_6:output:01random_rotation_51/rotation_matrix/zeros:output:07random_rotation_51/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2+
)random_rotation_51/rotation_matrix/concat?
"random_rotation_51/transform/ShapeShapeGrandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2$
"random_rotation_51/transform/Shape?
0random_rotation_51/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0random_rotation_51/transform/strided_slice/stack?
2random_rotation_51/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_51/transform/strided_slice/stack_1?
2random_rotation_51/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_51/transform/strided_slice/stack_2?
*random_rotation_51/transform/strided_sliceStridedSlice+random_rotation_51/transform/Shape:output:09random_rotation_51/transform/strided_slice/stack:output:0;random_rotation_51/transform/strided_slice/stack_1:output:0;random_rotation_51/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*random_rotation_51/transform/strided_slice?
'random_rotation_51/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_rotation_51/transform/fill_value?
7random_rotation_51/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Grandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:02random_rotation_51/rotation_matrix/concat:output:03random_rotation_51/transform/strided_slice:output:00random_rotation_51/transform/fill_value:output:0*/
_output_shapes
:?????????88*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR29
7random_rotation_51/transform/ImageProjectiveTransformV3?
center_crop_3/ShapeShapeLrandom_rotation_51/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
center_crop_3/Shape?
!center_crop_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!center_crop_3/strided_slice/stack?
#center_crop_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#center_crop_3/strided_slice/stack_1?
#center_crop_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#center_crop_3/strided_slice/stack_2?
center_crop_3/strided_sliceStridedSlicecenter_crop_3/Shape:output:0*center_crop_3/strided_slice/stack:output:0,center_crop_3/strided_slice/stack_1:output:0,center_crop_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
center_crop_3/strided_slice?
#center_crop_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#center_crop_3/strided_slice_1/stack?
%center_crop_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%center_crop_3/strided_slice_1/stack_1?
%center_crop_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%center_crop_3/strided_slice_1/stack_2?
center_crop_3/strided_slice_1StridedSlicecenter_crop_3/Shape:output:0,center_crop_3/strided_slice_1/stack:output:0.center_crop_3/strided_slice_1/stack_1:output:0.center_crop_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
center_crop_3/strided_slice_1l
center_crop_3/sub/yConst*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/sub/y?
center_crop_3/subSub$center_crop_3/strided_slice:output:0center_crop_3/sub/y:output:0*
T0*
_output_shapes
: 2
center_crop_3/subp
center_crop_3/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/sub_1/y?
center_crop_3/sub_1Sub&center_crop_3/strided_slice_1:output:0center_crop_3/sub_1/y:output:0*
T0*
_output_shapes
: 2
center_crop_3/sub_1?
'center_crop_3/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0*
value	B : 2)
'center_crop_3/assert_non_negative/Const?
=center_crop_3/assert_non_negative/assert_less_equal/LessEqual	LessEqual0center_crop_3/assert_non_negative/Const:output:0center_crop_3/sub:z:0*
T0*
_output_shapes
: 2?
=center_crop_3/assert_non_negative/assert_less_equal/LessEqual?
8center_crop_3/assert_non_negative/assert_less_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : 2:
8center_crop_3/assert_non_negative/assert_less_equal/Rank?
?center_crop_3/assert_non_negative/assert_less_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2A
?center_crop_3/assert_non_negative/assert_less_equal/range/start?
?center_crop_3/assert_non_negative/assert_less_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2A
?center_crop_3/assert_non_negative/assert_less_equal/range/delta?
9center_crop_3/assert_non_negative/assert_less_equal/rangeRangeHcenter_crop_3/assert_non_negative/assert_less_equal/range/start:output:0Acenter_crop_3/assert_non_negative/assert_less_equal/Rank:output:0Hcenter_crop_3/assert_non_negative/assert_less_equal/range/delta:output:0*
_output_shapes
: 2;
9center_crop_3/assert_non_negative/assert_less_equal/range?
7center_crop_3/assert_non_negative/assert_less_equal/AllAllAcenter_crop_3/assert_non_negative/assert_less_equal/LessEqual:z:0Bcenter_crop_3/assert_non_negative/assert_less_equal/range:output:0*
_output_shapes
: 29
7center_crop_3/assert_non_negative/assert_less_equal/All?
@center_crop_3/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*L
valueCBA B;The crop height 28 should not be greater than input height.2B
@center_crop_3/assert_non_negative/assert_less_equal/Assert/Const?
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2D
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_1?
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*+
value"B  Bx (center_crop_3/sub:0) = 2D
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_2?
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*L
valueCBA B;The crop height 28 should not be greater than input height.2J
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0?
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2J
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1?
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*+
value"B  Bx (center_crop_3/sub:0) = 2J
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2?
Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/AssertAssert@center_crop_3/assert_non_negative/assert_less_equal/All:output:0Qcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0:output:0Qcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1:output:0Qcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2:output:0center_crop_3/sub:z:0*
T
2*
_output_shapes
 2C
Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert?
)center_crop_3/assert_non_negative_1/ConstConst*
_output_shapes
: *
dtype0*
value	B : 2+
)center_crop_3/assert_non_negative_1/Const?
?center_crop_3/assert_non_negative_1/assert_less_equal/LessEqual	LessEqual2center_crop_3/assert_non_negative_1/Const:output:0center_crop_3/sub_1:z:0*
T0*
_output_shapes
: 2A
?center_crop_3/assert_non_negative_1/assert_less_equal/LessEqual?
:center_crop_3/assert_non_negative_1/assert_less_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : 2<
:center_crop_3/assert_non_negative_1/assert_less_equal/Rank?
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2C
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/start?
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2C
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/delta?
;center_crop_3/assert_non_negative_1/assert_less_equal/rangeRangeJcenter_crop_3/assert_non_negative_1/assert_less_equal/range/start:output:0Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Rank:output:0Jcenter_crop_3/assert_non_negative_1/assert_less_equal/range/delta:output:0*
_output_shapes
: 2=
;center_crop_3/assert_non_negative_1/assert_less_equal/range?
9center_crop_3/assert_non_negative_1/assert_less_equal/AllAllCcenter_crop_3/assert_non_negative_1/assert_less_equal/LessEqual:z:0Dcenter_crop_3/assert_non_negative_1/assert_less_equal/range:output:0*
_output_shapes
: 2;
9center_crop_3/assert_non_negative_1/assert_less_equal/All?
Bcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*J
valueAB? B9The crop width 28 should not be greater than input width.2D
Bcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const?
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2F
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_1?
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*-
value$B" Bx (center_crop_3/sub_1:0) = 2F
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_2?
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*J
valueAB? B9The crop width 28 should not be greater than input width.2L
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0?
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2L
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1?
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*-
value$B" Bx (center_crop_3/sub_1:0) = 2L
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2?
Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/AssertAssertBcenter_crop_3/assert_non_negative_1/assert_less_equal/All:output:0Scenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0:output:0Scenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1:output:0Scenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2:output:0center_crop_3/sub_1:z:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/Assert*
T
2*
_output_shapes
 2E
Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert?
center_crop_3/truediv/yConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/truediv/y?
center_crop_3/truediv/CastCastcenter_crop_3/sub:z:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/truediv/Cast?
center_crop_3/truediv/Cast_1Cast center_crop_3/truediv/y:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/truediv/Cast_1?
center_crop_3/truedivRealDivcenter_crop_3/truediv/Cast:y:0 center_crop_3/truediv/Cast_1:y:0*
T0*
_output_shapes
: 2
center_crop_3/truediv{
center_crop_3/CastCastcenter_crop_3/truediv:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/Cast?
center_crop_3/truediv_1/yConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/truediv_1/y?
center_crop_3/truediv_1/CastCastcenter_crop_3/sub_1:z:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/truediv_1/Cast?
center_crop_3/truediv_1/Cast_1Cast"center_crop_3/truediv_1/y:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
center_crop_3/truediv_1/Cast_1?
center_crop_3/truediv_1RealDiv center_crop_3/truediv_1/Cast:y:0"center_crop_3/truediv_1/Cast_1:y:0*
T0*
_output_shapes
: 2
center_crop_3/truediv_1?
center_crop_3/Cast_1Castcenter_crop_3/truediv_1:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/Cast_1?
center_crop_3/stack/0ConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : 2
center_crop_3/stack/0?
center_crop_3/stack/3ConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : 2
center_crop_3/stack/3?
center_crop_3/stackPackcenter_crop_3/stack/0:output:0center_crop_3/Cast:y:0center_crop_3/Cast_1:y:0center_crop_3/stack/3:output:0*
N*
T0*
_output_shapes
:2
center_crop_3/stack?
center_crop_3/stack_1ConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
:*
dtype0*%
valueB"????      ????2
center_crop_3/stack_1?
center_crop_3/SliceSliceLrandom_rotation_51/transform/ImageProjectiveTransformV3:transformed_images:0center_crop_3/stack:output:0center_crop_3/stack_1:output:0*
Index0*
T0*/
_output_shapes
:?????????2
center_crop_3/Slice?
"conv2d_266/StatefulPartitionedCallStatefulPartitionedCallcenter_crop_3/Slice:output:0conv2d_266_4757741conv2d_266_4757743*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_266_layer_call_and_return_conditional_losses_47569972$
"conv2d_266/StatefulPartitionedCall?
!max_pooling2d_265/PartitionedCallPartitionedCall+conv2d_266/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_265_layer_call_and_return_conditional_losses_47566692#
!max_pooling2d_265/PartitionedCall?
"conv2d_267/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_265/PartitionedCall:output:0conv2d_267_4757747conv2d_267_4757749*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_267_layer_call_and_return_conditional_losses_47570402$
"conv2d_267/StatefulPartitionedCall?
!max_pooling2d_266/PartitionedCallPartitionedCall+conv2d_267/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_266_layer_call_and_return_conditional_losses_47566812#
!max_pooling2d_266/PartitionedCall?
flatten_134/PartitionedCallPartitionedCall*max_pooling2d_266/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_flatten_134_layer_call_and_return_conditional_losses_47570632
flatten_134/PartitionedCall?
!dense_425/StatefulPartitionedCallStatefulPartitionedCall$flatten_134/PartitionedCall:output:0dense_425_4757754dense_425_4757756*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_425_layer_call_and_return_conditional_losses_47570972#
!dense_425/StatefulPartitionedCall?
#dropout_189/StatefulPartitionedCallStatefulPartitionedCall*dense_425/StatefulPartitionedCall:output:0D^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_189_layer_call_and_return_conditional_losses_47571252%
#dropout_189/StatefulPartitionedCall?
!dense_426/StatefulPartitionedCallStatefulPartitionedCall,dropout_189/StatefulPartitionedCall:output:0dense_426_4757760dense_426_4757762*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_426_layer_call_and_return_conditional_losses_47571692#
!dense_426/StatefulPartitionedCall?
#dropout_190/StatefulPartitionedCallStatefulPartitionedCall*dense_426/StatefulPartitionedCall:output:0$^dropout_189/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_190_layer_call_and_return_conditional_losses_47571972%
#dropout_190/StatefulPartitionedCall?
!dense_427/StatefulPartitionedCallStatefulPartitionedCall,dropout_190/StatefulPartitionedCall:output:0dense_427_4757766dense_427_4757768*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_427_layer_call_and_return_conditional_losses_47572262#
!dense_427/StatefulPartitionedCall?
#conv2d_266/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#conv2d_266/kernel/Regularizer/Const?
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_266_4757741*&
_output_shapes
:@*
dtype022
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp?
!conv2d_266/kernel/Regularizer/AbsAbs8conv2d_266/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2#
!conv2d_266/kernel/Regularizer/Abs?
%conv2d_266/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_266/kernel/Regularizer/Const_1?
!conv2d_266/kernel/Regularizer/SumSum%conv2d_266/kernel/Regularizer/Abs:y:0.conv2d_266/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/Sum?
#conv2d_266/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv2d_266/kernel/Regularizer/mul/x?
!conv2d_266/kernel/Regularizer/mulMul,conv2d_266/kernel/Regularizer/mul/x:output:0*conv2d_266/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/mul?
!conv2d_266/kernel/Regularizer/addAddV2,conv2d_266/kernel/Regularizer/Const:output:0%conv2d_266/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/add?
3conv2d_266/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_266_4757741*&
_output_shapes
:@*
dtype025
3conv2d_266/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_266/kernel/Regularizer/SquareSquare;conv2d_266/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2&
$conv2d_266/kernel/Regularizer/Square?
%conv2d_266/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_266/kernel/Regularizer/Const_2?
#conv2d_266/kernel/Regularizer/Sum_1Sum(conv2d_266/kernel/Regularizer/Square:y:0.conv2d_266/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/Sum_1?
%conv2d_266/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82'
%conv2d_266/kernel/Regularizer/mul_1/x?
#conv2d_266/kernel/Regularizer/mul_1Mul.conv2d_266/kernel/Regularizer/mul_1/x:output:0,conv2d_266/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/mul_1?
#conv2d_266/kernel/Regularizer/add_1AddV2%conv2d_266/kernel/Regularizer/add:z:0'conv2d_266/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/add_1?
#conv2d_267/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#conv2d_267/kernel/Regularizer/Const?
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_267_4757747*&
_output_shapes
:@ *
dtype022
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp?
!conv2d_267/kernel/Regularizer/AbsAbs8conv2d_267/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ 2#
!conv2d_267/kernel/Regularizer/Abs?
%conv2d_267/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_267/kernel/Regularizer/Const_1?
!conv2d_267/kernel/Regularizer/SumSum%conv2d_267/kernel/Regularizer/Abs:y:0.conv2d_267/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/Sum?
#conv2d_267/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv2d_267/kernel/Regularizer/mul/x?
!conv2d_267/kernel/Regularizer/mulMul,conv2d_267/kernel/Regularizer/mul/x:output:0*conv2d_267/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/mul?
!conv2d_267/kernel/Regularizer/addAddV2,conv2d_267/kernel/Regularizer/Const:output:0%conv2d_267/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/add?
3conv2d_267/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_267_4757747*&
_output_shapes
:@ *
dtype025
3conv2d_267/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_267/kernel/Regularizer/SquareSquare;conv2d_267/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ 2&
$conv2d_267/kernel/Regularizer/Square?
%conv2d_267/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_267/kernel/Regularizer/Const_2?
#conv2d_267/kernel/Regularizer/Sum_1Sum(conv2d_267/kernel/Regularizer/Square:y:0.conv2d_267/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/Sum_1?
%conv2d_267/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82'
%conv2d_267/kernel/Regularizer/mul_1/x?
#conv2d_267/kernel/Regularizer/mul_1Mul.conv2d_267/kernel/Regularizer/mul_1/x:output:0,conv2d_267/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/mul_1?
#conv2d_267/kernel/Regularizer/add_1AddV2%conv2d_267/kernel/Regularizer/add:z:0'conv2d_267/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/add_1?
"dense_425/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_425/kernel/Regularizer/Const?
/dense_425/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_425_4757754* 
_output_shapes
:
??*
dtype021
/dense_425/kernel/Regularizer/Abs/ReadVariableOp?
 dense_425/kernel/Regularizer/AbsAbs7dense_425/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2"
 dense_425/kernel/Regularizer/Abs?
$dense_425/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_425/kernel/Regularizer/Const_1?
 dense_425/kernel/Regularizer/SumSum$dense_425/kernel/Regularizer/Abs:y:0-dense_425/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/Sum?
"dense_425/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_425/kernel/Regularizer/mul/x?
 dense_425/kernel/Regularizer/mulMul+dense_425/kernel/Regularizer/mul/x:output:0)dense_425/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/mul?
 dense_425/kernel/Regularizer/addAddV2+dense_425/kernel/Regularizer/Const:output:0$dense_425/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/add?
2dense_425/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_425_4757754* 
_output_shapes
:
??*
dtype024
2dense_425/kernel/Regularizer/Square/ReadVariableOp?
#dense_425/kernel/Regularizer/SquareSquare:dense_425/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_425/kernel/Regularizer/Square?
$dense_425/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_425/kernel/Regularizer/Const_2?
"dense_425/kernel/Regularizer/Sum_1Sum'dense_425/kernel/Regularizer/Square:y:0-dense_425/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/Sum_1?
$dense_425/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82&
$dense_425/kernel/Regularizer/mul_1/x?
"dense_425/kernel/Regularizer/mul_1Mul-dense_425/kernel/Regularizer/mul_1/x:output:0+dense_425/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/mul_1?
"dense_425/kernel/Regularizer/add_1AddV2$dense_425/kernel/Regularizer/add:z:0&dense_425/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/add_1?
"dense_426/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_426/kernel/Regularizer/Const?
/dense_426/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_426_4757760* 
_output_shapes
:
??*
dtype021
/dense_426/kernel/Regularizer/Abs/ReadVariableOp?
 dense_426/kernel/Regularizer/AbsAbs7dense_426/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2"
 dense_426/kernel/Regularizer/Abs?
$dense_426/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_426/kernel/Regularizer/Const_1?
 dense_426/kernel/Regularizer/SumSum$dense_426/kernel/Regularizer/Abs:y:0-dense_426/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/Sum?
"dense_426/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_426/kernel/Regularizer/mul/x?
 dense_426/kernel/Regularizer/mulMul+dense_426/kernel/Regularizer/mul/x:output:0)dense_426/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/mul?
 dense_426/kernel/Regularizer/addAddV2+dense_426/kernel/Regularizer/Const:output:0$dense_426/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/add?
2dense_426/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_426_4757760* 
_output_shapes
:
??*
dtype024
2dense_426/kernel/Regularizer/Square/ReadVariableOp?
#dense_426/kernel/Regularizer/SquareSquare:dense_426/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_426/kernel/Regularizer/Square?
$dense_426/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_426/kernel/Regularizer/Const_2?
"dense_426/kernel/Regularizer/Sum_1Sum'dense_426/kernel/Regularizer/Square:y:0-dense_426/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/Sum_1?
$dense_426/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82&
$dense_426/kernel/Regularizer/mul_1/x?
"dense_426/kernel/Regularizer/mul_1Mul-dense_426/kernel/Regularizer/mul_1/x:output:0+dense_426/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/mul_1?
"dense_426/kernel/Regularizer/add_1AddV2$dense_426/kernel/Regularizer/add:z:0&dense_426/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/add_1?
IdentityIdentity*dense_427/StatefulPartitionedCall:output:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert#^conv2d_266/StatefulPartitionedCall1^conv2d_266/kernel/Regularizer/Abs/ReadVariableOp4^conv2d_266/kernel/Regularizer/Square/ReadVariableOp#^conv2d_267/StatefulPartitionedCall1^conv2d_267/kernel/Regularizer/Abs/ReadVariableOp4^conv2d_267/kernel/Regularizer/Square/ReadVariableOp"^dense_425/StatefulPartitionedCall0^dense_425/kernel/Regularizer/Abs/ReadVariableOp3^dense_425/kernel/Regularizer/Square/ReadVariableOp"^dense_426/StatefulPartitionedCall0^dense_426/kernel/Regularizer/Abs/ReadVariableOp3^dense_426/kernel/Regularizer/Square/ReadVariableOp"^dense_427/StatefulPartitionedCall$^dropout_189/StatefulPartitionedCall$^dropout_190/StatefulPartitionedCall4^random_rotation_51/stateful_uniform/StatefulUniform/^random_zoom_4/stateful_uniform/StatefulUniform*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????88::::::::::::2?
Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/AssertAcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert2?
Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/AssertCcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert2H
"conv2d_266/StatefulPartitionedCall"conv2d_266/StatefulPartitionedCall2d
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp2j
3conv2d_266/kernel/Regularizer/Square/ReadVariableOp3conv2d_266/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_267/StatefulPartitionedCall"conv2d_267/StatefulPartitionedCall2d
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp2j
3conv2d_267/kernel/Regularizer/Square/ReadVariableOp3conv2d_267/kernel/Regularizer/Square/ReadVariableOp2F
!dense_425/StatefulPartitionedCall!dense_425/StatefulPartitionedCall2b
/dense_425/kernel/Regularizer/Abs/ReadVariableOp/dense_425/kernel/Regularizer/Abs/ReadVariableOp2h
2dense_425/kernel/Regularizer/Square/ReadVariableOp2dense_425/kernel/Regularizer/Square/ReadVariableOp2F
!dense_426/StatefulPartitionedCall!dense_426/StatefulPartitionedCall2b
/dense_426/kernel/Regularizer/Abs/ReadVariableOp/dense_426/kernel/Regularizer/Abs/ReadVariableOp2h
2dense_426/kernel/Regularizer/Square/ReadVariableOp2dense_426/kernel/Regularizer/Square/ReadVariableOp2F
!dense_427/StatefulPartitionedCall!dense_427/StatefulPartitionedCall2J
#dropout_189/StatefulPartitionedCall#dropout_189/StatefulPartitionedCall2J
#dropout_190/StatefulPartitionedCall#dropout_190/StatefulPartitionedCall2j
3random_rotation_51/stateful_uniform/StatefulUniform3random_rotation_51/stateful_uniform/StatefulUniform2`
.random_zoom_4/stateful_uniform/StatefulUniform.random_zoom_4/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????88
 
_user_specified_nameinputs
?
g
H__inference_dropout_189_layer_call_and_return_conditional_losses_4758920

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
O
3__inference_max_pooling2d_266_layer_call_fn_4756687

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_266_layer_call_and_return_conditional_losses_47566812
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
I
-__inference_dropout_190_layer_call_fn_4759012

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_190_layer_call_and_return_conditional_losses_47572022
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_266_layer_call_and_return_conditional_losses_4756681

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?#
?
G__inference_conv2d_267_layer_call_and_return_conditional_losses_4758838

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp?3conv2d_267/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Relu?
#conv2d_267/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#conv2d_267/kernel/Regularizer/Const?
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype022
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp?
!conv2d_267/kernel/Regularizer/AbsAbs8conv2d_267/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ 2#
!conv2d_267/kernel/Regularizer/Abs?
%conv2d_267/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_267/kernel/Regularizer/Const_1?
!conv2d_267/kernel/Regularizer/SumSum%conv2d_267/kernel/Regularizer/Abs:y:0.conv2d_267/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/Sum?
#conv2d_267/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv2d_267/kernel/Regularizer/mul/x?
!conv2d_267/kernel/Regularizer/mulMul,conv2d_267/kernel/Regularizer/mul/x:output:0*conv2d_267/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/mul?
!conv2d_267/kernel/Regularizer/addAddV2,conv2d_267/kernel/Regularizer/Const:output:0%conv2d_267/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/add?
3conv2d_267/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype025
3conv2d_267/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_267/kernel/Regularizer/SquareSquare;conv2d_267/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ 2&
$conv2d_267/kernel/Regularizer/Square?
%conv2d_267/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_267/kernel/Regularizer/Const_2?
#conv2d_267/kernel/Regularizer/Sum_1Sum(conv2d_267/kernel/Regularizer/Square:y:0.conv2d_267/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/Sum_1?
%conv2d_267/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82'
%conv2d_267/kernel/Regularizer/mul_1/x?
#conv2d_267/kernel/Regularizer/mul_1Mul.conv2d_267/kernel/Regularizer/mul_1/x:output:0,conv2d_267/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/mul_1?
#conv2d_267/kernel/Regularizer/add_1AddV2%conv2d_267/kernel/Regularizer/add:z:0'conv2d_267/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/add_1?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp1^conv2d_267/kernel/Regularizer/Abs/ReadVariableOp4^conv2d_267/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2d
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp2j
3conv2d_267/kernel/Regularizer/Square/ReadVariableOp3conv2d_267/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
I
-__inference_flatten_134_layer_call_fn_4758858

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_flatten_134_layer_call_and_return_conditional_losses_47570632
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
+__inference_dense_426_layer_call_fn_4758985

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_426_layer_call_and_return_conditional_losses_47571692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?"
?
F__inference_dense_425_layer_call_and_return_conditional_losses_4758899

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_425/kernel/Regularizer/Abs/ReadVariableOp?2dense_425/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
"dense_425/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_425/kernel/Regularizer/Const?
/dense_425/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/dense_425/kernel/Regularizer/Abs/ReadVariableOp?
 dense_425/kernel/Regularizer/AbsAbs7dense_425/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2"
 dense_425/kernel/Regularizer/Abs?
$dense_425/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_425/kernel/Regularizer/Const_1?
 dense_425/kernel/Regularizer/SumSum$dense_425/kernel/Regularizer/Abs:y:0-dense_425/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/Sum?
"dense_425/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_425/kernel/Regularizer/mul/x?
 dense_425/kernel/Regularizer/mulMul+dense_425/kernel/Regularizer/mul/x:output:0)dense_425/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/mul?
 dense_425/kernel/Regularizer/addAddV2+dense_425/kernel/Regularizer/Const:output:0$dense_425/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/add?
2dense_425/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_425/kernel/Regularizer/Square/ReadVariableOp?
#dense_425/kernel/Regularizer/SquareSquare:dense_425/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_425/kernel/Regularizer/Square?
$dense_425/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_425/kernel/Regularizer/Const_2?
"dense_425/kernel/Regularizer/Sum_1Sum'dense_425/kernel/Regularizer/Square:y:0-dense_425/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/Sum_1?
$dense_425/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82&
$dense_425/kernel/Regularizer/mul_1/x?
"dense_425/kernel/Regularizer/mul_1Mul-dense_425/kernel/Regularizer/mul_1/x:output:0+dense_425/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/mul_1?
"dense_425/kernel/Regularizer/add_1AddV2$dense_425/kernel/Regularizer/add:z:0&dense_425/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/add_1?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_425/kernel/Regularizer/Abs/ReadVariableOp3^dense_425/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_425/kernel/Regularizer/Abs/ReadVariableOp/dense_425/kernel/Regularizer/Abs/ReadVariableOp2h
2dense_425/kernel/Regularizer/Square/ReadVariableOp2dense_425/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
g
H__inference_dropout_190_layer_call_and_return_conditional_losses_4758997

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_4759276
file_prefix0
,savev2_conv2d_266_kernel_read_readvariableop.
*savev2_conv2d_266_bias_read_readvariableop0
,savev2_conv2d_267_kernel_read_readvariableop.
*savev2_conv2d_267_bias_read_readvariableop/
+savev2_dense_425_kernel_read_readvariableop-
)savev2_dense_425_bias_read_readvariableop/
+savev2_dense_426_kernel_read_readvariableop-
)savev2_dense_426_bias_read_readvariableop/
+savev2_dense_427_kernel_read_readvariableop-
)savev2_dense_427_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop'
#savev2_variable_read_readvariableop	)
%savev2_variable_1_read_readvariableop	)
%savev2_variable_2_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv2d_266_kernel_m_read_readvariableop5
1savev2_adam_conv2d_266_bias_m_read_readvariableop7
3savev2_adam_conv2d_267_kernel_m_read_readvariableop5
1savev2_adam_conv2d_267_bias_m_read_readvariableop6
2savev2_adam_dense_425_kernel_m_read_readvariableop4
0savev2_adam_dense_425_bias_m_read_readvariableop6
2savev2_adam_dense_426_kernel_m_read_readvariableop4
0savev2_adam_dense_426_bias_m_read_readvariableop6
2savev2_adam_dense_427_kernel_m_read_readvariableop4
0savev2_adam_dense_427_bias_m_read_readvariableop7
3savev2_adam_conv2d_266_kernel_v_read_readvariableop5
1savev2_adam_conv2d_266_bias_v_read_readvariableop7
3savev2_adam_conv2d_267_kernel_v_read_readvariableop5
1savev2_adam_conv2d_267_bias_v_read_readvariableop6
2savev2_adam_dense_425_kernel_v_read_readvariableop4
0savev2_adam_dense_425_bias_v_read_readvariableop6
2savev2_adam_dense_426_kernel_v_read_readvariableop4
0savev2_adam_dense_426_bias_v_read_readvariableop6
2savev2_adam_dense_427_kernel_v_read_readvariableop4
0savev2_adam_dense_427_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*?
value?B?+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB2layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB2layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB2layer-3/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_266_kernel_read_readvariableop*savev2_conv2d_266_bias_read_readvariableop,savev2_conv2d_267_kernel_read_readvariableop*savev2_conv2d_267_bias_read_readvariableop+savev2_dense_425_kernel_read_readvariableop)savev2_dense_425_bias_read_readvariableop+savev2_dense_426_kernel_read_readvariableop)savev2_dense_426_bias_read_readvariableop+savev2_dense_427_kernel_read_readvariableop)savev2_dense_427_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop%savev2_variable_2_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv2d_266_kernel_m_read_readvariableop1savev2_adam_conv2d_266_bias_m_read_readvariableop3savev2_adam_conv2d_267_kernel_m_read_readvariableop1savev2_adam_conv2d_267_bias_m_read_readvariableop2savev2_adam_dense_425_kernel_m_read_readvariableop0savev2_adam_dense_425_bias_m_read_readvariableop2savev2_adam_dense_426_kernel_m_read_readvariableop0savev2_adam_dense_426_bias_m_read_readvariableop2savev2_adam_dense_427_kernel_m_read_readvariableop0savev2_adam_dense_427_bias_m_read_readvariableop3savev2_adam_conv2d_266_kernel_v_read_readvariableop1savev2_adam_conv2d_266_bias_v_read_readvariableop3savev2_adam_conv2d_267_kernel_v_read_readvariableop1savev2_adam_conv2d_267_bias_v_read_readvariableop2savev2_adam_dense_425_kernel_v_read_readvariableop0savev2_adam_dense_425_bias_v_read_readvariableop2savev2_adam_dense_426_kernel_v_read_readvariableop0savev2_adam_dense_426_bias_v_read_readvariableop2savev2_adam_dense_427_kernel_v_read_readvariableop0savev2_adam_dense_427_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *9
dtypes/
-2+				2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :@:@:@ : :
??:?:
??:?:
??:?: : : : : :::: : : : :@:@:@ : :
??:?:
??:?:
??:?:@:@:@ : :
??:?:
??:?:
??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:! 

_output_shapes	
:?:,!(
&
_output_shapes
:@: "

_output_shapes
:@:,#(
&
_output_shapes
:@ : $

_output_shapes
: :&%"
 
_output_shapes
:
??:!&

_output_shapes	
:?:&'"
 
_output_shapes
:
??:!(

_output_shapes	
:?:&)"
 
_output_shapes
:
??:!*

_output_shapes	
:?:+

_output_shapes
: 
??
?

K__inference_sequential_135_layer_call_and_return_conditional_losses_4757303
rescaling_135_input;
7random_zoom_4_stateful_uniform_statefuluniform_resource@
<random_rotation_51_stateful_uniform_statefuluniform_resource
conv2d_266_4757008
conv2d_266_4757010
conv2d_267_4757051
conv2d_267_4757053
dense_425_4757108
dense_425_4757110
dense_426_4757180
dense_426_4757182
dense_427_4757237
dense_427_4757239
identity??Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert?Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert?"conv2d_266/StatefulPartitionedCall?0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp?3conv2d_266/kernel/Regularizer/Square/ReadVariableOp?"conv2d_267/StatefulPartitionedCall?0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp?3conv2d_267/kernel/Regularizer/Square/ReadVariableOp?!dense_425/StatefulPartitionedCall?/dense_425/kernel/Regularizer/Abs/ReadVariableOp?2dense_425/kernel/Regularizer/Square/ReadVariableOp?!dense_426/StatefulPartitionedCall?/dense_426/kernel/Regularizer/Abs/ReadVariableOp?2dense_426/kernel/Regularizer/Square/ReadVariableOp?!dense_427/StatefulPartitionedCall?#dropout_189/StatefulPartitionedCall?#dropout_190/StatefulPartitionedCall?3random_rotation_51/stateful_uniform/StatefulUniform?.random_zoom_4/stateful_uniform/StatefulUniformq
rescaling_135/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling_135/Cast/xu
rescaling_135/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_135/Cast_1/x?
rescaling_135/mulMulrescaling_135_inputrescaling_135/Cast/x:output:0*
T0*/
_output_shapes
:?????????882
rescaling_135/mul?
rescaling_135/addAddV2rescaling_135/mul:z:0rescaling_135/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????882
rescaling_135/add?
8random_flip_56/random_flip_left_right/control_dependencyIdentityrescaling_135/add:z:0*
T0*$
_class
loc:@rescaling_135/add*/
_output_shapes
:?????????882:
8random_flip_56/random_flip_left_right/control_dependency?
+random_flip_56/random_flip_left_right/ShapeShapeArandom_flip_56/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2-
+random_flip_56/random_flip_left_right/Shape?
9random_flip_56/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_flip_56/random_flip_left_right/strided_slice/stack?
;random_flip_56/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip_56/random_flip_left_right/strided_slice/stack_1?
;random_flip_56/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip_56/random_flip_left_right/strided_slice/stack_2?
3random_flip_56/random_flip_left_right/strided_sliceStridedSlice4random_flip_56/random_flip_left_right/Shape:output:0Brandom_flip_56/random_flip_left_right/strided_slice/stack:output:0Drandom_flip_56/random_flip_left_right/strided_slice/stack_1:output:0Drandom_flip_56/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3random_flip_56/random_flip_left_right/strided_slice?
:random_flip_56/random_flip_left_right/random_uniform/shapePack<random_flip_56/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2<
:random_flip_56/random_flip_left_right/random_uniform/shape?
8random_flip_56/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2:
8random_flip_56/random_flip_left_right/random_uniform/min?
8random_flip_56/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8random_flip_56/random_flip_left_right/random_uniform/max?
Brandom_flip_56/random_flip_left_right/random_uniform/RandomUniformRandomUniformCrandom_flip_56/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02D
Brandom_flip_56/random_flip_left_right/random_uniform/RandomUniform?
8random_flip_56/random_flip_left_right/random_uniform/MulMulKrandom_flip_56/random_flip_left_right/random_uniform/RandomUniform:output:0Arandom_flip_56/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????2:
8random_flip_56/random_flip_left_right/random_uniform/Mul?
5random_flip_56/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_56/random_flip_left_right/Reshape/shape/1?
5random_flip_56/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_56/random_flip_left_right/Reshape/shape/2?
5random_flip_56/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_56/random_flip_left_right/Reshape/shape/3?
3random_flip_56/random_flip_left_right/Reshape/shapePack<random_flip_56/random_flip_left_right/strided_slice:output:0>random_flip_56/random_flip_left_right/Reshape/shape/1:output:0>random_flip_56/random_flip_left_right/Reshape/shape/2:output:0>random_flip_56/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:25
3random_flip_56/random_flip_left_right/Reshape/shape?
-random_flip_56/random_flip_left_right/ReshapeReshape<random_flip_56/random_flip_left_right/random_uniform/Mul:z:0<random_flip_56/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2/
-random_flip_56/random_flip_left_right/Reshape?
+random_flip_56/random_flip_left_right/RoundRound6random_flip_56/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????2-
+random_flip_56/random_flip_left_right/Round?
4random_flip_56/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:26
4random_flip_56/random_flip_left_right/ReverseV2/axis?
/random_flip_56/random_flip_left_right/ReverseV2	ReverseV2Arandom_flip_56/random_flip_left_right/control_dependency:output:0=random_flip_56/random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:?????????8821
/random_flip_56/random_flip_left_right/ReverseV2?
)random_flip_56/random_flip_left_right/mulMul/random_flip_56/random_flip_left_right/Round:y:08random_flip_56/random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:?????????882+
)random_flip_56/random_flip_left_right/mul?
+random_flip_56/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2-
+random_flip_56/random_flip_left_right/sub/x?
)random_flip_56/random_flip_left_right/subSub4random_flip_56/random_flip_left_right/sub/x:output:0/random_flip_56/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????2+
)random_flip_56/random_flip_left_right/sub?
+random_flip_56/random_flip_left_right/mul_1Mul-random_flip_56/random_flip_left_right/sub:z:0Arandom_flip_56/random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:?????????882-
+random_flip_56/random_flip_left_right/mul_1?
)random_flip_56/random_flip_left_right/addAddV2-random_flip_56/random_flip_left_right/mul:z:0/random_flip_56/random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:?????????882+
)random_flip_56/random_flip_left_right/add?
random_zoom_4/ShapeShape-random_flip_56/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_zoom_4/Shape?
!random_zoom_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_4/strided_slice/stack?
#random_zoom_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_1?
#random_zoom_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_2?
random_zoom_4/strided_sliceStridedSlicerandom_zoom_4/Shape:output:0*random_zoom_4/strided_slice/stack:output:0,random_zoom_4/strided_slice/stack_1:output:0,random_zoom_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice?
#random_zoom_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_1/stack?
%random_zoom_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_1?
%random_zoom_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_2?
random_zoom_4/strided_slice_1StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_1/stack:output:0.random_zoom_4/strided_slice_1/stack_1:output:0.random_zoom_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_1?
random_zoom_4/CastCast&random_zoom_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast?
#random_zoom_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_2/stack?
%random_zoom_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_1?
%random_zoom_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_2?
random_zoom_4/strided_slice_2StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_2/stack:output:0.random_zoom_4/strided_slice_2/stack_1:output:0.random_zoom_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_2?
random_zoom_4/Cast_1Cast&random_zoom_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast_1?
&random_zoom_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_4/stateful_uniform/shape/1?
$random_zoom_4/stateful_uniform/shapePack$random_zoom_4/strided_slice:output:0/random_zoom_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_4/stateful_uniform/shape?
"random_zoom_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?2$
"random_zoom_4/stateful_uniform/min?
"random_zoom_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????2$
"random_zoom_4/stateful_uniform/max?
8random_zoom_4/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_4/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_4/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_4_stateful_uniform_statefuluniform_resourceArandom_zoom_4/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_4/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_4/stateful_uniform/StatefulUniform?
"random_zoom_4/stateful_uniform/subSub+random_zoom_4/stateful_uniform/max:output:0+random_zoom_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_4/stateful_uniform/sub?
"random_zoom_4/stateful_uniform/mulMul7random_zoom_4/stateful_uniform/StatefulUniform:output:0&random_zoom_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_4/stateful_uniform/mul?
random_zoom_4/stateful_uniformAdd&random_zoom_4/stateful_uniform/mul:z:0+random_zoom_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_4/stateful_uniformx
random_zoom_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_4/concat/axis?
random_zoom_4/concatConcatV2"random_zoom_4/stateful_uniform:z:0"random_zoom_4/stateful_uniform:z:0"random_zoom_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_4/concat?
random_zoom_4/zoom_matrix/ShapeShaperandom_zoom_4/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_4/zoom_matrix/Shape?
-random_zoom_4/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_4/zoom_matrix/strided_slice/stack?
/random_zoom_4/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_1?
/random_zoom_4/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_2?
'random_zoom_4/zoom_matrix/strided_sliceStridedSlice(random_zoom_4/zoom_matrix/Shape:output:06random_zoom_4/zoom_matrix/strided_slice/stack:output:08random_zoom_4/zoom_matrix/strided_slice/stack_1:output:08random_zoom_4/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_4/zoom_matrix/strided_slice?
random_zoom_4/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_4/zoom_matrix/sub/y?
random_zoom_4/zoom_matrix/subSubrandom_zoom_4/Cast_1:y:0(random_zoom_4/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_4/zoom_matrix/sub?
#random_zoom_4/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_4/zoom_matrix/truediv/y?
!random_zoom_4/zoom_matrix/truedivRealDiv!random_zoom_4/zoom_matrix/sub:z:0,random_zoom_4/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_4/zoom_matrix/truediv?
/random_zoom_4/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_1/stack?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_1?
!random_zoom_4/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_1/x?
random_zoom_4/zoom_matrix/sub_1Sub*random_zoom_4/zoom_matrix/sub_1/x:output:02random_zoom_4/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_1?
random_zoom_4/zoom_matrix/mulMul%random_zoom_4/zoom_matrix/truediv:z:0#random_zoom_4/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_4/zoom_matrix/mul?
!random_zoom_4/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_2/y?
random_zoom_4/zoom_matrix/sub_2Subrandom_zoom_4/Cast:y:0*random_zoom_4/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_4/zoom_matrix/sub_2?
%random_zoom_4/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_4/zoom_matrix/truediv_1/y?
#random_zoom_4/zoom_matrix/truediv_1RealDiv#random_zoom_4/zoom_matrix/sub_2:z:0.random_zoom_4/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/truediv_1?
/random_zoom_4/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_2/stack?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_2?
!random_zoom_4/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_3/x?
random_zoom_4/zoom_matrix/sub_3Sub*random_zoom_4/zoom_matrix/sub_3/x:output:02random_zoom_4/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_3?
random_zoom_4/zoom_matrix/mul_1Mul'random_zoom_4/zoom_matrix/truediv_1:z:0#random_zoom_4/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/mul_1?
/random_zoom_4/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_3/stack?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_3?
%random_zoom_4/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/zeros/mul/y?
#random_zoom_4/zoom_matrix/zeros/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:0.random_zoom_4/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/zeros/mul?
&random_zoom_4/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_4/zoom_matrix/zeros/Less/y?
$random_zoom_4/zoom_matrix/zeros/LessLess'random_zoom_4/zoom_matrix/zeros/mul:z:0/random_zoom_4/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_4/zoom_matrix/zeros/Less?
(random_zoom_4/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_4/zoom_matrix/zeros/packed/1?
&random_zoom_4/zoom_matrix/zeros/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:01random_zoom_4/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_4/zoom_matrix/zeros/packed?
%random_zoom_4/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_4/zoom_matrix/zeros/Const?
random_zoom_4/zoom_matrix/zerosFill/random_zoom_4/zoom_matrix/zeros/packed:output:0.random_zoom_4/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/zeros?
'random_zoom_4/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_1/mul/y?
%random_zoom_4/zoom_matrix/zeros_1/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_1/mul?
(random_zoom_4/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_1/Less/y?
&random_zoom_4/zoom_matrix/zeros_1/LessLess)random_zoom_4/zoom_matrix/zeros_1/mul:z:01random_zoom_4/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_1/Less?
*random_zoom_4/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_1/packed/1?
(random_zoom_4/zoom_matrix/zeros_1/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_1/packed?
'random_zoom_4/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_1/Const?
!random_zoom_4/zoom_matrix/zeros_1Fill1random_zoom_4/zoom_matrix/zeros_1/packed:output:00random_zoom_4/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_1?
/random_zoom_4/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_4/stack?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_4?
'random_zoom_4/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_2/mul/y?
%random_zoom_4/zoom_matrix/zeros_2/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_2/mul?
(random_zoom_4/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_2/Less/y?
&random_zoom_4/zoom_matrix/zeros_2/LessLess)random_zoom_4/zoom_matrix/zeros_2/mul:z:01random_zoom_4/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_2/Less?
*random_zoom_4/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_2/packed/1?
(random_zoom_4/zoom_matrix/zeros_2/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_2/packed?
'random_zoom_4/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_2/Const?
!random_zoom_4/zoom_matrix/zeros_2Fill1random_zoom_4/zoom_matrix/zeros_2/packed:output:00random_zoom_4/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_2?
%random_zoom_4/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/concat/axis?
 random_zoom_4/zoom_matrix/concatConcatV22random_zoom_4/zoom_matrix/strided_slice_3:output:0(random_zoom_4/zoom_matrix/zeros:output:0!random_zoom_4/zoom_matrix/mul:z:0*random_zoom_4/zoom_matrix/zeros_1:output:02random_zoom_4/zoom_matrix/strided_slice_4:output:0#random_zoom_4/zoom_matrix/mul_1:z:0*random_zoom_4/zoom_matrix/zeros_2:output:0.random_zoom_4/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_4/zoom_matrix/concat?
random_zoom_4/transform/ShapeShape-random_flip_56/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_zoom_4/transform/Shape?
+random_zoom_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_4/transform/strided_slice/stack?
-random_zoom_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_1?
-random_zoom_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_2?
%random_zoom_4/transform/strided_sliceStridedSlice&random_zoom_4/transform/Shape:output:04random_zoom_4/transform/strided_slice/stack:output:06random_zoom_4/transform/strided_slice/stack_1:output:06random_zoom_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_4/transform/strided_slice?
"random_zoom_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_4/transform/fill_value?
2random_zoom_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3-random_flip_56/random_flip_left_right/add:z:0)random_zoom_4/zoom_matrix/concat:output:0.random_zoom_4/transform/strided_slice:output:0+random_zoom_4/transform/fill_value:output:0*/
_output_shapes
:?????????88*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_4/transform/ImageProjectiveTransformV3?
random_rotation_51/ShapeShapeGrandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_rotation_51/Shape?
&random_rotation_51/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_rotation_51/strided_slice/stack?
(random_rotation_51/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_51/strided_slice/stack_1?
(random_rotation_51/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_51/strided_slice/stack_2?
 random_rotation_51/strided_sliceStridedSlice!random_rotation_51/Shape:output:0/random_rotation_51/strided_slice/stack:output:01random_rotation_51/strided_slice/stack_1:output:01random_rotation_51/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 random_rotation_51/strided_slice?
(random_rotation_51/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_51/strided_slice_1/stack?
*random_rotation_51/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_51/strided_slice_1/stack_1?
*random_rotation_51/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_51/strided_slice_1/stack_2?
"random_rotation_51/strided_slice_1StridedSlice!random_rotation_51/Shape:output:01random_rotation_51/strided_slice_1/stack:output:03random_rotation_51/strided_slice_1/stack_1:output:03random_rotation_51/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_51/strided_slice_1?
random_rotation_51/CastCast+random_rotation_51/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_51/Cast?
(random_rotation_51/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_51/strided_slice_2/stack?
*random_rotation_51/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_51/strided_slice_2/stack_1?
*random_rotation_51/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_51/strided_slice_2/stack_2?
"random_rotation_51/strided_slice_2StridedSlice!random_rotation_51/Shape:output:01random_rotation_51/strided_slice_2/stack:output:03random_rotation_51/strided_slice_2/stack_1:output:03random_rotation_51/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_51/strided_slice_2?
random_rotation_51/Cast_1Cast+random_rotation_51/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_51/Cast_1?
)random_rotation_51/stateful_uniform/shapePack)random_rotation_51/strided_slice:output:0*
N*
T0*
_output_shapes
:2+
)random_rotation_51/stateful_uniform/shape?
'random_rotation_51/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2)
'random_rotation_51/stateful_uniform/min?
'random_rotation_51/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2)
'random_rotation_51/stateful_uniform/max?
=random_rotation_51/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2?
=random_rotation_51/stateful_uniform/StatefulUniform/algorithm?
3random_rotation_51/stateful_uniform/StatefulUniformStatefulUniform<random_rotation_51_stateful_uniform_statefuluniform_resourceFrandom_rotation_51/stateful_uniform/StatefulUniform/algorithm:output:02random_rotation_51/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype025
3random_rotation_51/stateful_uniform/StatefulUniform?
'random_rotation_51/stateful_uniform/subSub0random_rotation_51/stateful_uniform/max:output:00random_rotation_51/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2)
'random_rotation_51/stateful_uniform/sub?
'random_rotation_51/stateful_uniform/mulMul<random_rotation_51/stateful_uniform/StatefulUniform:output:0+random_rotation_51/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_51/stateful_uniform/mul?
#random_rotation_51/stateful_uniformAdd+random_rotation_51/stateful_uniform/mul:z:00random_rotation_51/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2%
#random_rotation_51/stateful_uniform?
(random_rotation_51/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(random_rotation_51/rotation_matrix/sub/y?
&random_rotation_51/rotation_matrix/subSubrandom_rotation_51/Cast_1:y:01random_rotation_51/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2(
&random_rotation_51/rotation_matrix/sub?
&random_rotation_51/rotation_matrix/CosCos'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_51/rotation_matrix/Cos?
*random_rotation_51/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_rotation_51/rotation_matrix/sub_1/y?
(random_rotation_51/rotation_matrix/sub_1Subrandom_rotation_51/Cast_1:y:03random_rotation_51/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_51/rotation_matrix/sub_1?
&random_rotation_51/rotation_matrix/mulMul*random_rotation_51/rotation_matrix/Cos:y:0,random_rotation_51/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_51/rotation_matrix/mul?
&random_rotation_51/rotation_matrix/SinSin'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_51/rotation_matrix/Sin?
*random_rotation_51/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_rotation_51/rotation_matrix/sub_2/y?
(random_rotation_51/rotation_matrix/sub_2Subrandom_rotation_51/Cast:y:03random_rotation_51/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_51/rotation_matrix/sub_2?
(random_rotation_51/rotation_matrix/mul_1Mul*random_rotation_51/rotation_matrix/Sin:y:0,random_rotation_51/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/mul_1?
(random_rotation_51/rotation_matrix/sub_3Sub*random_rotation_51/rotation_matrix/mul:z:0,random_rotation_51/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/sub_3?
(random_rotation_51/rotation_matrix/sub_4Sub*random_rotation_51/rotation_matrix/sub:z:0,random_rotation_51/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/sub_4?
,random_rotation_51/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2.
,random_rotation_51/rotation_matrix/truediv/y?
*random_rotation_51/rotation_matrix/truedivRealDiv,random_rotation_51/rotation_matrix/sub_4:z:05random_rotation_51/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2,
*random_rotation_51/rotation_matrix/truediv?
*random_rotation_51/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_rotation_51/rotation_matrix/sub_5/y?
(random_rotation_51/rotation_matrix/sub_5Subrandom_rotation_51/Cast:y:03random_rotation_51/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_51/rotation_matrix/sub_5?
(random_rotation_51/rotation_matrix/Sin_1Sin'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/Sin_1?
*random_rotation_51/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_rotation_51/rotation_matrix/sub_6/y?
(random_rotation_51/rotation_matrix/sub_6Subrandom_rotation_51/Cast_1:y:03random_rotation_51/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_51/rotation_matrix/sub_6?
(random_rotation_51/rotation_matrix/mul_2Mul,random_rotation_51/rotation_matrix/Sin_1:y:0,random_rotation_51/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/mul_2?
(random_rotation_51/rotation_matrix/Cos_1Cos'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/Cos_1?
*random_rotation_51/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_rotation_51/rotation_matrix/sub_7/y?
(random_rotation_51/rotation_matrix/sub_7Subrandom_rotation_51/Cast:y:03random_rotation_51/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_51/rotation_matrix/sub_7?
(random_rotation_51/rotation_matrix/mul_3Mul,random_rotation_51/rotation_matrix/Cos_1:y:0,random_rotation_51/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/mul_3?
&random_rotation_51/rotation_matrix/addAddV2,random_rotation_51/rotation_matrix/mul_2:z:0,random_rotation_51/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_51/rotation_matrix/add?
(random_rotation_51/rotation_matrix/sub_8Sub,random_rotation_51/rotation_matrix/sub_5:z:0*random_rotation_51/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/sub_8?
.random_rotation_51/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @20
.random_rotation_51/rotation_matrix/truediv_1/y?
,random_rotation_51/rotation_matrix/truediv_1RealDiv,random_rotation_51/rotation_matrix/sub_8:z:07random_rotation_51/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2.
,random_rotation_51/rotation_matrix/truediv_1?
(random_rotation_51/rotation_matrix/ShapeShape'random_rotation_51/stateful_uniform:z:0*
T0*
_output_shapes
:2*
(random_rotation_51/rotation_matrix/Shape?
6random_rotation_51/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_51/rotation_matrix/strided_slice/stack?
8random_rotation_51/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_51/rotation_matrix/strided_slice/stack_1?
8random_rotation_51/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_51/rotation_matrix/strided_slice/stack_2?
0random_rotation_51/rotation_matrix/strided_sliceStridedSlice1random_rotation_51/rotation_matrix/Shape:output:0?random_rotation_51/rotation_matrix/strided_slice/stack:output:0Arandom_rotation_51/rotation_matrix/strided_slice/stack_1:output:0Arandom_rotation_51/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0random_rotation_51/rotation_matrix/strided_slice?
(random_rotation_51/rotation_matrix/Cos_2Cos'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/Cos_2?
8random_rotation_51/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_51/rotation_matrix/strided_slice_1/stack?
:random_rotation_51/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_51/rotation_matrix/strided_slice_1/stack_1?
:random_rotation_51/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_51/rotation_matrix/strided_slice_1/stack_2?
2random_rotation_51/rotation_matrix/strided_slice_1StridedSlice,random_rotation_51/rotation_matrix/Cos_2:y:0Arandom_rotation_51/rotation_matrix/strided_slice_1/stack:output:0Crandom_rotation_51/rotation_matrix/strided_slice_1/stack_1:output:0Crandom_rotation_51/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_51/rotation_matrix/strided_slice_1?
(random_rotation_51/rotation_matrix/Sin_2Sin'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/Sin_2?
8random_rotation_51/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_51/rotation_matrix/strided_slice_2/stack?
:random_rotation_51/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_51/rotation_matrix/strided_slice_2/stack_1?
:random_rotation_51/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_51/rotation_matrix/strided_slice_2/stack_2?
2random_rotation_51/rotation_matrix/strided_slice_2StridedSlice,random_rotation_51/rotation_matrix/Sin_2:y:0Arandom_rotation_51/rotation_matrix/strided_slice_2/stack:output:0Crandom_rotation_51/rotation_matrix/strided_slice_2/stack_1:output:0Crandom_rotation_51/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_51/rotation_matrix/strided_slice_2?
&random_rotation_51/rotation_matrix/NegNeg;random_rotation_51/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2(
&random_rotation_51/rotation_matrix/Neg?
8random_rotation_51/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_51/rotation_matrix/strided_slice_3/stack?
:random_rotation_51/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_51/rotation_matrix/strided_slice_3/stack_1?
:random_rotation_51/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_51/rotation_matrix/strided_slice_3/stack_2?
2random_rotation_51/rotation_matrix/strided_slice_3StridedSlice.random_rotation_51/rotation_matrix/truediv:z:0Arandom_rotation_51/rotation_matrix/strided_slice_3/stack:output:0Crandom_rotation_51/rotation_matrix/strided_slice_3/stack_1:output:0Crandom_rotation_51/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_51/rotation_matrix/strided_slice_3?
(random_rotation_51/rotation_matrix/Sin_3Sin'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/Sin_3?
8random_rotation_51/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_51/rotation_matrix/strided_slice_4/stack?
:random_rotation_51/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_51/rotation_matrix/strided_slice_4/stack_1?
:random_rotation_51/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_51/rotation_matrix/strided_slice_4/stack_2?
2random_rotation_51/rotation_matrix/strided_slice_4StridedSlice,random_rotation_51/rotation_matrix/Sin_3:y:0Arandom_rotation_51/rotation_matrix/strided_slice_4/stack:output:0Crandom_rotation_51/rotation_matrix/strided_slice_4/stack_1:output:0Crandom_rotation_51/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_51/rotation_matrix/strided_slice_4?
(random_rotation_51/rotation_matrix/Cos_3Cos'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/Cos_3?
8random_rotation_51/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_51/rotation_matrix/strided_slice_5/stack?
:random_rotation_51/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_51/rotation_matrix/strided_slice_5/stack_1?
:random_rotation_51/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_51/rotation_matrix/strided_slice_5/stack_2?
2random_rotation_51/rotation_matrix/strided_slice_5StridedSlice,random_rotation_51/rotation_matrix/Cos_3:y:0Arandom_rotation_51/rotation_matrix/strided_slice_5/stack:output:0Crandom_rotation_51/rotation_matrix/strided_slice_5/stack_1:output:0Crandom_rotation_51/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_51/rotation_matrix/strided_slice_5?
8random_rotation_51/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_51/rotation_matrix/strided_slice_6/stack?
:random_rotation_51/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_51/rotation_matrix/strided_slice_6/stack_1?
:random_rotation_51/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_51/rotation_matrix/strided_slice_6/stack_2?
2random_rotation_51/rotation_matrix/strided_slice_6StridedSlice0random_rotation_51/rotation_matrix/truediv_1:z:0Arandom_rotation_51/rotation_matrix/strided_slice_6/stack:output:0Crandom_rotation_51/rotation_matrix/strided_slice_6/stack_1:output:0Crandom_rotation_51/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_51/rotation_matrix/strided_slice_6?
.random_rotation_51/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_51/rotation_matrix/zeros/mul/y?
,random_rotation_51/rotation_matrix/zeros/mulMul9random_rotation_51/rotation_matrix/strided_slice:output:07random_rotation_51/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_51/rotation_matrix/zeros/mul?
/random_rotation_51/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?21
/random_rotation_51/rotation_matrix/zeros/Less/y?
-random_rotation_51/rotation_matrix/zeros/LessLess0random_rotation_51/rotation_matrix/zeros/mul:z:08random_rotation_51/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2/
-random_rotation_51/rotation_matrix/zeros/Less?
1random_rotation_51/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_rotation_51/rotation_matrix/zeros/packed/1?
/random_rotation_51/rotation_matrix/zeros/packedPack9random_rotation_51/rotation_matrix/strided_slice:output:0:random_rotation_51/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:21
/random_rotation_51/rotation_matrix/zeros/packed?
.random_rotation_51/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.random_rotation_51/rotation_matrix/zeros/Const?
(random_rotation_51/rotation_matrix/zerosFill8random_rotation_51/rotation_matrix/zeros/packed:output:07random_rotation_51/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/zeros?
.random_rotation_51/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_51/rotation_matrix/concat/axis?
)random_rotation_51/rotation_matrix/concatConcatV2;random_rotation_51/rotation_matrix/strided_slice_1:output:0*random_rotation_51/rotation_matrix/Neg:y:0;random_rotation_51/rotation_matrix/strided_slice_3:output:0;random_rotation_51/rotation_matrix/strided_slice_4:output:0;random_rotation_51/rotation_matrix/strided_slice_5:output:0;random_rotation_51/rotation_matrix/strided_slice_6:output:01random_rotation_51/rotation_matrix/zeros:output:07random_rotation_51/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2+
)random_rotation_51/rotation_matrix/concat?
"random_rotation_51/transform/ShapeShapeGrandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2$
"random_rotation_51/transform/Shape?
0random_rotation_51/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0random_rotation_51/transform/strided_slice/stack?
2random_rotation_51/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_51/transform/strided_slice/stack_1?
2random_rotation_51/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_51/transform/strided_slice/stack_2?
*random_rotation_51/transform/strided_sliceStridedSlice+random_rotation_51/transform/Shape:output:09random_rotation_51/transform/strided_slice/stack:output:0;random_rotation_51/transform/strided_slice/stack_1:output:0;random_rotation_51/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*random_rotation_51/transform/strided_slice?
'random_rotation_51/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_rotation_51/transform/fill_value?
7random_rotation_51/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Grandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:02random_rotation_51/rotation_matrix/concat:output:03random_rotation_51/transform/strided_slice:output:00random_rotation_51/transform/fill_value:output:0*/
_output_shapes
:?????????88*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR29
7random_rotation_51/transform/ImageProjectiveTransformV3?
center_crop_3/ShapeShapeLrandom_rotation_51/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
center_crop_3/Shape?
!center_crop_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!center_crop_3/strided_slice/stack?
#center_crop_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#center_crop_3/strided_slice/stack_1?
#center_crop_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#center_crop_3/strided_slice/stack_2?
center_crop_3/strided_sliceStridedSlicecenter_crop_3/Shape:output:0*center_crop_3/strided_slice/stack:output:0,center_crop_3/strided_slice/stack_1:output:0,center_crop_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
center_crop_3/strided_slice?
#center_crop_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#center_crop_3/strided_slice_1/stack?
%center_crop_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%center_crop_3/strided_slice_1/stack_1?
%center_crop_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%center_crop_3/strided_slice_1/stack_2?
center_crop_3/strided_slice_1StridedSlicecenter_crop_3/Shape:output:0,center_crop_3/strided_slice_1/stack:output:0.center_crop_3/strided_slice_1/stack_1:output:0.center_crop_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
center_crop_3/strided_slice_1l
center_crop_3/sub/yConst*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/sub/y?
center_crop_3/subSub$center_crop_3/strided_slice:output:0center_crop_3/sub/y:output:0*
T0*
_output_shapes
: 2
center_crop_3/subp
center_crop_3/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/sub_1/y?
center_crop_3/sub_1Sub&center_crop_3/strided_slice_1:output:0center_crop_3/sub_1/y:output:0*
T0*
_output_shapes
: 2
center_crop_3/sub_1?
'center_crop_3/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0*
value	B : 2)
'center_crop_3/assert_non_negative/Const?
=center_crop_3/assert_non_negative/assert_less_equal/LessEqual	LessEqual0center_crop_3/assert_non_negative/Const:output:0center_crop_3/sub:z:0*
T0*
_output_shapes
: 2?
=center_crop_3/assert_non_negative/assert_less_equal/LessEqual?
8center_crop_3/assert_non_negative/assert_less_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : 2:
8center_crop_3/assert_non_negative/assert_less_equal/Rank?
?center_crop_3/assert_non_negative/assert_less_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2A
?center_crop_3/assert_non_negative/assert_less_equal/range/start?
?center_crop_3/assert_non_negative/assert_less_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2A
?center_crop_3/assert_non_negative/assert_less_equal/range/delta?
9center_crop_3/assert_non_negative/assert_less_equal/rangeRangeHcenter_crop_3/assert_non_negative/assert_less_equal/range/start:output:0Acenter_crop_3/assert_non_negative/assert_less_equal/Rank:output:0Hcenter_crop_3/assert_non_negative/assert_less_equal/range/delta:output:0*
_output_shapes
: 2;
9center_crop_3/assert_non_negative/assert_less_equal/range?
7center_crop_3/assert_non_negative/assert_less_equal/AllAllAcenter_crop_3/assert_non_negative/assert_less_equal/LessEqual:z:0Bcenter_crop_3/assert_non_negative/assert_less_equal/range:output:0*
_output_shapes
: 29
7center_crop_3/assert_non_negative/assert_less_equal/All?
@center_crop_3/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*L
valueCBA B;The crop height 28 should not be greater than input height.2B
@center_crop_3/assert_non_negative/assert_less_equal/Assert/Const?
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2D
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_1?
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*+
value"B  Bx (center_crop_3/sub:0) = 2D
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_2?
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*L
valueCBA B;The crop height 28 should not be greater than input height.2J
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0?
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2J
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1?
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*+
value"B  Bx (center_crop_3/sub:0) = 2J
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2?
Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/AssertAssert@center_crop_3/assert_non_negative/assert_less_equal/All:output:0Qcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0:output:0Qcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1:output:0Qcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2:output:0center_crop_3/sub:z:0*
T
2*
_output_shapes
 2C
Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert?
)center_crop_3/assert_non_negative_1/ConstConst*
_output_shapes
: *
dtype0*
value	B : 2+
)center_crop_3/assert_non_negative_1/Const?
?center_crop_3/assert_non_negative_1/assert_less_equal/LessEqual	LessEqual2center_crop_3/assert_non_negative_1/Const:output:0center_crop_3/sub_1:z:0*
T0*
_output_shapes
: 2A
?center_crop_3/assert_non_negative_1/assert_less_equal/LessEqual?
:center_crop_3/assert_non_negative_1/assert_less_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : 2<
:center_crop_3/assert_non_negative_1/assert_less_equal/Rank?
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2C
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/start?
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2C
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/delta?
;center_crop_3/assert_non_negative_1/assert_less_equal/rangeRangeJcenter_crop_3/assert_non_negative_1/assert_less_equal/range/start:output:0Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Rank:output:0Jcenter_crop_3/assert_non_negative_1/assert_less_equal/range/delta:output:0*
_output_shapes
: 2=
;center_crop_3/assert_non_negative_1/assert_less_equal/range?
9center_crop_3/assert_non_negative_1/assert_less_equal/AllAllCcenter_crop_3/assert_non_negative_1/assert_less_equal/LessEqual:z:0Dcenter_crop_3/assert_non_negative_1/assert_less_equal/range:output:0*
_output_shapes
: 2;
9center_crop_3/assert_non_negative_1/assert_less_equal/All?
Bcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*J
valueAB? B9The crop width 28 should not be greater than input width.2D
Bcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const?
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2F
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_1?
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*-
value$B" Bx (center_crop_3/sub_1:0) = 2F
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_2?
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*J
valueAB? B9The crop width 28 should not be greater than input width.2L
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0?
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2L
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1?
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*-
value$B" Bx (center_crop_3/sub_1:0) = 2L
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2?
Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/AssertAssertBcenter_crop_3/assert_non_negative_1/assert_less_equal/All:output:0Scenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0:output:0Scenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1:output:0Scenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2:output:0center_crop_3/sub_1:z:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/Assert*
T
2*
_output_shapes
 2E
Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert?
center_crop_3/truediv/yConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/truediv/y?
center_crop_3/truediv/CastCastcenter_crop_3/sub:z:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/truediv/Cast?
center_crop_3/truediv/Cast_1Cast center_crop_3/truediv/y:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/truediv/Cast_1?
center_crop_3/truedivRealDivcenter_crop_3/truediv/Cast:y:0 center_crop_3/truediv/Cast_1:y:0*
T0*
_output_shapes
: 2
center_crop_3/truediv{
center_crop_3/CastCastcenter_crop_3/truediv:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/Cast?
center_crop_3/truediv_1/yConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/truediv_1/y?
center_crop_3/truediv_1/CastCastcenter_crop_3/sub_1:z:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/truediv_1/Cast?
center_crop_3/truediv_1/Cast_1Cast"center_crop_3/truediv_1/y:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
center_crop_3/truediv_1/Cast_1?
center_crop_3/truediv_1RealDiv center_crop_3/truediv_1/Cast:y:0"center_crop_3/truediv_1/Cast_1:y:0*
T0*
_output_shapes
: 2
center_crop_3/truediv_1?
center_crop_3/Cast_1Castcenter_crop_3/truediv_1:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/Cast_1?
center_crop_3/stack/0ConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : 2
center_crop_3/stack/0?
center_crop_3/stack/3ConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : 2
center_crop_3/stack/3?
center_crop_3/stackPackcenter_crop_3/stack/0:output:0center_crop_3/Cast:y:0center_crop_3/Cast_1:y:0center_crop_3/stack/3:output:0*
N*
T0*
_output_shapes
:2
center_crop_3/stack?
center_crop_3/stack_1ConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
:*
dtype0*%
valueB"????      ????2
center_crop_3/stack_1?
center_crop_3/SliceSliceLrandom_rotation_51/transform/ImageProjectiveTransformV3:transformed_images:0center_crop_3/stack:output:0center_crop_3/stack_1:output:0*
Index0*
T0*/
_output_shapes
:?????????2
center_crop_3/Slice?
"conv2d_266/StatefulPartitionedCallStatefulPartitionedCallcenter_crop_3/Slice:output:0conv2d_266_4757008conv2d_266_4757010*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_266_layer_call_and_return_conditional_losses_47569972$
"conv2d_266/StatefulPartitionedCall?
!max_pooling2d_265/PartitionedCallPartitionedCall+conv2d_266/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_265_layer_call_and_return_conditional_losses_47566692#
!max_pooling2d_265/PartitionedCall?
"conv2d_267/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_265/PartitionedCall:output:0conv2d_267_4757051conv2d_267_4757053*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_267_layer_call_and_return_conditional_losses_47570402$
"conv2d_267/StatefulPartitionedCall?
!max_pooling2d_266/PartitionedCallPartitionedCall+conv2d_267/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_266_layer_call_and_return_conditional_losses_47566812#
!max_pooling2d_266/PartitionedCall?
flatten_134/PartitionedCallPartitionedCall*max_pooling2d_266/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_flatten_134_layer_call_and_return_conditional_losses_47570632
flatten_134/PartitionedCall?
!dense_425/StatefulPartitionedCallStatefulPartitionedCall$flatten_134/PartitionedCall:output:0dense_425_4757108dense_425_4757110*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_425_layer_call_and_return_conditional_losses_47570972#
!dense_425/StatefulPartitionedCall?
#dropout_189/StatefulPartitionedCallStatefulPartitionedCall*dense_425/StatefulPartitionedCall:output:0D^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_189_layer_call_and_return_conditional_losses_47571252%
#dropout_189/StatefulPartitionedCall?
!dense_426/StatefulPartitionedCallStatefulPartitionedCall,dropout_189/StatefulPartitionedCall:output:0dense_426_4757180dense_426_4757182*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_426_layer_call_and_return_conditional_losses_47571692#
!dense_426/StatefulPartitionedCall?
#dropout_190/StatefulPartitionedCallStatefulPartitionedCall*dense_426/StatefulPartitionedCall:output:0$^dropout_189/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_190_layer_call_and_return_conditional_losses_47571972%
#dropout_190/StatefulPartitionedCall?
!dense_427/StatefulPartitionedCallStatefulPartitionedCall,dropout_190/StatefulPartitionedCall:output:0dense_427_4757237dense_427_4757239*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_427_layer_call_and_return_conditional_losses_47572262#
!dense_427/StatefulPartitionedCall?
#conv2d_266/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#conv2d_266/kernel/Regularizer/Const?
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_266_4757008*&
_output_shapes
:@*
dtype022
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp?
!conv2d_266/kernel/Regularizer/AbsAbs8conv2d_266/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2#
!conv2d_266/kernel/Regularizer/Abs?
%conv2d_266/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_266/kernel/Regularizer/Const_1?
!conv2d_266/kernel/Regularizer/SumSum%conv2d_266/kernel/Regularizer/Abs:y:0.conv2d_266/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/Sum?
#conv2d_266/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv2d_266/kernel/Regularizer/mul/x?
!conv2d_266/kernel/Regularizer/mulMul,conv2d_266/kernel/Regularizer/mul/x:output:0*conv2d_266/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/mul?
!conv2d_266/kernel/Regularizer/addAddV2,conv2d_266/kernel/Regularizer/Const:output:0%conv2d_266/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/add?
3conv2d_266/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_266_4757008*&
_output_shapes
:@*
dtype025
3conv2d_266/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_266/kernel/Regularizer/SquareSquare;conv2d_266/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2&
$conv2d_266/kernel/Regularizer/Square?
%conv2d_266/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_266/kernel/Regularizer/Const_2?
#conv2d_266/kernel/Regularizer/Sum_1Sum(conv2d_266/kernel/Regularizer/Square:y:0.conv2d_266/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/Sum_1?
%conv2d_266/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82'
%conv2d_266/kernel/Regularizer/mul_1/x?
#conv2d_266/kernel/Regularizer/mul_1Mul.conv2d_266/kernel/Regularizer/mul_1/x:output:0,conv2d_266/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/mul_1?
#conv2d_266/kernel/Regularizer/add_1AddV2%conv2d_266/kernel/Regularizer/add:z:0'conv2d_266/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/add_1?
#conv2d_267/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#conv2d_267/kernel/Regularizer/Const?
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_267_4757051*&
_output_shapes
:@ *
dtype022
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp?
!conv2d_267/kernel/Regularizer/AbsAbs8conv2d_267/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ 2#
!conv2d_267/kernel/Regularizer/Abs?
%conv2d_267/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_267/kernel/Regularizer/Const_1?
!conv2d_267/kernel/Regularizer/SumSum%conv2d_267/kernel/Regularizer/Abs:y:0.conv2d_267/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/Sum?
#conv2d_267/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv2d_267/kernel/Regularizer/mul/x?
!conv2d_267/kernel/Regularizer/mulMul,conv2d_267/kernel/Regularizer/mul/x:output:0*conv2d_267/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/mul?
!conv2d_267/kernel/Regularizer/addAddV2,conv2d_267/kernel/Regularizer/Const:output:0%conv2d_267/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/add?
3conv2d_267/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_267_4757051*&
_output_shapes
:@ *
dtype025
3conv2d_267/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_267/kernel/Regularizer/SquareSquare;conv2d_267/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ 2&
$conv2d_267/kernel/Regularizer/Square?
%conv2d_267/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_267/kernel/Regularizer/Const_2?
#conv2d_267/kernel/Regularizer/Sum_1Sum(conv2d_267/kernel/Regularizer/Square:y:0.conv2d_267/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/Sum_1?
%conv2d_267/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82'
%conv2d_267/kernel/Regularizer/mul_1/x?
#conv2d_267/kernel/Regularizer/mul_1Mul.conv2d_267/kernel/Regularizer/mul_1/x:output:0,conv2d_267/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/mul_1?
#conv2d_267/kernel/Regularizer/add_1AddV2%conv2d_267/kernel/Regularizer/add:z:0'conv2d_267/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/add_1?
"dense_425/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_425/kernel/Regularizer/Const?
/dense_425/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_425_4757108* 
_output_shapes
:
??*
dtype021
/dense_425/kernel/Regularizer/Abs/ReadVariableOp?
 dense_425/kernel/Regularizer/AbsAbs7dense_425/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2"
 dense_425/kernel/Regularizer/Abs?
$dense_425/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_425/kernel/Regularizer/Const_1?
 dense_425/kernel/Regularizer/SumSum$dense_425/kernel/Regularizer/Abs:y:0-dense_425/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/Sum?
"dense_425/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_425/kernel/Regularizer/mul/x?
 dense_425/kernel/Regularizer/mulMul+dense_425/kernel/Regularizer/mul/x:output:0)dense_425/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/mul?
 dense_425/kernel/Regularizer/addAddV2+dense_425/kernel/Regularizer/Const:output:0$dense_425/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/add?
2dense_425/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_425_4757108* 
_output_shapes
:
??*
dtype024
2dense_425/kernel/Regularizer/Square/ReadVariableOp?
#dense_425/kernel/Regularizer/SquareSquare:dense_425/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_425/kernel/Regularizer/Square?
$dense_425/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_425/kernel/Regularizer/Const_2?
"dense_425/kernel/Regularizer/Sum_1Sum'dense_425/kernel/Regularizer/Square:y:0-dense_425/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/Sum_1?
$dense_425/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82&
$dense_425/kernel/Regularizer/mul_1/x?
"dense_425/kernel/Regularizer/mul_1Mul-dense_425/kernel/Regularizer/mul_1/x:output:0+dense_425/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/mul_1?
"dense_425/kernel/Regularizer/add_1AddV2$dense_425/kernel/Regularizer/add:z:0&dense_425/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/add_1?
"dense_426/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_426/kernel/Regularizer/Const?
/dense_426/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_426_4757180* 
_output_shapes
:
??*
dtype021
/dense_426/kernel/Regularizer/Abs/ReadVariableOp?
 dense_426/kernel/Regularizer/AbsAbs7dense_426/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2"
 dense_426/kernel/Regularizer/Abs?
$dense_426/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_426/kernel/Regularizer/Const_1?
 dense_426/kernel/Regularizer/SumSum$dense_426/kernel/Regularizer/Abs:y:0-dense_426/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/Sum?
"dense_426/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_426/kernel/Regularizer/mul/x?
 dense_426/kernel/Regularizer/mulMul+dense_426/kernel/Regularizer/mul/x:output:0)dense_426/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/mul?
 dense_426/kernel/Regularizer/addAddV2+dense_426/kernel/Regularizer/Const:output:0$dense_426/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/add?
2dense_426/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_426_4757180* 
_output_shapes
:
??*
dtype024
2dense_426/kernel/Regularizer/Square/ReadVariableOp?
#dense_426/kernel/Regularizer/SquareSquare:dense_426/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_426/kernel/Regularizer/Square?
$dense_426/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_426/kernel/Regularizer/Const_2?
"dense_426/kernel/Regularizer/Sum_1Sum'dense_426/kernel/Regularizer/Square:y:0-dense_426/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/Sum_1?
$dense_426/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82&
$dense_426/kernel/Regularizer/mul_1/x?
"dense_426/kernel/Regularizer/mul_1Mul-dense_426/kernel/Regularizer/mul_1/x:output:0+dense_426/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/mul_1?
"dense_426/kernel/Regularizer/add_1AddV2$dense_426/kernel/Regularizer/add:z:0&dense_426/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/add_1?
IdentityIdentity*dense_427/StatefulPartitionedCall:output:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert#^conv2d_266/StatefulPartitionedCall1^conv2d_266/kernel/Regularizer/Abs/ReadVariableOp4^conv2d_266/kernel/Regularizer/Square/ReadVariableOp#^conv2d_267/StatefulPartitionedCall1^conv2d_267/kernel/Regularizer/Abs/ReadVariableOp4^conv2d_267/kernel/Regularizer/Square/ReadVariableOp"^dense_425/StatefulPartitionedCall0^dense_425/kernel/Regularizer/Abs/ReadVariableOp3^dense_425/kernel/Regularizer/Square/ReadVariableOp"^dense_426/StatefulPartitionedCall0^dense_426/kernel/Regularizer/Abs/ReadVariableOp3^dense_426/kernel/Regularizer/Square/ReadVariableOp"^dense_427/StatefulPartitionedCall$^dropout_189/StatefulPartitionedCall$^dropout_190/StatefulPartitionedCall4^random_rotation_51/stateful_uniform/StatefulUniform/^random_zoom_4/stateful_uniform/StatefulUniform*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????88::::::::::::2?
Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/AssertAcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert2?
Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/AssertCcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert2H
"conv2d_266/StatefulPartitionedCall"conv2d_266/StatefulPartitionedCall2d
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp2j
3conv2d_266/kernel/Regularizer/Square/ReadVariableOp3conv2d_266/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_267/StatefulPartitionedCall"conv2d_267/StatefulPartitionedCall2d
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp2j
3conv2d_267/kernel/Regularizer/Square/ReadVariableOp3conv2d_267/kernel/Regularizer/Square/ReadVariableOp2F
!dense_425/StatefulPartitionedCall!dense_425/StatefulPartitionedCall2b
/dense_425/kernel/Regularizer/Abs/ReadVariableOp/dense_425/kernel/Regularizer/Abs/ReadVariableOp2h
2dense_425/kernel/Regularizer/Square/ReadVariableOp2dense_425/kernel/Regularizer/Square/ReadVariableOp2F
!dense_426/StatefulPartitionedCall!dense_426/StatefulPartitionedCall2b
/dense_426/kernel/Regularizer/Abs/ReadVariableOp/dense_426/kernel/Regularizer/Abs/ReadVariableOp2h
2dense_426/kernel/Regularizer/Square/ReadVariableOp2dense_426/kernel/Regularizer/Square/ReadVariableOp2F
!dense_427/StatefulPartitionedCall!dense_427/StatefulPartitionedCall2J
#dropout_189/StatefulPartitionedCall#dropout_189/StatefulPartitionedCall2J
#dropout_190/StatefulPartitionedCall#dropout_190/StatefulPartitionedCall2j
3random_rotation_51/stateful_uniform/StatefulUniform3random_rotation_51/stateful_uniform/StatefulUniform2`
.random_zoom_4/stateful_uniform/StatefulUniform.random_zoom_4/stateful_uniform/StatefulUniform:d `
/
_output_shapes
:?????????88
-
_user_specified_namerescaling_135_input
?"
?
F__inference_dense_426_layer_call_and_return_conditional_losses_4757169

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_426/kernel/Regularizer/Abs/ReadVariableOp?2dense_426/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
"dense_426/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_426/kernel/Regularizer/Const?
/dense_426/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/dense_426/kernel/Regularizer/Abs/ReadVariableOp?
 dense_426/kernel/Regularizer/AbsAbs7dense_426/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2"
 dense_426/kernel/Regularizer/Abs?
$dense_426/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_426/kernel/Regularizer/Const_1?
 dense_426/kernel/Regularizer/SumSum$dense_426/kernel/Regularizer/Abs:y:0-dense_426/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/Sum?
"dense_426/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_426/kernel/Regularizer/mul/x?
 dense_426/kernel/Regularizer/mulMul+dense_426/kernel/Regularizer/mul/x:output:0)dense_426/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/mul?
 dense_426/kernel/Regularizer/addAddV2+dense_426/kernel/Regularizer/Const:output:0$dense_426/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/add?
2dense_426/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_426/kernel/Regularizer/Square/ReadVariableOp?
#dense_426/kernel/Regularizer/SquareSquare:dense_426/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_426/kernel/Regularizer/Square?
$dense_426/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_426/kernel/Regularizer/Const_2?
"dense_426/kernel/Regularizer/Sum_1Sum'dense_426/kernel/Regularizer/Square:y:0-dense_426/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/Sum_1?
$dense_426/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82&
$dense_426/kernel/Regularizer/mul_1/x?
"dense_426/kernel/Regularizer/mul_1Mul-dense_426/kernel/Regularizer/mul_1/x:output:0+dense_426/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/mul_1?
"dense_426/kernel/Regularizer/add_1AddV2$dense_426/kernel/Regularizer/add:z:0&dense_426/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/add_1?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_426/kernel/Regularizer/Abs/ReadVariableOp3^dense_426/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_426/kernel/Regularizer/Abs/ReadVariableOp/dense_426/kernel/Regularizer/Abs/ReadVariableOp2h
2dense_426/kernel/Regularizer/Square/ReadVariableOp2dense_426/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
K__inference_sequential_135_layer_call_and_return_conditional_losses_4758013

inputs
conv2d_266_4757922
conv2d_266_4757924
conv2d_267_4757928
conv2d_267_4757930
dense_425_4757935
dense_425_4757937
dense_426_4757941
dense_426_4757943
dense_427_4757947
dense_427_4757949
identity??Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert?Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert?"conv2d_266/StatefulPartitionedCall?0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp?3conv2d_266/kernel/Regularizer/Square/ReadVariableOp?"conv2d_267/StatefulPartitionedCall?0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp?3conv2d_267/kernel/Regularizer/Square/ReadVariableOp?!dense_425/StatefulPartitionedCall?/dense_425/kernel/Regularizer/Abs/ReadVariableOp?2dense_425/kernel/Regularizer/Square/ReadVariableOp?!dense_426/StatefulPartitionedCall?/dense_426/kernel/Regularizer/Abs/ReadVariableOp?2dense_426/kernel/Regularizer/Square/ReadVariableOp?!dense_427/StatefulPartitionedCallq
rescaling_135/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling_135/Cast/xu
rescaling_135/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_135/Cast_1/x?
rescaling_135/mulMulinputsrescaling_135/Cast/x:output:0*
T0*/
_output_shapes
:?????????882
rescaling_135/mul?
rescaling_135/addAddV2rescaling_135/mul:z:0rescaling_135/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????882
rescaling_135/addo
center_crop_3/ShapeShaperescaling_135/add:z:0*
T0*
_output_shapes
:2
center_crop_3/Shape?
!center_crop_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!center_crop_3/strided_slice/stack?
#center_crop_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#center_crop_3/strided_slice/stack_1?
#center_crop_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#center_crop_3/strided_slice/stack_2?
center_crop_3/strided_sliceStridedSlicecenter_crop_3/Shape:output:0*center_crop_3/strided_slice/stack:output:0,center_crop_3/strided_slice/stack_1:output:0,center_crop_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
center_crop_3/strided_slice?
#center_crop_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#center_crop_3/strided_slice_1/stack?
%center_crop_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%center_crop_3/strided_slice_1/stack_1?
%center_crop_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%center_crop_3/strided_slice_1/stack_2?
center_crop_3/strided_slice_1StridedSlicecenter_crop_3/Shape:output:0,center_crop_3/strided_slice_1/stack:output:0.center_crop_3/strided_slice_1/stack_1:output:0.center_crop_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
center_crop_3/strided_slice_1l
center_crop_3/sub/yConst*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/sub/y?
center_crop_3/subSub$center_crop_3/strided_slice:output:0center_crop_3/sub/y:output:0*
T0*
_output_shapes
: 2
center_crop_3/subp
center_crop_3/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/sub_1/y?
center_crop_3/sub_1Sub&center_crop_3/strided_slice_1:output:0center_crop_3/sub_1/y:output:0*
T0*
_output_shapes
: 2
center_crop_3/sub_1?
'center_crop_3/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0*
value	B : 2)
'center_crop_3/assert_non_negative/Const?
=center_crop_3/assert_non_negative/assert_less_equal/LessEqual	LessEqual0center_crop_3/assert_non_negative/Const:output:0center_crop_3/sub:z:0*
T0*
_output_shapes
: 2?
=center_crop_3/assert_non_negative/assert_less_equal/LessEqual?
8center_crop_3/assert_non_negative/assert_less_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : 2:
8center_crop_3/assert_non_negative/assert_less_equal/Rank?
?center_crop_3/assert_non_negative/assert_less_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2A
?center_crop_3/assert_non_negative/assert_less_equal/range/start?
?center_crop_3/assert_non_negative/assert_less_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2A
?center_crop_3/assert_non_negative/assert_less_equal/range/delta?
9center_crop_3/assert_non_negative/assert_less_equal/rangeRangeHcenter_crop_3/assert_non_negative/assert_less_equal/range/start:output:0Acenter_crop_3/assert_non_negative/assert_less_equal/Rank:output:0Hcenter_crop_3/assert_non_negative/assert_less_equal/range/delta:output:0*
_output_shapes
: 2;
9center_crop_3/assert_non_negative/assert_less_equal/range?
7center_crop_3/assert_non_negative/assert_less_equal/AllAllAcenter_crop_3/assert_non_negative/assert_less_equal/LessEqual:z:0Bcenter_crop_3/assert_non_negative/assert_less_equal/range:output:0*
_output_shapes
: 29
7center_crop_3/assert_non_negative/assert_less_equal/All?
@center_crop_3/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*L
valueCBA B;The crop height 28 should not be greater than input height.2B
@center_crop_3/assert_non_negative/assert_less_equal/Assert/Const?
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2D
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_1?
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*+
value"B  Bx (center_crop_3/sub:0) = 2D
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_2?
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*L
valueCBA B;The crop height 28 should not be greater than input height.2J
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0?
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2J
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1?
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*+
value"B  Bx (center_crop_3/sub:0) = 2J
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2?
Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/AssertAssert@center_crop_3/assert_non_negative/assert_less_equal/All:output:0Qcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0:output:0Qcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1:output:0Qcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2:output:0center_crop_3/sub:z:0*
T
2*
_output_shapes
 2C
Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert?
)center_crop_3/assert_non_negative_1/ConstConst*
_output_shapes
: *
dtype0*
value	B : 2+
)center_crop_3/assert_non_negative_1/Const?
?center_crop_3/assert_non_negative_1/assert_less_equal/LessEqual	LessEqual2center_crop_3/assert_non_negative_1/Const:output:0center_crop_3/sub_1:z:0*
T0*
_output_shapes
: 2A
?center_crop_3/assert_non_negative_1/assert_less_equal/LessEqual?
:center_crop_3/assert_non_negative_1/assert_less_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : 2<
:center_crop_3/assert_non_negative_1/assert_less_equal/Rank?
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2C
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/start?
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2C
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/delta?
;center_crop_3/assert_non_negative_1/assert_less_equal/rangeRangeJcenter_crop_3/assert_non_negative_1/assert_less_equal/range/start:output:0Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Rank:output:0Jcenter_crop_3/assert_non_negative_1/assert_less_equal/range/delta:output:0*
_output_shapes
: 2=
;center_crop_3/assert_non_negative_1/assert_less_equal/range?
9center_crop_3/assert_non_negative_1/assert_less_equal/AllAllCcenter_crop_3/assert_non_negative_1/assert_less_equal/LessEqual:z:0Dcenter_crop_3/assert_non_negative_1/assert_less_equal/range:output:0*
_output_shapes
: 2;
9center_crop_3/assert_non_negative_1/assert_less_equal/All?
Bcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*J
valueAB? B9The crop width 28 should not be greater than input width.2D
Bcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const?
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2F
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_1?
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*-
value$B" Bx (center_crop_3/sub_1:0) = 2F
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_2?
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*J
valueAB? B9The crop width 28 should not be greater than input width.2L
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0?
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2L
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1?
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*-
value$B" Bx (center_crop_3/sub_1:0) = 2L
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2?
Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/AssertAssertBcenter_crop_3/assert_non_negative_1/assert_less_equal/All:output:0Scenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0:output:0Scenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1:output:0Scenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2:output:0center_crop_3/sub_1:z:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/Assert*
T
2*
_output_shapes
 2E
Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert?
center_crop_3/truediv/yConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/truediv/y?
center_crop_3/truediv/CastCastcenter_crop_3/sub:z:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/truediv/Cast?
center_crop_3/truediv/Cast_1Cast center_crop_3/truediv/y:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/truediv/Cast_1?
center_crop_3/truedivRealDivcenter_crop_3/truediv/Cast:y:0 center_crop_3/truediv/Cast_1:y:0*
T0*
_output_shapes
: 2
center_crop_3/truediv{
center_crop_3/CastCastcenter_crop_3/truediv:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/Cast?
center_crop_3/truediv_1/yConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/truediv_1/y?
center_crop_3/truediv_1/CastCastcenter_crop_3/sub_1:z:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/truediv_1/Cast?
center_crop_3/truediv_1/Cast_1Cast"center_crop_3/truediv_1/y:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
center_crop_3/truediv_1/Cast_1?
center_crop_3/truediv_1RealDiv center_crop_3/truediv_1/Cast:y:0"center_crop_3/truediv_1/Cast_1:y:0*
T0*
_output_shapes
: 2
center_crop_3/truediv_1?
center_crop_3/Cast_1Castcenter_crop_3/truediv_1:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/Cast_1?
center_crop_3/stack/0ConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : 2
center_crop_3/stack/0?
center_crop_3/stack/3ConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : 2
center_crop_3/stack/3?
center_crop_3/stackPackcenter_crop_3/stack/0:output:0center_crop_3/Cast:y:0center_crop_3/Cast_1:y:0center_crop_3/stack/3:output:0*
N*
T0*
_output_shapes
:2
center_crop_3/stack?
center_crop_3/stack_1ConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
:*
dtype0*%
valueB"????      ????2
center_crop_3/stack_1?
center_crop_3/SliceSlicerescaling_135/add:z:0center_crop_3/stack:output:0center_crop_3/stack_1:output:0*
Index0*
T0*/
_output_shapes
:?????????2
center_crop_3/Slice?
"conv2d_266/StatefulPartitionedCallStatefulPartitionedCallcenter_crop_3/Slice:output:0conv2d_266_4757922conv2d_266_4757924*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_266_layer_call_and_return_conditional_losses_47569972$
"conv2d_266/StatefulPartitionedCall?
!max_pooling2d_265/PartitionedCallPartitionedCall+conv2d_266/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_265_layer_call_and_return_conditional_losses_47566692#
!max_pooling2d_265/PartitionedCall?
"conv2d_267/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_265/PartitionedCall:output:0conv2d_267_4757928conv2d_267_4757930*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_267_layer_call_and_return_conditional_losses_47570402$
"conv2d_267/StatefulPartitionedCall?
!max_pooling2d_266/PartitionedCallPartitionedCall+conv2d_267/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_266_layer_call_and_return_conditional_losses_47566812#
!max_pooling2d_266/PartitionedCall?
flatten_134/PartitionedCallPartitionedCall*max_pooling2d_266/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_flatten_134_layer_call_and_return_conditional_losses_47570632
flatten_134/PartitionedCall?
!dense_425/StatefulPartitionedCallStatefulPartitionedCall$flatten_134/PartitionedCall:output:0dense_425_4757935dense_425_4757937*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_425_layer_call_and_return_conditional_losses_47570972#
!dense_425/StatefulPartitionedCall?
dropout_189/PartitionedCallPartitionedCall*dense_425/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_189_layer_call_and_return_conditional_losses_47571302
dropout_189/PartitionedCall?
!dense_426/StatefulPartitionedCallStatefulPartitionedCall$dropout_189/PartitionedCall:output:0dense_426_4757941dense_426_4757943*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_426_layer_call_and_return_conditional_losses_47571692#
!dense_426/StatefulPartitionedCall?
dropout_190/PartitionedCallPartitionedCall*dense_426/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_190_layer_call_and_return_conditional_losses_47572022
dropout_190/PartitionedCall?
!dense_427/StatefulPartitionedCallStatefulPartitionedCall$dropout_190/PartitionedCall:output:0dense_427_4757947dense_427_4757949*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_427_layer_call_and_return_conditional_losses_47572262#
!dense_427/StatefulPartitionedCall?
#conv2d_266/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#conv2d_266/kernel/Regularizer/Const?
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_266_4757922*&
_output_shapes
:@*
dtype022
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp?
!conv2d_266/kernel/Regularizer/AbsAbs8conv2d_266/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2#
!conv2d_266/kernel/Regularizer/Abs?
%conv2d_266/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_266/kernel/Regularizer/Const_1?
!conv2d_266/kernel/Regularizer/SumSum%conv2d_266/kernel/Regularizer/Abs:y:0.conv2d_266/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/Sum?
#conv2d_266/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv2d_266/kernel/Regularizer/mul/x?
!conv2d_266/kernel/Regularizer/mulMul,conv2d_266/kernel/Regularizer/mul/x:output:0*conv2d_266/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/mul?
!conv2d_266/kernel/Regularizer/addAddV2,conv2d_266/kernel/Regularizer/Const:output:0%conv2d_266/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/add?
3conv2d_266/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_266_4757922*&
_output_shapes
:@*
dtype025
3conv2d_266/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_266/kernel/Regularizer/SquareSquare;conv2d_266/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2&
$conv2d_266/kernel/Regularizer/Square?
%conv2d_266/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_266/kernel/Regularizer/Const_2?
#conv2d_266/kernel/Regularizer/Sum_1Sum(conv2d_266/kernel/Regularizer/Square:y:0.conv2d_266/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/Sum_1?
%conv2d_266/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82'
%conv2d_266/kernel/Regularizer/mul_1/x?
#conv2d_266/kernel/Regularizer/mul_1Mul.conv2d_266/kernel/Regularizer/mul_1/x:output:0,conv2d_266/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/mul_1?
#conv2d_266/kernel/Regularizer/add_1AddV2%conv2d_266/kernel/Regularizer/add:z:0'conv2d_266/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/add_1?
#conv2d_267/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#conv2d_267/kernel/Regularizer/Const?
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_267_4757928*&
_output_shapes
:@ *
dtype022
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp?
!conv2d_267/kernel/Regularizer/AbsAbs8conv2d_267/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ 2#
!conv2d_267/kernel/Regularizer/Abs?
%conv2d_267/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_267/kernel/Regularizer/Const_1?
!conv2d_267/kernel/Regularizer/SumSum%conv2d_267/kernel/Regularizer/Abs:y:0.conv2d_267/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/Sum?
#conv2d_267/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv2d_267/kernel/Regularizer/mul/x?
!conv2d_267/kernel/Regularizer/mulMul,conv2d_267/kernel/Regularizer/mul/x:output:0*conv2d_267/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/mul?
!conv2d_267/kernel/Regularizer/addAddV2,conv2d_267/kernel/Regularizer/Const:output:0%conv2d_267/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/add?
3conv2d_267/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_267_4757928*&
_output_shapes
:@ *
dtype025
3conv2d_267/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_267/kernel/Regularizer/SquareSquare;conv2d_267/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ 2&
$conv2d_267/kernel/Regularizer/Square?
%conv2d_267/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_267/kernel/Regularizer/Const_2?
#conv2d_267/kernel/Regularizer/Sum_1Sum(conv2d_267/kernel/Regularizer/Square:y:0.conv2d_267/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/Sum_1?
%conv2d_267/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82'
%conv2d_267/kernel/Regularizer/mul_1/x?
#conv2d_267/kernel/Regularizer/mul_1Mul.conv2d_267/kernel/Regularizer/mul_1/x:output:0,conv2d_267/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/mul_1?
#conv2d_267/kernel/Regularizer/add_1AddV2%conv2d_267/kernel/Regularizer/add:z:0'conv2d_267/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/add_1?
"dense_425/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_425/kernel/Regularizer/Const?
/dense_425/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_425_4757935* 
_output_shapes
:
??*
dtype021
/dense_425/kernel/Regularizer/Abs/ReadVariableOp?
 dense_425/kernel/Regularizer/AbsAbs7dense_425/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2"
 dense_425/kernel/Regularizer/Abs?
$dense_425/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_425/kernel/Regularizer/Const_1?
 dense_425/kernel/Regularizer/SumSum$dense_425/kernel/Regularizer/Abs:y:0-dense_425/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/Sum?
"dense_425/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_425/kernel/Regularizer/mul/x?
 dense_425/kernel/Regularizer/mulMul+dense_425/kernel/Regularizer/mul/x:output:0)dense_425/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/mul?
 dense_425/kernel/Regularizer/addAddV2+dense_425/kernel/Regularizer/Const:output:0$dense_425/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/add?
2dense_425/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_425_4757935* 
_output_shapes
:
??*
dtype024
2dense_425/kernel/Regularizer/Square/ReadVariableOp?
#dense_425/kernel/Regularizer/SquareSquare:dense_425/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_425/kernel/Regularizer/Square?
$dense_425/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_425/kernel/Regularizer/Const_2?
"dense_425/kernel/Regularizer/Sum_1Sum'dense_425/kernel/Regularizer/Square:y:0-dense_425/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/Sum_1?
$dense_425/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82&
$dense_425/kernel/Regularizer/mul_1/x?
"dense_425/kernel/Regularizer/mul_1Mul-dense_425/kernel/Regularizer/mul_1/x:output:0+dense_425/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/mul_1?
"dense_425/kernel/Regularizer/add_1AddV2$dense_425/kernel/Regularizer/add:z:0&dense_425/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/add_1?
"dense_426/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_426/kernel/Regularizer/Const?
/dense_426/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_426_4757941* 
_output_shapes
:
??*
dtype021
/dense_426/kernel/Regularizer/Abs/ReadVariableOp?
 dense_426/kernel/Regularizer/AbsAbs7dense_426/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2"
 dense_426/kernel/Regularizer/Abs?
$dense_426/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_426/kernel/Regularizer/Const_1?
 dense_426/kernel/Regularizer/SumSum$dense_426/kernel/Regularizer/Abs:y:0-dense_426/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/Sum?
"dense_426/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_426/kernel/Regularizer/mul/x?
 dense_426/kernel/Regularizer/mulMul+dense_426/kernel/Regularizer/mul/x:output:0)dense_426/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/mul?
 dense_426/kernel/Regularizer/addAddV2+dense_426/kernel/Regularizer/Const:output:0$dense_426/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/add?
2dense_426/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_426_4757941* 
_output_shapes
:
??*
dtype024
2dense_426/kernel/Regularizer/Square/ReadVariableOp?
#dense_426/kernel/Regularizer/SquareSquare:dense_426/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_426/kernel/Regularizer/Square?
$dense_426/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_426/kernel/Regularizer/Const_2?
"dense_426/kernel/Regularizer/Sum_1Sum'dense_426/kernel/Regularizer/Square:y:0-dense_426/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/Sum_1?
$dense_426/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82&
$dense_426/kernel/Regularizer/mul_1/x?
"dense_426/kernel/Regularizer/mul_1Mul-dense_426/kernel/Regularizer/mul_1/x:output:0+dense_426/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/mul_1?
"dense_426/kernel/Regularizer/add_1AddV2$dense_426/kernel/Regularizer/add:z:0&dense_426/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/add_1?
IdentityIdentity*dense_427/StatefulPartitionedCall:output:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert#^conv2d_266/StatefulPartitionedCall1^conv2d_266/kernel/Regularizer/Abs/ReadVariableOp4^conv2d_266/kernel/Regularizer/Square/ReadVariableOp#^conv2d_267/StatefulPartitionedCall1^conv2d_267/kernel/Regularizer/Abs/ReadVariableOp4^conv2d_267/kernel/Regularizer/Square/ReadVariableOp"^dense_425/StatefulPartitionedCall0^dense_425/kernel/Regularizer/Abs/ReadVariableOp3^dense_425/kernel/Regularizer/Square/ReadVariableOp"^dense_426/StatefulPartitionedCall0^dense_426/kernel/Regularizer/Abs/ReadVariableOp3^dense_426/kernel/Regularizer/Square/ReadVariableOp"^dense_427/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????88::::::::::2?
Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/AssertAcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert2?
Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/AssertCcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert2H
"conv2d_266/StatefulPartitionedCall"conv2d_266/StatefulPartitionedCall2d
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp2j
3conv2d_266/kernel/Regularizer/Square/ReadVariableOp3conv2d_266/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_267/StatefulPartitionedCall"conv2d_267/StatefulPartitionedCall2d
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp2j
3conv2d_267/kernel/Regularizer/Square/ReadVariableOp3conv2d_267/kernel/Regularizer/Square/ReadVariableOp2F
!dense_425/StatefulPartitionedCall!dense_425/StatefulPartitionedCall2b
/dense_425/kernel/Regularizer/Abs/ReadVariableOp/dense_425/kernel/Regularizer/Abs/ReadVariableOp2h
2dense_425/kernel/Regularizer/Square/ReadVariableOp2dense_425/kernel/Regularizer/Square/ReadVariableOp2F
!dense_426/StatefulPartitionedCall!dense_426/StatefulPartitionedCall2b
/dense_426/kernel/Regularizer/Abs/ReadVariableOp/dense_426/kernel/Regularizer/Abs/ReadVariableOp2h
2dense_426/kernel/Regularizer/Square/ReadVariableOp2dense_426/kernel/Regularizer/Square/ReadVariableOp2F
!dense_427/StatefulPartitionedCall!dense_427/StatefulPartitionedCall:W S
/
_output_shapes
:?????????88
 
_user_specified_nameinputs
??
?
K__inference_sequential_135_layer_call_and_return_conditional_losses_4758530

inputs;
7random_zoom_4_stateful_uniform_statefuluniform_resource@
<random_rotation_51_stateful_uniform_statefuluniform_resource-
)conv2d_266_conv2d_readvariableop_resource.
*conv2d_266_biasadd_readvariableop_resource-
)conv2d_267_conv2d_readvariableop_resource.
*conv2d_267_biasadd_readvariableop_resource,
(dense_425_matmul_readvariableop_resource-
)dense_425_biasadd_readvariableop_resource,
(dense_426_matmul_readvariableop_resource-
)dense_426_biasadd_readvariableop_resource,
(dense_427_matmul_readvariableop_resource-
)dense_427_biasadd_readvariableop_resource
identity??Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert?Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert?!conv2d_266/BiasAdd/ReadVariableOp? conv2d_266/Conv2D/ReadVariableOp?0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp?3conv2d_266/kernel/Regularizer/Square/ReadVariableOp?!conv2d_267/BiasAdd/ReadVariableOp? conv2d_267/Conv2D/ReadVariableOp?0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp?3conv2d_267/kernel/Regularizer/Square/ReadVariableOp? dense_425/BiasAdd/ReadVariableOp?dense_425/MatMul/ReadVariableOp?/dense_425/kernel/Regularizer/Abs/ReadVariableOp?2dense_425/kernel/Regularizer/Square/ReadVariableOp? dense_426/BiasAdd/ReadVariableOp?dense_426/MatMul/ReadVariableOp?/dense_426/kernel/Regularizer/Abs/ReadVariableOp?2dense_426/kernel/Regularizer/Square/ReadVariableOp? dense_427/BiasAdd/ReadVariableOp?dense_427/MatMul/ReadVariableOp?3random_rotation_51/stateful_uniform/StatefulUniform?.random_zoom_4/stateful_uniform/StatefulUniformq
rescaling_135/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling_135/Cast/xu
rescaling_135/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_135/Cast_1/x?
rescaling_135/mulMulinputsrescaling_135/Cast/x:output:0*
T0*/
_output_shapes
:?????????882
rescaling_135/mul?
rescaling_135/addAddV2rescaling_135/mul:z:0rescaling_135/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????882
rescaling_135/add?
8random_flip_56/random_flip_left_right/control_dependencyIdentityrescaling_135/add:z:0*
T0*$
_class
loc:@rescaling_135/add*/
_output_shapes
:?????????882:
8random_flip_56/random_flip_left_right/control_dependency?
+random_flip_56/random_flip_left_right/ShapeShapeArandom_flip_56/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2-
+random_flip_56/random_flip_left_right/Shape?
9random_flip_56/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_flip_56/random_flip_left_right/strided_slice/stack?
;random_flip_56/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip_56/random_flip_left_right/strided_slice/stack_1?
;random_flip_56/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip_56/random_flip_left_right/strided_slice/stack_2?
3random_flip_56/random_flip_left_right/strided_sliceStridedSlice4random_flip_56/random_flip_left_right/Shape:output:0Brandom_flip_56/random_flip_left_right/strided_slice/stack:output:0Drandom_flip_56/random_flip_left_right/strided_slice/stack_1:output:0Drandom_flip_56/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3random_flip_56/random_flip_left_right/strided_slice?
:random_flip_56/random_flip_left_right/random_uniform/shapePack<random_flip_56/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2<
:random_flip_56/random_flip_left_right/random_uniform/shape?
8random_flip_56/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2:
8random_flip_56/random_flip_left_right/random_uniform/min?
8random_flip_56/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8random_flip_56/random_flip_left_right/random_uniform/max?
Brandom_flip_56/random_flip_left_right/random_uniform/RandomUniformRandomUniformCrandom_flip_56/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02D
Brandom_flip_56/random_flip_left_right/random_uniform/RandomUniform?
8random_flip_56/random_flip_left_right/random_uniform/MulMulKrandom_flip_56/random_flip_left_right/random_uniform/RandomUniform:output:0Arandom_flip_56/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????2:
8random_flip_56/random_flip_left_right/random_uniform/Mul?
5random_flip_56/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_56/random_flip_left_right/Reshape/shape/1?
5random_flip_56/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_56/random_flip_left_right/Reshape/shape/2?
5random_flip_56/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_56/random_flip_left_right/Reshape/shape/3?
3random_flip_56/random_flip_left_right/Reshape/shapePack<random_flip_56/random_flip_left_right/strided_slice:output:0>random_flip_56/random_flip_left_right/Reshape/shape/1:output:0>random_flip_56/random_flip_left_right/Reshape/shape/2:output:0>random_flip_56/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:25
3random_flip_56/random_flip_left_right/Reshape/shape?
-random_flip_56/random_flip_left_right/ReshapeReshape<random_flip_56/random_flip_left_right/random_uniform/Mul:z:0<random_flip_56/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2/
-random_flip_56/random_flip_left_right/Reshape?
+random_flip_56/random_flip_left_right/RoundRound6random_flip_56/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????2-
+random_flip_56/random_flip_left_right/Round?
4random_flip_56/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:26
4random_flip_56/random_flip_left_right/ReverseV2/axis?
/random_flip_56/random_flip_left_right/ReverseV2	ReverseV2Arandom_flip_56/random_flip_left_right/control_dependency:output:0=random_flip_56/random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:?????????8821
/random_flip_56/random_flip_left_right/ReverseV2?
)random_flip_56/random_flip_left_right/mulMul/random_flip_56/random_flip_left_right/Round:y:08random_flip_56/random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:?????????882+
)random_flip_56/random_flip_left_right/mul?
+random_flip_56/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2-
+random_flip_56/random_flip_left_right/sub/x?
)random_flip_56/random_flip_left_right/subSub4random_flip_56/random_flip_left_right/sub/x:output:0/random_flip_56/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????2+
)random_flip_56/random_flip_left_right/sub?
+random_flip_56/random_flip_left_right/mul_1Mul-random_flip_56/random_flip_left_right/sub:z:0Arandom_flip_56/random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:?????????882-
+random_flip_56/random_flip_left_right/mul_1?
)random_flip_56/random_flip_left_right/addAddV2-random_flip_56/random_flip_left_right/mul:z:0/random_flip_56/random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:?????????882+
)random_flip_56/random_flip_left_right/add?
random_zoom_4/ShapeShape-random_flip_56/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_zoom_4/Shape?
!random_zoom_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_4/strided_slice/stack?
#random_zoom_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_1?
#random_zoom_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_2?
random_zoom_4/strided_sliceStridedSlicerandom_zoom_4/Shape:output:0*random_zoom_4/strided_slice/stack:output:0,random_zoom_4/strided_slice/stack_1:output:0,random_zoom_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice?
#random_zoom_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_1/stack?
%random_zoom_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_1?
%random_zoom_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_2?
random_zoom_4/strided_slice_1StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_1/stack:output:0.random_zoom_4/strided_slice_1/stack_1:output:0.random_zoom_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_1?
random_zoom_4/CastCast&random_zoom_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast?
#random_zoom_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_2/stack?
%random_zoom_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_1?
%random_zoom_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_2?
random_zoom_4/strided_slice_2StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_2/stack:output:0.random_zoom_4/strided_slice_2/stack_1:output:0.random_zoom_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_2?
random_zoom_4/Cast_1Cast&random_zoom_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast_1?
&random_zoom_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_4/stateful_uniform/shape/1?
$random_zoom_4/stateful_uniform/shapePack$random_zoom_4/strided_slice:output:0/random_zoom_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_4/stateful_uniform/shape?
"random_zoom_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?2$
"random_zoom_4/stateful_uniform/min?
"random_zoom_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????2$
"random_zoom_4/stateful_uniform/max?
8random_zoom_4/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_4/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_4/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_4_stateful_uniform_statefuluniform_resourceArandom_zoom_4/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_4/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_4/stateful_uniform/StatefulUniform?
"random_zoom_4/stateful_uniform/subSub+random_zoom_4/stateful_uniform/max:output:0+random_zoom_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_4/stateful_uniform/sub?
"random_zoom_4/stateful_uniform/mulMul7random_zoom_4/stateful_uniform/StatefulUniform:output:0&random_zoom_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_4/stateful_uniform/mul?
random_zoom_4/stateful_uniformAdd&random_zoom_4/stateful_uniform/mul:z:0+random_zoom_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_4/stateful_uniformx
random_zoom_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_4/concat/axis?
random_zoom_4/concatConcatV2"random_zoom_4/stateful_uniform:z:0"random_zoom_4/stateful_uniform:z:0"random_zoom_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_4/concat?
random_zoom_4/zoom_matrix/ShapeShaperandom_zoom_4/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_4/zoom_matrix/Shape?
-random_zoom_4/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_4/zoom_matrix/strided_slice/stack?
/random_zoom_4/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_1?
/random_zoom_4/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_2?
'random_zoom_4/zoom_matrix/strided_sliceStridedSlice(random_zoom_4/zoom_matrix/Shape:output:06random_zoom_4/zoom_matrix/strided_slice/stack:output:08random_zoom_4/zoom_matrix/strided_slice/stack_1:output:08random_zoom_4/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_4/zoom_matrix/strided_slice?
random_zoom_4/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_4/zoom_matrix/sub/y?
random_zoom_4/zoom_matrix/subSubrandom_zoom_4/Cast_1:y:0(random_zoom_4/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_4/zoom_matrix/sub?
#random_zoom_4/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_4/zoom_matrix/truediv/y?
!random_zoom_4/zoom_matrix/truedivRealDiv!random_zoom_4/zoom_matrix/sub:z:0,random_zoom_4/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_4/zoom_matrix/truediv?
/random_zoom_4/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_1/stack?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_1?
!random_zoom_4/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_1/x?
random_zoom_4/zoom_matrix/sub_1Sub*random_zoom_4/zoom_matrix/sub_1/x:output:02random_zoom_4/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_1?
random_zoom_4/zoom_matrix/mulMul%random_zoom_4/zoom_matrix/truediv:z:0#random_zoom_4/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_4/zoom_matrix/mul?
!random_zoom_4/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_2/y?
random_zoom_4/zoom_matrix/sub_2Subrandom_zoom_4/Cast:y:0*random_zoom_4/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_4/zoom_matrix/sub_2?
%random_zoom_4/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_4/zoom_matrix/truediv_1/y?
#random_zoom_4/zoom_matrix/truediv_1RealDiv#random_zoom_4/zoom_matrix/sub_2:z:0.random_zoom_4/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/truediv_1?
/random_zoom_4/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_2/stack?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_2?
!random_zoom_4/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_3/x?
random_zoom_4/zoom_matrix/sub_3Sub*random_zoom_4/zoom_matrix/sub_3/x:output:02random_zoom_4/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_3?
random_zoom_4/zoom_matrix/mul_1Mul'random_zoom_4/zoom_matrix/truediv_1:z:0#random_zoom_4/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/mul_1?
/random_zoom_4/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_3/stack?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_3?
%random_zoom_4/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/zeros/mul/y?
#random_zoom_4/zoom_matrix/zeros/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:0.random_zoom_4/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/zeros/mul?
&random_zoom_4/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_4/zoom_matrix/zeros/Less/y?
$random_zoom_4/zoom_matrix/zeros/LessLess'random_zoom_4/zoom_matrix/zeros/mul:z:0/random_zoom_4/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_4/zoom_matrix/zeros/Less?
(random_zoom_4/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_4/zoom_matrix/zeros/packed/1?
&random_zoom_4/zoom_matrix/zeros/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:01random_zoom_4/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_4/zoom_matrix/zeros/packed?
%random_zoom_4/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_4/zoom_matrix/zeros/Const?
random_zoom_4/zoom_matrix/zerosFill/random_zoom_4/zoom_matrix/zeros/packed:output:0.random_zoom_4/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/zeros?
'random_zoom_4/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_1/mul/y?
%random_zoom_4/zoom_matrix/zeros_1/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_1/mul?
(random_zoom_4/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_1/Less/y?
&random_zoom_4/zoom_matrix/zeros_1/LessLess)random_zoom_4/zoom_matrix/zeros_1/mul:z:01random_zoom_4/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_1/Less?
*random_zoom_4/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_1/packed/1?
(random_zoom_4/zoom_matrix/zeros_1/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_1/packed?
'random_zoom_4/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_1/Const?
!random_zoom_4/zoom_matrix/zeros_1Fill1random_zoom_4/zoom_matrix/zeros_1/packed:output:00random_zoom_4/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_1?
/random_zoom_4/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_4/stack?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_4?
'random_zoom_4/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_2/mul/y?
%random_zoom_4/zoom_matrix/zeros_2/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_2/mul?
(random_zoom_4/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_2/Less/y?
&random_zoom_4/zoom_matrix/zeros_2/LessLess)random_zoom_4/zoom_matrix/zeros_2/mul:z:01random_zoom_4/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_2/Less?
*random_zoom_4/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_2/packed/1?
(random_zoom_4/zoom_matrix/zeros_2/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_2/packed?
'random_zoom_4/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_2/Const?
!random_zoom_4/zoom_matrix/zeros_2Fill1random_zoom_4/zoom_matrix/zeros_2/packed:output:00random_zoom_4/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_2?
%random_zoom_4/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/concat/axis?
 random_zoom_4/zoom_matrix/concatConcatV22random_zoom_4/zoom_matrix/strided_slice_3:output:0(random_zoom_4/zoom_matrix/zeros:output:0!random_zoom_4/zoom_matrix/mul:z:0*random_zoom_4/zoom_matrix/zeros_1:output:02random_zoom_4/zoom_matrix/strided_slice_4:output:0#random_zoom_4/zoom_matrix/mul_1:z:0*random_zoom_4/zoom_matrix/zeros_2:output:0.random_zoom_4/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_4/zoom_matrix/concat?
random_zoom_4/transform/ShapeShape-random_flip_56/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_zoom_4/transform/Shape?
+random_zoom_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_4/transform/strided_slice/stack?
-random_zoom_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_1?
-random_zoom_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_2?
%random_zoom_4/transform/strided_sliceStridedSlice&random_zoom_4/transform/Shape:output:04random_zoom_4/transform/strided_slice/stack:output:06random_zoom_4/transform/strided_slice/stack_1:output:06random_zoom_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_4/transform/strided_slice?
"random_zoom_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_4/transform/fill_value?
2random_zoom_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3-random_flip_56/random_flip_left_right/add:z:0)random_zoom_4/zoom_matrix/concat:output:0.random_zoom_4/transform/strided_slice:output:0+random_zoom_4/transform/fill_value:output:0*/
_output_shapes
:?????????88*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_4/transform/ImageProjectiveTransformV3?
random_rotation_51/ShapeShapeGrandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_rotation_51/Shape?
&random_rotation_51/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_rotation_51/strided_slice/stack?
(random_rotation_51/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_51/strided_slice/stack_1?
(random_rotation_51/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_51/strided_slice/stack_2?
 random_rotation_51/strided_sliceStridedSlice!random_rotation_51/Shape:output:0/random_rotation_51/strided_slice/stack:output:01random_rotation_51/strided_slice/stack_1:output:01random_rotation_51/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 random_rotation_51/strided_slice?
(random_rotation_51/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_51/strided_slice_1/stack?
*random_rotation_51/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_51/strided_slice_1/stack_1?
*random_rotation_51/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_51/strided_slice_1/stack_2?
"random_rotation_51/strided_slice_1StridedSlice!random_rotation_51/Shape:output:01random_rotation_51/strided_slice_1/stack:output:03random_rotation_51/strided_slice_1/stack_1:output:03random_rotation_51/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_51/strided_slice_1?
random_rotation_51/CastCast+random_rotation_51/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_51/Cast?
(random_rotation_51/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_51/strided_slice_2/stack?
*random_rotation_51/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_51/strided_slice_2/stack_1?
*random_rotation_51/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_51/strided_slice_2/stack_2?
"random_rotation_51/strided_slice_2StridedSlice!random_rotation_51/Shape:output:01random_rotation_51/strided_slice_2/stack:output:03random_rotation_51/strided_slice_2/stack_1:output:03random_rotation_51/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_51/strided_slice_2?
random_rotation_51/Cast_1Cast+random_rotation_51/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_51/Cast_1?
)random_rotation_51/stateful_uniform/shapePack)random_rotation_51/strided_slice:output:0*
N*
T0*
_output_shapes
:2+
)random_rotation_51/stateful_uniform/shape?
'random_rotation_51/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2)
'random_rotation_51/stateful_uniform/min?
'random_rotation_51/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2)
'random_rotation_51/stateful_uniform/max?
=random_rotation_51/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2?
=random_rotation_51/stateful_uniform/StatefulUniform/algorithm?
3random_rotation_51/stateful_uniform/StatefulUniformStatefulUniform<random_rotation_51_stateful_uniform_statefuluniform_resourceFrandom_rotation_51/stateful_uniform/StatefulUniform/algorithm:output:02random_rotation_51/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype025
3random_rotation_51/stateful_uniform/StatefulUniform?
'random_rotation_51/stateful_uniform/subSub0random_rotation_51/stateful_uniform/max:output:00random_rotation_51/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2)
'random_rotation_51/stateful_uniform/sub?
'random_rotation_51/stateful_uniform/mulMul<random_rotation_51/stateful_uniform/StatefulUniform:output:0+random_rotation_51/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_51/stateful_uniform/mul?
#random_rotation_51/stateful_uniformAdd+random_rotation_51/stateful_uniform/mul:z:00random_rotation_51/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2%
#random_rotation_51/stateful_uniform?
(random_rotation_51/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(random_rotation_51/rotation_matrix/sub/y?
&random_rotation_51/rotation_matrix/subSubrandom_rotation_51/Cast_1:y:01random_rotation_51/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2(
&random_rotation_51/rotation_matrix/sub?
&random_rotation_51/rotation_matrix/CosCos'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_51/rotation_matrix/Cos?
*random_rotation_51/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_rotation_51/rotation_matrix/sub_1/y?
(random_rotation_51/rotation_matrix/sub_1Subrandom_rotation_51/Cast_1:y:03random_rotation_51/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_51/rotation_matrix/sub_1?
&random_rotation_51/rotation_matrix/mulMul*random_rotation_51/rotation_matrix/Cos:y:0,random_rotation_51/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_51/rotation_matrix/mul?
&random_rotation_51/rotation_matrix/SinSin'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_51/rotation_matrix/Sin?
*random_rotation_51/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_rotation_51/rotation_matrix/sub_2/y?
(random_rotation_51/rotation_matrix/sub_2Subrandom_rotation_51/Cast:y:03random_rotation_51/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_51/rotation_matrix/sub_2?
(random_rotation_51/rotation_matrix/mul_1Mul*random_rotation_51/rotation_matrix/Sin:y:0,random_rotation_51/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/mul_1?
(random_rotation_51/rotation_matrix/sub_3Sub*random_rotation_51/rotation_matrix/mul:z:0,random_rotation_51/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/sub_3?
(random_rotation_51/rotation_matrix/sub_4Sub*random_rotation_51/rotation_matrix/sub:z:0,random_rotation_51/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/sub_4?
,random_rotation_51/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2.
,random_rotation_51/rotation_matrix/truediv/y?
*random_rotation_51/rotation_matrix/truedivRealDiv,random_rotation_51/rotation_matrix/sub_4:z:05random_rotation_51/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2,
*random_rotation_51/rotation_matrix/truediv?
*random_rotation_51/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_rotation_51/rotation_matrix/sub_5/y?
(random_rotation_51/rotation_matrix/sub_5Subrandom_rotation_51/Cast:y:03random_rotation_51/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_51/rotation_matrix/sub_5?
(random_rotation_51/rotation_matrix/Sin_1Sin'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/Sin_1?
*random_rotation_51/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_rotation_51/rotation_matrix/sub_6/y?
(random_rotation_51/rotation_matrix/sub_6Subrandom_rotation_51/Cast_1:y:03random_rotation_51/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_51/rotation_matrix/sub_6?
(random_rotation_51/rotation_matrix/mul_2Mul,random_rotation_51/rotation_matrix/Sin_1:y:0,random_rotation_51/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/mul_2?
(random_rotation_51/rotation_matrix/Cos_1Cos'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/Cos_1?
*random_rotation_51/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_rotation_51/rotation_matrix/sub_7/y?
(random_rotation_51/rotation_matrix/sub_7Subrandom_rotation_51/Cast:y:03random_rotation_51/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_51/rotation_matrix/sub_7?
(random_rotation_51/rotation_matrix/mul_3Mul,random_rotation_51/rotation_matrix/Cos_1:y:0,random_rotation_51/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/mul_3?
&random_rotation_51/rotation_matrix/addAddV2,random_rotation_51/rotation_matrix/mul_2:z:0,random_rotation_51/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_51/rotation_matrix/add?
(random_rotation_51/rotation_matrix/sub_8Sub,random_rotation_51/rotation_matrix/sub_5:z:0*random_rotation_51/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/sub_8?
.random_rotation_51/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @20
.random_rotation_51/rotation_matrix/truediv_1/y?
,random_rotation_51/rotation_matrix/truediv_1RealDiv,random_rotation_51/rotation_matrix/sub_8:z:07random_rotation_51/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2.
,random_rotation_51/rotation_matrix/truediv_1?
(random_rotation_51/rotation_matrix/ShapeShape'random_rotation_51/stateful_uniform:z:0*
T0*
_output_shapes
:2*
(random_rotation_51/rotation_matrix/Shape?
6random_rotation_51/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_51/rotation_matrix/strided_slice/stack?
8random_rotation_51/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_51/rotation_matrix/strided_slice/stack_1?
8random_rotation_51/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_51/rotation_matrix/strided_slice/stack_2?
0random_rotation_51/rotation_matrix/strided_sliceStridedSlice1random_rotation_51/rotation_matrix/Shape:output:0?random_rotation_51/rotation_matrix/strided_slice/stack:output:0Arandom_rotation_51/rotation_matrix/strided_slice/stack_1:output:0Arandom_rotation_51/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0random_rotation_51/rotation_matrix/strided_slice?
(random_rotation_51/rotation_matrix/Cos_2Cos'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/Cos_2?
8random_rotation_51/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_51/rotation_matrix/strided_slice_1/stack?
:random_rotation_51/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_51/rotation_matrix/strided_slice_1/stack_1?
:random_rotation_51/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_51/rotation_matrix/strided_slice_1/stack_2?
2random_rotation_51/rotation_matrix/strided_slice_1StridedSlice,random_rotation_51/rotation_matrix/Cos_2:y:0Arandom_rotation_51/rotation_matrix/strided_slice_1/stack:output:0Crandom_rotation_51/rotation_matrix/strided_slice_1/stack_1:output:0Crandom_rotation_51/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_51/rotation_matrix/strided_slice_1?
(random_rotation_51/rotation_matrix/Sin_2Sin'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/Sin_2?
8random_rotation_51/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_51/rotation_matrix/strided_slice_2/stack?
:random_rotation_51/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_51/rotation_matrix/strided_slice_2/stack_1?
:random_rotation_51/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_51/rotation_matrix/strided_slice_2/stack_2?
2random_rotation_51/rotation_matrix/strided_slice_2StridedSlice,random_rotation_51/rotation_matrix/Sin_2:y:0Arandom_rotation_51/rotation_matrix/strided_slice_2/stack:output:0Crandom_rotation_51/rotation_matrix/strided_slice_2/stack_1:output:0Crandom_rotation_51/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_51/rotation_matrix/strided_slice_2?
&random_rotation_51/rotation_matrix/NegNeg;random_rotation_51/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2(
&random_rotation_51/rotation_matrix/Neg?
8random_rotation_51/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_51/rotation_matrix/strided_slice_3/stack?
:random_rotation_51/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_51/rotation_matrix/strided_slice_3/stack_1?
:random_rotation_51/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_51/rotation_matrix/strided_slice_3/stack_2?
2random_rotation_51/rotation_matrix/strided_slice_3StridedSlice.random_rotation_51/rotation_matrix/truediv:z:0Arandom_rotation_51/rotation_matrix/strided_slice_3/stack:output:0Crandom_rotation_51/rotation_matrix/strided_slice_3/stack_1:output:0Crandom_rotation_51/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_51/rotation_matrix/strided_slice_3?
(random_rotation_51/rotation_matrix/Sin_3Sin'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/Sin_3?
8random_rotation_51/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_51/rotation_matrix/strided_slice_4/stack?
:random_rotation_51/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_51/rotation_matrix/strided_slice_4/stack_1?
:random_rotation_51/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_51/rotation_matrix/strided_slice_4/stack_2?
2random_rotation_51/rotation_matrix/strided_slice_4StridedSlice,random_rotation_51/rotation_matrix/Sin_3:y:0Arandom_rotation_51/rotation_matrix/strided_slice_4/stack:output:0Crandom_rotation_51/rotation_matrix/strided_slice_4/stack_1:output:0Crandom_rotation_51/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_51/rotation_matrix/strided_slice_4?
(random_rotation_51/rotation_matrix/Cos_3Cos'random_rotation_51/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/Cos_3?
8random_rotation_51/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_51/rotation_matrix/strided_slice_5/stack?
:random_rotation_51/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_51/rotation_matrix/strided_slice_5/stack_1?
:random_rotation_51/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_51/rotation_matrix/strided_slice_5/stack_2?
2random_rotation_51/rotation_matrix/strided_slice_5StridedSlice,random_rotation_51/rotation_matrix/Cos_3:y:0Arandom_rotation_51/rotation_matrix/strided_slice_5/stack:output:0Crandom_rotation_51/rotation_matrix/strided_slice_5/stack_1:output:0Crandom_rotation_51/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_51/rotation_matrix/strided_slice_5?
8random_rotation_51/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_51/rotation_matrix/strided_slice_6/stack?
:random_rotation_51/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_51/rotation_matrix/strided_slice_6/stack_1?
:random_rotation_51/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_51/rotation_matrix/strided_slice_6/stack_2?
2random_rotation_51/rotation_matrix/strided_slice_6StridedSlice0random_rotation_51/rotation_matrix/truediv_1:z:0Arandom_rotation_51/rotation_matrix/strided_slice_6/stack:output:0Crandom_rotation_51/rotation_matrix/strided_slice_6/stack_1:output:0Crandom_rotation_51/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_51/rotation_matrix/strided_slice_6?
.random_rotation_51/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_51/rotation_matrix/zeros/mul/y?
,random_rotation_51/rotation_matrix/zeros/mulMul9random_rotation_51/rotation_matrix/strided_slice:output:07random_rotation_51/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_51/rotation_matrix/zeros/mul?
/random_rotation_51/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?21
/random_rotation_51/rotation_matrix/zeros/Less/y?
-random_rotation_51/rotation_matrix/zeros/LessLess0random_rotation_51/rotation_matrix/zeros/mul:z:08random_rotation_51/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2/
-random_rotation_51/rotation_matrix/zeros/Less?
1random_rotation_51/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_rotation_51/rotation_matrix/zeros/packed/1?
/random_rotation_51/rotation_matrix/zeros/packedPack9random_rotation_51/rotation_matrix/strided_slice:output:0:random_rotation_51/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:21
/random_rotation_51/rotation_matrix/zeros/packed?
.random_rotation_51/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.random_rotation_51/rotation_matrix/zeros/Const?
(random_rotation_51/rotation_matrix/zerosFill8random_rotation_51/rotation_matrix/zeros/packed:output:07random_rotation_51/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2*
(random_rotation_51/rotation_matrix/zeros?
.random_rotation_51/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_51/rotation_matrix/concat/axis?
)random_rotation_51/rotation_matrix/concatConcatV2;random_rotation_51/rotation_matrix/strided_slice_1:output:0*random_rotation_51/rotation_matrix/Neg:y:0;random_rotation_51/rotation_matrix/strided_slice_3:output:0;random_rotation_51/rotation_matrix/strided_slice_4:output:0;random_rotation_51/rotation_matrix/strided_slice_5:output:0;random_rotation_51/rotation_matrix/strided_slice_6:output:01random_rotation_51/rotation_matrix/zeros:output:07random_rotation_51/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2+
)random_rotation_51/rotation_matrix/concat?
"random_rotation_51/transform/ShapeShapeGrandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2$
"random_rotation_51/transform/Shape?
0random_rotation_51/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0random_rotation_51/transform/strided_slice/stack?
2random_rotation_51/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_51/transform/strided_slice/stack_1?
2random_rotation_51/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_51/transform/strided_slice/stack_2?
*random_rotation_51/transform/strided_sliceStridedSlice+random_rotation_51/transform/Shape:output:09random_rotation_51/transform/strided_slice/stack:output:0;random_rotation_51/transform/strided_slice/stack_1:output:0;random_rotation_51/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*random_rotation_51/transform/strided_slice?
'random_rotation_51/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_rotation_51/transform/fill_value?
7random_rotation_51/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Grandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:02random_rotation_51/rotation_matrix/concat:output:03random_rotation_51/transform/strided_slice:output:00random_rotation_51/transform/fill_value:output:0*/
_output_shapes
:?????????88*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR29
7random_rotation_51/transform/ImageProjectiveTransformV3?
center_crop_3/ShapeShapeLrandom_rotation_51/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
center_crop_3/Shape?
!center_crop_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!center_crop_3/strided_slice/stack?
#center_crop_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#center_crop_3/strided_slice/stack_1?
#center_crop_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#center_crop_3/strided_slice/stack_2?
center_crop_3/strided_sliceStridedSlicecenter_crop_3/Shape:output:0*center_crop_3/strided_slice/stack:output:0,center_crop_3/strided_slice/stack_1:output:0,center_crop_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
center_crop_3/strided_slice?
#center_crop_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#center_crop_3/strided_slice_1/stack?
%center_crop_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%center_crop_3/strided_slice_1/stack_1?
%center_crop_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%center_crop_3/strided_slice_1/stack_2?
center_crop_3/strided_slice_1StridedSlicecenter_crop_3/Shape:output:0,center_crop_3/strided_slice_1/stack:output:0.center_crop_3/strided_slice_1/stack_1:output:0.center_crop_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
center_crop_3/strided_slice_1l
center_crop_3/sub/yConst*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/sub/y?
center_crop_3/subSub$center_crop_3/strided_slice:output:0center_crop_3/sub/y:output:0*
T0*
_output_shapes
: 2
center_crop_3/subp
center_crop_3/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/sub_1/y?
center_crop_3/sub_1Sub&center_crop_3/strided_slice_1:output:0center_crop_3/sub_1/y:output:0*
T0*
_output_shapes
: 2
center_crop_3/sub_1?
'center_crop_3/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0*
value	B : 2)
'center_crop_3/assert_non_negative/Const?
=center_crop_3/assert_non_negative/assert_less_equal/LessEqual	LessEqual0center_crop_3/assert_non_negative/Const:output:0center_crop_3/sub:z:0*
T0*
_output_shapes
: 2?
=center_crop_3/assert_non_negative/assert_less_equal/LessEqual?
8center_crop_3/assert_non_negative/assert_less_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : 2:
8center_crop_3/assert_non_negative/assert_less_equal/Rank?
?center_crop_3/assert_non_negative/assert_less_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2A
?center_crop_3/assert_non_negative/assert_less_equal/range/start?
?center_crop_3/assert_non_negative/assert_less_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2A
?center_crop_3/assert_non_negative/assert_less_equal/range/delta?
9center_crop_3/assert_non_negative/assert_less_equal/rangeRangeHcenter_crop_3/assert_non_negative/assert_less_equal/range/start:output:0Acenter_crop_3/assert_non_negative/assert_less_equal/Rank:output:0Hcenter_crop_3/assert_non_negative/assert_less_equal/range/delta:output:0*
_output_shapes
: 2;
9center_crop_3/assert_non_negative/assert_less_equal/range?
7center_crop_3/assert_non_negative/assert_less_equal/AllAllAcenter_crop_3/assert_non_negative/assert_less_equal/LessEqual:z:0Bcenter_crop_3/assert_non_negative/assert_less_equal/range:output:0*
_output_shapes
: 29
7center_crop_3/assert_non_negative/assert_less_equal/All?
@center_crop_3/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*L
valueCBA B;The crop height 28 should not be greater than input height.2B
@center_crop_3/assert_non_negative/assert_less_equal/Assert/Const?
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2D
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_1?
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*+
value"B  Bx (center_crop_3/sub:0) = 2D
Bcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Const_2?
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*L
valueCBA B;The crop height 28 should not be greater than input height.2J
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0?
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2J
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1?
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*+
value"B  Bx (center_crop_3/sub:0) = 2J
Hcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2?
Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/AssertAssert@center_crop_3/assert_non_negative/assert_less_equal/All:output:0Qcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_0:output:0Qcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_1:output:0Qcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert/data_2:output:0center_crop_3/sub:z:0*
T
2*
_output_shapes
 2C
Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert?
)center_crop_3/assert_non_negative_1/ConstConst*
_output_shapes
: *
dtype0*
value	B : 2+
)center_crop_3/assert_non_negative_1/Const?
?center_crop_3/assert_non_negative_1/assert_less_equal/LessEqual	LessEqual2center_crop_3/assert_non_negative_1/Const:output:0center_crop_3/sub_1:z:0*
T0*
_output_shapes
: 2A
?center_crop_3/assert_non_negative_1/assert_less_equal/LessEqual?
:center_crop_3/assert_non_negative_1/assert_less_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : 2<
:center_crop_3/assert_non_negative_1/assert_less_equal/Rank?
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2C
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/start?
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2C
Acenter_crop_3/assert_non_negative_1/assert_less_equal/range/delta?
;center_crop_3/assert_non_negative_1/assert_less_equal/rangeRangeJcenter_crop_3/assert_non_negative_1/assert_less_equal/range/start:output:0Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Rank:output:0Jcenter_crop_3/assert_non_negative_1/assert_less_equal/range/delta:output:0*
_output_shapes
: 2=
;center_crop_3/assert_non_negative_1/assert_less_equal/range?
9center_crop_3/assert_non_negative_1/assert_less_equal/AllAllCcenter_crop_3/assert_non_negative_1/assert_less_equal/LessEqual:z:0Dcenter_crop_3/assert_non_negative_1/assert_less_equal/range:output:0*
_output_shapes
: 2;
9center_crop_3/assert_non_negative_1/assert_less_equal/All?
Bcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*J
valueAB? B9The crop width 28 should not be greater than input width.2D
Bcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const?
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2F
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_1?
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*-
value$B" Bx (center_crop_3/sub_1:0) = 2F
Dcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Const_2?
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*J
valueAB? B9The crop width 28 should not be greater than input width.2L
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0?
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2L
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1?
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*-
value$B" Bx (center_crop_3/sub_1:0) = 2L
Jcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2?
Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/AssertAssertBcenter_crop_3/assert_non_negative_1/assert_less_equal/All:output:0Scenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_0:output:0Scenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_1:output:0Scenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert/data_2:output:0center_crop_3/sub_1:z:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/Assert*
T
2*
_output_shapes
 2E
Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert?
center_crop_3/truediv/yConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/truediv/y?
center_crop_3/truediv/CastCastcenter_crop_3/sub:z:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/truediv/Cast?
center_crop_3/truediv/Cast_1Cast center_crop_3/truediv/y:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/truediv/Cast_1?
center_crop_3/truedivRealDivcenter_crop_3/truediv/Cast:y:0 center_crop_3/truediv/Cast_1:y:0*
T0*
_output_shapes
: 2
center_crop_3/truediv{
center_crop_3/CastCastcenter_crop_3/truediv:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/Cast?
center_crop_3/truediv_1/yConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :2
center_crop_3/truediv_1/y?
center_crop_3/truediv_1/CastCastcenter_crop_3/sub_1:z:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/truediv_1/Cast?
center_crop_3/truediv_1/Cast_1Cast"center_crop_3/truediv_1/y:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
center_crop_3/truediv_1/Cast_1?
center_crop_3/truediv_1RealDiv center_crop_3/truediv_1/Cast:y:0"center_crop_3/truediv_1/Cast_1:y:0*
T0*
_output_shapes
: 2
center_crop_3/truediv_1?
center_crop_3/Cast_1Castcenter_crop_3/truediv_1:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
center_crop_3/Cast_1?
center_crop_3/stack/0ConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : 2
center_crop_3/stack/0?
center_crop_3/stack/3ConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : 2
center_crop_3/stack/3?
center_crop_3/stackPackcenter_crop_3/stack/0:output:0center_crop_3/Cast:y:0center_crop_3/Cast_1:y:0center_crop_3/stack/3:output:0*
N*
T0*
_output_shapes
:2
center_crop_3/stack?
center_crop_3/stack_1ConstB^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert*
_output_shapes
:*
dtype0*%
valueB"????      ????2
center_crop_3/stack_1?
center_crop_3/SliceSliceLrandom_rotation_51/transform/ImageProjectiveTransformV3:transformed_images:0center_crop_3/stack:output:0center_crop_3/stack_1:output:0*
Index0*
T0*/
_output_shapes
:?????????2
center_crop_3/Slice?
 conv2d_266/Conv2D/ReadVariableOpReadVariableOp)conv2d_266_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02"
 conv2d_266/Conv2D/ReadVariableOp?
conv2d_266/Conv2DConv2Dcenter_crop_3/Slice:output:0(conv2d_266/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_266/Conv2D?
!conv2d_266/BiasAdd/ReadVariableOpReadVariableOp*conv2d_266_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_266/BiasAdd/ReadVariableOp?
conv2d_266/BiasAddBiasAddconv2d_266/Conv2D:output:0)conv2d_266/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_266/BiasAdd?
conv2d_266/ReluReluconv2d_266/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_266/Relu?
max_pooling2d_265/MaxPoolMaxPoolconv2d_266/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_265/MaxPool?
 conv2d_267/Conv2D/ReadVariableOpReadVariableOp)conv2d_267_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02"
 conv2d_267/Conv2D/ReadVariableOp?
conv2d_267/Conv2DConv2D"max_pooling2d_265/MaxPool:output:0(conv2d_267/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_267/Conv2D?
!conv2d_267/BiasAdd/ReadVariableOpReadVariableOp*conv2d_267_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_267/BiasAdd/ReadVariableOp?
conv2d_267/BiasAddBiasAddconv2d_267/Conv2D:output:0)conv2d_267/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_267/BiasAdd?
conv2d_267/ReluReluconv2d_267/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_267/Relu?
max_pooling2d_266/MaxPoolMaxPoolconv2d_267/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_266/MaxPoolw
flatten_134/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_134/Const?
flatten_134/ReshapeReshape"max_pooling2d_266/MaxPool:output:0flatten_134/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_134/Reshape?
dense_425/MatMul/ReadVariableOpReadVariableOp(dense_425_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_425/MatMul/ReadVariableOp?
dense_425/MatMulMatMulflatten_134/Reshape:output:0'dense_425/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_425/MatMul?
 dense_425/BiasAdd/ReadVariableOpReadVariableOp)dense_425_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_425/BiasAdd/ReadVariableOp?
dense_425/BiasAddBiasAdddense_425/MatMul:product:0(dense_425/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_425/BiasAddw
dense_425/ReluReludense_425/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_425/Relu{
dropout_189/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout_189/dropout/Const?
dropout_189/dropout/MulMuldense_425/Relu:activations:0"dropout_189/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_189/dropout/Mul?
dropout_189/dropout/ShapeShapedense_425/Relu:activations:0*
T0*
_output_shapes
:2
dropout_189/dropout/Shape?
0dropout_189/dropout/random_uniform/RandomUniformRandomUniform"dropout_189/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype022
0dropout_189/dropout/random_uniform/RandomUniform?
"dropout_189/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"dropout_189/dropout/GreaterEqual/y?
 dropout_189/dropout/GreaterEqualGreaterEqual9dropout_189/dropout/random_uniform/RandomUniform:output:0+dropout_189/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 dropout_189/dropout/GreaterEqual?
dropout_189/dropout/CastCast$dropout_189/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_189/dropout/Cast?
dropout_189/dropout/Mul_1Muldropout_189/dropout/Mul:z:0dropout_189/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_189/dropout/Mul_1?
dense_426/MatMul/ReadVariableOpReadVariableOp(dense_426_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_426/MatMul/ReadVariableOp?
dense_426/MatMulMatMuldropout_189/dropout/Mul_1:z:0'dense_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_426/MatMul?
 dense_426/BiasAdd/ReadVariableOpReadVariableOp)dense_426_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_426/BiasAdd/ReadVariableOp?
dense_426/BiasAddBiasAdddense_426/MatMul:product:0(dense_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_426/BiasAddw
dense_426/ReluReludense_426/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_426/Relu{
dropout_190/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout_190/dropout/Const?
dropout_190/dropout/MulMuldense_426/Relu:activations:0"dropout_190/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_190/dropout/Mul?
dropout_190/dropout/ShapeShapedense_426/Relu:activations:0*
T0*
_output_shapes
:2
dropout_190/dropout/Shape?
0dropout_190/dropout/random_uniform/RandomUniformRandomUniform"dropout_190/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype022
0dropout_190/dropout/random_uniform/RandomUniform?
"dropout_190/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"dropout_190/dropout/GreaterEqual/y?
 dropout_190/dropout/GreaterEqualGreaterEqual9dropout_190/dropout/random_uniform/RandomUniform:output:0+dropout_190/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 dropout_190/dropout/GreaterEqual?
dropout_190/dropout/CastCast$dropout_190/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_190/dropout/Cast?
dropout_190/dropout/Mul_1Muldropout_190/dropout/Mul:z:0dropout_190/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_190/dropout/Mul_1?
dense_427/MatMul/ReadVariableOpReadVariableOp(dense_427_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_427/MatMul/ReadVariableOp?
dense_427/MatMulMatMuldropout_190/dropout/Mul_1:z:0'dense_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_427/MatMul?
 dense_427/BiasAdd/ReadVariableOpReadVariableOp)dense_427_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_427/BiasAdd/ReadVariableOp?
dense_427/BiasAddBiasAdddense_427/MatMul:product:0(dense_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_427/BiasAdd?
dense_427/SoftmaxSoftmaxdense_427/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_427/Softmax?
#conv2d_266/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#conv2d_266/kernel/Regularizer/Const?
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp)conv2d_266_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype022
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp?
!conv2d_266/kernel/Regularizer/AbsAbs8conv2d_266/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2#
!conv2d_266/kernel/Regularizer/Abs?
%conv2d_266/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_266/kernel/Regularizer/Const_1?
!conv2d_266/kernel/Regularizer/SumSum%conv2d_266/kernel/Regularizer/Abs:y:0.conv2d_266/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/Sum?
#conv2d_266/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv2d_266/kernel/Regularizer/mul/x?
!conv2d_266/kernel/Regularizer/mulMul,conv2d_266/kernel/Regularizer/mul/x:output:0*conv2d_266/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/mul?
!conv2d_266/kernel/Regularizer/addAddV2,conv2d_266/kernel/Regularizer/Const:output:0%conv2d_266/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2#
!conv2d_266/kernel/Regularizer/add?
3conv2d_266/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_266_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype025
3conv2d_266/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_266/kernel/Regularizer/SquareSquare;conv2d_266/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2&
$conv2d_266/kernel/Regularizer/Square?
%conv2d_266/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_266/kernel/Regularizer/Const_2?
#conv2d_266/kernel/Regularizer/Sum_1Sum(conv2d_266/kernel/Regularizer/Square:y:0.conv2d_266/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/Sum_1?
%conv2d_266/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82'
%conv2d_266/kernel/Regularizer/mul_1/x?
#conv2d_266/kernel/Regularizer/mul_1Mul.conv2d_266/kernel/Regularizer/mul_1/x:output:0,conv2d_266/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/mul_1?
#conv2d_266/kernel/Regularizer/add_1AddV2%conv2d_266/kernel/Regularizer/add:z:0'conv2d_266/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2%
#conv2d_266/kernel/Regularizer/add_1?
#conv2d_267/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#conv2d_267/kernel/Regularizer/Const?
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp)conv2d_267_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype022
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp?
!conv2d_267/kernel/Regularizer/AbsAbs8conv2d_267/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ 2#
!conv2d_267/kernel/Regularizer/Abs?
%conv2d_267/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_267/kernel/Regularizer/Const_1?
!conv2d_267/kernel/Regularizer/SumSum%conv2d_267/kernel/Regularizer/Abs:y:0.conv2d_267/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/Sum?
#conv2d_267/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv2d_267/kernel/Regularizer/mul/x?
!conv2d_267/kernel/Regularizer/mulMul,conv2d_267/kernel/Regularizer/mul/x:output:0*conv2d_267/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/mul?
!conv2d_267/kernel/Regularizer/addAddV2,conv2d_267/kernel/Regularizer/Const:output:0%conv2d_267/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/add?
3conv2d_267/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_267_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype025
3conv2d_267/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_267/kernel/Regularizer/SquareSquare;conv2d_267/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ 2&
$conv2d_267/kernel/Regularizer/Square?
%conv2d_267/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_267/kernel/Regularizer/Const_2?
#conv2d_267/kernel/Regularizer/Sum_1Sum(conv2d_267/kernel/Regularizer/Square:y:0.conv2d_267/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/Sum_1?
%conv2d_267/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82'
%conv2d_267/kernel/Regularizer/mul_1/x?
#conv2d_267/kernel/Regularizer/mul_1Mul.conv2d_267/kernel/Regularizer/mul_1/x:output:0,conv2d_267/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/mul_1?
#conv2d_267/kernel/Regularizer/add_1AddV2%conv2d_267/kernel/Regularizer/add:z:0'conv2d_267/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/add_1?
"dense_425/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_425/kernel/Regularizer/Const?
/dense_425/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp(dense_425_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/dense_425/kernel/Regularizer/Abs/ReadVariableOp?
 dense_425/kernel/Regularizer/AbsAbs7dense_425/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2"
 dense_425/kernel/Regularizer/Abs?
$dense_425/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_425/kernel/Regularizer/Const_1?
 dense_425/kernel/Regularizer/SumSum$dense_425/kernel/Regularizer/Abs:y:0-dense_425/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/Sum?
"dense_425/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_425/kernel/Regularizer/mul/x?
 dense_425/kernel/Regularizer/mulMul+dense_425/kernel/Regularizer/mul/x:output:0)dense_425/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/mul?
 dense_425/kernel/Regularizer/addAddV2+dense_425/kernel/Regularizer/Const:output:0$dense_425/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/add?
2dense_425/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_425_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_425/kernel/Regularizer/Square/ReadVariableOp?
#dense_425/kernel/Regularizer/SquareSquare:dense_425/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_425/kernel/Regularizer/Square?
$dense_425/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_425/kernel/Regularizer/Const_2?
"dense_425/kernel/Regularizer/Sum_1Sum'dense_425/kernel/Regularizer/Square:y:0-dense_425/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/Sum_1?
$dense_425/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82&
$dense_425/kernel/Regularizer/mul_1/x?
"dense_425/kernel/Regularizer/mul_1Mul-dense_425/kernel/Regularizer/mul_1/x:output:0+dense_425/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/mul_1?
"dense_425/kernel/Regularizer/add_1AddV2$dense_425/kernel/Regularizer/add:z:0&dense_425/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/add_1?
"dense_426/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_426/kernel/Regularizer/Const?
/dense_426/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp(dense_426_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/dense_426/kernel/Regularizer/Abs/ReadVariableOp?
 dense_426/kernel/Regularizer/AbsAbs7dense_426/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2"
 dense_426/kernel/Regularizer/Abs?
$dense_426/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_426/kernel/Regularizer/Const_1?
 dense_426/kernel/Regularizer/SumSum$dense_426/kernel/Regularizer/Abs:y:0-dense_426/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/Sum?
"dense_426/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_426/kernel/Regularizer/mul/x?
 dense_426/kernel/Regularizer/mulMul+dense_426/kernel/Regularizer/mul/x:output:0)dense_426/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/mul?
 dense_426/kernel/Regularizer/addAddV2+dense_426/kernel/Regularizer/Const:output:0$dense_426/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/add?
2dense_426/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_426_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_426/kernel/Regularizer/Square/ReadVariableOp?
#dense_426/kernel/Regularizer/SquareSquare:dense_426/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_426/kernel/Regularizer/Square?
$dense_426/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_426/kernel/Regularizer/Const_2?
"dense_426/kernel/Regularizer/Sum_1Sum'dense_426/kernel/Regularizer/Square:y:0-dense_426/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/Sum_1?
$dense_426/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82&
$dense_426/kernel/Regularizer/mul_1/x?
"dense_426/kernel/Regularizer/mul_1Mul-dense_426/kernel/Regularizer/mul_1/x:output:0+dense_426/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/mul_1?
"dense_426/kernel/Regularizer/add_1AddV2$dense_426/kernel/Regularizer/add:z:0&dense_426/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/add_1?
IdentityIdentitydense_427/Softmax:softmax:0B^center_crop_3/assert_non_negative/assert_less_equal/Assert/AssertD^center_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert"^conv2d_266/BiasAdd/ReadVariableOp!^conv2d_266/Conv2D/ReadVariableOp1^conv2d_266/kernel/Regularizer/Abs/ReadVariableOp4^conv2d_266/kernel/Regularizer/Square/ReadVariableOp"^conv2d_267/BiasAdd/ReadVariableOp!^conv2d_267/Conv2D/ReadVariableOp1^conv2d_267/kernel/Regularizer/Abs/ReadVariableOp4^conv2d_267/kernel/Regularizer/Square/ReadVariableOp!^dense_425/BiasAdd/ReadVariableOp ^dense_425/MatMul/ReadVariableOp0^dense_425/kernel/Regularizer/Abs/ReadVariableOp3^dense_425/kernel/Regularizer/Square/ReadVariableOp!^dense_426/BiasAdd/ReadVariableOp ^dense_426/MatMul/ReadVariableOp0^dense_426/kernel/Regularizer/Abs/ReadVariableOp3^dense_426/kernel/Regularizer/Square/ReadVariableOp!^dense_427/BiasAdd/ReadVariableOp ^dense_427/MatMul/ReadVariableOp4^random_rotation_51/stateful_uniform/StatefulUniform/^random_zoom_4/stateful_uniform/StatefulUniform*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????88::::::::::::2?
Acenter_crop_3/assert_non_negative/assert_less_equal/Assert/AssertAcenter_crop_3/assert_non_negative/assert_less_equal/Assert/Assert2?
Ccenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/AssertCcenter_crop_3/assert_non_negative_1/assert_less_equal/Assert/Assert2F
!conv2d_266/BiasAdd/ReadVariableOp!conv2d_266/BiasAdd/ReadVariableOp2D
 conv2d_266/Conv2D/ReadVariableOp conv2d_266/Conv2D/ReadVariableOp2d
0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp0conv2d_266/kernel/Regularizer/Abs/ReadVariableOp2j
3conv2d_266/kernel/Regularizer/Square/ReadVariableOp3conv2d_266/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_267/BiasAdd/ReadVariableOp!conv2d_267/BiasAdd/ReadVariableOp2D
 conv2d_267/Conv2D/ReadVariableOp conv2d_267/Conv2D/ReadVariableOp2d
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp2j
3conv2d_267/kernel/Regularizer/Square/ReadVariableOp3conv2d_267/kernel/Regularizer/Square/ReadVariableOp2D
 dense_425/BiasAdd/ReadVariableOp dense_425/BiasAdd/ReadVariableOp2B
dense_425/MatMul/ReadVariableOpdense_425/MatMul/ReadVariableOp2b
/dense_425/kernel/Regularizer/Abs/ReadVariableOp/dense_425/kernel/Regularizer/Abs/ReadVariableOp2h
2dense_425/kernel/Regularizer/Square/ReadVariableOp2dense_425/kernel/Regularizer/Square/ReadVariableOp2D
 dense_426/BiasAdd/ReadVariableOp dense_426/BiasAdd/ReadVariableOp2B
dense_426/MatMul/ReadVariableOpdense_426/MatMul/ReadVariableOp2b
/dense_426/kernel/Regularizer/Abs/ReadVariableOp/dense_426/kernel/Regularizer/Abs/ReadVariableOp2h
2dense_426/kernel/Regularizer/Square/ReadVariableOp2dense_426/kernel/Regularizer/Square/ReadVariableOp2D
 dense_427/BiasAdd/ReadVariableOp dense_427/BiasAdd/ReadVariableOp2B
dense_427/MatMul/ReadVariableOpdense_427/MatMul/ReadVariableOp2j
3random_rotation_51/stateful_uniform/StatefulUniform3random_rotation_51/stateful_uniform/StatefulUniform2`
.random_zoom_4/stateful_uniform/StatefulUniform.random_zoom_4/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????88
 
_user_specified_nameinputs
?

?
F__inference_dense_427_layer_call_and_return_conditional_losses_4759023

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_267_layer_call_fn_4758847

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_267_layer_call_and_return_conditional_losses_47570402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
f
H__inference_dropout_190_layer_call_and_return_conditional_losses_4757202

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
F__inference_dense_427_layer_call_and_return_conditional_losses_4757226

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
H__inference_dropout_190_layer_call_and_return_conditional_losses_4759002

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_4759072=
9conv2d_267_kernel_regularizer_abs_readvariableop_resource
identity??0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp?3conv2d_267/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_267/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#conv2d_267/kernel/Regularizer/Const?
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp9conv2d_267_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:@ *
dtype022
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp?
!conv2d_267/kernel/Regularizer/AbsAbs8conv2d_267/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ 2#
!conv2d_267/kernel/Regularizer/Abs?
%conv2d_267/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_267/kernel/Regularizer/Const_1?
!conv2d_267/kernel/Regularizer/SumSum%conv2d_267/kernel/Regularizer/Abs:y:0.conv2d_267/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/Sum?
#conv2d_267/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv2d_267/kernel/Regularizer/mul/x?
!conv2d_267/kernel/Regularizer/mulMul,conv2d_267/kernel/Regularizer/mul/x:output:0*conv2d_267/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/mul?
!conv2d_267/kernel/Regularizer/addAddV2,conv2d_267/kernel/Regularizer/Const:output:0%conv2d_267/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/add?
3conv2d_267/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9conv2d_267_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:@ *
dtype025
3conv2d_267/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_267/kernel/Regularizer/SquareSquare;conv2d_267/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ 2&
$conv2d_267/kernel/Regularizer/Square?
%conv2d_267/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_267/kernel/Regularizer/Const_2?
#conv2d_267/kernel/Regularizer/Sum_1Sum(conv2d_267/kernel/Regularizer/Square:y:0.conv2d_267/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/Sum_1?
%conv2d_267/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82'
%conv2d_267/kernel/Regularizer/mul_1/x?
#conv2d_267/kernel/Regularizer/mul_1Mul.conv2d_267/kernel/Regularizer/mul_1/x:output:0,conv2d_267/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/mul_1?
#conv2d_267/kernel/Regularizer/add_1AddV2%conv2d_267/kernel/Regularizer/add:z:0'conv2d_267/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/add_1?
IdentityIdentity'conv2d_267/kernel/Regularizer/add_1:z:01^conv2d_267/kernel/Regularizer/Abs/ReadVariableOp4^conv2d_267/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2d
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp2j
3conv2d_267/kernel/Regularizer/Square/ReadVariableOp3conv2d_267/kernel/Regularizer/Square/ReadVariableOp
?
O
3__inference_max_pooling2d_265_layer_call_fn_4756675

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_265_layer_call_and_return_conditional_losses_47566692
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
0__inference_sequential_135_layer_call_fn_4758747

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_sequential_135_layer_call_and_return_conditional_losses_47580132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????88::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????88
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_4759092<
8dense_425_kernel_regularizer_abs_readvariableop_resource
identity??/dense_425/kernel/Regularizer/Abs/ReadVariableOp?2dense_425/kernel/Regularizer/Square/ReadVariableOp?
"dense_425/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_425/kernel/Regularizer/Const?
/dense_425/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp8dense_425_kernel_regularizer_abs_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/dense_425/kernel/Regularizer/Abs/ReadVariableOp?
 dense_425/kernel/Regularizer/AbsAbs7dense_425/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2"
 dense_425/kernel/Regularizer/Abs?
$dense_425/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_425/kernel/Regularizer/Const_1?
 dense_425/kernel/Regularizer/SumSum$dense_425/kernel/Regularizer/Abs:y:0-dense_425/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/Sum?
"dense_425/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_425/kernel/Regularizer/mul/x?
 dense_425/kernel/Regularizer/mulMul+dense_425/kernel/Regularizer/mul/x:output:0)dense_425/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/mul?
 dense_425/kernel/Regularizer/addAddV2+dense_425/kernel/Regularizer/Const:output:0$dense_425/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/add?
2dense_425/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8dense_425_kernel_regularizer_abs_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_425/kernel/Regularizer/Square/ReadVariableOp?
#dense_425/kernel/Regularizer/SquareSquare:dense_425/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_425/kernel/Regularizer/Square?
$dense_425/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_425/kernel/Regularizer/Const_2?
"dense_425/kernel/Regularizer/Sum_1Sum'dense_425/kernel/Regularizer/Square:y:0-dense_425/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/Sum_1?
$dense_425/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82&
$dense_425/kernel/Regularizer/mul_1/x?
"dense_425/kernel/Regularizer/mul_1Mul-dense_425/kernel/Regularizer/mul_1/x:output:0+dense_425/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/mul_1?
"dense_425/kernel/Regularizer/add_1AddV2$dense_425/kernel/Regularizer/add:z:0&dense_425/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/add_1?
IdentityIdentity&dense_425/kernel/Regularizer/add_1:z:00^dense_425/kernel/Regularizer/Abs/ReadVariableOp3^dense_425/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2b
/dense_425/kernel/Regularizer/Abs/ReadVariableOp/dense_425/kernel/Regularizer/Abs/ReadVariableOp2h
2dense_425/kernel/Regularizer/Square/ReadVariableOp2dense_425/kernel/Regularizer/Square/ReadVariableOp
?	
?
0__inference_sequential_135_layer_call_fn_4758036
rescaling_135_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallrescaling_135_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_sequential_135_layer_call_and_return_conditional_losses_47580132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????88::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:?????????88
-
_user_specified_namerescaling_135_input
?	
?
0__inference_sequential_135_layer_call_fn_4758722

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_sequential_135_layer_call_and_return_conditional_losses_47578322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????88::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????88
 
_user_specified_nameinputs
?"
?
F__inference_dense_426_layer_call_and_return_conditional_losses_4758976

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_426/kernel/Regularizer/Abs/ReadVariableOp?2dense_426/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
"dense_426/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_426/kernel/Regularizer/Const?
/dense_426/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/dense_426/kernel/Regularizer/Abs/ReadVariableOp?
 dense_426/kernel/Regularizer/AbsAbs7dense_426/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2"
 dense_426/kernel/Regularizer/Abs?
$dense_426/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_426/kernel/Regularizer/Const_1?
 dense_426/kernel/Regularizer/SumSum$dense_426/kernel/Regularizer/Abs:y:0-dense_426/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/Sum?
"dense_426/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_426/kernel/Regularizer/mul/x?
 dense_426/kernel/Regularizer/mulMul+dense_426/kernel/Regularizer/mul/x:output:0)dense_426/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/mul?
 dense_426/kernel/Regularizer/addAddV2+dense_426/kernel/Regularizer/Const:output:0$dense_426/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2"
 dense_426/kernel/Regularizer/add?
2dense_426/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_426/kernel/Regularizer/Square/ReadVariableOp?
#dense_426/kernel/Regularizer/SquareSquare:dense_426/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_426/kernel/Regularizer/Square?
$dense_426/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_426/kernel/Regularizer/Const_2?
"dense_426/kernel/Regularizer/Sum_1Sum'dense_426/kernel/Regularizer/Square:y:0-dense_426/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/Sum_1?
$dense_426/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82&
$dense_426/kernel/Regularizer/mul_1/x?
"dense_426/kernel/Regularizer/mul_1Mul-dense_426/kernel/Regularizer/mul_1/x:output:0+dense_426/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/mul_1?
"dense_426/kernel/Regularizer/add_1AddV2$dense_426/kernel/Regularizer/add:z:0&dense_426/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2$
"dense_426/kernel/Regularizer/add_1?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_426/kernel/Regularizer/Abs/ReadVariableOp3^dense_426/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_426/kernel/Regularizer/Abs/ReadVariableOp/dense_426/kernel/Regularizer/Abs/ReadVariableOp2h
2dense_426/kernel/Regularizer/Square/ReadVariableOp2dense_426/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_4758131
rescaling_135_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallrescaling_135_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_47566632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????88::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:?????????88
-
_user_specified_namerescaling_135_input
?
g
H__inference_dropout_189_layer_call_and_return_conditional_losses_4757125

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?"
?
F__inference_dense_425_layer_call_and_return_conditional_losses_4757097

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_425/kernel/Regularizer/Abs/ReadVariableOp?2dense_425/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
"dense_425/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_425/kernel/Regularizer/Const?
/dense_425/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/dense_425/kernel/Regularizer/Abs/ReadVariableOp?
 dense_425/kernel/Regularizer/AbsAbs7dense_425/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2"
 dense_425/kernel/Regularizer/Abs?
$dense_425/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_425/kernel/Regularizer/Const_1?
 dense_425/kernel/Regularizer/SumSum$dense_425/kernel/Regularizer/Abs:y:0-dense_425/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/Sum?
"dense_425/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_425/kernel/Regularizer/mul/x?
 dense_425/kernel/Regularizer/mulMul+dense_425/kernel/Regularizer/mul/x:output:0)dense_425/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/mul?
 dense_425/kernel/Regularizer/addAddV2+dense_425/kernel/Regularizer/Const:output:0$dense_425/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2"
 dense_425/kernel/Regularizer/add?
2dense_425/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_425/kernel/Regularizer/Square/ReadVariableOp?
#dense_425/kernel/Regularizer/SquareSquare:dense_425/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_425/kernel/Regularizer/Square?
$dense_425/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_425/kernel/Regularizer/Const_2?
"dense_425/kernel/Regularizer/Sum_1Sum'dense_425/kernel/Regularizer/Square:y:0-dense_425/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/Sum_1?
$dense_425/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82&
$dense_425/kernel/Regularizer/mul_1/x?
"dense_425/kernel/Regularizer/mul_1Mul-dense_425/kernel/Regularizer/mul_1/x:output:0+dense_425/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/mul_1?
"dense_425/kernel/Regularizer/add_1AddV2$dense_425/kernel/Regularizer/add:z:0&dense_425/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2$
"dense_425/kernel/Regularizer/add_1?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_425/kernel/Regularizer/Abs/ReadVariableOp3^dense_425/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_425/kernel/Regularizer/Abs/ReadVariableOp/dense_425/kernel/Regularizer/Abs/ReadVariableOp2h
2dense_425/kernel/Regularizer/Square/ReadVariableOp2dense_425/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?#
?
G__inference_conv2d_267_layer_call_and_return_conditional_losses_4757040

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp?3conv2d_267/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Relu?
#conv2d_267/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#conv2d_267/kernel/Regularizer/Const?
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype022
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp?
!conv2d_267/kernel/Regularizer/AbsAbs8conv2d_267/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ 2#
!conv2d_267/kernel/Regularizer/Abs?
%conv2d_267/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_267/kernel/Regularizer/Const_1?
!conv2d_267/kernel/Regularizer/SumSum%conv2d_267/kernel/Regularizer/Abs:y:0.conv2d_267/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/Sum?
#conv2d_267/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv2d_267/kernel/Regularizer/mul/x?
!conv2d_267/kernel/Regularizer/mulMul,conv2d_267/kernel/Regularizer/mul/x:output:0*conv2d_267/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/mul?
!conv2d_267/kernel/Regularizer/addAddV2,conv2d_267/kernel/Regularizer/Const:output:0%conv2d_267/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2#
!conv2d_267/kernel/Regularizer/add?
3conv2d_267/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype025
3conv2d_267/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_267/kernel/Regularizer/SquareSquare;conv2d_267/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ 2&
$conv2d_267/kernel/Regularizer/Square?
%conv2d_267/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             2'
%conv2d_267/kernel/Regularizer/Const_2?
#conv2d_267/kernel/Regularizer/Sum_1Sum(conv2d_267/kernel/Regularizer/Square:y:0.conv2d_267/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/Sum_1?
%conv2d_267/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82'
%conv2d_267/kernel/Regularizer/mul_1/x?
#conv2d_267/kernel/Regularizer/mul_1Mul.conv2d_267/kernel/Regularizer/mul_1/x:output:0,conv2d_267/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/mul_1?
#conv2d_267/kernel/Regularizer/add_1AddV2%conv2d_267/kernel/Regularizer/add:z:0'conv2d_267/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2%
#conv2d_267/kernel/Regularizer/add_1?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp1^conv2d_267/kernel/Regularizer/Abs/ReadVariableOp4^conv2d_267/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2d
0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp0conv2d_267/kernel/Regularizer/Abs/ReadVariableOp2j
3conv2d_267/kernel/Regularizer/Square/ReadVariableOp3conv2d_267/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
[
rescaling_135_inputD
%serving_default_rescaling_135_input:0?????????88>
	dense_4271
StatefulPartitionedCall:0??????????tensorflow/serving/predict:??
?[
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-0
layer-5
layer-6
layer_with_weights-1
layer-7
	layer-8

layer-9
layer_with_weights-2
layer-10
layer-11
layer_with_weights-3
layer-12
layer-13
layer_with_weights-4
layer-14
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
?_default_save_signature
+?&call_and_return_all_conditional_losses
?__call__"?W
_tf_keras_sequential?W{"class_name": "Sequential", "name": "sequential_135", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_135", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 56, 56, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "rescaling_135_input"}}, {"class_name": "Rescaling", "config": {"name": "rescaling_135", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_56", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0.2, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_51", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "CenterCrop", "config": {"name": "center_crop_3", "trainable": true, "dtype": "float32", "height": 28, "width": 28}}, {"class_name": "Conv2D", "config": {"name": "conv2d_266", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 9.999999747378752e-06, "l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_265", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_267", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 9.999999747378752e-06, "l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_266", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_134", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_425", "trainable": true, "dtype": "float32", "units": 1000, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 9.999999747378752e-06, "l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_189", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_426", "trainable": true, "dtype": "float32", "units": 400, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 9.999999747378752e-06, "l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_190", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_427", "trainable": true, "dtype": "float32", "units": 400, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 56, 56, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_135", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 56, 56, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "rescaling_135_input"}}, {"class_name": "Rescaling", "config": {"name": "rescaling_135", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_56", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0.2, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_51", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "CenterCrop", "config": {"name": "center_crop_3", "trainable": true, "dtype": "float32", "height": 28, "width": 28}}, {"class_name": "Conv2D", "config": {"name": "conv2d_266", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 9.999999747378752e-06, "l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_265", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_267", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 9.999999747378752e-06, "l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_266", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_134", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_425", "trainable": true, "dtype": "float32", "units": 1000, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 9.999999747378752e-06, "l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_189", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_426", "trainable": true, "dtype": "float32", "units": 400, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 9.999999747378752e-06, "l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_190", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_427", "trainable": true, "dtype": "float32", "units": 400, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
	keras_api"?
_tf_keras_layer?{"class_name": "Rescaling", "name": "rescaling_135", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "rescaling_135", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}
?
_rng
	keras_api"?
_tf_keras_layer?{"class_name": "RandomFlip", "name": "random_flip_56", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_flip_56", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
_rng
	keras_api"?
_tf_keras_layer?{"class_name": "RandomZoom", "name": "random_zoom_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0.2, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
?
_rng
	keras_api"?
_tf_keras_layer?{"class_name": "RandomRotation", "name": "random_rotation_51", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_rotation_51", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
?
	keras_api"?
_tf_keras_layer?{"class_name": "CenterCrop", "name": "center_crop_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "center_crop_3", "trainable": true, "dtype": "float32", "height": 28, "width": 28}}
?


kernel
bias
 trainable_variables
!regularization_losses
"	variables
#	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"class_name": "Conv2D", "name": "conv2d_266", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_266", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 9.999999747378752e-06, "l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 3]}}
?
$trainable_variables
%regularization_losses
&	variables
'	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_265", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_265", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?


(kernel
)bias
*trainable_variables
+regularization_losses
,	variables
-	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"class_name": "Conv2D", "name": "conv2d_267", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_267", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 9.999999747378752e-06, "l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 64]}}
?
.trainable_variables
/regularization_losses
0	variables
1	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_266", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_266", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
2trainable_variables
3regularization_losses
4	variables
5	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_134", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_134", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

6kernel
7bias
8trainable_variables
9regularization_losses
:	variables
;	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_425", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_425", "trainable": true, "dtype": "float32", "units": 1000, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 9.999999747378752e-06, "l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1568}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1568]}}
?
<trainable_variables
=regularization_losses
>	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_189", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_189", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}
?

@kernel
Abias
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_426", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_426", "trainable": true, "dtype": "float32", "units": 400, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 9.999999747378752e-06, "l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1000}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1000]}}
?
Ftrainable_variables
Gregularization_losses
H	variables
I	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_190", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_190", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}
?

Jkernel
Kbias
Ltrainable_variables
Mregularization_losses
N	variables
O	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_427", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_427", "trainable": true, "dtype": "float32", "units": 400, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 400}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 400]}}
?
Piter

Qbeta_1

Rbeta_2
	Sdecay
Tlearning_ratem?m?(m?)m?6m?7m?@m?Am?Jm?Km?v?v?(v?)v?6v?7v?@v?Av?Jv?Kv?"
	optimizer
f
0
1
(2
)3
64
75
@6
A7
J8
K9"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
f
0
1
(2
)3
64
75
@6
A7
J8
K9"
trackable_list_wrapper
?

Ulayers
trainable_variables
Vmetrics
Wnon_trainable_variables
regularization_losses
Xlayer_metrics
	variables
Ylayer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
"
_generic_user_object
.
Z
_state_var"
_generic_user_object
"
_generic_user_object
.
[
_state_var"
_generic_user_object
"
_generic_user_object
.
\
_state_var"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
+:)@2conv2d_266/kernel
:@2conv2d_266/bias
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

]layers
 trainable_variables
^metrics
_non_trainable_variables
!regularization_losses
`layer_metrics
"	variables
alayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

blayers
$trainable_variables
cmetrics
dnon_trainable_variables
%regularization_losses
elayer_metrics
&	variables
flayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)@ 2conv2d_267/kernel
: 2conv2d_267/bias
.
(0
)1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
?

glayers
*trainable_variables
hmetrics
inon_trainable_variables
+regularization_losses
jlayer_metrics
,	variables
klayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

llayers
.trainable_variables
mmetrics
nnon_trainable_variables
/regularization_losses
olayer_metrics
0	variables
player_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

qlayers
2trainable_variables
rmetrics
snon_trainable_variables
3regularization_losses
tlayer_metrics
4	variables
ulayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_425/kernel
:?2dense_425/bias
.
60
71"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
?

vlayers
8trainable_variables
wmetrics
xnon_trainable_variables
9regularization_losses
ylayer_metrics
:	variables
zlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

{layers
<trainable_variables
|metrics
}non_trainable_variables
=regularization_losses
~layer_metrics
>	variables
layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_426/kernel
:?2dense_426/bias
.
@0
A1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
?
?layers
Btrainable_variables
?metrics
?non_trainable_variables
Cregularization_losses
?layer_metrics
D	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
Ftrainable_variables
?metrics
?non_trainable_variables
Gregularization_losses
?layer_metrics
H	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_427/kernel
:?2dense_427/bias
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
?
?layers
Ltrainable_variables
?metrics
?non_trainable_variables
Mregularization_losses
?layer_metrics
N	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
:	2Variable
:	2Variable
:	2Variable
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
0:.@2Adam/conv2d_266/kernel/m
": @2Adam/conv2d_266/bias/m
0:.@ 2Adam/conv2d_267/kernel/m
":  2Adam/conv2d_267/bias/m
):'
??2Adam/dense_425/kernel/m
": ?2Adam/dense_425/bias/m
):'
??2Adam/dense_426/kernel/m
": ?2Adam/dense_426/bias/m
):'
??2Adam/dense_427/kernel/m
": ?2Adam/dense_427/bias/m
0:.@2Adam/conv2d_266/kernel/v
": @2Adam/conv2d_266/bias/v
0:.@ 2Adam/conv2d_267/kernel/v
":  2Adam/conv2d_267/bias/v
):'
??2Adam/dense_425/kernel/v
": ?2Adam/dense_425/bias/v
):'
??2Adam/dense_426/kernel/v
": ?2Adam/dense_426/bias/v
):'
??2Adam/dense_427/kernel/v
": ?2Adam/dense_427/bias/v
?2?
"__inference__wrapped_model_4756663?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *:?7
5?2
rescaling_135_input?????????88
?2?
K__inference_sequential_135_layer_call_and_return_conditional_losses_4758693
K__inference_sequential_135_layer_call_and_return_conditional_losses_4758530
K__inference_sequential_135_layer_call_and_return_conditional_losses_4757303
K__inference_sequential_135_layer_call_and_return_conditional_losses_4757455?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
0__inference_sequential_135_layer_call_fn_4758036
0__inference_sequential_135_layer_call_fn_4758722
0__inference_sequential_135_layer_call_fn_4758747
0__inference_sequential_135_layer_call_fn_4757859?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_conv2d_266_layer_call_and_return_conditional_losses_4758788?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_conv2d_266_layer_call_fn_4758797?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_max_pooling2d_265_layer_call_and_return_conditional_losses_4756669?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
3__inference_max_pooling2d_265_layer_call_fn_4756675?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
G__inference_conv2d_267_layer_call_and_return_conditional_losses_4758838?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_conv2d_267_layer_call_fn_4758847?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_max_pooling2d_266_layer_call_and_return_conditional_losses_4756681?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
3__inference_max_pooling2d_266_layer_call_fn_4756687?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
H__inference_flatten_134_layer_call_and_return_conditional_losses_4758853?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_flatten_134_layer_call_fn_4758858?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dense_425_layer_call_and_return_conditional_losses_4758899?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_425_layer_call_fn_4758908?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_dropout_189_layer_call_and_return_conditional_losses_4758920
H__inference_dropout_189_layer_call_and_return_conditional_losses_4758925?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_dropout_189_layer_call_fn_4758935
-__inference_dropout_189_layer_call_fn_4758930?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dense_426_layer_call_and_return_conditional_losses_4758976?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_426_layer_call_fn_4758985?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_dropout_190_layer_call_and_return_conditional_losses_4759002
H__inference_dropout_190_layer_call_and_return_conditional_losses_4758997?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_dropout_190_layer_call_fn_4759007
-__inference_dropout_190_layer_call_fn_4759012?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dense_427_layer_call_and_return_conditional_losses_4759023?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_427_layer_call_fn_4759032?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_4759052?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_4759072?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_4759092?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_4759112?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
%__inference_signature_wrapper_4758131rescaling_135_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
"__inference__wrapped_model_4756663?
()67@AJKD?A
:?7
5?2
rescaling_135_input?????????88
? "6?3
1
	dense_427$?!
	dense_427???????????
G__inference_conv2d_266_layer_call_and_return_conditional_losses_4758788l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????@
? ?
,__inference_conv2d_266_layer_call_fn_4758797_7?4
-?*
(?%
inputs?????????
? " ??????????@?
G__inference_conv2d_267_layer_call_and_return_conditional_losses_4758838l()7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0????????? 
? ?
,__inference_conv2d_267_layer_call_fn_4758847_()7?4
-?*
(?%
inputs?????????@
? " ?????????? ?
F__inference_dense_425_layer_call_and_return_conditional_losses_4758899^670?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_dense_425_layer_call_fn_4758908Q670?-
&?#
!?
inputs??????????
? "????????????
F__inference_dense_426_layer_call_and_return_conditional_losses_4758976^@A0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_dense_426_layer_call_fn_4758985Q@A0?-
&?#
!?
inputs??????????
? "????????????
F__inference_dense_427_layer_call_and_return_conditional_losses_4759023^JK0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_dense_427_layer_call_fn_4759032QJK0?-
&?#
!?
inputs??????????
? "????????????
H__inference_dropout_189_layer_call_and_return_conditional_losses_4758920^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
H__inference_dropout_189_layer_call_and_return_conditional_losses_4758925^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
-__inference_dropout_189_layer_call_fn_4758930Q4?1
*?'
!?
inputs??????????
p
? "????????????
-__inference_dropout_189_layer_call_fn_4758935Q4?1
*?'
!?
inputs??????????
p 
? "????????????
H__inference_dropout_190_layer_call_and_return_conditional_losses_4758997^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
H__inference_dropout_190_layer_call_and_return_conditional_losses_4759002^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
-__inference_dropout_190_layer_call_fn_4759007Q4?1
*?'
!?
inputs??????????
p
? "????????????
-__inference_dropout_190_layer_call_fn_4759012Q4?1
*?'
!?
inputs??????????
p 
? "????????????
H__inference_flatten_134_layer_call_and_return_conditional_losses_4758853a7?4
-?*
(?%
inputs????????? 
? "&?#
?
0??????????
? ?
-__inference_flatten_134_layer_call_fn_4758858T7?4
-?*
(?%
inputs????????? 
? "???????????<
__inference_loss_fn_0_4759052?

? 
? "? <
__inference_loss_fn_1_4759072(?

? 
? "? <
__inference_loss_fn_2_47590926?

? 
? "? <
__inference_loss_fn_3_4759112@?

? 
? "? ?
N__inference_max_pooling2d_265_layer_call_and_return_conditional_losses_4756669?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_265_layer_call_fn_4756675?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
N__inference_max_pooling2d_266_layer_call_and_return_conditional_losses_4756681?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_266_layer_call_fn_4756687?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_sequential_135_layer_call_and_return_conditional_losses_4757303?[\()67@AJKL?I
B??
5?2
rescaling_135_input?????????88
p

 
? "&?#
?
0??????????
? ?
K__inference_sequential_135_layer_call_and_return_conditional_losses_4757455?
()67@AJKL?I
B??
5?2
rescaling_135_input?????????88
p 

 
? "&?#
?
0??????????
? ?
K__inference_sequential_135_layer_call_and_return_conditional_losses_4758530w[\()67@AJK??<
5?2
(?%
inputs?????????88
p

 
? "&?#
?
0??????????
? ?
K__inference_sequential_135_layer_call_and_return_conditional_losses_4758693u
()67@AJK??<
5?2
(?%
inputs?????????88
p 

 
? "&?#
?
0??????????
? ?
0__inference_sequential_135_layer_call_fn_4757859w[\()67@AJKL?I
B??
5?2
rescaling_135_input?????????88
p

 
? "????????????
0__inference_sequential_135_layer_call_fn_4758036u
()67@AJKL?I
B??
5?2
rescaling_135_input?????????88
p 

 
? "????????????
0__inference_sequential_135_layer_call_fn_4758722j[\()67@AJK??<
5?2
(?%
inputs?????????88
p

 
? "????????????
0__inference_sequential_135_layer_call_fn_4758747h
()67@AJK??<
5?2
(?%
inputs?????????88
p 

 
? "????????????
%__inference_signature_wrapper_4758131?
()67@AJK[?X
? 
Q?N
L
rescaling_135_input5?2
rescaling_135_input?????????88"6?3
1
	dense_427$?!
	dense_427??????????