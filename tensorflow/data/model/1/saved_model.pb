??

?.?-
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	??
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint?
E
AssignAddVariableOp
resource
value"dtype"
dtypetype?
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
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	
?
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
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
,
Log
x"T
y"T"
Ttype:

2
.
Log1p
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	?
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
;
Minimum
x"T
y"T
z"T"
Ttype:

2	?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
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
5

Reciprocal
x"T
y"T"
Ttype:

2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
?
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?
9
VarIsInitializedOp
resource
is_initialized
?
O
VariableShape	
input
output"out_type"
out_typetype0:
2	?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.12.02b'v1.12.0-rc2-3-ga6d8ffae09'??
?
embedding_inputPlaceholder*
dtype0*0
_output_shapes
:??????????????????*%
shape:??????????????????
?
5embedding/embeddings/Initializer/random_uniform/shapeConst*
valueB"'     *
dtype0*
_output_shapes
:*'
_class
loc:@embedding/embeddings
?
3embedding/embeddings/Initializer/random_uniform/minConst*
valueB
 *??L?*
dtype0*
_output_shapes
: *'
_class
loc:@embedding/embeddings
?
3embedding/embeddings/Initializer/random_uniform/maxConst*
valueB
 *??L=*
dtype0*
_output_shapes
: *'
_class
loc:@embedding/embeddings
?
=embedding/embeddings/Initializer/random_uniform/RandomUniformRandomUniform5embedding/embeddings/Initializer/random_uniform/shape*
seed2 *'
_class
loc:@embedding/embeddings*
T0*
_output_shapes
:	?N*
dtype0*

seed 
?
3embedding/embeddings/Initializer/random_uniform/subSub3embedding/embeddings/Initializer/random_uniform/max3embedding/embeddings/Initializer/random_uniform/min*
T0*
_output_shapes
: *'
_class
loc:@embedding/embeddings
?
3embedding/embeddings/Initializer/random_uniform/mulMul=embedding/embeddings/Initializer/random_uniform/RandomUniform3embedding/embeddings/Initializer/random_uniform/sub*
T0*
_output_shapes
:	?N*'
_class
loc:@embedding/embeddings
?
/embedding/embeddings/Initializer/random_uniformAdd3embedding/embeddings/Initializer/random_uniform/mul3embedding/embeddings/Initializer/random_uniform/min*
T0*
_output_shapes
:	?N*'
_class
loc:@embedding/embeddings
?
embedding/embeddingsVarHandleOp*%
shared_nameembedding/embeddings*'
_class
loc:@embedding/embeddings*
_output_shapes
: *
dtype0*
	container *
shape:	?N
y
5embedding/embeddings/IsInitialized/VarIsInitializedOpVarIsInitializedOpembedding/embeddings*
_output_shapes
: 
?
embedding/embeddings/AssignAssignVariableOpembedding/embeddings/embedding/embeddings/Initializer/random_uniform*
dtype0*'
_class
loc:@embedding/embeddings
?
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
dtype0*
_output_shapes
:	?N*'
_class
loc:@embedding/embeddings
?
embedding/CastCastembedding_input*

DstT0*0
_output_shapes
:??????????????????*
Truncate( *

SrcT0
?
.embedding/embedding_lookup/Read/ReadVariableOpReadVariableOpembedding/embeddings*
dtype0*
_output_shapes
:	?N
?
#embedding/embedding_lookup/IdentityIdentity.embedding/embedding_lookup/Read/ReadVariableOp*
T0*
_output_shapes
:	?N
?
embedding/embedding_lookupResourceGatherembedding/embeddingsembedding/Cast*
validate_indices(*
dtype0*4
_output_shapes"
 :??????????????????*
Tindices0*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
%embedding/embedding_lookup/Identity_1Identityembedding/embedding_lookup*
T0*4
_output_shapes"
 :??????????????????*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
%embedding/embedding_lookup/Identity_2Identity%embedding/embedding_lookup/Identity_1*
T0*4
_output_shapes"
 :??????????????????
q
/global_average_pooling1d/Mean/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
?
global_average_pooling1d/MeanMean%embedding/embedding_lookup/Identity_2/global_average_pooling1d/Mean/reduction_indices*
	keep_dims( *
T0*'
_output_shapes
:?????????*

Tidx0
?
-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:*
_class
loc:@dense/kernel
?
+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *׳ݾ*
dtype0*
_output_shapes
: *
_class
loc:@dense/kernel
?
+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *׳?>*
dtype0*
_output_shapes
: *
_class
loc:@dense/kernel
?
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
seed2 *
_class
loc:@dense/kernel*
T0*
_output_shapes

:*
dtype0*

seed 
?
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *
_class
loc:@dense/kernel
?
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes

:*
_class
loc:@dense/kernel
?
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_output_shapes

:*
_class
loc:@dense/kernel
?
dense/kernelVarHandleOp*
shared_namedense/kernel*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
	container *
shape
:
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
?
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
dtype0*
_class
loc:@dense/kernel
?
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:*
_class
loc:@dense/kernel
?
dense/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_output_shapes
:*
_class
loc:@dense/bias
?

dense/biasVarHandleOp*
shared_name
dense/bias*
_class
loc:@dense/bias*
_output_shapes
: *
dtype0*
	container *
shape:
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
{
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
dtype0*
_class
loc:@dense/bias
?
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:*
_class
loc:@dense/bias
h
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:
?
dense/MatMulMatMulglobal_average_pooling1d/Meandense/MatMul/ReadVariableOp*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:?????????
c
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
?
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:?????????
S

dense/ReluReludense/BiasAdd*
T0*'
_output_shapes
:?????????
?
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:*!
_class
loc:@dense_1/kernel
?
-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *0?*
dtype0*
_output_shapes
: *!
_class
loc:@dense_1/kernel
?
-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *0?*
dtype0*
_output_shapes
: *!
_class
loc:@dense_1/kernel
?
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
seed2 *!
_class
loc:@dense_1/kernel*
T0*
_output_shapes

:*
dtype0*

seed 
?
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *!
_class
loc:@dense_1/kernel
?
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes

:*!
_class
loc:@dense_1/kernel
?
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*
_output_shapes

:*!
_class
loc:@dense_1/kernel
?
dense_1/kernelVarHandleOp*
shared_namedense_1/kernel*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
	container *
shape
:
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
?
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*
dtype0*!
_class
loc:@dense_1/kernel
?
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:*!
_class
loc:@dense_1/kernel
?
dense_1/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_output_shapes
:*
_class
loc:@dense_1/bias
?
dense_1/biasVarHandleOp*
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
_output_shapes
: *
dtype0*
	container *
shape:
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
?
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
dtype0*
_class
loc:@dense_1/bias
?
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:*
_class
loc:@dense_1/bias
l
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:
?
dense_1/MatMulMatMul
dense/Reludense_1/MatMul/ReadVariableOp*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:?????????
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:
?
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:?????????
]
dense_1/SigmoidSigmoiddense_1/BiasAdd*
T0*'
_output_shapes
:?????????
?
)Adam/iterations/Initializer/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: *"
_class
loc:@Adam/iterations
?
Adam/iterationsVarHandleOp* 
shared_nameAdam/iterations*"
_class
loc:@Adam/iterations*
_output_shapes
: *
dtype0	*
	container *
shape: 
o
0Adam/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/iterations*
_output_shapes
: 
?
Adam/iterations/AssignAssignVariableOpAdam/iterations)Adam/iterations/Initializer/initial_value*
dtype0	*"
_class
loc:@Adam/iterations
?
#Adam/iterations/Read/ReadVariableOpReadVariableOpAdam/iterations*
dtype0	*
_output_shapes
: *"
_class
loc:@Adam/iterations
?
!Adam/lr/Initializer/initial_valueConst*
valueB
 *o?:*
dtype0*
_output_shapes
: *
_class
loc:@Adam/lr
?
Adam/lrVarHandleOp*
shared_name	Adam/lr*
_class
loc:@Adam/lr*
_output_shapes
: *
dtype0*
	container *
shape: 
_
(Adam/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/lr*
_output_shapes
: 
w
Adam/lr/AssignAssignVariableOpAdam/lr!Adam/lr/Initializer/initial_value*
dtype0*
_class
loc:@Adam/lr
w
Adam/lr/Read/ReadVariableOpReadVariableOpAdam/lr*
dtype0*
_output_shapes
: *
_class
loc:@Adam/lr
?
%Adam/beta_1/Initializer/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: *
_class
loc:@Adam/beta_1
?
Adam/beta_1VarHandleOp*
shared_nameAdam/beta_1*
_class
loc:@Adam/beta_1*
_output_shapes
: *
dtype0*
	container *
shape: 
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 
?
Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
dtype0*
_class
loc:@Adam/beta_1
?
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: *
_class
loc:@Adam/beta_1
?
%Adam/beta_2/Initializer/initial_valueConst*
valueB
 *w??*
dtype0*
_output_shapes
: *
_class
loc:@Adam/beta_2
?
Adam/beta_2VarHandleOp*
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2*
_output_shapes
: *
dtype0*
	container *
shape: 
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 
?
Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
dtype0*
_class
loc:@Adam/beta_2
?
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: *
_class
loc:@Adam/beta_2
?
$Adam/decay/Initializer/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: *
_class
loc:@Adam/decay
?

Adam/decayVarHandleOp*
shared_name
Adam/decay*
_class
loc:@Adam/decay*
_output_shapes
: *
dtype0*
	container *
shape: 
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 
?
Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
dtype0*
_class
loc:@Adam/decay
?
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
dtype0*
_output_shapes
: *
_class
loc:@Adam/decay
?
dense_1_targetPlaceholder*
dtype0*0
_output_shapes
:??????????????????*%
shape:??????????????????
R
ConstConst*
valueB*  ??*
dtype0*
_output_shapes
:
?
dense_1_sample_weightsPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:?????????*
shape:?????????
\
loss/dense_1_loss/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
\
loss/dense_1_loss/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
o
loss/dense_1_loss/subSubloss/dense_1_loss/sub/xloss/dense_1_loss/Const*
T0*
_output_shapes
: 
?
'loss/dense_1_loss/clip_by_value/MinimumMinimumdense_1/Sigmoidloss/dense_1_loss/sub*
T0*'
_output_shapes
:?????????
?
loss/dense_1_loss/clip_by_valueMaximum'loss/dense_1_loss/clip_by_value/Minimumloss/dense_1_loss/Const*
T0*'
_output_shapes
:?????????
^
loss/dense_1_loss/sub_1/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
loss/dense_1_loss/sub_1Subloss/dense_1_loss/sub_1/xloss/dense_1_loss/clip_by_value*
T0*'
_output_shapes
:?????????
?
loss/dense_1_loss/truedivRealDivloss/dense_1_loss/clip_by_valueloss/dense_1_loss/sub_1*
T0*'
_output_shapes
:?????????
i
loss/dense_1_loss/LogLogloss/dense_1_loss/truediv*
T0*'
_output_shapes
:?????????
?
*loss/dense_1_loss/logistic_loss/zeros_like	ZerosLikeloss/dense_1_loss/Log*
T0*'
_output_shapes
:?????????
?
,loss/dense_1_loss/logistic_loss/GreaterEqualGreaterEqualloss/dense_1_loss/Log*loss/dense_1_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:?????????
?
&loss/dense_1_loss/logistic_loss/SelectSelect,loss/dense_1_loss/logistic_loss/GreaterEqualloss/dense_1_loss/Log*loss/dense_1_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:?????????
s
#loss/dense_1_loss/logistic_loss/NegNegloss/dense_1_loss/Log*
T0*'
_output_shapes
:?????????
?
(loss/dense_1_loss/logistic_loss/Select_1Select,loss/dense_1_loss/logistic_loss/GreaterEqual#loss/dense_1_loss/logistic_loss/Negloss/dense_1_loss/Log*
T0*'
_output_shapes
:?????????
?
#loss/dense_1_loss/logistic_loss/mulMulloss/dense_1_loss/Logdense_1_target*
T0*0
_output_shapes
:??????????????????
?
#loss/dense_1_loss/logistic_loss/subSub&loss/dense_1_loss/logistic_loss/Select#loss/dense_1_loss/logistic_loss/mul*
T0*0
_output_shapes
:??????????????????
?
#loss/dense_1_loss/logistic_loss/ExpExp(loss/dense_1_loss/logistic_loss/Select_1*
T0*'
_output_shapes
:?????????
?
%loss/dense_1_loss/logistic_loss/Log1pLog1p#loss/dense_1_loss/logistic_loss/Exp*
T0*'
_output_shapes
:?????????
?
loss/dense_1_loss/logistic_lossAdd#loss/dense_1_loss/logistic_loss/sub%loss/dense_1_loss/logistic_loss/Log1p*
T0*0
_output_shapes
:??????????????????
s
(loss/dense_1_loss/Mean/reduction_indicesConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
loss/dense_1_loss/MeanMeanloss/dense_1_loss/logistic_loss(loss/dense_1_loss/Mean/reduction_indices*
	keep_dims( *
T0*#
_output_shapes
:?????????*

Tidx0
?
Floss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shapeShapedense_1_sample_weights*
T0*
out_type0*
_output_shapes
:
?
Eloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
?
Eloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shapeShapeloss/dense_1_loss/Mean*
T0*
out_type0*
_output_shapes
:
?
Dloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
?
Dloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
?
Bloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalarEqualDloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar/xEloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
?
Nloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchBloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalarBloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
?
Ploss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityPloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
?
Ploss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityNloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
?
Oloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityBloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
?
Ploss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchBloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalarOloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0
*
_output_shapes
: : *U
_classK
IGloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar
?
nloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualuloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchwloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
?
uloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchDloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/rankOloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*
_output_shapes
: : *W
_classM
KIloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/values/rank
?
wloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchEloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/rankOloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*
_output_shapes
: : *X
_classN
LJloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/rank
?
hloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchnloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_ranknloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 
?
jloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityjloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 
?
jloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityhloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 
?
iloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentitynloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
?
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstk^loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
}loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDims?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
?
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchEloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shapeOloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0* 
_output_shapes
::*X
_classN
LJloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shape
?
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switch?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchiloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0* 
_output_shapes
::*X
_classN
LJloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shape
?
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstk^loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
?
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstk^loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
?
|loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFill?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*
_output_shapes

:*

index_type0
?
~loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstk^loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
?
yloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2}loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims|loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like~loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
T0*
N*
_output_shapes

:*

Tidx0
?
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstk^loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDims?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*

Tdim0*
_output_shapes

:
?
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchFloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shapeOloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0* 
_output_shapes
::*Y
_classO
MKloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shape
?
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switch?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchiloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0* 
_output_shapes
::*Y
_classO
MKloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shape
?
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1yloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
T0*
validate_indices(*<
_output_shapes*
(:?????????:?????????:*
set_operationa-b
?
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSize?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
out_type0*
_output_shapes
: 
?
tloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstk^loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
?
rloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualtloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
?
jloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchnloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankiloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*
_output_shapes
: : *?
_classw
usloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank
?
gloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergejloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1rloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
?
Mloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergegloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeRloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
?
>loss/dense_1_loss/broadcast_weights/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
?
@loss/dense_1_loss/broadcast_weights/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
?
@loss/dense_1_loss/broadcast_weights/assert_broadcastable/Const_2Const*)
value B Bdense_1_sample_weights:0*
dtype0*
_output_shapes
: 
?
@loss/dense_1_loss/broadcast_weights/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
?
@loss/dense_1_loss/broadcast_weights/assert_broadcastable/Const_4Const*)
value B Bloss/dense_1_loss/Mean:0*
dtype0*
_output_shapes
: 
?
@loss/dense_1_loss/broadcast_weights/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
?
Kloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchMloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
?
Mloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityMloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
?
Mloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityKloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
?
Lloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityMloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
?
Iloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpN^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
?
Wloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityMloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tJ^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
T0
*
_output_shapes
: *`
_classV
TRloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
?
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstN^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
?
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstN^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
?
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstN^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*)
value B Bdense_1_sample_weights:0*
dtype0*
_output_shapes
: 
?
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstN^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
?
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstN^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*)
value B Bloss/dense_1_loss/Mean:0*
dtype0*
_output_shapes
: 
?
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstN^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
?
Kloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertRloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchRloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
?
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchMloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeLloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*
_output_shapes
: : *`
_classV
TRloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge
?
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchFloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shapeLloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0* 
_output_shapes
::*Y
_classO
MKloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shape
?
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchEloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shapeLloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0* 
_output_shapes
::*X
_classN
LJloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shape
?
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchBloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalarLloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*
_output_shapes
: : *U
_classK
IGloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar
?
Yloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityMloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fL^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
T0
*
_output_shapes
: *`
_classV
TRloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f
?
Jloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergeYloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Wloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
?
3loss/dense_1_loss/broadcast_weights/ones_like/ShapeShapeloss/dense_1_loss/MeanK^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
?
3loss/dense_1_loss/broadcast_weights/ones_like/ConstConstK^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
-loss/dense_1_loss/broadcast_weights/ones_likeFill3loss/dense_1_loss/broadcast_weights/ones_like/Shape3loss/dense_1_loss/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:?????????*

index_type0
?
#loss/dense_1_loss/broadcast_weightsMuldense_1_sample_weights-loss/dense_1_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:?????????
?
loss/dense_1_loss/MulMulloss/dense_1_loss/Mean#loss/dense_1_loss/broadcast_weights*
T0*#
_output_shapes
:?????????
c
loss/dense_1_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
?
loss/dense_1_loss/SumSumloss/dense_1_loss/Mulloss/dense_1_loss/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
c
loss/dense_1_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
?
loss/dense_1_loss/Sum_1Sum#loss/dense_1_loss/broadcast_weightsloss/dense_1_loss/Const_2*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
w
loss/dense_1_loss/truediv_1RealDivloss/dense_1_loss/Sumloss/dense_1_loss/Sum_1*
T0*
_output_shapes
: 
a
loss/dense_1_loss/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
|
loss/dense_1_loss/GreaterGreaterloss/dense_1_loss/Sum_1loss/dense_1_loss/zeros_like*
T0*
_output_shapes
: 
?
loss/dense_1_loss/SelectSelectloss/dense_1_loss/Greaterloss/dense_1_loss/truediv_1loss/dense_1_loss/zeros_like*
T0*
_output_shapes
: 
\
loss/dense_1_loss/Const_3Const*
valueB *
dtype0*
_output_shapes
: 
?
loss/dense_1_loss/Mean_1Meanloss/dense_1_loss/Selectloss/dense_1_loss/Const_3*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
O

loss/mul/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_1_loss/Mean_1*
T0*
_output_shapes
: 
W
metrics/acc/Cast/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
u
metrics/acc/GreaterGreaterdense_1/Sigmoidmetrics/acc/Cast/x*
T0*'
_output_shapes
:?????????
?
metrics/acc/Cast_1Castmetrics/acc/Greater*

DstT0*'
_output_shapes
:?????????*
Truncate( *

SrcT0

y
metrics/acc/EqualEqualdense_1_targetmetrics/acc/Cast_1*
T0*0
_output_shapes
:??????????????????
?
metrics/acc/Cast_2Castmetrics/acc/Equal*

DstT0*0
_output_shapes
:??????????????????*
Truncate( *

SrcT0

m
"metrics/acc/Mean/reduction_indicesConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
metrics/acc/MeanMeanmetrics/acc/Cast_2"metrics/acc/Mean/reduction_indices*
	keep_dims( *
T0*#
_output_shapes
:?????????*

Tidx0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
}
metrics/acc/Mean_1Meanmetrics/acc/Meanmetrics/acc/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
}
training/Adam/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: *
_class
loc:@loss/mul
?
!training/Adam/gradients/grad_ys_0Const*
valueB
 *  ??*
dtype0*
_output_shapes
: *
_class
loc:@loss/mul
?
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*
_output_shapes
: *

index_type0*
_class
loc:@loss/mul
?
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/dense_1_loss/Mean_1*
T0*
_output_shapes
: *
_class
loc:@loss/mul
?
+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: *
_class
loc:@loss/mul
?
Ctraining/Adam/gradients/loss/dense_1_loss/Mean_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_1_loss/Mean_1
?
=training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Ctraining/Adam/gradients/loss/dense_1_loss/Mean_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: *+
_class!
loc:@loss/dense_1_loss/Mean_1
?
;training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_1_loss/Mean_1
?
:training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/TileTile=training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/Reshape;training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/Const*
T0*
_output_shapes
: *

Tmultiples0*+
_class!
loc:@loss/dense_1_loss/Mean_1
?
=training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/Const_1Const*
valueB
 *  ??*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_1_loss/Mean_1
?
=training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/truedivRealDiv:training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/Tile=training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/Const_1*
T0*
_output_shapes
: *+
_class!
loc:@loss/dense_1_loss/Mean_1
?
@training/Adam/gradients/loss/dense_1_loss/Select_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_1_loss/Select
?
<training/Adam/gradients/loss/dense_1_loss/Select_grad/SelectSelectloss/dense_1_loss/Greater=training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/truediv@training/Adam/gradients/loss/dense_1_loss/Select_grad/zeros_like*
T0*
_output_shapes
: *+
_class!
loc:@loss/dense_1_loss/Select
?
>training/Adam/gradients/loss/dense_1_loss/Select_grad/Select_1Selectloss/dense_1_loss/Greater@training/Adam/gradients/loss/dense_1_loss/Select_grad/zeros_like=training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/truediv*
T0*
_output_shapes
: *+
_class!
loc:@loss/dense_1_loss/Select
?
>training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: *.
_class$
" loc:@loss/dense_1_loss/truediv_1
?
@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *.
_class$
" loc:@loss/dense_1_loss/truediv_1
?
Ntraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Shape@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*.
_class$
" loc:@loss/dense_1_loss/truediv_1
?
@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/RealDivRealDiv<training/Adam/gradients/loss/dense_1_loss/Select_grad/Selectloss/dense_1_loss/Sum_1*
T0*
_output_shapes
: *.
_class$
" loc:@loss/dense_1_loss/truediv_1
?
<training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/SumSum@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/RealDivNtraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*.
_class$
" loc:@loss/dense_1_loss/truediv_1
?
@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/ReshapeReshape<training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Sum>training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Shape*
T0*
Tshape0*
_output_shapes
: *.
_class$
" loc:@loss/dense_1_loss/truediv_1
?
<training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/NegNegloss/dense_1_loss/Sum*
T0*
_output_shapes
: *.
_class$
" loc:@loss/dense_1_loss/truediv_1
?
Btraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/RealDiv_1RealDiv<training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Negloss/dense_1_loss/Sum_1*
T0*
_output_shapes
: *.
_class$
" loc:@loss/dense_1_loss/truediv_1
?
Btraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/RealDiv_2RealDivBtraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/RealDiv_1loss/dense_1_loss/Sum_1*
T0*
_output_shapes
: *.
_class$
" loc:@loss/dense_1_loss/truediv_1
?
<training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/mulMul<training/Adam/gradients/loss/dense_1_loss/Select_grad/SelectBtraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/RealDiv_2*
T0*
_output_shapes
: *.
_class$
" loc:@loss/dense_1_loss/truediv_1
?
>training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Sum_1Sum<training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/mulPtraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*.
_class$
" loc:@loss/dense_1_loss/truediv_1
?
Btraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Reshape_1Reshape>training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Sum_1@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: *.
_class$
" loc:@loss/dense_1_loss/truediv_1
?
@training/Adam/gradients/loss/dense_1_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:*(
_class
loc:@loss/dense_1_loss/Sum
?
:training/Adam/gradients/loss/dense_1_loss/Sum_grad/ReshapeReshape@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Reshape@training/Adam/gradients/loss/dense_1_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:*(
_class
loc:@loss/dense_1_loss/Sum
?
8training/Adam/gradients/loss/dense_1_loss/Sum_grad/ShapeShapeloss/dense_1_loss/Mul*
T0*
out_type0*
_output_shapes
:*(
_class
loc:@loss/dense_1_loss/Sum
?
7training/Adam/gradients/loss/dense_1_loss/Sum_grad/TileTile:training/Adam/gradients/loss/dense_1_loss/Sum_grad/Reshape8training/Adam/gradients/loss/dense_1_loss/Sum_grad/Shape*
T0*#
_output_shapes
:?????????*

Tmultiples0*(
_class
loc:@loss/dense_1_loss/Sum
?
8training/Adam/gradients/loss/dense_1_loss/Mul_grad/ShapeShapeloss/dense_1_loss/Mean*
T0*
out_type0*
_output_shapes
:*(
_class
loc:@loss/dense_1_loss/Mul
?
:training/Adam/gradients/loss/dense_1_loss/Mul_grad/Shape_1Shape#loss/dense_1_loss/broadcast_weights*
T0*
out_type0*
_output_shapes
:*(
_class
loc:@loss/dense_1_loss/Mul
?
Htraining/Adam/gradients/loss/dense_1_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/dense_1_loss/Mul_grad/Shape:training/Adam/gradients/loss/dense_1_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*(
_class
loc:@loss/dense_1_loss/Mul
?
6training/Adam/gradients/loss/dense_1_loss/Mul_grad/MulMul7training/Adam/gradients/loss/dense_1_loss/Sum_grad/Tile#loss/dense_1_loss/broadcast_weights*
T0*#
_output_shapes
:?????????*(
_class
loc:@loss/dense_1_loss/Mul
?
6training/Adam/gradients/loss/dense_1_loss/Mul_grad/SumSum6training/Adam/gradients/loss/dense_1_loss/Mul_grad/MulHtraining/Adam/gradients/loss/dense_1_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*(
_class
loc:@loss/dense_1_loss/Mul
?
:training/Adam/gradients/loss/dense_1_loss/Mul_grad/ReshapeReshape6training/Adam/gradients/loss/dense_1_loss/Mul_grad/Sum8training/Adam/gradients/loss/dense_1_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:?????????*(
_class
loc:@loss/dense_1_loss/Mul
?
8training/Adam/gradients/loss/dense_1_loss/Mul_grad/Mul_1Mulloss/dense_1_loss/Mean7training/Adam/gradients/loss/dense_1_loss/Sum_grad/Tile*
T0*#
_output_shapes
:?????????*(
_class
loc:@loss/dense_1_loss/Mul
?
8training/Adam/gradients/loss/dense_1_loss/Mul_grad/Sum_1Sum8training/Adam/gradients/loss/dense_1_loss/Mul_grad/Mul_1Jtraining/Adam/gradients/loss/dense_1_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*(
_class
loc:@loss/dense_1_loss/Mul
?
<training/Adam/gradients/loss/dense_1_loss/Mul_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_1_loss/Mul_grad/Sum_1:training/Adam/gradients/loss/dense_1_loss/Mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:?????????*(
_class
loc:@loss/dense_1_loss/Mul
?
9training/Adam/gradients/loss/dense_1_loss/Mean_grad/ShapeShapeloss/dense_1_loss/logistic_loss*
T0*
out_type0*
_output_shapes
:*)
_class
loc:@loss/dense_1_loss/Mean
?
8training/Adam/gradients/loss/dense_1_loss/Mean_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_1_loss/Mean
?
7training/Adam/gradients/loss/dense_1_loss/Mean_grad/addAdd(loss/dense_1_loss/Mean/reduction_indices8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Size*
T0*
_output_shapes
: *)
_class
loc:@loss/dense_1_loss/Mean
?
7training/Adam/gradients/loss/dense_1_loss/Mean_grad/modFloorMod7training/Adam/gradients/loss/dense_1_loss/Mean_grad/add8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Size*
T0*
_output_shapes
: *)
_class
loc:@loss/dense_1_loss/Mean
?
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_1_loss/Mean
?
?training/Adam/gradients/loss/dense_1_loss/Mean_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_1_loss/Mean
?
?training/Adam/gradients/loss/dense_1_loss/Mean_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_1_loss/Mean
?
9training/Adam/gradients/loss/dense_1_loss/Mean_grad/rangeRange?training/Adam/gradients/loss/dense_1_loss/Mean_grad/range/start8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Size?training/Adam/gradients/loss/dense_1_loss/Mean_grad/range/delta*
_output_shapes
:*

Tidx0*)
_class
loc:@loss/dense_1_loss/Mean
?
>training/Adam/gradients/loss/dense_1_loss/Mean_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_1_loss/Mean
?
8training/Adam/gradients/loss/dense_1_loss/Mean_grad/FillFill;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape_1>training/Adam/gradients/loss/dense_1_loss/Mean_grad/Fill/value*
T0*
_output_shapes
: *

index_type0*)
_class
loc:@loss/dense_1_loss/Mean
?
Atraining/Adam/gradients/loss/dense_1_loss/Mean_grad/DynamicStitchDynamicStitch9training/Adam/gradients/loss/dense_1_loss/Mean_grad/range7training/Adam/gradients/loss/dense_1_loss/Mean_grad/mod9training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Fill*
T0*
N*
_output_shapes
:*)
_class
loc:@loss/dense_1_loss/Mean
?
=training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_1_loss/Mean
?
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/MaximumMaximumAtraining/Adam/gradients/loss/dense_1_loss/Mean_grad/DynamicStitch=training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum/y*
T0*
_output_shapes
:*)
_class
loc:@loss/dense_1_loss/Mean
?
<training/Adam/gradients/loss/dense_1_loss/Mean_grad/floordivFloorDiv9training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum*
T0*
_output_shapes
:*)
_class
loc:@loss/dense_1_loss/Mean
?
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/ReshapeReshape:training/Adam/gradients/loss/dense_1_loss/Mul_grad/ReshapeAtraining/Adam/gradients/loss/dense_1_loss/Mean_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:??????????????????*)
_class
loc:@loss/dense_1_loss/Mean
?
8training/Adam/gradients/loss/dense_1_loss/Mean_grad/TileTile;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Reshape<training/Adam/gradients/loss/dense_1_loss/Mean_grad/floordiv*
T0*0
_output_shapes
:??????????????????*

Tmultiples0*)
_class
loc:@loss/dense_1_loss/Mean
?
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape_2Shapeloss/dense_1_loss/logistic_loss*
T0*
out_type0*
_output_shapes
:*)
_class
loc:@loss/dense_1_loss/Mean
?
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape_3Shapeloss/dense_1_loss/Mean*
T0*
out_type0*
_output_shapes
:*)
_class
loc:@loss/dense_1_loss/Mean
?
9training/Adam/gradients/loss/dense_1_loss/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:*)
_class
loc:@loss/dense_1_loss/Mean
?
8training/Adam/gradients/loss/dense_1_loss/Mean_grad/ProdProd;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape_29training/Adam/gradients/loss/dense_1_loss/Mean_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*)
_class
loc:@loss/dense_1_loss/Mean
?
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:*)
_class
loc:@loss/dense_1_loss/Mean
?
:training/Adam/gradients/loss/dense_1_loss/Mean_grad/Prod_1Prod;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape_3;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*)
_class
loc:@loss/dense_1_loss/Mean
?
?training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_1_loss/Mean
?
=training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum_1Maximum:training/Adam/gradients/loss/dense_1_loss/Mean_grad/Prod_1?training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: *)
_class
loc:@loss/dense_1_loss/Mean
?
>training/Adam/gradients/loss/dense_1_loss/Mean_grad/floordiv_1FloorDiv8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Prod=training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum_1*
T0*
_output_shapes
: *)
_class
loc:@loss/dense_1_loss/Mean
?
8training/Adam/gradients/loss/dense_1_loss/Mean_grad/CastCast>training/Adam/gradients/loss/dense_1_loss/Mean_grad/floordiv_1*

DstT0*
_output_shapes
: *
Truncate( *

SrcT0*)
_class
loc:@loss/dense_1_loss/Mean
?
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/truedivRealDiv8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Tile8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Cast*
T0*0
_output_shapes
:??????????????????*)
_class
loc:@loss/dense_1_loss/Mean
?
Btraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/ShapeShape#loss/dense_1_loss/logistic_loss/sub*
T0*
out_type0*
_output_shapes
:*2
_class(
&$loc:@loss/dense_1_loss/logistic_loss
?
Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/Shape_1Shape%loss/dense_1_loss/logistic_loss/Log1p*
T0*
out_type0*
_output_shapes
:*2
_class(
&$loc:@loss/dense_1_loss/logistic_loss
?
Rtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/ShapeDtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*2
_class(
&$loc:@loss/dense_1_loss/logistic_loss
?
@training/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/SumSum;training/Adam/gradients/loss/dense_1_loss/Mean_grad/truedivRtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*2
_class(
&$loc:@loss/dense_1_loss/logistic_loss
?
Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/ReshapeReshape@training/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/SumBtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/Shape*
T0*
Tshape0*0
_output_shapes
:??????????????????*2
_class(
&$loc:@loss/dense_1_loss/logistic_loss
?
Btraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/Sum_1Sum;training/Adam/gradients/loss/dense_1_loss/Mean_grad/truedivTtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*2
_class(
&$loc:@loss/dense_1_loss/logistic_loss
?
Ftraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/Sum_1Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????*2
_class(
&$loc:@loss/dense_1_loss/logistic_loss
?
Ftraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/ShapeShape&loss/dense_1_loss/logistic_loss/Select*
T0*
out_type0*
_output_shapes
:*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/sub
?
Htraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Shape_1Shape#loss/dense_1_loss/logistic_loss/mul*
T0*
out_type0*
_output_shapes
:*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/sub
?
Vtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/ShapeHtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/sub
?
Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/SumSumDtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/ReshapeVtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/sub
?
Htraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/ReshapeReshapeDtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/SumFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/sub
?
Ftraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Sum_1SumDtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/ReshapeXtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/sub
?
Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/NegNegFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Sum_1*
T0*
_output_shapes
:*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/sub
?
Jtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Reshape_1ReshapeDtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/NegHtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Shape_1*
T0*
Tshape0*0
_output_shapes
:??????????????????*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/sub
?
Htraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Log1p_grad/add/xConstG^training/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/Reshape_1*
valueB
 *  ??*
dtype0*
_output_shapes
: *8
_class.
,*loc:@loss/dense_1_loss/logistic_loss/Log1p
?
Ftraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Log1p_grad/addAddHtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Log1p_grad/add/x#loss/dense_1_loss/logistic_loss/Exp*
T0*'
_output_shapes
:?????????*8
_class.
,*loc:@loss/dense_1_loss/logistic_loss/Log1p
?
Mtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Log1p_grad/Reciprocal
ReciprocalFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Log1p_grad/add*
T0*'
_output_shapes
:?????????*8
_class.
,*loc:@loss/dense_1_loss/logistic_loss/Log1p
?
Ftraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Log1p_grad/mulMulFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/Reshape_1Mtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Log1p_grad/Reciprocal*
T0*'
_output_shapes
:?????????*8
_class.
,*loc:@loss/dense_1_loss/logistic_loss/Log1p
?
Ntraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_grad/zeros_like	ZerosLikeloss/dense_1_loss/Log*
T0*'
_output_shapes
:?????????*9
_class/
-+loc:@loss/dense_1_loss/logistic_loss/Select
?
Jtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_grad/SelectSelect,loss/dense_1_loss/logistic_loss/GreaterEqualHtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/ReshapeNtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_grad/zeros_like*
T0*'
_output_shapes
:?????????*9
_class/
-+loc:@loss/dense_1_loss/logistic_loss/Select
?
Ltraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_grad/Select_1Select,loss/dense_1_loss/logistic_loss/GreaterEqualNtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_grad/zeros_likeHtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Reshape*
T0*'
_output_shapes
:?????????*9
_class/
-+loc:@loss/dense_1_loss/logistic_loss/Select
?
Ftraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/ShapeShapeloss/dense_1_loss/Log*
T0*
out_type0*
_output_shapes
:*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/mul
?
Htraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/Shape_1Shapedense_1_target*
T0*
out_type0*
_output_shapes
:*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/mul
?
Vtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/ShapeHtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/mul
?
Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/MulMulJtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Reshape_1dense_1_target*
T0*0
_output_shapes
:??????????????????*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/mul
?
Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/SumSumDtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/MulVtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/mul
?
Htraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/ReshapeReshapeDtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/SumFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/mul
?
Ftraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/Mul_1Mulloss/dense_1_loss/LogJtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Reshape_1*
T0*0
_output_shapes
:??????????????????*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/mul
?
Ftraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/Sum_1SumFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/Mul_1Xtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/mul
?
Jtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/Reshape_1ReshapeFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/Sum_1Htraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/Shape_1*
T0*
Tshape0*0
_output_shapes
:??????????????????*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/mul
?
Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Exp_grad/mulMulFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Log1p_grad/mul#loss/dense_1_loss/logistic_loss/Exp*
T0*'
_output_shapes
:?????????*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/Exp
?
Ptraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_1_grad/zeros_like	ZerosLike#loss/dense_1_loss/logistic_loss/Neg*
T0*'
_output_shapes
:?????????*;
_class1
/-loc:@loss/dense_1_loss/logistic_loss/Select_1
?
Ltraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_1_grad/SelectSelect,loss/dense_1_loss/logistic_loss/GreaterEqualDtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Exp_grad/mulPtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_1_grad/zeros_like*
T0*'
_output_shapes
:?????????*;
_class1
/-loc:@loss/dense_1_loss/logistic_loss/Select_1
?
Ntraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_1_grad/Select_1Select,loss/dense_1_loss/logistic_loss/GreaterEqualPtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_1_grad/zeros_likeDtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Exp_grad/mul*
T0*'
_output_shapes
:?????????*;
_class1
/-loc:@loss/dense_1_loss/logistic_loss/Select_1
?
Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Neg_grad/NegNegLtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_1_grad/Select*
T0*'
_output_shapes
:?????????*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/Neg
?
training/Adam/gradients/AddNAddNJtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_grad/SelectHtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/ReshapeNtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_1_grad/Select_1Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Neg_grad/Neg*
T0*
N*'
_output_shapes
:?????????*9
_class/
-+loc:@loss/dense_1_loss/logistic_loss/Select
?
=training/Adam/gradients/loss/dense_1_loss/Log_grad/Reciprocal
Reciprocalloss/dense_1_loss/truediv^training/Adam/gradients/AddN*
T0*'
_output_shapes
:?????????*(
_class
loc:@loss/dense_1_loss/Log
?
6training/Adam/gradients/loss/dense_1_loss/Log_grad/mulMultraining/Adam/gradients/AddN=training/Adam/gradients/loss/dense_1_loss/Log_grad/Reciprocal*
T0*'
_output_shapes
:?????????*(
_class
loc:@loss/dense_1_loss/Log
?
<training/Adam/gradients/loss/dense_1_loss/truediv_grad/ShapeShapeloss/dense_1_loss/clip_by_value*
T0*
out_type0*
_output_shapes
:*,
_class"
 loc:@loss/dense_1_loss/truediv
?
>training/Adam/gradients/loss/dense_1_loss/truediv_grad/Shape_1Shapeloss/dense_1_loss/sub_1*
T0*
out_type0*
_output_shapes
:*,
_class"
 loc:@loss/dense_1_loss/truediv
?
Ltraining/Adam/gradients/loss/dense_1_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adam/gradients/loss/dense_1_loss/truediv_grad/Shape>training/Adam/gradients/loss/dense_1_loss/truediv_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*,
_class"
 loc:@loss/dense_1_loss/truediv
?
>training/Adam/gradients/loss/dense_1_loss/truediv_grad/RealDivRealDiv6training/Adam/gradients/loss/dense_1_loss/Log_grad/mulloss/dense_1_loss/sub_1*
T0*'
_output_shapes
:?????????*,
_class"
 loc:@loss/dense_1_loss/truediv
?
:training/Adam/gradients/loss/dense_1_loss/truediv_grad/SumSum>training/Adam/gradients/loss/dense_1_loss/truediv_grad/RealDivLtraining/Adam/gradients/loss/dense_1_loss/truediv_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*,
_class"
 loc:@loss/dense_1_loss/truediv
?
>training/Adam/gradients/loss/dense_1_loss/truediv_grad/ReshapeReshape:training/Adam/gradients/loss/dense_1_loss/truediv_grad/Sum<training/Adam/gradients/loss/dense_1_loss/truediv_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????*,
_class"
 loc:@loss/dense_1_loss/truediv
?
:training/Adam/gradients/loss/dense_1_loss/truediv_grad/NegNegloss/dense_1_loss/clip_by_value*
T0*'
_output_shapes
:?????????*,
_class"
 loc:@loss/dense_1_loss/truediv
?
@training/Adam/gradients/loss/dense_1_loss/truediv_grad/RealDiv_1RealDiv:training/Adam/gradients/loss/dense_1_loss/truediv_grad/Negloss/dense_1_loss/sub_1*
T0*'
_output_shapes
:?????????*,
_class"
 loc:@loss/dense_1_loss/truediv
?
@training/Adam/gradients/loss/dense_1_loss/truediv_grad/RealDiv_2RealDiv@training/Adam/gradients/loss/dense_1_loss/truediv_grad/RealDiv_1loss/dense_1_loss/sub_1*
T0*'
_output_shapes
:?????????*,
_class"
 loc:@loss/dense_1_loss/truediv
?
:training/Adam/gradients/loss/dense_1_loss/truediv_grad/mulMul6training/Adam/gradients/loss/dense_1_loss/Log_grad/mul@training/Adam/gradients/loss/dense_1_loss/truediv_grad/RealDiv_2*
T0*'
_output_shapes
:?????????*,
_class"
 loc:@loss/dense_1_loss/truediv
?
<training/Adam/gradients/loss/dense_1_loss/truediv_grad/Sum_1Sum:training/Adam/gradients/loss/dense_1_loss/truediv_grad/mulNtraining/Adam/gradients/loss/dense_1_loss/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*,
_class"
 loc:@loss/dense_1_loss/truediv
?
@training/Adam/gradients/loss/dense_1_loss/truediv_grad/Reshape_1Reshape<training/Adam/gradients/loss/dense_1_loss/truediv_grad/Sum_1>training/Adam/gradients/loss/dense_1_loss/truediv_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????*,
_class"
 loc:@loss/dense_1_loss/truediv
?
:training/Adam/gradients/loss/dense_1_loss/sub_1_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: **
_class 
loc:@loss/dense_1_loss/sub_1
?
<training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Shape_1Shapeloss/dense_1_loss/clip_by_value*
T0*
out_type0*
_output_shapes
:**
_class 
loc:@loss/dense_1_loss/sub_1
?
Jtraining/Adam/gradients/loss/dense_1_loss/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Shape<training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????**
_class 
loc:@loss/dense_1_loss/sub_1
?
8training/Adam/gradients/loss/dense_1_loss/sub_1_grad/SumSum@training/Adam/gradients/loss/dense_1_loss/truediv_grad/Reshape_1Jtraining/Adam/gradients/loss/dense_1_loss/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0**
_class 
loc:@loss/dense_1_loss/sub_1
?
<training/Adam/gradients/loss/dense_1_loss/sub_1_grad/ReshapeReshape8training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Sum:training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Shape*
T0*
Tshape0*
_output_shapes
: **
_class 
loc:@loss/dense_1_loss/sub_1
?
:training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Sum_1Sum@training/Adam/gradients/loss/dense_1_loss/truediv_grad/Reshape_1Ltraining/Adam/gradients/loss/dense_1_loss/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0**
_class 
loc:@loss/dense_1_loss/sub_1
?
8training/Adam/gradients/loss/dense_1_loss/sub_1_grad/NegNeg:training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Sum_1*
T0*
_output_shapes
:**
_class 
loc:@loss/dense_1_loss/sub_1
?
>training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Neg<training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????**
_class 
loc:@loss/dense_1_loss/sub_1
?
training/Adam/gradients/AddN_1AddN>training/Adam/gradients/loss/dense_1_loss/truediv_grad/Reshape>training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Reshape_1*
T0*
N*'
_output_shapes
:?????????*,
_class"
 loc:@loss/dense_1_loss/truediv
?
Btraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/ShapeShape'loss/dense_1_loss/clip_by_value/Minimum*
T0*
out_type0*
_output_shapes
:*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
?
Dtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
?
Dtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_2Shapetraining/Adam/gradients/AddN_1*
T0*
out_type0*
_output_shapes
:*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
?
Htraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: *2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
?
Btraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/zerosFillDtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_2Htraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/zeros/Const*
T0*'
_output_shapes
:?????????*

index_type0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
?
Itraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/dense_1_loss/clip_by_value/Minimumloss/dense_1_loss/Const*
T0*'
_output_shapes
:?????????*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
?
Rtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/ShapeDtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
?
Ctraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/SelectSelectItraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/GreaterEqualtraining/Adam/gradients/AddN_1Btraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/zeros*
T0*'
_output_shapes
:?????????*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
?
Etraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Select_1SelectItraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/GreaterEqualBtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/zerostraining/Adam/gradients/AddN_1*
T0*'
_output_shapes
:?????????*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
?
@training/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/SumSumCtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/SelectRtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
?
Dtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/ReshapeReshape@training/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/SumBtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
?
Btraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Sum_1SumEtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Select_1Ttraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
?
Ftraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Sum_1Dtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: *2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
?
Jtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/ShapeShapedense_1/Sigmoid*
T0*
out_type0*
_output_shapes
:*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
?
Ltraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
?
Ltraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_2ShapeDtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Reshape*
T0*
out_type0*
_output_shapes
:*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
?
Ptraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: *:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
?
Jtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zerosFillLtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_2Ptraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*'
_output_shapes
:?????????*

index_type0*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
?
Ntraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualdense_1/Sigmoidloss/dense_1_loss/sub*
T0*'
_output_shapes
:?????????*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
?
Ztraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsJtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/ShapeLtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
?
Ktraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/SelectSelectNtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/LessEqualDtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/ReshapeJtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:?????????*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
?
Mtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Select_1SelectNtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/LessEqualJtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zerosDtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Reshape*
T0*'
_output_shapes
:?????????*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
?
Htraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/SumSumKtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/SelectZtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
?
Ltraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/ReshapeReshapeHtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/SumJtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
?
Jtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Sum_1SumMtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Select_1\training/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
?
Ntraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeJtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Sum_1Ltraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: *:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
?
8training/Adam/gradients/dense_1/Sigmoid_grad/SigmoidGradSigmoidGraddense_1/SigmoidLtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Reshape*
T0*'
_output_shapes
:?????????*"
_class
loc:@dense_1/Sigmoid
?
8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad8training/Adam/gradients/dense_1/Sigmoid_grad/SigmoidGrad*
T0*
data_formatNHWC*
_output_shapes
:*"
_class
loc:@dense_1/BiasAdd
?
2training/Adam/gradients/dense_1/MatMul_grad/MatMulMatMul8training/Adam/gradients/dense_1/Sigmoid_grad/SigmoidGraddense_1/MatMul/ReadVariableOp*
T0*
transpose_b(*
transpose_a( *'
_output_shapes
:?????????*!
_class
loc:@dense_1/MatMul
?
4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMul
dense/Relu8training/Adam/gradients/dense_1/Sigmoid_grad/SigmoidGrad*
T0*
transpose_b( *
transpose_a(*
_output_shapes

:*!
_class
loc:@dense_1/MatMul
?
0training/Adam/gradients/dense/Relu_grad/ReluGradReluGrad2training/Adam/gradients/dense_1/MatMul_grad/MatMul
dense/Relu*
T0*'
_output_shapes
:?????????*
_class
loc:@dense/Relu
?
6training/Adam/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad0training/Adam/gradients/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:* 
_class
loc:@dense/BiasAdd
?
0training/Adam/gradients/dense/MatMul_grad/MatMulMatMul0training/Adam/gradients/dense/Relu_grad/ReluGraddense/MatMul/ReadVariableOp*
T0*
transpose_b(*
transpose_a( *'
_output_shapes
:?????????*
_class
loc:@dense/MatMul
?
2training/Adam/gradients/dense/MatMul_grad/MatMul_1MatMulglobal_average_pooling1d/Mean0training/Adam/gradients/dense/Relu_grad/ReluGrad*
T0*
transpose_b( *
transpose_a(*
_output_shapes

:*
_class
loc:@dense/MatMul
?
@training/Adam/gradients/global_average_pooling1d/Mean_grad/ShapeShape%embedding/embedding_lookup/Identity_2*
T0*
out_type0*
_output_shapes
:*0
_class&
$"loc:@global_average_pooling1d/Mean
?
?training/Adam/gradients/global_average_pooling1d/Mean_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: *0
_class&
$"loc:@global_average_pooling1d/Mean
?
>training/Adam/gradients/global_average_pooling1d/Mean_grad/addAdd/global_average_pooling1d/Mean/reduction_indices?training/Adam/gradients/global_average_pooling1d/Mean_grad/Size*
T0*
_output_shapes
: *0
_class&
$"loc:@global_average_pooling1d/Mean
?
>training/Adam/gradients/global_average_pooling1d/Mean_grad/modFloorMod>training/Adam/gradients/global_average_pooling1d/Mean_grad/add?training/Adam/gradients/global_average_pooling1d/Mean_grad/Size*
T0*
_output_shapes
: *0
_class&
$"loc:@global_average_pooling1d/Mean
?
Btraining/Adam/gradients/global_average_pooling1d/Mean_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *0
_class&
$"loc:@global_average_pooling1d/Mean
?
Ftraining/Adam/gradients/global_average_pooling1d/Mean_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: *0
_class&
$"loc:@global_average_pooling1d/Mean
?
Ftraining/Adam/gradients/global_average_pooling1d/Mean_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: *0
_class&
$"loc:@global_average_pooling1d/Mean
?
@training/Adam/gradients/global_average_pooling1d/Mean_grad/rangeRangeFtraining/Adam/gradients/global_average_pooling1d/Mean_grad/range/start?training/Adam/gradients/global_average_pooling1d/Mean_grad/SizeFtraining/Adam/gradients/global_average_pooling1d/Mean_grad/range/delta*
_output_shapes
:*

Tidx0*0
_class&
$"loc:@global_average_pooling1d/Mean
?
Etraining/Adam/gradients/global_average_pooling1d/Mean_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: *0
_class&
$"loc:@global_average_pooling1d/Mean
?
?training/Adam/gradients/global_average_pooling1d/Mean_grad/FillFillBtraining/Adam/gradients/global_average_pooling1d/Mean_grad/Shape_1Etraining/Adam/gradients/global_average_pooling1d/Mean_grad/Fill/value*
T0*
_output_shapes
: *

index_type0*0
_class&
$"loc:@global_average_pooling1d/Mean
?
Htraining/Adam/gradients/global_average_pooling1d/Mean_grad/DynamicStitchDynamicStitch@training/Adam/gradients/global_average_pooling1d/Mean_grad/range>training/Adam/gradients/global_average_pooling1d/Mean_grad/mod@training/Adam/gradients/global_average_pooling1d/Mean_grad/Shape?training/Adam/gradients/global_average_pooling1d/Mean_grad/Fill*
T0*
N*
_output_shapes
:*0
_class&
$"loc:@global_average_pooling1d/Mean
?
Dtraining/Adam/gradients/global_average_pooling1d/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: *0
_class&
$"loc:@global_average_pooling1d/Mean
?
Btraining/Adam/gradients/global_average_pooling1d/Mean_grad/MaximumMaximumHtraining/Adam/gradients/global_average_pooling1d/Mean_grad/DynamicStitchDtraining/Adam/gradients/global_average_pooling1d/Mean_grad/Maximum/y*
T0*
_output_shapes
:*0
_class&
$"loc:@global_average_pooling1d/Mean
?
Ctraining/Adam/gradients/global_average_pooling1d/Mean_grad/floordivFloorDiv@training/Adam/gradients/global_average_pooling1d/Mean_grad/ShapeBtraining/Adam/gradients/global_average_pooling1d/Mean_grad/Maximum*
T0*
_output_shapes
:*0
_class&
$"loc:@global_average_pooling1d/Mean
?
Btraining/Adam/gradients/global_average_pooling1d/Mean_grad/ReshapeReshape0training/Adam/gradients/dense/MatMul_grad/MatMulHtraining/Adam/gradients/global_average_pooling1d/Mean_grad/DynamicStitch*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????*0
_class&
$"loc:@global_average_pooling1d/Mean
?
?training/Adam/gradients/global_average_pooling1d/Mean_grad/TileTileBtraining/Adam/gradients/global_average_pooling1d/Mean_grad/ReshapeCtraining/Adam/gradients/global_average_pooling1d/Mean_grad/floordiv*
T0*=
_output_shapes+
):'???????????????????????????*

Tmultiples0*0
_class&
$"loc:@global_average_pooling1d/Mean
?
Btraining/Adam/gradients/global_average_pooling1d/Mean_grad/Shape_2Shape%embedding/embedding_lookup/Identity_2*
T0*
out_type0*
_output_shapes
:*0
_class&
$"loc:@global_average_pooling1d/Mean
?
Btraining/Adam/gradients/global_average_pooling1d/Mean_grad/Shape_3Shapeglobal_average_pooling1d/Mean*
T0*
out_type0*
_output_shapes
:*0
_class&
$"loc:@global_average_pooling1d/Mean
?
@training/Adam/gradients/global_average_pooling1d/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:*0
_class&
$"loc:@global_average_pooling1d/Mean
?
?training/Adam/gradients/global_average_pooling1d/Mean_grad/ProdProdBtraining/Adam/gradients/global_average_pooling1d/Mean_grad/Shape_2@training/Adam/gradients/global_average_pooling1d/Mean_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*0
_class&
$"loc:@global_average_pooling1d/Mean
?
Btraining/Adam/gradients/global_average_pooling1d/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:*0
_class&
$"loc:@global_average_pooling1d/Mean
?
Atraining/Adam/gradients/global_average_pooling1d/Mean_grad/Prod_1ProdBtraining/Adam/gradients/global_average_pooling1d/Mean_grad/Shape_3Btraining/Adam/gradients/global_average_pooling1d/Mean_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*0
_class&
$"loc:@global_average_pooling1d/Mean
?
Ftraining/Adam/gradients/global_average_pooling1d/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: *0
_class&
$"loc:@global_average_pooling1d/Mean
?
Dtraining/Adam/gradients/global_average_pooling1d/Mean_grad/Maximum_1MaximumAtraining/Adam/gradients/global_average_pooling1d/Mean_grad/Prod_1Ftraining/Adam/gradients/global_average_pooling1d/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: *0
_class&
$"loc:@global_average_pooling1d/Mean
?
Etraining/Adam/gradients/global_average_pooling1d/Mean_grad/floordiv_1FloorDiv?training/Adam/gradients/global_average_pooling1d/Mean_grad/ProdDtraining/Adam/gradients/global_average_pooling1d/Mean_grad/Maximum_1*
T0*
_output_shapes
: *0
_class&
$"loc:@global_average_pooling1d/Mean
?
?training/Adam/gradients/global_average_pooling1d/Mean_grad/CastCastEtraining/Adam/gradients/global_average_pooling1d/Mean_grad/floordiv_1*

DstT0*
_output_shapes
: *
Truncate( *

SrcT0*0
_class&
$"loc:@global_average_pooling1d/Mean
?
Btraining/Adam/gradients/global_average_pooling1d/Mean_grad/truedivRealDiv?training/Adam/gradients/global_average_pooling1d/Mean_grad/Tile?training/Adam/gradients/global_average_pooling1d/Mean_grad/Cast*
T0*4
_output_shapes"
 :??????????????????*0
_class&
$"loc:@global_average_pooling1d/Mean
?
Etraining/Adam/gradients/embedding/embedding_lookup_grad/VariableShapeVariableShapeembedding/embeddings*
out_type0*
_output_shapes
:*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
<training/Adam/gradients/embedding/embedding_lookup_grad/SizeSizeembedding/Cast*
T0*
out_type0*
_output_shapes
: *A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
Ftraining/Adam/gradients/embedding/embedding_lookup_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: *A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
Btraining/Adam/gradients/embedding/embedding_lookup_grad/ExpandDims
ExpandDims<training/Adam/gradients/embedding/embedding_lookup_grad/SizeFtraining/Adam/gradients/embedding/embedding_lookup_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes
:*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
Ktraining/Adam/gradients/embedding/embedding_lookup_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
Mtraining/Adam/gradients/embedding/embedding_lookup_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
Mtraining/Adam/gradients/embedding/embedding_lookup_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
Etraining/Adam/gradients/embedding/embedding_lookup_grad/strided_sliceStridedSliceEtraining/Adam/gradients/embedding/embedding_lookup_grad/VariableShapeKtraining/Adam/gradients/embedding/embedding_lookup_grad/strided_slice/stackMtraining/Adam/gradients/embedding/embedding_lookup_grad/strided_slice/stack_1Mtraining/Adam/gradients/embedding/embedding_lookup_grad/strided_slice/stack_2*
Index0*
end_mask*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp*
T0*
shrink_axis_mask *
new_axis_mask *

begin_mask *
_output_shapes
:*
ellipsis_mask 
?
Ctraining/Adam/gradients/embedding/embedding_lookup_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: *A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
>training/Adam/gradients/embedding/embedding_lookup_grad/concatConcatV2Btraining/Adam/gradients/embedding/embedding_lookup_grad/ExpandDimsEtraining/Adam/gradients/embedding/embedding_lookup_grad/strided_sliceCtraining/Adam/gradients/embedding/embedding_lookup_grad/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
?training/Adam/gradients/embedding/embedding_lookup_grad/ReshapeReshapeBtraining/Adam/gradients/global_average_pooling1d/Mean_grad/truediv>training/Adam/gradients/embedding/embedding_lookup_grad/concat*
T0*
Tshape0*0
_output_shapes
:??????????????????*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
Atraining/Adam/gradients/embedding/embedding_lookup_grad/Reshape_1Reshapeembedding/CastBtraining/Adam/gradients/embedding/embedding_lookup_grad/ExpandDims*
T0*
Tshape0*#
_output_shapes
:?????????*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
U
training/Adam/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
k
!training/Adam/AssignAddVariableOpAssignAddVariableOpAdam/iterationstraining/Adam/Const*
dtype0	
?
training/Adam/ReadVariableOpReadVariableOpAdam/iterations"^training/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
i
!training/Adam/Cast/ReadVariableOpReadVariableOpAdam/iterations*
dtype0	*
_output_shapes
: 
}
training/Adam/CastCast!training/Adam/Cast/ReadVariableOp*

DstT0*
_output_shapes
: *
Truncate( *

SrcT0	
X
training/Adam/add/yConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
T0*
_output_shapes
: 
d
 training/Adam/Pow/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
n
training/Adam/PowPow training/Adam/Pow/ReadVariableOptraining/Adam/add*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
T0*
_output_shapes
: 
Z
training/Adam/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_2Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_2*
T0*
_output_shapes
: 
?
training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const_1*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
T0*
_output_shapes
: 
f
"training/Adam/Pow_1/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
r
training/Adam/Pow_1Pow"training/Adam/Pow_1/ReadVariableOptraining/Adam/add*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
T0*
_output_shapes
: 
^
training/Adam/ReadVariableOp_1ReadVariableOpAdam/lr*
dtype0*
_output_shapes
: 
p
training/Adam/mulMultraining/Adam/ReadVariableOp_1training/Adam/truediv*
T0*
_output_shapes
: 
t
#training/Adam/zeros/shape_as_tensorConst*
valueB"'     *
dtype0*
_output_shapes
:
^
training/Adam/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
training/Adam/zerosFill#training/Adam/zeros/shape_as_tensortraining/Adam/zeros/Const*
T0*
_output_shapes
:	?N*

index_type0
?
training/Adam/VariableVarHandleOp*'
shared_nametraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
_output_shapes
: *
dtype0*
	container *
shape:	?N
}
7training/Adam/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 
?
training/Adam/Variable/AssignAssignVariableOptraining/Adam/Variabletraining/Adam/zeros*
dtype0*)
_class
loc:@training/Adam/Variable
?
*training/Adam/Variable/Read/ReadVariableOpReadVariableOptraining/Adam/Variable*
dtype0*
_output_shapes
:	?N*)
_class
loc:@training/Adam/Variable
j
training/Adam/zeros_1Const*
valueB*    *
dtype0*
_output_shapes

:
?
training/Adam/Variable_1VarHandleOp*)
shared_nametraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes
: *
dtype0*
	container *
shape
:
?
9training/Adam/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 
?
training/Adam/Variable_1/AssignAssignVariableOptraining/Adam/Variable_1training/Adam/zeros_1*
dtype0*+
_class!
loc:@training/Adam/Variable_1
?
,training/Adam/Variable_1/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_1*
dtype0*
_output_shapes

:*+
_class!
loc:@training/Adam/Variable_1
b
training/Adam/zeros_2Const*
valueB*    *
dtype0*
_output_shapes
:
?
training/Adam/Variable_2VarHandleOp*)
shared_nametraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
_output_shapes
: *
dtype0*
	container *
shape:
?
9training/Adam/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 
?
training/Adam/Variable_2/AssignAssignVariableOptraining/Adam/Variable_2training/Adam/zeros_2*
dtype0*+
_class!
loc:@training/Adam/Variable_2
?
,training/Adam/Variable_2/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_2*
dtype0*
_output_shapes
:*+
_class!
loc:@training/Adam/Variable_2
j
training/Adam/zeros_3Const*
valueB*    *
dtype0*
_output_shapes

:
?
training/Adam/Variable_3VarHandleOp*)
shared_nametraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
_output_shapes
: *
dtype0*
	container *
shape
:
?
9training/Adam/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 
?
training/Adam/Variable_3/AssignAssignVariableOptraining/Adam/Variable_3training/Adam/zeros_3*
dtype0*+
_class!
loc:@training/Adam/Variable_3
?
,training/Adam/Variable_3/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_3*
dtype0*
_output_shapes

:*+
_class!
loc:@training/Adam/Variable_3
b
training/Adam/zeros_4Const*
valueB*    *
dtype0*
_output_shapes
:
?
training/Adam/Variable_4VarHandleOp*)
shared_nametraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
_output_shapes
: *
dtype0*
	container *
shape:
?
9training/Adam/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 
?
training/Adam/Variable_4/AssignAssignVariableOptraining/Adam/Variable_4training/Adam/zeros_4*
dtype0*+
_class!
loc:@training/Adam/Variable_4
?
,training/Adam/Variable_4/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_4*
dtype0*
_output_shapes
:*+
_class!
loc:@training/Adam/Variable_4
v
%training/Adam/zeros_5/shape_as_tensorConst*
valueB"'     *
dtype0*
_output_shapes
:
`
training/Adam/zeros_5/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
training/Adam/zeros_5Fill%training/Adam/zeros_5/shape_as_tensortraining/Adam/zeros_5/Const*
T0*
_output_shapes
:	?N*

index_type0
?
training/Adam/Variable_5VarHandleOp*)
shared_nametraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes
: *
dtype0*
	container *
shape:	?N
?
9training/Adam/Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 
?
training/Adam/Variable_5/AssignAssignVariableOptraining/Adam/Variable_5training/Adam/zeros_5*
dtype0*+
_class!
loc:@training/Adam/Variable_5
?
,training/Adam/Variable_5/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_5*
dtype0*
_output_shapes
:	?N*+
_class!
loc:@training/Adam/Variable_5
j
training/Adam/zeros_6Const*
valueB*    *
dtype0*
_output_shapes

:
?
training/Adam/Variable_6VarHandleOp*)
shared_nametraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
_output_shapes
: *
dtype0*
	container *
shape
:
?
9training/Adam/Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 
?
training/Adam/Variable_6/AssignAssignVariableOptraining/Adam/Variable_6training/Adam/zeros_6*
dtype0*+
_class!
loc:@training/Adam/Variable_6
?
,training/Adam/Variable_6/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_6*
dtype0*
_output_shapes

:*+
_class!
loc:@training/Adam/Variable_6
b
training/Adam/zeros_7Const*
valueB*    *
dtype0*
_output_shapes
:
?
training/Adam/Variable_7VarHandleOp*)
shared_nametraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes
: *
dtype0*
	container *
shape:
?
9training/Adam/Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 
?
training/Adam/Variable_7/AssignAssignVariableOptraining/Adam/Variable_7training/Adam/zeros_7*
dtype0*+
_class!
loc:@training/Adam/Variable_7
?
,training/Adam/Variable_7/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_7*
dtype0*
_output_shapes
:*+
_class!
loc:@training/Adam/Variable_7
j
training/Adam/zeros_8Const*
valueB*    *
dtype0*
_output_shapes

:
?
training/Adam/Variable_8VarHandleOp*)
shared_nametraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
_output_shapes
: *
dtype0*
	container *
shape
:
?
9training/Adam/Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 
?
training/Adam/Variable_8/AssignAssignVariableOptraining/Adam/Variable_8training/Adam/zeros_8*
dtype0*+
_class!
loc:@training/Adam/Variable_8
?
,training/Adam/Variable_8/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_8*
dtype0*
_output_shapes

:*+
_class!
loc:@training/Adam/Variable_8
b
training/Adam/zeros_9Const*
valueB*    *
dtype0*
_output_shapes
:
?
training/Adam/Variable_9VarHandleOp*)
shared_nametraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes
: *
dtype0*
	container *
shape:
?
9training/Adam/Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 
?
training/Adam/Variable_9/AssignAssignVariableOptraining/Adam/Variable_9training/Adam/zeros_9*
dtype0*+
_class!
loc:@training/Adam/Variable_9
?
,training/Adam/Variable_9/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_9*
dtype0*
_output_shapes
:*+
_class!
loc:@training/Adam/Variable_9
p
&training/Adam/zeros_10/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_10/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
T0*
_output_shapes
:*

index_type0
?
training/Adam/Variable_10VarHandleOp**
shared_nametraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
_output_shapes
: *
dtype0*
	container *
shape:
?
:training/Adam/Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
?
 training/Adam/Variable_10/AssignAssignVariableOptraining/Adam/Variable_10training/Adam/zeros_10*
dtype0*,
_class"
 loc:@training/Adam/Variable_10
?
-training/Adam/Variable_10/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_10*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_10
p
&training/Adam/zeros_11/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_11/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
training/Adam/zeros_11Fill&training/Adam/zeros_11/shape_as_tensortraining/Adam/zeros_11/Const*
T0*
_output_shapes
:*

index_type0
?
training/Adam/Variable_11VarHandleOp**
shared_nametraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes
: *
dtype0*
	container *
shape:
?
:training/Adam/Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
?
 training/Adam/Variable_11/AssignAssignVariableOptraining/Adam/Variable_11training/Adam/zeros_11*
dtype0*,
_class"
 loc:@training/Adam/Variable_11
?
-training/Adam/Variable_11/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_11*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_11
p
&training/Adam/zeros_12/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_12/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
training/Adam/zeros_12Fill&training/Adam/zeros_12/shape_as_tensortraining/Adam/zeros_12/Const*
T0*
_output_shapes
:*

index_type0
?
training/Adam/Variable_12VarHandleOp**
shared_nametraining/Adam/Variable_12*,
_class"
 loc:@training/Adam/Variable_12*
_output_shapes
: *
dtype0*
	container *
shape:
?
:training/Adam/Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_12*
_output_shapes
: 
?
 training/Adam/Variable_12/AssignAssignVariableOptraining/Adam/Variable_12training/Adam/zeros_12*
dtype0*,
_class"
 loc:@training/Adam/Variable_12
?
-training/Adam/Variable_12/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_12*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_12
p
&training/Adam/zeros_13/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_13/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
training/Adam/zeros_13Fill&training/Adam/zeros_13/shape_as_tensortraining/Adam/zeros_13/Const*
T0*
_output_shapes
:*

index_type0
?
training/Adam/Variable_13VarHandleOp**
shared_nametraining/Adam/Variable_13*,
_class"
 loc:@training/Adam/Variable_13*
_output_shapes
: *
dtype0*
	container *
shape:
?
:training/Adam/Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_13*
_output_shapes
: 
?
 training/Adam/Variable_13/AssignAssignVariableOptraining/Adam/Variable_13training/Adam/zeros_13*
dtype0*,
_class"
 loc:@training/Adam/Variable_13
?
-training/Adam/Variable_13/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_13*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_13
p
&training/Adam/zeros_14/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_14/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
training/Adam/zeros_14Fill&training/Adam/zeros_14/shape_as_tensortraining/Adam/zeros_14/Const*
T0*
_output_shapes
:*

index_type0
?
training/Adam/Variable_14VarHandleOp**
shared_nametraining/Adam/Variable_14*,
_class"
 loc:@training/Adam/Variable_14*
_output_shapes
: *
dtype0*
	container *
shape:
?
:training/Adam/Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_14*
_output_shapes
: 
?
 training/Adam/Variable_14/AssignAssignVariableOptraining/Adam/Variable_14training/Adam/zeros_14*
dtype0*,
_class"
 loc:@training/Adam/Variable_14
?
-training/Adam/Variable_14/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_14*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_14
b
training/Adam/ReadVariableOp_2ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
z
"training/Adam/mul_1/ReadVariableOpReadVariableOptraining/Adam/Variable*
dtype0*
_output_shapes
:	?N
?
training/Adam/mul_1Multraining/Adam/ReadVariableOp_2"training/Adam/mul_1/ReadVariableOp*
T0*
_output_shapes
:	?N
b
training/Adam/ReadVariableOp_3ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_2/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
r
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/ReadVariableOp_3*
T0*
_output_shapes
: 
q
'training/Adam/mul_2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
s
)training/Adam/mul_2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
s
)training/Adam/mul_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
!training/Adam/mul_2/strided_sliceStridedSliceEtraining/Adam/gradients/embedding/embedding_lookup_grad/VariableShape'training/Adam/mul_2/strided_slice/stack)training/Adam/mul_2/strided_slice/stack_1)training/Adam/mul_2/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*
new_axis_mask *

begin_mask *
_output_shapes
: *
ellipsis_mask 
?
training/Adam/mul_2/yUnsortedSegmentSum?training/Adam/gradients/embedding/embedding_lookup_grad/ReshapeAtraining/Adam/gradients/embedding/embedding_lookup_grad/Reshape_1!training/Adam/mul_2/strided_slice*
T0*0
_output_shapes
:??????????????????*
Tindices0*
Tnumsegments0
?
training/Adam/mul_2Multraining/Adam/sub_2training/Adam/mul_2/y*
T0*0
_output_shapes
:??????????????????
n
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0*
_output_shapes
:	?N
b
training/Adam/ReadVariableOp_4ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
|
"training/Adam/mul_3/ReadVariableOpReadVariableOptraining/Adam/Variable_5*
dtype0*
_output_shapes
:	?N
?
training/Adam/mul_3Multraining/Adam/ReadVariableOp_4"training/Adam/mul_3/ReadVariableOp*
T0*
_output_shapes
:	?N
b
training/Adam/ReadVariableOp_5ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_3/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
r
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/ReadVariableOp_5*
T0*
_output_shapes
: 
r
(training/Adam/Square/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
t
*training/Adam/Square/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*training/Adam/Square/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"training/Adam/Square/strided_sliceStridedSliceEtraining/Adam/gradients/embedding/embedding_lookup_grad/VariableShape(training/Adam/Square/strided_slice/stack*training/Adam/Square/strided_slice/stack_1*training/Adam/Square/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*
new_axis_mask *

begin_mask *
_output_shapes
: *
ellipsis_mask 
?
training/Adam/Square/xUnsortedSegmentSum?training/Adam/gradients/embedding/embedding_lookup_grad/ReshapeAtraining/Adam/gradients/embedding/embedding_lookup_grad/Reshape_1"training/Adam/Square/strided_slice*
T0*0
_output_shapes
:??????????????????*
Tindices0*
Tnumsegments0
q
training/Adam/SquareSquaretraining/Adam/Square/x*
T0*0
_output_shapes
:??????????????????
?
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0*0
_output_shapes
:??????????????????
n
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0*
_output_shapes
:	?N
l
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0*
_output_shapes
:	?N
Z
training/Adam/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_4Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
?
%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_4*
T0*
_output_shapes
:	?N
?
training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_3*
T0*
_output_shapes
:	?N
e
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0*
_output_shapes
:	?N
Z
training/Adam/add_3/yConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
q
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0*
_output_shapes
:	?N
v
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0*
_output_shapes
:	?N
t
training/Adam/ReadVariableOp_6ReadVariableOpembedding/embeddings*
dtype0*
_output_shapes
:	?N
}
training/Adam/sub_4Subtraining/Adam/ReadVariableOp_6training/Adam/truediv_1*
T0*
_output_shapes
:	?N
l
training/Adam/AssignVariableOpAssignVariableOptraining/Adam/Variabletraining/Adam/add_1*
dtype0
?
training/Adam/ReadVariableOp_7ReadVariableOptraining/Adam/Variable^training/Adam/AssignVariableOp*
dtype0*
_output_shapes
:	?N
p
 training/Adam/AssignVariableOp_1AssignVariableOptraining/Adam/Variable_5training/Adam/add_2*
dtype0
?
training/Adam/ReadVariableOp_8ReadVariableOptraining/Adam/Variable_5!^training/Adam/AssignVariableOp_1*
dtype0*
_output_shapes
:	?N
l
 training/Adam/AssignVariableOp_2AssignVariableOpembedding/embeddingstraining/Adam/sub_4*
dtype0
?
training/Adam/ReadVariableOp_9ReadVariableOpembedding/embeddings!^training/Adam/AssignVariableOp_2*
dtype0*
_output_shapes
:	?N
c
training/Adam/ReadVariableOp_10ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
{
"training/Adam/mul_6/ReadVariableOpReadVariableOptraining/Adam/Variable_1*
dtype0*
_output_shapes

:
?
training/Adam/mul_6Multraining/Adam/ReadVariableOp_10"training/Adam/mul_6/ReadVariableOp*
T0*
_output_shapes

:
c
training/Adam/ReadVariableOp_11ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_5/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
s
training/Adam/sub_5Subtraining/Adam/sub_5/xtraining/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 
?
training/Adam/mul_7Multraining/Adam/sub_52training/Adam/gradients/dense/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
m
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes

:
c
training/Adam/ReadVariableOp_12ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
{
"training/Adam/mul_8/ReadVariableOpReadVariableOptraining/Adam/Variable_6*
dtype0*
_output_shapes

:
?
training/Adam/mul_8Multraining/Adam/ReadVariableOp_12"training/Adam/mul_8/ReadVariableOp*
T0*
_output_shapes

:
c
training/Adam/ReadVariableOp_13ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_6/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
s
training/Adam/sub_6Subtraining/Adam/sub_6/xtraining/Adam/ReadVariableOp_13*
T0*
_output_shapes
: 
}
training/Adam/Square_1Square2training/Adam/gradients/dense/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
p
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes

:
m
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes

:
l
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
T0*
_output_shapes

:
Z
training/Adam/Const_5Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_6Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
?
%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_6*
T0*
_output_shapes

:
?
training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_5*
T0*
_output_shapes

:
d
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes

:
Z
training/Adam/add_6/yConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
p
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes

:
v
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*
_output_shapes

:
l
training/Adam/ReadVariableOp_14ReadVariableOpdense/kernel*
dtype0*
_output_shapes

:
}
training/Adam/sub_7Subtraining/Adam/ReadVariableOp_14training/Adam/truediv_2*
T0*
_output_shapes

:
p
 training/Adam/AssignVariableOp_3AssignVariableOptraining/Adam/Variable_1training/Adam/add_4*
dtype0
?
training/Adam/ReadVariableOp_15ReadVariableOptraining/Adam/Variable_1!^training/Adam/AssignVariableOp_3*
dtype0*
_output_shapes

:
p
 training/Adam/AssignVariableOp_4AssignVariableOptraining/Adam/Variable_6training/Adam/add_5*
dtype0
?
training/Adam/ReadVariableOp_16ReadVariableOptraining/Adam/Variable_6!^training/Adam/AssignVariableOp_4*
dtype0*
_output_shapes

:
d
 training/Adam/AssignVariableOp_5AssignVariableOpdense/kerneltraining/Adam/sub_7*
dtype0
?
training/Adam/ReadVariableOp_17ReadVariableOpdense/kernel!^training/Adam/AssignVariableOp_5*
dtype0*
_output_shapes

:
c
training/Adam/ReadVariableOp_18ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_11/ReadVariableOpReadVariableOptraining/Adam/Variable_2*
dtype0*
_output_shapes
:
?
training/Adam/mul_11Multraining/Adam/ReadVariableOp_18#training/Adam/mul_11/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_19ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_8/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
s
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 
?
training/Adam/mul_12Multraining/Adam/sub_86training/Adam/gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
k
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_20ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_13/ReadVariableOpReadVariableOptraining/Adam/Variable_7*
dtype0*
_output_shapes
:
?
training/Adam/mul_13Multraining/Adam/ReadVariableOp_20#training/Adam/mul_13/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_21ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_9/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
s
training/Adam/sub_9Subtraining/Adam/sub_9/xtraining/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 
}
training/Adam/Square_2Square6training/Adam/gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
m
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*
_output_shapes
:
k
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*
_output_shapes
:
h
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*
_output_shapes
:
Z
training/Adam/Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_8Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
?
%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_8*
T0*
_output_shapes
:
?
training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_7*
T0*
_output_shapes
:
`
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes
:
Z
training/Adam/add_9/yConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
l
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*
_output_shapes
:
r
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
T0*
_output_shapes
:
f
training/Adam/ReadVariableOp_22ReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
z
training/Adam/sub_10Subtraining/Adam/ReadVariableOp_22training/Adam/truediv_3*
T0*
_output_shapes
:
p
 training/Adam/AssignVariableOp_6AssignVariableOptraining/Adam/Variable_2training/Adam/add_7*
dtype0
?
training/Adam/ReadVariableOp_23ReadVariableOptraining/Adam/Variable_2!^training/Adam/AssignVariableOp_6*
dtype0*
_output_shapes
:
p
 training/Adam/AssignVariableOp_7AssignVariableOptraining/Adam/Variable_7training/Adam/add_8*
dtype0
?
training/Adam/ReadVariableOp_24ReadVariableOptraining/Adam/Variable_7!^training/Adam/AssignVariableOp_7*
dtype0*
_output_shapes
:
c
 training/Adam/AssignVariableOp_8AssignVariableOp
dense/biastraining/Adam/sub_10*
dtype0
?
training/Adam/ReadVariableOp_25ReadVariableOp
dense/bias!^training/Adam/AssignVariableOp_8*
dtype0*
_output_shapes
:
c
training/Adam/ReadVariableOp_26ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
|
#training/Adam/mul_16/ReadVariableOpReadVariableOptraining/Adam/Variable_3*
dtype0*
_output_shapes

:
?
training/Adam/mul_16Multraining/Adam/ReadVariableOp_26#training/Adam/mul_16/ReadVariableOp*
T0*
_output_shapes

:
c
training/Adam/ReadVariableOp_27ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_11/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
u
training/Adam/sub_11Subtraining/Adam/sub_11/xtraining/Adam/ReadVariableOp_27*
T0*
_output_shapes
: 
?
training/Adam/mul_17Multraining/Adam/sub_114training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
p
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes

:
c
training/Adam/ReadVariableOp_28ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
|
#training/Adam/mul_18/ReadVariableOpReadVariableOptraining/Adam/Variable_8*
dtype0*
_output_shapes

:
?
training/Adam/mul_18Multraining/Adam/ReadVariableOp_28#training/Adam/mul_18/ReadVariableOp*
T0*
_output_shapes

:
c
training/Adam/ReadVariableOp_29ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_12/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
u
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
T0*
_output_shapes
: 

training/Adam/Square_3Square4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
r
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes

:
p
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes

:
m
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
T0*
_output_shapes

:
Z
training/Adam/Const_9Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_10Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
?
%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_10*
T0*
_output_shapes

:
?
training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_9*
T0*
_output_shapes

:
d
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes

:
[
training/Adam/add_12/yConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
r
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
T0*
_output_shapes

:
w
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
T0*
_output_shapes

:
n
training/Adam/ReadVariableOp_30ReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:
~
training/Adam/sub_13Subtraining/Adam/ReadVariableOp_30training/Adam/truediv_4*
T0*
_output_shapes

:
q
 training/Adam/AssignVariableOp_9AssignVariableOptraining/Adam/Variable_3training/Adam/add_10*
dtype0
?
training/Adam/ReadVariableOp_31ReadVariableOptraining/Adam/Variable_3!^training/Adam/AssignVariableOp_9*
dtype0*
_output_shapes

:
r
!training/Adam/AssignVariableOp_10AssignVariableOptraining/Adam/Variable_8training/Adam/add_11*
dtype0
?
training/Adam/ReadVariableOp_32ReadVariableOptraining/Adam/Variable_8"^training/Adam/AssignVariableOp_10*
dtype0*
_output_shapes

:
h
!training/Adam/AssignVariableOp_11AssignVariableOpdense_1/kerneltraining/Adam/sub_13*
dtype0
?
training/Adam/ReadVariableOp_33ReadVariableOpdense_1/kernel"^training/Adam/AssignVariableOp_11*
dtype0*
_output_shapes

:
c
training/Adam/ReadVariableOp_34ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_21/ReadVariableOpReadVariableOptraining/Adam/Variable_4*
dtype0*
_output_shapes
:
?
training/Adam/mul_21Multraining/Adam/ReadVariableOp_34#training/Adam/mul_21/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_35ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_14/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
u
training/Adam/sub_14Subtraining/Adam/sub_14/xtraining/Adam/ReadVariableOp_35*
T0*
_output_shapes
: 
?
training/Adam/mul_22Multraining/Adam/sub_148training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_36ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_23/ReadVariableOpReadVariableOptraining/Adam/Variable_9*
dtype0*
_output_shapes
:
?
training/Adam/mul_23Multraining/Adam/ReadVariableOp_36#training/Adam/mul_23/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_37ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_15/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
u
training/Adam/sub_15Subtraining/Adam/sub_15/xtraining/Adam/ReadVariableOp_37*
T0*
_output_shapes
: 

training/Adam/Square_4Square8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
n
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
T0*
_output_shapes
:
l
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
T0*
_output_shapes
:
i
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
T0*
_output_shapes
:
[
training/Adam/Const_11Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_12Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
?
%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_12*
T0*
_output_shapes
:
?
training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_11*
T0*
_output_shapes
:
`
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
T0*
_output_shapes
:
[
training/Adam/add_15/yConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
n
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
T0*
_output_shapes
:
s
training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_15*
T0*
_output_shapes
:
h
training/Adam/ReadVariableOp_38ReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:
z
training/Adam/sub_16Subtraining/Adam/ReadVariableOp_38training/Adam/truediv_5*
T0*
_output_shapes
:
r
!training/Adam/AssignVariableOp_12AssignVariableOptraining/Adam/Variable_4training/Adam/add_13*
dtype0
?
training/Adam/ReadVariableOp_39ReadVariableOptraining/Adam/Variable_4"^training/Adam/AssignVariableOp_12*
dtype0*
_output_shapes
:
r
!training/Adam/AssignVariableOp_13AssignVariableOptraining/Adam/Variable_9training/Adam/add_14*
dtype0
?
training/Adam/ReadVariableOp_40ReadVariableOptraining/Adam/Variable_9"^training/Adam/AssignVariableOp_13*
dtype0*
_output_shapes
:
f
!training/Adam/AssignVariableOp_14AssignVariableOpdense_1/biastraining/Adam/sub_16*
dtype0
?
training/Adam/ReadVariableOp_41ReadVariableOpdense_1/bias"^training/Adam/AssignVariableOp_14*
dtype0*
_output_shapes
:
?
training/group_depsNoOp	^loss/mul^metrics/acc/Mean_1^training/Adam/ReadVariableOp ^training/Adam/ReadVariableOp_15 ^training/Adam/ReadVariableOp_16 ^training/Adam/ReadVariableOp_17 ^training/Adam/ReadVariableOp_23 ^training/Adam/ReadVariableOp_24 ^training/Adam/ReadVariableOp_25 ^training/Adam/ReadVariableOp_31 ^training/Adam/ReadVariableOp_32 ^training/Adam/ReadVariableOp_33 ^training/Adam/ReadVariableOp_39 ^training/Adam/ReadVariableOp_40 ^training/Adam/ReadVariableOp_41^training/Adam/ReadVariableOp_7^training/Adam/ReadVariableOp_8^training/Adam/ReadVariableOp_9
2

group_depsNoOp	^loss/mul^metrics/acc/Mean_1
[
VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_14*
_output_shapes
: 
P
VarIsInitializedOp_1VarIsInitializedOpdense_1/bias*
_output_shapes
: 
]
VarIsInitializedOp_2VarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
N
VarIsInitializedOp_3VarIsInitializedOp
dense/bias*
_output_shapes
: 
R
VarIsInitializedOp_4VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
]
VarIsInitializedOp_5VarIsInitializedOptraining/Adam/Variable_13*
_output_shapes
: 
P
VarIsInitializedOp_6VarIsInitializedOpdense/kernel*
_output_shapes
: 
\
VarIsInitializedOp_7VarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 
\
VarIsInitializedOp_8VarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 
\
VarIsInitializedOp_9VarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 
]
VarIsInitializedOp_10VarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 
^
VarIsInitializedOp_11VarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
[
VarIsInitializedOp_12VarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 
Y
VarIsInitializedOp_13VarIsInitializedOpembedding/embeddings*
_output_shapes
: 
T
VarIsInitializedOp_14VarIsInitializedOpAdam/iterations*
_output_shapes
: 
]
VarIsInitializedOp_15VarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 
P
VarIsInitializedOp_16VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
L
VarIsInitializedOp_17VarIsInitializedOpAdam/lr*
_output_shapes
: 
]
VarIsInitializedOp_18VarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 
]
VarIsInitializedOp_19VarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 
O
VarIsInitializedOp_20VarIsInitializedOp
Adam/decay*
_output_shapes
: 
]
VarIsInitializedOp_21VarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 
]
VarIsInitializedOp_22VarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 
^
VarIsInitializedOp_23VarIsInitializedOptraining/Adam/Variable_12*
_output_shapes
: 
P
VarIsInitializedOp_24VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
?
initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^embedding/embeddings/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign!^training/Adam/Variable_12/Assign!^training/Adam/Variable_13/Assign!^training/Adam/Variable_14/Assign ^training/Adam/Variable_2/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
?
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_78025c4e6ce646719de0be4791fcd791/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst*?
value?B?BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBembedding/embeddingsBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_2Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
dtype0*
_output_shapes
:
?
save/SaveV2/shape_and_slicesConst*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?	
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp#Adam/iterations/Read/ReadVariableOpAdam/lr/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp(embedding/embeddings/Read/ReadVariableOp*training/Adam/Variable/Read/ReadVariableOp,training/Adam/Variable_1/Read/ReadVariableOp-training/Adam/Variable_10/Read/ReadVariableOp-training/Adam/Variable_11/Read/ReadVariableOp-training/Adam/Variable_12/Read/ReadVariableOp-training/Adam/Variable_13/Read/ReadVariableOp-training/Adam/Variable_14/Read/ReadVariableOp,training/Adam/Variable_2/Read/ReadVariableOp,training/Adam/Variable_3/Read/ReadVariableOp,training/Adam/Variable_4/Read/ReadVariableOp,training/Adam/Variable_5/Read/ReadVariableOp,training/Adam/Variable_6/Read/ReadVariableOp,training/Adam/Variable_7/Read/ReadVariableOp,training/Adam/Variable_8/Read/ReadVariableOp,training/Adam/Variable_9/Read/ReadVariableOp*'
dtypes
2	
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*

axis *
T0*
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst*?
value?B?BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBembedding/embeddingsBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_2Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
dtype0*
_output_shapes
:
?
save/RestoreV2/shape_and_slicesConst*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*'
dtypes
2	*x
_output_shapesf
d:::::::::::::::::::::::::
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpAdam/beta_1save/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
V
save/AssignVariableOp_1AssignVariableOpAdam/beta_2save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
U
save/AssignVariableOp_2AssignVariableOp
Adam/decaysave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0	*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpAdam/iterationssave/Identity_4*
dtype0	
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
R
save/AssignVariableOp_4AssignVariableOpAdam/lrsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
U
save/AssignVariableOp_5AssignVariableOp
dense/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
W
save/AssignVariableOp_6AssignVariableOpdense/kernelsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
W
save/AssignVariableOp_7AssignVariableOpdense_1/biassave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
Y
save/AssignVariableOp_8AssignVariableOpdense_1/kernelsave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
`
save/AssignVariableOp_9AssignVariableOpembedding/embeddingssave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
c
save/AssignVariableOp_10AssignVariableOptraining/Adam/Variablesave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
e
save/AssignVariableOp_11AssignVariableOptraining/Adam/Variable_1save/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
f
save/AssignVariableOp_12AssignVariableOptraining/Adam/Variable_10save/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
f
save/AssignVariableOp_13AssignVariableOptraining/Adam/Variable_11save/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
f
save/AssignVariableOp_14AssignVariableOptraining/Adam/Variable_12save/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
f
save/AssignVariableOp_15AssignVariableOptraining/Adam/Variable_13save/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
f
save/AssignVariableOp_16AssignVariableOptraining/Adam/Variable_14save/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
e
save/AssignVariableOp_17AssignVariableOptraining/Adam/Variable_2save/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
e
save/AssignVariableOp_18AssignVariableOptraining/Adam/Variable_3save/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
e
save/AssignVariableOp_19AssignVariableOptraining/Adam/Variable_4save/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
e
save/AssignVariableOp_20AssignVariableOptraining/Adam/Variable_5save/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:
e
save/AssignVariableOp_21AssignVariableOptraining/Adam/Variable_6save/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
e
save/AssignVariableOp_22AssignVariableOptraining/Adam/Variable_7save/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
e
save/AssignVariableOp_23AssignVariableOptraining/Adam/Variable_8save/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:
e
save/AssignVariableOp_24AssignVariableOptraining/Adam/Variable_9save/Identity_25*
dtype0
?
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"?
trainable_variables??
?
embedding/embeddings:0embedding/embeddings/Assign*embedding/embeddings/Read/ReadVariableOp:0(21embedding/embeddings/Initializer/random_uniform:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
?
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
?
Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08
?
training/Adam/Variable:0training/Adam/Variable/Assign,training/Adam/Variable/Read/ReadVariableOp:0(2training/Adam/zeros:08
?
training/Adam/Variable_1:0training/Adam/Variable_1/Assign.training/Adam/Variable_1/Read/ReadVariableOp:0(2training/Adam/zeros_1:08
?
training/Adam/Variable_2:0training/Adam/Variable_2/Assign.training/Adam/Variable_2/Read/ReadVariableOp:0(2training/Adam/zeros_2:08
?
training/Adam/Variable_3:0training/Adam/Variable_3/Assign.training/Adam/Variable_3/Read/ReadVariableOp:0(2training/Adam/zeros_3:08
?
training/Adam/Variable_4:0training/Adam/Variable_4/Assign.training/Adam/Variable_4/Read/ReadVariableOp:0(2training/Adam/zeros_4:08
?
training/Adam/Variable_5:0training/Adam/Variable_5/Assign.training/Adam/Variable_5/Read/ReadVariableOp:0(2training/Adam/zeros_5:08
?
training/Adam/Variable_6:0training/Adam/Variable_6/Assign.training/Adam/Variable_6/Read/ReadVariableOp:0(2training/Adam/zeros_6:08
?
training/Adam/Variable_7:0training/Adam/Variable_7/Assign.training/Adam/Variable_7/Read/ReadVariableOp:0(2training/Adam/zeros_7:08
?
training/Adam/Variable_8:0training/Adam/Variable_8/Assign.training/Adam/Variable_8/Read/ReadVariableOp:0(2training/Adam/zeros_8:08
?
training/Adam/Variable_9:0training/Adam/Variable_9/Assign.training/Adam/Variable_9/Read/ReadVariableOp:0(2training/Adam/zeros_9:08
?
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign/training/Adam/Variable_10/Read/ReadVariableOp:0(2training/Adam/zeros_10:08
?
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign/training/Adam/Variable_11/Read/ReadVariableOp:0(2training/Adam/zeros_11:08
?
training/Adam/Variable_12:0 training/Adam/Variable_12/Assign/training/Adam/Variable_12/Read/ReadVariableOp:0(2training/Adam/zeros_12:08
?
training/Adam/Variable_13:0 training/Adam/Variable_13/Assign/training/Adam/Variable_13/Read/ReadVariableOp:0(2training/Adam/zeros_13:08
?
training/Adam/Variable_14:0 training/Adam/Variable_14/Assign/training/Adam/Variable_14/Read/ReadVariableOp:0(2training/Adam/zeros_14:08"?w
cond_context?w?w
?
Qloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textQloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *?
Dloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
Qloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0?
Dloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar:0Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1?
Qloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Qloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
?V
Sloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1Qloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*?'
iloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
iloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
jloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
jloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
{loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
~loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
vloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
tloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
wloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
yloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
ploss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
kloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Qloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
Floss/dense_1_loss/broadcast_weights/assert_broadcastable/values/rank:0
Gloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shape:0
Gloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/rank:0
Hloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0?
Floss/dense_1_loss/broadcast_weights/assert_broadcastable/values/rank:0wloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0?
Qloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Qloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0?
Gloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/rank:0yloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0?
Gloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shape:0?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0?
Hloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:02?"
?"
kloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textkloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *? 
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
{loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
~loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
vloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
tloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
kloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Gloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0?
kloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0kloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0?
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0?
Gloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shape:0?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1?
Hloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1?
?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0?loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:02?

?

mloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1kloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*?
lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
ploss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
kloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0?
ploss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0?
kloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0kloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
?
Nloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textNloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *?
Yloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
Nloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Oloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0?
Nloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Nloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
?
Ploss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1Nloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*?
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
Vloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Vloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Vloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
[loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
Nloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Oloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Dloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Oloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
Gloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0?
Dloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar:0Vloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0?
Nloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Nloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0?
Oloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0?
Gloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shape:0Vloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0?
Hloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0Vloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0"?
	variables??
?
embedding/embeddings:0embedding/embeddings/Assign*embedding/embeddings/Read/ReadVariableOp:0(21embedding/embeddings/Initializer/random_uniform:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
?
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
?
Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08
?
training/Adam/Variable:0training/Adam/Variable/Assign,training/Adam/Variable/Read/ReadVariableOp:0(2training/Adam/zeros:08
?
training/Adam/Variable_1:0training/Adam/Variable_1/Assign.training/Adam/Variable_1/Read/ReadVariableOp:0(2training/Adam/zeros_1:08
?
training/Adam/Variable_2:0training/Adam/Variable_2/Assign.training/Adam/Variable_2/Read/ReadVariableOp:0(2training/Adam/zeros_2:08
?
training/Adam/Variable_3:0training/Adam/Variable_3/Assign.training/Adam/Variable_3/Read/ReadVariableOp:0(2training/Adam/zeros_3:08
?
training/Adam/Variable_4:0training/Adam/Variable_4/Assign.training/Adam/Variable_4/Read/ReadVariableOp:0(2training/Adam/zeros_4:08
?
training/Adam/Variable_5:0training/Adam/Variable_5/Assign.training/Adam/Variable_5/Read/ReadVariableOp:0(2training/Adam/zeros_5:08
?
training/Adam/Variable_6:0training/Adam/Variable_6/Assign.training/Adam/Variable_6/Read/ReadVariableOp:0(2training/Adam/zeros_6:08
?
training/Adam/Variable_7:0training/Adam/Variable_7/Assign.training/Adam/Variable_7/Read/ReadVariableOp:0(2training/Adam/zeros_7:08
?
training/Adam/Variable_8:0training/Adam/Variable_8/Assign.training/Adam/Variable_8/Read/ReadVariableOp:0(2training/Adam/zeros_8:08
?
training/Adam/Variable_9:0training/Adam/Variable_9/Assign.training/Adam/Variable_9/Read/ReadVariableOp:0(2training/Adam/zeros_9:08
?
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign/training/Adam/Variable_10/Read/ReadVariableOp:0(2training/Adam/zeros_10:08
?
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign/training/Adam/Variable_11/Read/ReadVariableOp:0(2training/Adam/zeros_11:08
?
training/Adam/Variable_12:0 training/Adam/Variable_12/Assign/training/Adam/Variable_12/Read/ReadVariableOp:0(2training/Adam/zeros_12:08
?
training/Adam/Variable_13:0 training/Adam/Variable_13/Assign/training/Adam/Variable_13/Read/ReadVariableOp:0(2training/Adam/zeros_13:08
?
training/Adam/Variable_14:0 training/Adam/Variable_14/Assign/training/Adam/Variable_14/Read/ReadVariableOp:0(2training/Adam/zeros_14:08*?
serving_default?
A
input_review1
embedding_input:0??????????????????=
dense_1/Sigmoid:0(
dense_1/Sigmoid:0?????????tensorflow/serving/predict