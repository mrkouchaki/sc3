??3
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
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
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??1
z
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  * 
shared_namedense_22/kernel
s
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel*
_output_shapes

:  *
dtype0
r
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_22/bias
k
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes
: *
dtype0
z
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_23/kernel
s
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel*
_output_shapes

: *
dtype0
r
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_23/bias
k
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes
:*
dtype0
?
lstm_33/lstm_cell_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$*,
shared_namelstm_33/lstm_cell_66/kernel
?
/lstm_33/lstm_cell_66/kernel/Read/ReadVariableOpReadVariableOplstm_33/lstm_cell_66/kernel*
_output_shapes

:$*
dtype0
?
%lstm_33/lstm_cell_66/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	$*6
shared_name'%lstm_33/lstm_cell_66/recurrent_kernel
?
9lstm_33/lstm_cell_66/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_33/lstm_cell_66/recurrent_kernel*
_output_shapes

:	$*
dtype0
?
lstm_33/lstm_cell_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:$**
shared_namelstm_33/lstm_cell_66/bias
?
-lstm_33/lstm_cell_66/bias/Read/ReadVariableOpReadVariableOplstm_33/lstm_cell_66/bias*
_output_shapes
:$*
dtype0
?
lstm_34/lstm_cell_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	@*,
shared_namelstm_34/lstm_cell_67/kernel
?
/lstm_34/lstm_cell_67/kernel/Read/ReadVariableOpReadVariableOplstm_34/lstm_cell_67/kernel*
_output_shapes

:	@*
dtype0
?
%lstm_34/lstm_cell_67/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*6
shared_name'%lstm_34/lstm_cell_67/recurrent_kernel
?
9lstm_34/lstm_cell_67/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_34/lstm_cell_67/recurrent_kernel*
_output_shapes

:@*
dtype0
?
lstm_34/lstm_cell_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namelstm_34/lstm_cell_67/bias
?
-lstm_34/lstm_cell_67/bias/Read/ReadVariableOpReadVariableOplstm_34/lstm_cell_67/bias*
_output_shapes
:@*
dtype0
?
lstm_35/lstm_cell_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_namelstm_35/lstm_cell_68/kernel
?
/lstm_35/lstm_cell_68/kernel/Read/ReadVariableOpReadVariableOplstm_35/lstm_cell_68/kernel*
_output_shapes
:	?*
dtype0
?
%lstm_35/lstm_cell_68/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*6
shared_name'%lstm_35/lstm_cell_68/recurrent_kernel
?
9lstm_35/lstm_cell_68/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_35/lstm_cell_68/recurrent_kernel*
_output_shapes
:	 ?*
dtype0
?
lstm_35/lstm_cell_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_35/lstm_cell_68/bias
?
-lstm_35/lstm_cell_68/bias/Read/ReadVariableOpReadVariableOplstm_35/lstm_cell_68/bias*
_output_shapes	
:?*
dtype0
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

NoOpNoOp
?-
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?,
value?,B?, B?,
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer_with_weights-4
layer-5
layer-6
	optimizer
		variables

regularization_losses
trainable_variables
	keras_api

signatures
l
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
l
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
l
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
h

 kernel
!bias
"	variables
#regularization_losses
$trainable_variables
%	keras_api
R
&	variables
'regularization_losses
(trainable_variables
)	keras_api
h

*kernel
+bias
,	variables
-regularization_losses
.trainable_variables
/	keras_api
R
0	variables
1regularization_losses
2trainable_variables
3	keras_api
 
^
40
51
62
73
84
95
:6
;7
<8
 9
!10
*11
+12
 
^
40
51
62
73
84
95
:6
;7
<8
 9
!10
*11
+12
?
=non_trainable_variables
		variables
>layer_regularization_losses

?layers
@layer_metrics

regularization_losses
Ametrics
trainable_variables
 
?
B
state_size

4kernel
5recurrent_kernel
6bias
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
 

40
51
62
 

40
51
62
?
Gnon_trainable_variables
	variables

Hstates
Ilayer_regularization_losses

Jlayers
Klayer_metrics
regularization_losses
Lmetrics
trainable_variables
?
M
state_size

7kernel
8recurrent_kernel
9bias
N	variables
Oregularization_losses
Ptrainable_variables
Q	keras_api
 

70
81
92
 

70
81
92
?
Rnon_trainable_variables
	variables

Sstates
Tlayer_regularization_losses

Ulayers
Vlayer_metrics
regularization_losses
Wmetrics
trainable_variables
?
X
state_size

:kernel
;recurrent_kernel
<bias
Y	variables
Zregularization_losses
[trainable_variables
\	keras_api
 

:0
;1
<2
 

:0
;1
<2
?
]non_trainable_variables
	variables

^states
_layer_regularization_losses

`layers
alayer_metrics
regularization_losses
bmetrics
trainable_variables
[Y
VARIABLE_VALUEdense_22/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_22/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

 0
!1
 

 0
!1
?
cnon_trainable_variables
"	variables
dlayer_regularization_losses
emetrics

flayers
glayer_metrics
#regularization_losses
$trainable_variables
 
 
 
?
hnon_trainable_variables
&	variables
ilayer_regularization_losses
jmetrics

klayers
llayer_metrics
'regularization_losses
(trainable_variables
[Y
VARIABLE_VALUEdense_23/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_23/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1
 

*0
+1
?
mnon_trainable_variables
,	variables
nlayer_regularization_losses
ometrics

players
qlayer_metrics
-regularization_losses
.trainable_variables
 
 
 
?
rnon_trainable_variables
0	variables
slayer_regularization_losses
tmetrics

ulayers
vlayer_metrics
1regularization_losses
2trainable_variables
WU
VARIABLE_VALUElstm_33/lstm_cell_66/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_33/lstm_cell_66/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_33/lstm_cell_66/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_34/lstm_cell_67/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_34/lstm_cell_67/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_34/lstm_cell_67/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_35/lstm_cell_68/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_35/lstm_cell_68/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_35/lstm_cell_68/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
 
 
1
0
1
2
3
4
5
6
 

w0
 

40
51
62
 

40
51
62
?
xnon_trainable_variables
C	variables
ylayer_regularization_losses
zmetrics

{layers
|layer_metrics
Dregularization_losses
Etrainable_variables
 
 
 

0
 
 
 

70
81
92
 

70
81
92
?
}non_trainable_variables
N	variables
~layer_regularization_losses
metrics
?layers
?layer_metrics
Oregularization_losses
Ptrainable_variables
 
 
 

0
 
 
 

:0
;1
<2
 

:0
;1
<2
?
?non_trainable_variables
Y	variables
 ?layer_regularization_losses
?metrics
?layers
?layer_metrics
Zregularization_losses
[trainable_variables
 
 
 

0
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
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
?
serving_default_lstm_33_inputPlaceholder*+
_output_shapes
:?????????	*
dtype0* 
shape:?????????	
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_33_inputlstm_33/lstm_cell_66/kernel%lstm_33/lstm_cell_66/recurrent_kernellstm_33/lstm_cell_66/biaslstm_34/lstm_cell_67/kernel%lstm_34/lstm_cell_67/recurrent_kernellstm_34/lstm_cell_67/biaslstm_35/lstm_cell_68/kernel%lstm_35/lstm_cell_68/recurrent_kernellstm_35/lstm_cell_68/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_192283
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_22/kernel/Read/ReadVariableOp!dense_22/bias/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOp/lstm_33/lstm_cell_66/kernel/Read/ReadVariableOp9lstm_33/lstm_cell_66/recurrent_kernel/Read/ReadVariableOp-lstm_33/lstm_cell_66/bias/Read/ReadVariableOp/lstm_34/lstm_cell_67/kernel/Read/ReadVariableOp9lstm_34/lstm_cell_67/recurrent_kernel/Read/ReadVariableOp-lstm_34/lstm_cell_67/bias/Read/ReadVariableOp/lstm_35/lstm_cell_68/kernel/Read/ReadVariableOp9lstm_35/lstm_cell_68/recurrent_kernel/Read/ReadVariableOp-lstm_35/lstm_cell_68/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_195480
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_22/kerneldense_22/biasdense_23/kerneldense_23/biaslstm_33/lstm_cell_66/kernel%lstm_33/lstm_cell_66/recurrent_kernellstm_33/lstm_cell_66/biaslstm_34/lstm_cell_67/kernel%lstm_34/lstm_cell_67/recurrent_kernellstm_34/lstm_cell_67/biaslstm_35/lstm_cell_68/kernel%lstm_35/lstm_cell_68/recurrent_kernellstm_35/lstm_cell_68/biastotalcount*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_195535??0
?U
?
C__inference_lstm_33_layer_call_and_return_conditional_losses_191136

inputs=
+lstm_cell_66_matmul_readvariableop_resource:$?
-lstm_cell_66_matmul_1_readvariableop_resource:	$:
,lstm_cell_66_biasadd_readvariableop_resource:$
identity??#lstm_cell_66/BiasAdd/ReadVariableOp?"lstm_cell_66/MatMul/ReadVariableOp?$lstm_cell_66/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????	2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????	2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource*
_output_shapes

:$*
dtype02$
"lstm_cell_66/MatMul/ReadVariableOp?
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/MatMul?
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02&
$lstm_cell_66/MatMul_1/ReadVariableOp?
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/MatMul_1?
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/add?
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02%
#lstm_cell_66/BiasAdd/ReadVariableOp?
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/BiasAdd~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dim?
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_cell_66/split?
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Sigmoid?
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Sigmoid_1?
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/mul}
lstm_cell_66/ReluRelulstm_cell_66/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Relu?
lstm_cell_66/mul_1Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/mul_1?
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/add_1?
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Sigmoid_2|
lstm_cell_66/Relu_1Relulstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Relu_1?
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_191052*
condR
while_cond_191051*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	?????????	*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????		2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????		2

Identity?
NoOpNoOp$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????	: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
(__inference_lstm_35_layer_call_fn_194489

inputs
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_35_layer_call_and_return_conditional_losses_1917072
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?C
?	
"__inference__traced_restore_195535
file_prefix2
 assignvariableop_dense_22_kernel:  .
 assignvariableop_1_dense_22_bias: 4
"assignvariableop_2_dense_23_kernel: .
 assignvariableop_3_dense_23_bias:@
.assignvariableop_4_lstm_33_lstm_cell_66_kernel:$J
8assignvariableop_5_lstm_33_lstm_cell_66_recurrent_kernel:	$:
,assignvariableop_6_lstm_33_lstm_cell_66_bias:$@
.assignvariableop_7_lstm_34_lstm_cell_67_kernel:	@J
8assignvariableop_8_lstm_34_lstm_cell_67_recurrent_kernel:@:
,assignvariableop_9_lstm_34_lstm_cell_67_bias:@B
/assignvariableop_10_lstm_35_lstm_cell_68_kernel:	?L
9assignvariableop_11_lstm_35_lstm_cell_68_recurrent_kernel:	 ?<
-assignvariableop_12_lstm_35_lstm_cell_68_bias:	?#
assignvariableop_13_total: #
assignvariableop_14_count: 
identity_16??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*T
_output_shapesB
@::::::::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_22_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_22_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_23_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_23_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp.assignvariableop_4_lstm_33_lstm_cell_66_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp8assignvariableop_5_lstm_33_lstm_cell_66_recurrent_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp,assignvariableop_6_lstm_33_lstm_cell_66_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_34_lstm_cell_67_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_34_lstm_cell_67_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_34_lstm_cell_67_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_35_lstm_cell_68_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_35_lstm_cell_68_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_35_lstm_cell_68_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_149
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_15Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_15f
Identity_16IdentityIdentity_15:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_16?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_16Identity_16:output:0*3
_input_shapes"
 : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
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
?
?
while_cond_193601
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_193601___redundant_placeholder04
0while_while_cond_193601___redundant_placeholder14
0while_while_cond_193601___redundant_placeholder24
0while_while_cond_193601___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_191201
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_191201___redundant_placeholder04
0while_while_cond_191201___redundant_placeholder14
0while_while_cond_191201___redundant_placeholder24
0while_while_cond_191201___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?J
?

lstm_35_while_body_193116,
(lstm_35_while_lstm_35_while_loop_counter2
.lstm_35_while_lstm_35_while_maximum_iterations
lstm_35_while_placeholder
lstm_35_while_placeholder_1
lstm_35_while_placeholder_2
lstm_35_while_placeholder_3+
'lstm_35_while_lstm_35_strided_slice_1_0g
clstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_35_while_lstm_cell_68_matmul_readvariableop_resource_0:	?P
=lstm_35_while_lstm_cell_68_matmul_1_readvariableop_resource_0:	 ?K
<lstm_35_while_lstm_cell_68_biasadd_readvariableop_resource_0:	?
lstm_35_while_identity
lstm_35_while_identity_1
lstm_35_while_identity_2
lstm_35_while_identity_3
lstm_35_while_identity_4
lstm_35_while_identity_5)
%lstm_35_while_lstm_35_strided_slice_1e
alstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensorL
9lstm_35_while_lstm_cell_68_matmul_readvariableop_resource:	?N
;lstm_35_while_lstm_cell_68_matmul_1_readvariableop_resource:	 ?I
:lstm_35_while_lstm_cell_68_biasadd_readvariableop_resource:	???1lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOp?0lstm_35/while/lstm_cell_68/MatMul/ReadVariableOp?2lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOp?
?lstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_35/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensor_0lstm_35_while_placeholderHlstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_35/while/TensorArrayV2Read/TensorListGetItem?
0lstm_35/while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp;lstm_35_while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype022
0lstm_35/while/lstm_cell_68/MatMul/ReadVariableOp?
!lstm_35/while/lstm_cell_68/MatMulMatMul8lstm_35/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_35/while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_35/while/lstm_cell_68/MatMul?
2lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp=lstm_35_while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype024
2lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOp?
#lstm_35/while/lstm_cell_68/MatMul_1MatMullstm_35_while_placeholder_2:lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_35/while/lstm_cell_68/MatMul_1?
lstm_35/while/lstm_cell_68/addAddV2+lstm_35/while/lstm_cell_68/MatMul:product:0-lstm_35/while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2 
lstm_35/while/lstm_cell_68/add?
1lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp<lstm_35_while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOp?
"lstm_35/while/lstm_cell_68/BiasAddBiasAdd"lstm_35/while/lstm_cell_68/add:z:09lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_35/while/lstm_cell_68/BiasAdd?
*lstm_35/while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_35/while/lstm_cell_68/split/split_dim?
 lstm_35/while/lstm_cell_68/splitSplit3lstm_35/while/lstm_cell_68/split/split_dim:output:0+lstm_35/while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2"
 lstm_35/while/lstm_cell_68/split?
"lstm_35/while/lstm_cell_68/SigmoidSigmoid)lstm_35/while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_35/while/lstm_cell_68/Sigmoid?
$lstm_35/while/lstm_cell_68/Sigmoid_1Sigmoid)lstm_35/while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:????????? 2&
$lstm_35/while/lstm_cell_68/Sigmoid_1?
lstm_35/while/lstm_cell_68/mulMul(lstm_35/while/lstm_cell_68/Sigmoid_1:y:0lstm_35_while_placeholder_3*
T0*'
_output_shapes
:????????? 2 
lstm_35/while/lstm_cell_68/mul?
lstm_35/while/lstm_cell_68/ReluRelu)lstm_35/while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:????????? 2!
lstm_35/while/lstm_cell_68/Relu?
 lstm_35/while/lstm_cell_68/mul_1Mul&lstm_35/while/lstm_cell_68/Sigmoid:y:0-lstm_35/while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_35/while/lstm_cell_68/mul_1?
 lstm_35/while/lstm_cell_68/add_1AddV2"lstm_35/while/lstm_cell_68/mul:z:0$lstm_35/while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_35/while/lstm_cell_68/add_1?
$lstm_35/while/lstm_cell_68/Sigmoid_2Sigmoid)lstm_35/while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:????????? 2&
$lstm_35/while/lstm_cell_68/Sigmoid_2?
!lstm_35/while/lstm_cell_68/Relu_1Relu$lstm_35/while/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:????????? 2#
!lstm_35/while/lstm_cell_68/Relu_1?
 lstm_35/while/lstm_cell_68/mul_2Mul(lstm_35/while/lstm_cell_68/Sigmoid_2:y:0/lstm_35/while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_35/while/lstm_cell_68/mul_2?
2lstm_35/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_35_while_placeholder_1lstm_35_while_placeholder$lstm_35/while/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_35/while/TensorArrayV2Write/TensorListSetIteml
lstm_35/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_35/while/add/y?
lstm_35/while/addAddV2lstm_35_while_placeholderlstm_35/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_35/while/addp
lstm_35/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_35/while/add_1/y?
lstm_35/while/add_1AddV2(lstm_35_while_lstm_35_while_loop_counterlstm_35/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_35/while/add_1?
lstm_35/while/IdentityIdentitylstm_35/while/add_1:z:0^lstm_35/while/NoOp*
T0*
_output_shapes
: 2
lstm_35/while/Identity?
lstm_35/while/Identity_1Identity.lstm_35_while_lstm_35_while_maximum_iterations^lstm_35/while/NoOp*
T0*
_output_shapes
: 2
lstm_35/while/Identity_1?
lstm_35/while/Identity_2Identitylstm_35/while/add:z:0^lstm_35/while/NoOp*
T0*
_output_shapes
: 2
lstm_35/while/Identity_2?
lstm_35/while/Identity_3IdentityBlstm_35/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_35/while/NoOp*
T0*
_output_shapes
: 2
lstm_35/while/Identity_3?
lstm_35/while/Identity_4Identity$lstm_35/while/lstm_cell_68/mul_2:z:0^lstm_35/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_35/while/Identity_4?
lstm_35/while/Identity_5Identity$lstm_35/while/lstm_cell_68/add_1:z:0^lstm_35/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_35/while/Identity_5?
lstm_35/while/NoOpNoOp2^lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOp1^lstm_35/while/lstm_cell_68/MatMul/ReadVariableOp3^lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_35/while/NoOp"9
lstm_35_while_identitylstm_35/while/Identity:output:0"=
lstm_35_while_identity_1!lstm_35/while/Identity_1:output:0"=
lstm_35_while_identity_2!lstm_35/while/Identity_2:output:0"=
lstm_35_while_identity_3!lstm_35/while/Identity_3:output:0"=
lstm_35_while_identity_4!lstm_35/while/Identity_4:output:0"=
lstm_35_while_identity_5!lstm_35/while/Identity_5:output:0"P
%lstm_35_while_lstm_35_strided_slice_1'lstm_35_while_lstm_35_strided_slice_1_0"z
:lstm_35_while_lstm_cell_68_biasadd_readvariableop_resource<lstm_35_while_lstm_cell_68_biasadd_readvariableop_resource_0"|
;lstm_35_while_lstm_cell_68_matmul_1_readvariableop_resource=lstm_35_while_lstm_cell_68_matmul_1_readvariableop_resource_0"x
9lstm_35_while_lstm_cell_68_matmul_readvariableop_resource;lstm_35_while_lstm_cell_68_matmul_readvariableop_resource_0"?
alstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensorclstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2f
1lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOp1lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOp2d
0lstm_35/while/lstm_cell_68/MatMul/ReadVariableOp0lstm_35/while/lstm_cell_68/MatMul/ReadVariableOp2h
2lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOp2lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
e
I__inference_activation_23_layer_call_and_return_conditional_losses_195118

inputs
identityZ
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_195380

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?$
?
I__inference_sequential_11_layer_call_and_return_conditional_losses_192250
lstm_33_input 
lstm_33_192216:$ 
lstm_33_192218:	$
lstm_33_192220:$ 
lstm_34_192223:	@ 
lstm_34_192225:@
lstm_34_192227:@!
lstm_35_192230:	?!
lstm_35_192232:	 ?
lstm_35_192234:	?!
dense_22_192237:  
dense_22_192239: !
dense_23_192243: 
dense_23_192245:
identity?? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?lstm_33/StatefulPartitionedCall?lstm_34/StatefulPartitionedCall?lstm_35/StatefulPartitionedCall?
lstm_33/StatefulPartitionedCallStatefulPartitionedCalllstm_33_inputlstm_33_192216lstm_33_192218lstm_33_192220*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????		*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_1920372!
lstm_33/StatefulPartitionedCall?
lstm_34/StatefulPartitionedCallStatefulPartitionedCall(lstm_33/StatefulPartitionedCall:output:0lstm_34_192223lstm_34_192225lstm_34_192227*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_1918722!
lstm_34/StatefulPartitionedCall?
lstm_35/StatefulPartitionedCallStatefulPartitionedCall(lstm_34/StatefulPartitionedCall:output:0lstm_35_192230lstm_35_192232lstm_35_192234*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_35_layer_call_and_return_conditional_losses_1917072!
lstm_35/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall(lstm_35/StatefulPartitionedCall:output:0dense_22_192237dense_22_192239*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_1914542"
 dense_22/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_22_layer_call_and_return_conditional_losses_1914652
activation_22/PartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0dense_23_192243dense_23_192245*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_1914772"
 dense_23/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall)dense_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_23_layer_call_and_return_conditional_losses_1914872
activation_23/PartitionedCall?
IdentityIdentity&activation_23/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall ^lstm_33/StatefulPartitionedCall ^lstm_34/StatefulPartitionedCall ^lstm_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????	: : : : : : : : : : : : : 2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2B
lstm_33/StatefulPartitionedCalllstm_33/StatefulPartitionedCall2B
lstm_34/StatefulPartitionedCalllstm_34/StatefulPartitionedCall2B
lstm_35/StatefulPartitionedCalllstm_35/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????	
'
_user_specified_namelstm_33_input
?
?
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_195282

inputs
states_0
states_10
matmul_readvariableop_resource:	@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????	:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
??
?
while_body_193745
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_66_matmul_readvariableop_resource_0:$G
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:	$B
4while_lstm_cell_66_biasadd_readvariableop_resource_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_66_matmul_readvariableop_resource:$E
3while_lstm_cell_66_matmul_1_readvariableop_resource:	$@
2while_lstm_cell_66_biasadd_readvariableop_resource:$??)while/lstm_cell_66/BiasAdd/ReadVariableOp?(while/lstm_cell_66/MatMul/ReadVariableOp?*while/lstm_cell_66/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes

:$*
dtype02*
(while/lstm_cell_66/MatMul/ReadVariableOp?
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/MatMul?
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02,
*while/lstm_cell_66/MatMul_1/ReadVariableOp?
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/MatMul_1?
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/add?
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02+
)while/lstm_cell_66/BiasAdd/ReadVariableOp?
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/BiasAdd?
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dim?
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
while/lstm_cell_66/split?
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Sigmoid?
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Sigmoid_1?
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/mul?
while/lstm_cell_66/ReluRelu!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Relu?
while/lstm_cell_66/mul_1Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/mul_1?
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/add_1?
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Sigmoid_2?
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Relu_1?
while/lstm_cell_66/mul_2Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_66/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?U
?
C__inference_lstm_33_layer_call_and_return_conditional_losses_193400
inputs_0=
+lstm_cell_66_matmul_readvariableop_resource:$?
-lstm_cell_66_matmul_1_readvariableop_resource:	$:
,lstm_cell_66_biasadd_readvariableop_resource:$
identity??#lstm_cell_66/BiasAdd/ReadVariableOp?"lstm_cell_66/MatMul/ReadVariableOp?$lstm_cell_66/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????	2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????	2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource*
_output_shapes

:$*
dtype02$
"lstm_cell_66/MatMul/ReadVariableOp?
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/MatMul?
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02&
$lstm_cell_66/MatMul_1/ReadVariableOp?
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/MatMul_1?
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/add?
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02%
#lstm_cell_66/BiasAdd/ReadVariableOp?
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/BiasAdd~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dim?
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_cell_66/split?
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Sigmoid?
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Sigmoid_1?
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/mul}
lstm_cell_66/ReluRelulstm_cell_66/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Relu?
lstm_cell_66/mul_1Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/mul_1?
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/add_1?
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Sigmoid_2|
lstm_cell_66/Relu_1Relulstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Relu_1?
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_193316*
condR
while_cond_193315*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????	*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????	2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????	2

Identity?
NoOpNoOp$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
-__inference_lstm_cell_67_layer_call_fn_195250

inputs
states_0
states_1
unknown:	@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_1900042
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????	:?????????:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
?U
?
C__inference_lstm_33_layer_call_and_return_conditional_losses_192037

inputs=
+lstm_cell_66_matmul_readvariableop_resource:$?
-lstm_cell_66_matmul_1_readvariableop_resource:	$:
,lstm_cell_66_biasadd_readvariableop_resource:$
identity??#lstm_cell_66/BiasAdd/ReadVariableOp?"lstm_cell_66/MatMul/ReadVariableOp?$lstm_cell_66/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????	2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????	2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource*
_output_shapes

:$*
dtype02$
"lstm_cell_66/MatMul/ReadVariableOp?
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/MatMul?
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02&
$lstm_cell_66/MatMul_1/ReadVariableOp?
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/MatMul_1?
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/add?
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02%
#lstm_cell_66/BiasAdd/ReadVariableOp?
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/BiasAdd~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dim?
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_cell_66/split?
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Sigmoid?
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Sigmoid_1?
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/mul}
lstm_cell_66/ReluRelulstm_cell_66/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Relu?
lstm_cell_66/mul_1Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/mul_1?
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/add_1?
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Sigmoid_2|
lstm_cell_66/Relu_1Relulstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Relu_1?
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_191953*
condR
while_cond_191952*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	?????????	*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????		2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????		2

Identity?
NoOpNoOp$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????	: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
??
?
while_body_194218
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_67_matmul_readvariableop_resource_0:	@G
5while_lstm_cell_67_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_67_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_67_matmul_readvariableop_resource:	@E
3while_lstm_cell_67_matmul_1_readvariableop_resource:@@
2while_lstm_cell_67_biasadd_readvariableop_resource:@??)while/lstm_cell_67/BiasAdd/ReadVariableOp?(while/lstm_cell_67/MatMul/ReadVariableOp?*while/lstm_cell_67/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_67_matmul_readvariableop_resource_0*
_output_shapes

:	@*
dtype02*
(while/lstm_cell_67/MatMul/ReadVariableOp?
while/lstm_cell_67/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/MatMul?
*while/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_67_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_67/MatMul_1/ReadVariableOp?
while/lstm_cell_67/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/MatMul_1?
while/lstm_cell_67/addAddV2#while/lstm_cell_67/MatMul:product:0%while/lstm_cell_67/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/add?
)while/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_67_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_67/BiasAdd/ReadVariableOp?
while/lstm_cell_67/BiasAddBiasAddwhile/lstm_cell_67/add:z:01while/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/BiasAdd?
"while/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_67/split/split_dim?
while/lstm_cell_67/splitSplit+while/lstm_cell_67/split/split_dim:output:0#while/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/lstm_cell_67/split?
while/lstm_cell_67/SigmoidSigmoid!while/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Sigmoid?
while/lstm_cell_67/Sigmoid_1Sigmoid!while/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Sigmoid_1?
while/lstm_cell_67/mulMul while/lstm_cell_67/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/mul?
while/lstm_cell_67/ReluRelu!while/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Relu?
while/lstm_cell_67/mul_1Mulwhile/lstm_cell_67/Sigmoid:y:0%while/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/mul_1?
while/lstm_cell_67/add_1AddV2while/lstm_cell_67/mul:z:0while/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/add_1?
while/lstm_cell_67/Sigmoid_2Sigmoid!while/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Sigmoid_2?
while/lstm_cell_67/Relu_1Reluwhile/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Relu_1?
while/lstm_cell_67/mul_2Mul while/lstm_cell_67/Sigmoid_2:y:0'while/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_67/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_67/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_67/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_67/BiasAdd/ReadVariableOp)^while/lstm_cell_67/MatMul/ReadVariableOp+^while/lstm_cell_67/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_67_biasadd_readvariableop_resource4while_lstm_cell_67_biasadd_readvariableop_resource_0"l
3while_lstm_cell_67_matmul_1_readvariableop_resource5while_lstm_cell_67_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_67_matmul_readvariableop_resource3while_lstm_cell_67_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_67/BiasAdd/ReadVariableOp)while/lstm_cell_67/BiasAdd/ReadVariableOp2T
(while/lstm_cell_67/MatMul/ReadVariableOp(while/lstm_cell_67/MatMul/ReadVariableOp2X
*while/lstm_cell_67/MatMul_1/ReadVariableOp*while/lstm_cell_67/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?^
?
'sequential_11_lstm_34_while_body_188957H
Dsequential_11_lstm_34_while_sequential_11_lstm_34_while_loop_counterN
Jsequential_11_lstm_34_while_sequential_11_lstm_34_while_maximum_iterations+
'sequential_11_lstm_34_while_placeholder-
)sequential_11_lstm_34_while_placeholder_1-
)sequential_11_lstm_34_while_placeholder_2-
)sequential_11_lstm_34_while_placeholder_3G
Csequential_11_lstm_34_while_sequential_11_lstm_34_strided_slice_1_0?
sequential_11_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_11_lstm_34_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_11_lstm_34_while_lstm_cell_67_matmul_readvariableop_resource_0:	@]
Ksequential_11_lstm_34_while_lstm_cell_67_matmul_1_readvariableop_resource_0:@X
Jsequential_11_lstm_34_while_lstm_cell_67_biasadd_readvariableop_resource_0:@(
$sequential_11_lstm_34_while_identity*
&sequential_11_lstm_34_while_identity_1*
&sequential_11_lstm_34_while_identity_2*
&sequential_11_lstm_34_while_identity_3*
&sequential_11_lstm_34_while_identity_4*
&sequential_11_lstm_34_while_identity_5E
Asequential_11_lstm_34_while_sequential_11_lstm_34_strided_slice_1?
}sequential_11_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_11_lstm_34_tensorarrayunstack_tensorlistfromtensorY
Gsequential_11_lstm_34_while_lstm_cell_67_matmul_readvariableop_resource:	@[
Isequential_11_lstm_34_while_lstm_cell_67_matmul_1_readvariableop_resource:@V
Hsequential_11_lstm_34_while_lstm_cell_67_biasadd_readvariableop_resource:@???sequential_11/lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOp?>sequential_11/lstm_34/while/lstm_cell_67/MatMul/ReadVariableOp?@sequential_11/lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOp?
Msequential_11/lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2O
Msequential_11/lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shape?
?sequential_11/lstm_34/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_11_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_11_lstm_34_tensorarrayunstack_tensorlistfromtensor_0'sequential_11_lstm_34_while_placeholderVsequential_11/lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype02A
?sequential_11/lstm_34/while/TensorArrayV2Read/TensorListGetItem?
>sequential_11/lstm_34/while/lstm_cell_67/MatMul/ReadVariableOpReadVariableOpIsequential_11_lstm_34_while_lstm_cell_67_matmul_readvariableop_resource_0*
_output_shapes

:	@*
dtype02@
>sequential_11/lstm_34/while/lstm_cell_67/MatMul/ReadVariableOp?
/sequential_11/lstm_34/while/lstm_cell_67/MatMulMatMulFsequential_11/lstm_34/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_11/lstm_34/while/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@21
/sequential_11/lstm_34/while/lstm_cell_67/MatMul?
@sequential_11/lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOpKsequential_11_lstm_34_while_lstm_cell_67_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02B
@sequential_11/lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOp?
1sequential_11/lstm_34/while/lstm_cell_67/MatMul_1MatMul)sequential_11_lstm_34_while_placeholder_2Hsequential_11/lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@23
1sequential_11/lstm_34/while/lstm_cell_67/MatMul_1?
,sequential_11/lstm_34/while/lstm_cell_67/addAddV29sequential_11/lstm_34/while/lstm_cell_67/MatMul:product:0;sequential_11/lstm_34/while/lstm_cell_67/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2.
,sequential_11/lstm_34/while/lstm_cell_67/add?
?sequential_11/lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOpJsequential_11_lstm_34_while_lstm_cell_67_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02A
?sequential_11/lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOp?
0sequential_11/lstm_34/while/lstm_cell_67/BiasAddBiasAdd0sequential_11/lstm_34/while/lstm_cell_67/add:z:0Gsequential_11/lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@22
0sequential_11/lstm_34/while/lstm_cell_67/BiasAdd?
8sequential_11/lstm_34/while/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_11/lstm_34/while/lstm_cell_67/split/split_dim?
.sequential_11/lstm_34/while/lstm_cell_67/splitSplitAsequential_11/lstm_34/while/lstm_cell_67/split/split_dim:output:09sequential_11/lstm_34/while/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split20
.sequential_11/lstm_34/while/lstm_cell_67/split?
0sequential_11/lstm_34/while/lstm_cell_67/SigmoidSigmoid7sequential_11/lstm_34/while/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:?????????22
0sequential_11/lstm_34/while/lstm_cell_67/Sigmoid?
2sequential_11/lstm_34/while/lstm_cell_67/Sigmoid_1Sigmoid7sequential_11/lstm_34/while/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:?????????24
2sequential_11/lstm_34/while/lstm_cell_67/Sigmoid_1?
,sequential_11/lstm_34/while/lstm_cell_67/mulMul6sequential_11/lstm_34/while/lstm_cell_67/Sigmoid_1:y:0)sequential_11_lstm_34_while_placeholder_3*
T0*'
_output_shapes
:?????????2.
,sequential_11/lstm_34/while/lstm_cell_67/mul?
-sequential_11/lstm_34/while/lstm_cell_67/ReluRelu7sequential_11/lstm_34/while/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:?????????2/
-sequential_11/lstm_34/while/lstm_cell_67/Relu?
.sequential_11/lstm_34/while/lstm_cell_67/mul_1Mul4sequential_11/lstm_34/while/lstm_cell_67/Sigmoid:y:0;sequential_11/lstm_34/while/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:?????????20
.sequential_11/lstm_34/while/lstm_cell_67/mul_1?
.sequential_11/lstm_34/while/lstm_cell_67/add_1AddV20sequential_11/lstm_34/while/lstm_cell_67/mul:z:02sequential_11/lstm_34/while/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:?????????20
.sequential_11/lstm_34/while/lstm_cell_67/add_1?
2sequential_11/lstm_34/while/lstm_cell_67/Sigmoid_2Sigmoid7sequential_11/lstm_34/while/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:?????????24
2sequential_11/lstm_34/while/lstm_cell_67/Sigmoid_2?
/sequential_11/lstm_34/while/lstm_cell_67/Relu_1Relu2sequential_11/lstm_34/while/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:?????????21
/sequential_11/lstm_34/while/lstm_cell_67/Relu_1?
.sequential_11/lstm_34/while/lstm_cell_67/mul_2Mul6sequential_11/lstm_34/while/lstm_cell_67/Sigmoid_2:y:0=sequential_11/lstm_34/while/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:?????????20
.sequential_11/lstm_34/while/lstm_cell_67/mul_2?
@sequential_11/lstm_34/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_11_lstm_34_while_placeholder_1'sequential_11_lstm_34_while_placeholder2sequential_11/lstm_34/while/lstm_cell_67/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_11/lstm_34/while/TensorArrayV2Write/TensorListSetItem?
!sequential_11/lstm_34/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_11/lstm_34/while/add/y?
sequential_11/lstm_34/while/addAddV2'sequential_11_lstm_34_while_placeholder*sequential_11/lstm_34/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_11/lstm_34/while/add?
#sequential_11/lstm_34/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_11/lstm_34/while/add_1/y?
!sequential_11/lstm_34/while/add_1AddV2Dsequential_11_lstm_34_while_sequential_11_lstm_34_while_loop_counter,sequential_11/lstm_34/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_11/lstm_34/while/add_1?
$sequential_11/lstm_34/while/IdentityIdentity%sequential_11/lstm_34/while/add_1:z:0!^sequential_11/lstm_34/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_11/lstm_34/while/Identity?
&sequential_11/lstm_34/while/Identity_1IdentityJsequential_11_lstm_34_while_sequential_11_lstm_34_while_maximum_iterations!^sequential_11/lstm_34/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_11/lstm_34/while/Identity_1?
&sequential_11/lstm_34/while/Identity_2Identity#sequential_11/lstm_34/while/add:z:0!^sequential_11/lstm_34/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_11/lstm_34/while/Identity_2?
&sequential_11/lstm_34/while/Identity_3IdentityPsequential_11/lstm_34/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_11/lstm_34/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_11/lstm_34/while/Identity_3?
&sequential_11/lstm_34/while/Identity_4Identity2sequential_11/lstm_34/while/lstm_cell_67/mul_2:z:0!^sequential_11/lstm_34/while/NoOp*
T0*'
_output_shapes
:?????????2(
&sequential_11/lstm_34/while/Identity_4?
&sequential_11/lstm_34/while/Identity_5Identity2sequential_11/lstm_34/while/lstm_cell_67/add_1:z:0!^sequential_11/lstm_34/while/NoOp*
T0*'
_output_shapes
:?????????2(
&sequential_11/lstm_34/while/Identity_5?
 sequential_11/lstm_34/while/NoOpNoOp@^sequential_11/lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOp?^sequential_11/lstm_34/while/lstm_cell_67/MatMul/ReadVariableOpA^sequential_11/lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_11/lstm_34/while/NoOp"U
$sequential_11_lstm_34_while_identity-sequential_11/lstm_34/while/Identity:output:0"Y
&sequential_11_lstm_34_while_identity_1/sequential_11/lstm_34/while/Identity_1:output:0"Y
&sequential_11_lstm_34_while_identity_2/sequential_11/lstm_34/while/Identity_2:output:0"Y
&sequential_11_lstm_34_while_identity_3/sequential_11/lstm_34/while/Identity_3:output:0"Y
&sequential_11_lstm_34_while_identity_4/sequential_11/lstm_34/while/Identity_4:output:0"Y
&sequential_11_lstm_34_while_identity_5/sequential_11/lstm_34/while/Identity_5:output:0"?
Hsequential_11_lstm_34_while_lstm_cell_67_biasadd_readvariableop_resourceJsequential_11_lstm_34_while_lstm_cell_67_biasadd_readvariableop_resource_0"?
Isequential_11_lstm_34_while_lstm_cell_67_matmul_1_readvariableop_resourceKsequential_11_lstm_34_while_lstm_cell_67_matmul_1_readvariableop_resource_0"?
Gsequential_11_lstm_34_while_lstm_cell_67_matmul_readvariableop_resourceIsequential_11_lstm_34_while_lstm_cell_67_matmul_readvariableop_resource_0"?
Asequential_11_lstm_34_while_sequential_11_lstm_34_strided_slice_1Csequential_11_lstm_34_while_sequential_11_lstm_34_strided_slice_1_0"?
}sequential_11_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_11_lstm_34_tensorarrayunstack_tensorlistfromtensorsequential_11_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_11_lstm_34_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2?
?sequential_11/lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOp?sequential_11/lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOp2?
>sequential_11/lstm_34/while/lstm_cell_67/MatMul/ReadVariableOp>sequential_11/lstm_34/while/lstm_cell_67/MatMul/ReadVariableOp2?
@sequential_11/lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOp@sequential_11/lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
??
?
while_body_193459
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_66_matmul_readvariableop_resource_0:$G
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:	$B
4while_lstm_cell_66_biasadd_readvariableop_resource_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_66_matmul_readvariableop_resource:$E
3while_lstm_cell_66_matmul_1_readvariableop_resource:	$@
2while_lstm_cell_66_biasadd_readvariableop_resource:$??)while/lstm_cell_66/BiasAdd/ReadVariableOp?(while/lstm_cell_66/MatMul/ReadVariableOp?*while/lstm_cell_66/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes

:$*
dtype02*
(while/lstm_cell_66/MatMul/ReadVariableOp?
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/MatMul?
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02,
*while/lstm_cell_66/MatMul_1/ReadVariableOp?
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/MatMul_1?
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/add?
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02+
)while/lstm_cell_66/BiasAdd/ReadVariableOp?
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/BiasAdd?
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dim?
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
while/lstm_cell_66/split?
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Sigmoid?
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Sigmoid_1?
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/mul?
while/lstm_cell_66/ReluRelu!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Relu?
while/lstm_cell_66/mul_1Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/mul_1?
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/add_1?
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Sigmoid_2?
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Relu_1?
while/lstm_cell_66/mul_2Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_66/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?
J
.__inference_activation_23_layer_call_fn_195114

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_23_layer_call_and_return_conditional_losses_1914872
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?

lstm_34_while_body_192977,
(lstm_34_while_lstm_34_while_loop_counter2
.lstm_34_while_lstm_34_while_maximum_iterations
lstm_34_while_placeholder
lstm_34_while_placeholder_1
lstm_34_while_placeholder_2
lstm_34_while_placeholder_3+
'lstm_34_while_lstm_34_strided_slice_1_0g
clstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_34_while_lstm_cell_67_matmul_readvariableop_resource_0:	@O
=lstm_34_while_lstm_cell_67_matmul_1_readvariableop_resource_0:@J
<lstm_34_while_lstm_cell_67_biasadd_readvariableop_resource_0:@
lstm_34_while_identity
lstm_34_while_identity_1
lstm_34_while_identity_2
lstm_34_while_identity_3
lstm_34_while_identity_4
lstm_34_while_identity_5)
%lstm_34_while_lstm_34_strided_slice_1e
alstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensorK
9lstm_34_while_lstm_cell_67_matmul_readvariableop_resource:	@M
;lstm_34_while_lstm_cell_67_matmul_1_readvariableop_resource:@H
:lstm_34_while_lstm_cell_67_biasadd_readvariableop_resource:@??1lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOp?0lstm_34/while/lstm_cell_67/MatMul/ReadVariableOp?2lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOp?
?lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2A
?lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_34/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensor_0lstm_34_while_placeholderHlstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype023
1lstm_34/while/TensorArrayV2Read/TensorListGetItem?
0lstm_34/while/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp;lstm_34_while_lstm_cell_67_matmul_readvariableop_resource_0*
_output_shapes

:	@*
dtype022
0lstm_34/while/lstm_cell_67/MatMul/ReadVariableOp?
!lstm_34/while/lstm_cell_67/MatMulMatMul8lstm_34/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_34/while/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2#
!lstm_34/while/lstm_cell_67/MatMul?
2lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp=lstm_34_while_lstm_cell_67_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOp?
#lstm_34/while/lstm_cell_67/MatMul_1MatMullstm_34_while_placeholder_2:lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2%
#lstm_34/while/lstm_cell_67/MatMul_1?
lstm_34/while/lstm_cell_67/addAddV2+lstm_34/while/lstm_cell_67/MatMul:product:0-lstm_34/while/lstm_cell_67/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2 
lstm_34/while/lstm_cell_67/add?
1lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp<lstm_34_while_lstm_cell_67_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype023
1lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOp?
"lstm_34/while/lstm_cell_67/BiasAddBiasAdd"lstm_34/while/lstm_cell_67/add:z:09lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2$
"lstm_34/while/lstm_cell_67/BiasAdd?
*lstm_34/while/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_34/while/lstm_cell_67/split/split_dim?
 lstm_34/while/lstm_cell_67/splitSplit3lstm_34/while/lstm_cell_67/split/split_dim:output:0+lstm_34/while/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2"
 lstm_34/while/lstm_cell_67/split?
"lstm_34/while/lstm_cell_67/SigmoidSigmoid)lstm_34/while/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:?????????2$
"lstm_34/while/lstm_cell_67/Sigmoid?
$lstm_34/while/lstm_cell_67/Sigmoid_1Sigmoid)lstm_34/while/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:?????????2&
$lstm_34/while/lstm_cell_67/Sigmoid_1?
lstm_34/while/lstm_cell_67/mulMul(lstm_34/while/lstm_cell_67/Sigmoid_1:y:0lstm_34_while_placeholder_3*
T0*'
_output_shapes
:?????????2 
lstm_34/while/lstm_cell_67/mul?
lstm_34/while/lstm_cell_67/ReluRelu)lstm_34/while/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:?????????2!
lstm_34/while/lstm_cell_67/Relu?
 lstm_34/while/lstm_cell_67/mul_1Mul&lstm_34/while/lstm_cell_67/Sigmoid:y:0-lstm_34/while/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:?????????2"
 lstm_34/while/lstm_cell_67/mul_1?
 lstm_34/while/lstm_cell_67/add_1AddV2"lstm_34/while/lstm_cell_67/mul:z:0$lstm_34/while/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:?????????2"
 lstm_34/while/lstm_cell_67/add_1?
$lstm_34/while/lstm_cell_67/Sigmoid_2Sigmoid)lstm_34/while/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:?????????2&
$lstm_34/while/lstm_cell_67/Sigmoid_2?
!lstm_34/while/lstm_cell_67/Relu_1Relu$lstm_34/while/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:?????????2#
!lstm_34/while/lstm_cell_67/Relu_1?
 lstm_34/while/lstm_cell_67/mul_2Mul(lstm_34/while/lstm_cell_67/Sigmoid_2:y:0/lstm_34/while/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2"
 lstm_34/while/lstm_cell_67/mul_2?
2lstm_34/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_34_while_placeholder_1lstm_34_while_placeholder$lstm_34/while/lstm_cell_67/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_34/while/TensorArrayV2Write/TensorListSetIteml
lstm_34/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_34/while/add/y?
lstm_34/while/addAddV2lstm_34_while_placeholderlstm_34/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_34/while/addp
lstm_34/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_34/while/add_1/y?
lstm_34/while/add_1AddV2(lstm_34_while_lstm_34_while_loop_counterlstm_34/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_34/while/add_1?
lstm_34/while/IdentityIdentitylstm_34/while/add_1:z:0^lstm_34/while/NoOp*
T0*
_output_shapes
: 2
lstm_34/while/Identity?
lstm_34/while/Identity_1Identity.lstm_34_while_lstm_34_while_maximum_iterations^lstm_34/while/NoOp*
T0*
_output_shapes
: 2
lstm_34/while/Identity_1?
lstm_34/while/Identity_2Identitylstm_34/while/add:z:0^lstm_34/while/NoOp*
T0*
_output_shapes
: 2
lstm_34/while/Identity_2?
lstm_34/while/Identity_3IdentityBlstm_34/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_34/while/NoOp*
T0*
_output_shapes
: 2
lstm_34/while/Identity_3?
lstm_34/while/Identity_4Identity$lstm_34/while/lstm_cell_67/mul_2:z:0^lstm_34/while/NoOp*
T0*'
_output_shapes
:?????????2
lstm_34/while/Identity_4?
lstm_34/while/Identity_5Identity$lstm_34/while/lstm_cell_67/add_1:z:0^lstm_34/while/NoOp*
T0*'
_output_shapes
:?????????2
lstm_34/while/Identity_5?
lstm_34/while/NoOpNoOp2^lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOp1^lstm_34/while/lstm_cell_67/MatMul/ReadVariableOp3^lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_34/while/NoOp"9
lstm_34_while_identitylstm_34/while/Identity:output:0"=
lstm_34_while_identity_1!lstm_34/while/Identity_1:output:0"=
lstm_34_while_identity_2!lstm_34/while/Identity_2:output:0"=
lstm_34_while_identity_3!lstm_34/while/Identity_3:output:0"=
lstm_34_while_identity_4!lstm_34/while/Identity_4:output:0"=
lstm_34_while_identity_5!lstm_34/while/Identity_5:output:0"P
%lstm_34_while_lstm_34_strided_slice_1'lstm_34_while_lstm_34_strided_slice_1_0"z
:lstm_34_while_lstm_cell_67_biasadd_readvariableop_resource<lstm_34_while_lstm_cell_67_biasadd_readvariableop_resource_0"|
;lstm_34_while_lstm_cell_67_matmul_1_readvariableop_resource=lstm_34_while_lstm_cell_67_matmul_1_readvariableop_resource_0"x
9lstm_34_while_lstm_cell_67_matmul_readvariableop_resource;lstm_34_while_lstm_cell_67_matmul_readvariableop_resource_0"?
alstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensorclstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2f
1lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOp1lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOp2d
0lstm_34/while/lstm_cell_67/MatMul/ReadVariableOp0lstm_34/while/lstm_cell_67/MatMul/ReadVariableOp2h
2lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOp2lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_lstm_cell_66_layer_call_fn_195135

inputs
states_0
states_1
unknown:$
	unknown_0:	$
	unknown_1:$
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????	:?????????	:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_1892602
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????	:?????????	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????	
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????	
"
_user_specified_name
states/1
?
?
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_190602

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
??
?
C__inference_lstm_35_layer_call_and_return_conditional_losses_190539

inputs&
lstm_cell_68_190457:	?&
lstm_cell_68_190459:	 ?"
lstm_cell_68_190461:	?
identity??$lstm_cell_68/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_68/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_68_190457lstm_cell_68_190459lstm_cell_68_190461*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_1904562&
$lstm_cell_68/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_68_190457lstm_cell_68_190459lstm_cell_68_190461*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_190470*
condR
while_cond_190469*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity}
NoOpNoOp%^lstm_cell_68/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_68/StatefulPartitionedCall$lstm_cell_68/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_191051
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_191051___redundant_placeholder04
0while_while_cond_191051___redundant_placeholder14
0while_while_cond_191051___redundant_placeholder24
0while_while_cond_191051___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_194217
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_194217___redundant_placeholder04
0while_while_cond_194217___redundant_placeholder14
0while_while_cond_194217___redundant_placeholder24
0while_while_cond_194217___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?U
?
C__inference_lstm_35_layer_call_and_return_conditional_losses_194918

inputs>
+lstm_cell_68_matmul_readvariableop_resource:	?@
-lstm_cell_68_matmul_1_readvariableop_resource:	 ?;
,lstm_cell_68_biasadd_readvariableop_resource:	?
identity??#lstm_cell_68/BiasAdd/ReadVariableOp?"lstm_cell_68/MatMul/ReadVariableOp?$lstm_cell_68/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_68/MatMul/ReadVariableOp?
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/MatMul?
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02&
$lstm_cell_68/MatMul_1/ReadVariableOp?
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/MatMul_1?
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/add?
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_68/BiasAdd/ReadVariableOp?
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/BiasAdd~
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_68/split/split_dim?
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_68/split?
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Sigmoid?
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Sigmoid_1?
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/mul}
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Relu?
lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/mul_1?
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/add_1?
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Sigmoid_2|
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Relu_1?
lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_194834*
condR
while_cond_194833*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????	: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?$
?
I__inference_sequential_11_layer_call_and_return_conditional_losses_192116

inputs 
lstm_33_192082:$ 
lstm_33_192084:	$
lstm_33_192086:$ 
lstm_34_192089:	@ 
lstm_34_192091:@
lstm_34_192093:@!
lstm_35_192096:	?!
lstm_35_192098:	 ?
lstm_35_192100:	?!
dense_22_192103:  
dense_22_192105: !
dense_23_192109: 
dense_23_192111:
identity?? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?lstm_33/StatefulPartitionedCall?lstm_34/StatefulPartitionedCall?lstm_35/StatefulPartitionedCall?
lstm_33/StatefulPartitionedCallStatefulPartitionedCallinputslstm_33_192082lstm_33_192084lstm_33_192086*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????		*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_1920372!
lstm_33/StatefulPartitionedCall?
lstm_34/StatefulPartitionedCallStatefulPartitionedCall(lstm_33/StatefulPartitionedCall:output:0lstm_34_192089lstm_34_192091lstm_34_192093*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_1918722!
lstm_34/StatefulPartitionedCall?
lstm_35/StatefulPartitionedCallStatefulPartitionedCall(lstm_34/StatefulPartitionedCall:output:0lstm_35_192096lstm_35_192098lstm_35_192100*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_35_layer_call_and_return_conditional_losses_1917072!
lstm_35/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall(lstm_35/StatefulPartitionedCall:output:0dense_22_192103dense_22_192105*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_1914542"
 dense_22/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_22_layer_call_and_return_conditional_losses_1914652
activation_22/PartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0dense_23_192109dense_23_192111*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_1914772"
 dense_23/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall)dense_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_23_layer_call_and_return_conditional_losses_1914872
activation_23/PartitionedCall?
IdentityIdentity&activation_23/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall ^lstm_33/StatefulPartitionedCall ^lstm_34/StatefulPartitionedCall ^lstm_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????	: : : : : : : : : : : : : 2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2B
lstm_33/StatefulPartitionedCalllstm_33/StatefulPartitionedCall2B
lstm_34/StatefulPartitionedCalllstm_34/StatefulPartitionedCall2B
lstm_35/StatefulPartitionedCalllstm_35/StatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
??
?
C__inference_lstm_34_layer_call_and_return_conditional_losses_190143

inputs%
lstm_cell_67_190061:	@%
lstm_cell_67_190063:@!
lstm_cell_67_190065:@
identity??$lstm_cell_67/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????	2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_67/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_67_190061lstm_cell_67_190063lstm_cell_67_190065*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_1900042&
$lstm_cell_67/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_67_190061lstm_cell_67_190063lstm_cell_67_190065*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_190074*
condR
while_cond_190073*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2

Identity}
NoOpNoOp%^lstm_cell_67/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????	: : : 2L
$lstm_cell_67/StatefulPartitionedCall$lstm_cell_67/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????	
 
_user_specified_nameinputs
?
e
I__inference_activation_23_layer_call_and_return_conditional_losses_191487

inputs
identityZ
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_191622
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_191622___redundant_placeholder04
0while_while_cond_191622___redundant_placeholder14
0while_while_cond_191622___redundant_placeholder24
0while_while_cond_191622___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
-__inference_lstm_cell_67_layer_call_fn_195233

inputs
states_0
states_1
unknown:	@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_1898582
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????	:?????????:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
??
?
while_body_191953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_66_matmul_readvariableop_resource_0:$G
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:	$B
4while_lstm_cell_66_biasadd_readvariableop_resource_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_66_matmul_readvariableop_resource:$E
3while_lstm_cell_66_matmul_1_readvariableop_resource:	$@
2while_lstm_cell_66_biasadd_readvariableop_resource:$??)while/lstm_cell_66/BiasAdd/ReadVariableOp?(while/lstm_cell_66/MatMul/ReadVariableOp?*while/lstm_cell_66/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes

:$*
dtype02*
(while/lstm_cell_66/MatMul/ReadVariableOp?
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/MatMul?
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02,
*while/lstm_cell_66/MatMul_1/ReadVariableOp?
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/MatMul_1?
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/add?
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02+
)while/lstm_cell_66/BiasAdd/ReadVariableOp?
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/BiasAdd?
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dim?
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
while/lstm_cell_66/split?
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Sigmoid?
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Sigmoid_1?
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/mul?
while/lstm_cell_66/ReluRelu!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Relu?
while/lstm_cell_66/mul_1Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/mul_1?
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/add_1?
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Sigmoid_2?
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Relu_1?
while/lstm_cell_66/mul_2Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_66/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?%
?
while_body_190074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_67_190098_0:	@-
while_lstm_cell_67_190100_0:@)
while_lstm_cell_67_190102_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_67_190098:	@+
while_lstm_cell_67_190100:@'
while_lstm_cell_67_190102:@??*while/lstm_cell_67/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_67/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_67_190098_0while_lstm_cell_67_190100_0while_lstm_cell_67_190102_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_1900042,
*while/lstm_cell_67/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_67/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_67/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_67/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_67/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_67_190098while_lstm_cell_67_190098_0"8
while_lstm_cell_67_190100while_lstm_cell_67_190100_0"8
while_lstm_cell_67_190102while_lstm_cell_67_190102_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_67/StatefulPartitionedCall*while/lstm_cell_67/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?U
?
C__inference_lstm_33_layer_call_and_return_conditional_losses_193686

inputs=
+lstm_cell_66_matmul_readvariableop_resource:$?
-lstm_cell_66_matmul_1_readvariableop_resource:	$:
,lstm_cell_66_biasadd_readvariableop_resource:$
identity??#lstm_cell_66/BiasAdd/ReadVariableOp?"lstm_cell_66/MatMul/ReadVariableOp?$lstm_cell_66/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????	2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????	2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource*
_output_shapes

:$*
dtype02$
"lstm_cell_66/MatMul/ReadVariableOp?
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/MatMul?
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02&
$lstm_cell_66/MatMul_1/ReadVariableOp?
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/MatMul_1?
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/add?
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02%
#lstm_cell_66/BiasAdd/ReadVariableOp?
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/BiasAdd~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dim?
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_cell_66/split?
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Sigmoid?
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Sigmoid_1?
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/mul}
lstm_cell_66/ReluRelulstm_cell_66/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Relu?
lstm_cell_66/mul_1Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/mul_1?
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/add_1?
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Sigmoid_2|
lstm_cell_66/Relu_1Relulstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Relu_1?
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_193602*
condR
while_cond_193601*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	?????????	*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????		2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????		2

Identity?
NoOpNoOp$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????	: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
-__inference_lstm_cell_68_layer_call_fn_195331

inputs
states_0
states_1
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_1904562
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
(__inference_lstm_33_layer_call_fn_193257

inputs
unknown:$
	unknown_0:	$
	unknown_1:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????		*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_1920372
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????		2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
while_cond_189871
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_189871___redundant_placeholder04
0while_while_cond_189871___redundant_placeholder14
0while_while_cond_189871___redundant_placeholder24
0while_while_cond_189871___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?J
?

lstm_33_while_body_192404,
(lstm_33_while_lstm_33_while_loop_counter2
.lstm_33_while_lstm_33_while_maximum_iterations
lstm_33_while_placeholder
lstm_33_while_placeholder_1
lstm_33_while_placeholder_2
lstm_33_while_placeholder_3+
'lstm_33_while_lstm_33_strided_slice_1_0g
clstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_33_while_lstm_cell_66_matmul_readvariableop_resource_0:$O
=lstm_33_while_lstm_cell_66_matmul_1_readvariableop_resource_0:	$J
<lstm_33_while_lstm_cell_66_biasadd_readvariableop_resource_0:$
lstm_33_while_identity
lstm_33_while_identity_1
lstm_33_while_identity_2
lstm_33_while_identity_3
lstm_33_while_identity_4
lstm_33_while_identity_5)
%lstm_33_while_lstm_33_strided_slice_1e
alstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensorK
9lstm_33_while_lstm_cell_66_matmul_readvariableop_resource:$M
;lstm_33_while_lstm_cell_66_matmul_1_readvariableop_resource:	$H
:lstm_33_while_lstm_cell_66_biasadd_readvariableop_resource:$??1lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOp?0lstm_33/while/lstm_cell_66/MatMul/ReadVariableOp?2lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOp?
?lstm_33/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_33/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_33/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensor_0lstm_33_while_placeholderHlstm_33/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_33/while/TensorArrayV2Read/TensorListGetItem?
0lstm_33/while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp;lstm_33_while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes

:$*
dtype022
0lstm_33/while/lstm_cell_66/MatMul/ReadVariableOp?
!lstm_33/while/lstm_cell_66/MatMulMatMul8lstm_33/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_33/while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2#
!lstm_33/while/lstm_cell_66/MatMul?
2lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp=lstm_33_while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype024
2lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOp?
#lstm_33/while/lstm_cell_66/MatMul_1MatMullstm_33_while_placeholder_2:lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2%
#lstm_33/while/lstm_cell_66/MatMul_1?
lstm_33/while/lstm_cell_66/addAddV2+lstm_33/while/lstm_cell_66/MatMul:product:0-lstm_33/while/lstm_cell_66/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2 
lstm_33/while/lstm_cell_66/add?
1lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp<lstm_33_while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype023
1lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOp?
"lstm_33/while/lstm_cell_66/BiasAddBiasAdd"lstm_33/while/lstm_cell_66/add:z:09lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2$
"lstm_33/while/lstm_cell_66/BiasAdd?
*lstm_33/while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_33/while/lstm_cell_66/split/split_dim?
 lstm_33/while/lstm_cell_66/splitSplit3lstm_33/while/lstm_cell_66/split/split_dim:output:0+lstm_33/while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2"
 lstm_33/while/lstm_cell_66/split?
"lstm_33/while/lstm_cell_66/SigmoidSigmoid)lstm_33/while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:?????????	2$
"lstm_33/while/lstm_cell_66/Sigmoid?
$lstm_33/while/lstm_cell_66/Sigmoid_1Sigmoid)lstm_33/while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:?????????	2&
$lstm_33/while/lstm_cell_66/Sigmoid_1?
lstm_33/while/lstm_cell_66/mulMul(lstm_33/while/lstm_cell_66/Sigmoid_1:y:0lstm_33_while_placeholder_3*
T0*'
_output_shapes
:?????????	2 
lstm_33/while/lstm_cell_66/mul?
lstm_33/while/lstm_cell_66/ReluRelu)lstm_33/while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:?????????	2!
lstm_33/while/lstm_cell_66/Relu?
 lstm_33/while/lstm_cell_66/mul_1Mul&lstm_33/while/lstm_cell_66/Sigmoid:y:0-lstm_33/while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:?????????	2"
 lstm_33/while/lstm_cell_66/mul_1?
 lstm_33/while/lstm_cell_66/add_1AddV2"lstm_33/while/lstm_cell_66/mul:z:0$lstm_33/while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:?????????	2"
 lstm_33/while/lstm_cell_66/add_1?
$lstm_33/while/lstm_cell_66/Sigmoid_2Sigmoid)lstm_33/while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:?????????	2&
$lstm_33/while/lstm_cell_66/Sigmoid_2?
!lstm_33/while/lstm_cell_66/Relu_1Relu$lstm_33/while/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:?????????	2#
!lstm_33/while/lstm_cell_66/Relu_1?
 lstm_33/while/lstm_cell_66/mul_2Mul(lstm_33/while/lstm_cell_66/Sigmoid_2:y:0/lstm_33/while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2"
 lstm_33/while/lstm_cell_66/mul_2?
2lstm_33/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_33_while_placeholder_1lstm_33_while_placeholder$lstm_33/while/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_33/while/TensorArrayV2Write/TensorListSetIteml
lstm_33/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_33/while/add/y?
lstm_33/while/addAddV2lstm_33_while_placeholderlstm_33/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_33/while/addp
lstm_33/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_33/while/add_1/y?
lstm_33/while/add_1AddV2(lstm_33_while_lstm_33_while_loop_counterlstm_33/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_33/while/add_1?
lstm_33/while/IdentityIdentitylstm_33/while/add_1:z:0^lstm_33/while/NoOp*
T0*
_output_shapes
: 2
lstm_33/while/Identity?
lstm_33/while/Identity_1Identity.lstm_33_while_lstm_33_while_maximum_iterations^lstm_33/while/NoOp*
T0*
_output_shapes
: 2
lstm_33/while/Identity_1?
lstm_33/while/Identity_2Identitylstm_33/while/add:z:0^lstm_33/while/NoOp*
T0*
_output_shapes
: 2
lstm_33/while/Identity_2?
lstm_33/while/Identity_3IdentityBlstm_33/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_33/while/NoOp*
T0*
_output_shapes
: 2
lstm_33/while/Identity_3?
lstm_33/while/Identity_4Identity$lstm_33/while/lstm_cell_66/mul_2:z:0^lstm_33/while/NoOp*
T0*'
_output_shapes
:?????????	2
lstm_33/while/Identity_4?
lstm_33/while/Identity_5Identity$lstm_33/while/lstm_cell_66/add_1:z:0^lstm_33/while/NoOp*
T0*'
_output_shapes
:?????????	2
lstm_33/while/Identity_5?
lstm_33/while/NoOpNoOp2^lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOp1^lstm_33/while/lstm_cell_66/MatMul/ReadVariableOp3^lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_33/while/NoOp"9
lstm_33_while_identitylstm_33/while/Identity:output:0"=
lstm_33_while_identity_1!lstm_33/while/Identity_1:output:0"=
lstm_33_while_identity_2!lstm_33/while/Identity_2:output:0"=
lstm_33_while_identity_3!lstm_33/while/Identity_3:output:0"=
lstm_33_while_identity_4!lstm_33/while/Identity_4:output:0"=
lstm_33_while_identity_5!lstm_33/while/Identity_5:output:0"P
%lstm_33_while_lstm_33_strided_slice_1'lstm_33_while_lstm_33_strided_slice_1_0"z
:lstm_33_while_lstm_cell_66_biasadd_readvariableop_resource<lstm_33_while_lstm_cell_66_biasadd_readvariableop_resource_0"|
;lstm_33_while_lstm_cell_66_matmul_1_readvariableop_resource=lstm_33_while_lstm_cell_66_matmul_1_readvariableop_resource_0"x
9lstm_33_while_lstm_cell_66_matmul_readvariableop_resource;lstm_33_while_lstm_cell_66_matmul_readvariableop_resource_0"?
alstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensorclstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2f
1lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOp1lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOp2d
0lstm_33/while/lstm_cell_66/MatMul/ReadVariableOp0lstm_33/while/lstm_cell_66/MatMul/ReadVariableOp2h
2lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOp2lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?
?
'sequential_11_lstm_33_while_cond_188817H
Dsequential_11_lstm_33_while_sequential_11_lstm_33_while_loop_counterN
Jsequential_11_lstm_33_while_sequential_11_lstm_33_while_maximum_iterations+
'sequential_11_lstm_33_while_placeholder-
)sequential_11_lstm_33_while_placeholder_1-
)sequential_11_lstm_33_while_placeholder_2-
)sequential_11_lstm_33_while_placeholder_3J
Fsequential_11_lstm_33_while_less_sequential_11_lstm_33_strided_slice_1`
\sequential_11_lstm_33_while_sequential_11_lstm_33_while_cond_188817___redundant_placeholder0`
\sequential_11_lstm_33_while_sequential_11_lstm_33_while_cond_188817___redundant_placeholder1`
\sequential_11_lstm_33_while_sequential_11_lstm_33_while_cond_188817___redundant_placeholder2`
\sequential_11_lstm_33_while_sequential_11_lstm_33_while_cond_188817___redundant_placeholder3(
$sequential_11_lstm_33_while_identity
?
 sequential_11/lstm_33/while/LessLess'sequential_11_lstm_33_while_placeholderFsequential_11_lstm_33_while_less_sequential_11_lstm_33_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_11/lstm_33/while/Less?
$sequential_11/lstm_33/while/IdentityIdentity$sequential_11/lstm_33/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_11/lstm_33/while/Identity"U
$sequential_11_lstm_33_while_identity-sequential_11/lstm_33/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
?
(__inference_lstm_33_layer_call_fn_193246

inputs
unknown:$
	unknown_0:	$
	unknown_1:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????		*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_1911362
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????		2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
??
?
while_body_193602
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_66_matmul_readvariableop_resource_0:$G
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:	$B
4while_lstm_cell_66_biasadd_readvariableop_resource_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_66_matmul_readvariableop_resource:$E
3while_lstm_cell_66_matmul_1_readvariableop_resource:	$@
2while_lstm_cell_66_biasadd_readvariableop_resource:$??)while/lstm_cell_66/BiasAdd/ReadVariableOp?(while/lstm_cell_66/MatMul/ReadVariableOp?*while/lstm_cell_66/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes

:$*
dtype02*
(while/lstm_cell_66/MatMul/ReadVariableOp?
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/MatMul?
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02,
*while/lstm_cell_66/MatMul_1/ReadVariableOp?
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/MatMul_1?
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/add?
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02+
)while/lstm_cell_66/BiasAdd/ReadVariableOp?
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/BiasAdd?
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dim?
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
while/lstm_cell_66/split?
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Sigmoid?
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Sigmoid_1?
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/mul?
while/lstm_cell_66/ReluRelu!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Relu?
while/lstm_cell_66/mul_1Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/mul_1?
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/add_1?
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Sigmoid_2?
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Relu_1?
while/lstm_cell_66/mul_2Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_66/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
??
?
while_body_191352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_68_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:	 ?C
4while_lstm_cell_68_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_68_matmul_readvariableop_resource:	?F
3while_lstm_cell_68_matmul_1_readvariableop_resource:	 ?A
2while_lstm_cell_68_biasadd_readvariableop_resource:	???)while/lstm_cell_68/BiasAdd/ReadVariableOp?(while/lstm_cell_68/MatMul/ReadVariableOp?*while/lstm_cell_68/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_68/MatMul/ReadVariableOp?
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/MatMul?
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02,
*while/lstm_cell_68/MatMul_1/ReadVariableOp?
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/MatMul_1?
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/add?
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_68/BiasAdd/ReadVariableOp?
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/BiasAdd?
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_68/split/split_dim?
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_68/split?
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Sigmoid?
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Sigmoid_1?
while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/mul?
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Relu?
while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/mul_1?
while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/add_1?
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Sigmoid_2?
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Relu_1?
while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_lstm_35_layer_call_fn_194478

inputs
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_35_layer_call_and_return_conditional_losses_1914362
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?%
?
while_body_190672
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_68_190696_0:	?.
while_lstm_cell_68_190698_0:	 ?*
while_lstm_cell_68_190700_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_68_190696:	?,
while_lstm_cell_68_190698:	 ?(
while_lstm_cell_68_190700:	???*while/lstm_cell_68/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_68/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_68_190696_0while_lstm_cell_68_190698_0while_lstm_cell_68_190700_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_1906022,
*while/lstm_cell_68/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_68/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_68/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_68/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_68/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_68_190696while_lstm_cell_68_190696_0"8
while_lstm_cell_68_190698while_lstm_cell_68_190698_0"8
while_lstm_cell_68_190700while_lstm_cell_68_190700_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_68/StatefulPartitionedCall*while/lstm_cell_68/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
'sequential_11_lstm_35_while_cond_189095H
Dsequential_11_lstm_35_while_sequential_11_lstm_35_while_loop_counterN
Jsequential_11_lstm_35_while_sequential_11_lstm_35_while_maximum_iterations+
'sequential_11_lstm_35_while_placeholder-
)sequential_11_lstm_35_while_placeholder_1-
)sequential_11_lstm_35_while_placeholder_2-
)sequential_11_lstm_35_while_placeholder_3J
Fsequential_11_lstm_35_while_less_sequential_11_lstm_35_strided_slice_1`
\sequential_11_lstm_35_while_sequential_11_lstm_35_while_cond_189095___redundant_placeholder0`
\sequential_11_lstm_35_while_sequential_11_lstm_35_while_cond_189095___redundant_placeholder1`
\sequential_11_lstm_35_while_sequential_11_lstm_35_while_cond_189095___redundant_placeholder2`
\sequential_11_lstm_35_while_sequential_11_lstm_35_while_cond_189095___redundant_placeholder3(
$sequential_11_lstm_35_while_identity
?
 sequential_11/lstm_35/while/LessLess'sequential_11_lstm_35_while_placeholderFsequential_11_lstm_35_while_less_sequential_11_lstm_35_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_11/lstm_35/while/Less?
$sequential_11/lstm_35/while/IdentityIdentity$sequential_11/lstm_35/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_11/lstm_35/while/Identity"U
$sequential_11_lstm_35_while_identity-sequential_11/lstm_35/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
$__inference_signature_wrapper_192283
lstm_33_input
unknown:$
	unknown_0:	$
	unknown_1:$
	unknown_2:	@
	unknown_3:@
	unknown_4:@
	unknown_5:	?
	unknown_6:	 ?
	unknown_7:	?
	unknown_8:  
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_33_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_1891932
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????	: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????	
'
_user_specified_namelstm_33_input
?%
?
while_body_189274
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_66_189298_0:$-
while_lstm_cell_66_189300_0:	$)
while_lstm_cell_66_189302_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_66_189298:$+
while_lstm_cell_66_189300:	$'
while_lstm_cell_66_189302:$??*while/lstm_cell_66/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_66_189298_0while_lstm_cell_66_189300_0while_lstm_cell_66_189302_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????	:?????????	:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_1892602,
*while/lstm_cell_66/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_66/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_66/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_66/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_66/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_66_189298while_lstm_cell_66_189298_0"8
while_lstm_cell_66_189300while_lstm_cell_66_189300_0"8
while_lstm_cell_66_189302while_lstm_cell_66_189302_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2X
*while/lstm_cell_66/StatefulPartitionedCall*while/lstm_cell_66/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?$
?
I__inference_sequential_11_layer_call_and_return_conditional_losses_191490

inputs 
lstm_33_191137:$ 
lstm_33_191139:	$
lstm_33_191141:$ 
lstm_34_191287:	@ 
lstm_34_191289:@
lstm_34_191291:@!
lstm_35_191437:	?!
lstm_35_191439:	 ?
lstm_35_191441:	?!
dense_22_191455:  
dense_22_191457: !
dense_23_191478: 
dense_23_191480:
identity?? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?lstm_33/StatefulPartitionedCall?lstm_34/StatefulPartitionedCall?lstm_35/StatefulPartitionedCall?
lstm_33/StatefulPartitionedCallStatefulPartitionedCallinputslstm_33_191137lstm_33_191139lstm_33_191141*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????		*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_1911362!
lstm_33/StatefulPartitionedCall?
lstm_34/StatefulPartitionedCallStatefulPartitionedCall(lstm_33/StatefulPartitionedCall:output:0lstm_34_191287lstm_34_191289lstm_34_191291*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_1912862!
lstm_34/StatefulPartitionedCall?
lstm_35/StatefulPartitionedCallStatefulPartitionedCall(lstm_34/StatefulPartitionedCall:output:0lstm_35_191437lstm_35_191439lstm_35_191441*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_35_layer_call_and_return_conditional_losses_1914362!
lstm_35/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall(lstm_35/StatefulPartitionedCall:output:0dense_22_191455dense_22_191457*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_1914542"
 dense_22/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_22_layer_call_and_return_conditional_losses_1914652
activation_22/PartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0dense_23_191478dense_23_191480*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_1914772"
 dense_23/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall)dense_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_23_layer_call_and_return_conditional_losses_1914872
activation_23/PartitionedCall?
IdentityIdentity&activation_23/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall ^lstm_33/StatefulPartitionedCall ^lstm_34/StatefulPartitionedCall ^lstm_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????	: : : : : : : : : : : : : 2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2B
lstm_33/StatefulPartitionedCalllstm_33/StatefulPartitionedCall2B
lstm_34/StatefulPartitionedCalllstm_34/StatefulPartitionedCall2B
lstm_35/StatefulPartitionedCalllstm_35/StatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
while_cond_193315
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_193315___redundant_placeholder04
0while_while_cond_193315___redundant_placeholder14
0while_while_cond_193315___redundant_placeholder24
0while_while_cond_193315___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
?
(__inference_lstm_34_layer_call_fn_193862

inputs
unknown:	@
	unknown_0:@
	unknown_1:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_1912862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????		: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????		
 
_user_specified_nameinputs
??
?
C__inference_lstm_34_layer_call_and_return_conditional_losses_189941

inputs%
lstm_cell_67_189859:	@%
lstm_cell_67_189861:@!
lstm_cell_67_189863:@
identity??$lstm_cell_67/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????	2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_67/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_67_189859lstm_cell_67_189861lstm_cell_67_189863*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_1898582&
$lstm_cell_67/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_67_189859lstm_cell_67_189861lstm_cell_67_189863*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_189872*
condR
while_cond_189871*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2

Identity}
NoOpNoOp%^lstm_cell_67/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????	: : : 2L
$lstm_cell_67/StatefulPartitionedCall$lstm_cell_67/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????	
 
_user_specified_nameinputs
?U
?
C__inference_lstm_35_layer_call_and_return_conditional_losses_191436

inputs>
+lstm_cell_68_matmul_readvariableop_resource:	?@
-lstm_cell_68_matmul_1_readvariableop_resource:	 ?;
,lstm_cell_68_biasadd_readvariableop_resource:	?
identity??#lstm_cell_68/BiasAdd/ReadVariableOp?"lstm_cell_68/MatMul/ReadVariableOp?$lstm_cell_68/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_68/MatMul/ReadVariableOp?
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/MatMul?
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02&
$lstm_cell_68/MatMul_1/ReadVariableOp?
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/MatMul_1?
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/add?
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_68/BiasAdd/ReadVariableOp?
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/BiasAdd~
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_68/split/split_dim?
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_68/split?
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Sigmoid?
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Sigmoid_1?
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/mul}
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Relu?
lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/mul_1?
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/add_1?
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Sigmoid_2|
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Relu_1?
lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_191352*
condR
while_cond_191351*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????	: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_195412

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
-__inference_lstm_cell_66_layer_call_fn_195152

inputs
states_0
states_1
unknown:$
	unknown_0:	$
	unknown_1:$
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????	:?????????	:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_1894062
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????	:?????????	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????	
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????	
"
_user_specified_name
states/1
??
?
while_body_193932
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_67_matmul_readvariableop_resource_0:	@G
5while_lstm_cell_67_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_67_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_67_matmul_readvariableop_resource:	@E
3while_lstm_cell_67_matmul_1_readvariableop_resource:@@
2while_lstm_cell_67_biasadd_readvariableop_resource:@??)while/lstm_cell_67/BiasAdd/ReadVariableOp?(while/lstm_cell_67/MatMul/ReadVariableOp?*while/lstm_cell_67/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_67_matmul_readvariableop_resource_0*
_output_shapes

:	@*
dtype02*
(while/lstm_cell_67/MatMul/ReadVariableOp?
while/lstm_cell_67/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/MatMul?
*while/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_67_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_67/MatMul_1/ReadVariableOp?
while/lstm_cell_67/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/MatMul_1?
while/lstm_cell_67/addAddV2#while/lstm_cell_67/MatMul:product:0%while/lstm_cell_67/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/add?
)while/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_67_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_67/BiasAdd/ReadVariableOp?
while/lstm_cell_67/BiasAddBiasAddwhile/lstm_cell_67/add:z:01while/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/BiasAdd?
"while/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_67/split/split_dim?
while/lstm_cell_67/splitSplit+while/lstm_cell_67/split/split_dim:output:0#while/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/lstm_cell_67/split?
while/lstm_cell_67/SigmoidSigmoid!while/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Sigmoid?
while/lstm_cell_67/Sigmoid_1Sigmoid!while/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Sigmoid_1?
while/lstm_cell_67/mulMul while/lstm_cell_67/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/mul?
while/lstm_cell_67/ReluRelu!while/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Relu?
while/lstm_cell_67/mul_1Mulwhile/lstm_cell_67/Sigmoid:y:0%while/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/mul_1?
while/lstm_cell_67/add_1AddV2while/lstm_cell_67/mul:z:0while/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/add_1?
while/lstm_cell_67/Sigmoid_2Sigmoid!while/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Sigmoid_2?
while/lstm_cell_67/Relu_1Reluwhile/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Relu_1?
while/lstm_cell_67/mul_2Mul while/lstm_cell_67/Sigmoid_2:y:0'while/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_67/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_67/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_67/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_67/BiasAdd/ReadVariableOp)^while/lstm_cell_67/MatMul/ReadVariableOp+^while/lstm_cell_67/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_67_biasadd_readvariableop_resource4while_lstm_cell_67_biasadd_readvariableop_resource_0"l
3while_lstm_cell_67_matmul_1_readvariableop_resource5while_lstm_cell_67_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_67_matmul_readvariableop_resource3while_lstm_cell_67_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_67/BiasAdd/ReadVariableOp)while/lstm_cell_67/BiasAdd/ReadVariableOp2T
(while/lstm_cell_67/MatMul/ReadVariableOp(while/lstm_cell_67/MatMul/ReadVariableOp2X
*while/lstm_cell_67/MatMul_1/ReadVariableOp*while/lstm_cell_67/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_lstm_33_layer_call_fn_193224
inputs_0
unknown:$
	unknown_0:	$
	unknown_1:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_1893432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?U
?
C__inference_lstm_33_layer_call_and_return_conditional_losses_193829

inputs=
+lstm_cell_66_matmul_readvariableop_resource:$?
-lstm_cell_66_matmul_1_readvariableop_resource:	$:
,lstm_cell_66_biasadd_readvariableop_resource:$
identity??#lstm_cell_66/BiasAdd/ReadVariableOp?"lstm_cell_66/MatMul/ReadVariableOp?$lstm_cell_66/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????	2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????	2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource*
_output_shapes

:$*
dtype02$
"lstm_cell_66/MatMul/ReadVariableOp?
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/MatMul?
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02&
$lstm_cell_66/MatMul_1/ReadVariableOp?
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/MatMul_1?
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/add?
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02%
#lstm_cell_66/BiasAdd/ReadVariableOp?
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/BiasAdd~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dim?
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_cell_66/split?
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Sigmoid?
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Sigmoid_1?
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/mul}
lstm_cell_66/ReluRelulstm_cell_66/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Relu?
lstm_cell_66/mul_1Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/mul_1?
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/add_1?
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Sigmoid_2|
lstm_cell_66/Relu_1Relulstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Relu_1?
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_193745*
condR
while_cond_193744*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	?????????	*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????		2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????		2

Identity?
NoOpNoOp$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????	: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_189260

inputs

states
states_10
matmul_readvariableop_resource:$2
 matmul_1_readvariableop_resource:	$-
biasadd_readvariableop_resource:$
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????	2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????	2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????	2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????	2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????	2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????	2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????	2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????	2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????	:?????????	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????	
 
_user_specified_namestates:OK
'
_output_shapes
:?????????	
 
_user_specified_namestates
?J
?

lstm_33_while_body_192838,
(lstm_33_while_lstm_33_while_loop_counter2
.lstm_33_while_lstm_33_while_maximum_iterations
lstm_33_while_placeholder
lstm_33_while_placeholder_1
lstm_33_while_placeholder_2
lstm_33_while_placeholder_3+
'lstm_33_while_lstm_33_strided_slice_1_0g
clstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_33_while_lstm_cell_66_matmul_readvariableop_resource_0:$O
=lstm_33_while_lstm_cell_66_matmul_1_readvariableop_resource_0:	$J
<lstm_33_while_lstm_cell_66_biasadd_readvariableop_resource_0:$
lstm_33_while_identity
lstm_33_while_identity_1
lstm_33_while_identity_2
lstm_33_while_identity_3
lstm_33_while_identity_4
lstm_33_while_identity_5)
%lstm_33_while_lstm_33_strided_slice_1e
alstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensorK
9lstm_33_while_lstm_cell_66_matmul_readvariableop_resource:$M
;lstm_33_while_lstm_cell_66_matmul_1_readvariableop_resource:	$H
:lstm_33_while_lstm_cell_66_biasadd_readvariableop_resource:$??1lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOp?0lstm_33/while/lstm_cell_66/MatMul/ReadVariableOp?2lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOp?
?lstm_33/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_33/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_33/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensor_0lstm_33_while_placeholderHlstm_33/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_33/while/TensorArrayV2Read/TensorListGetItem?
0lstm_33/while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp;lstm_33_while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes

:$*
dtype022
0lstm_33/while/lstm_cell_66/MatMul/ReadVariableOp?
!lstm_33/while/lstm_cell_66/MatMulMatMul8lstm_33/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_33/while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2#
!lstm_33/while/lstm_cell_66/MatMul?
2lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp=lstm_33_while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype024
2lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOp?
#lstm_33/while/lstm_cell_66/MatMul_1MatMullstm_33_while_placeholder_2:lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2%
#lstm_33/while/lstm_cell_66/MatMul_1?
lstm_33/while/lstm_cell_66/addAddV2+lstm_33/while/lstm_cell_66/MatMul:product:0-lstm_33/while/lstm_cell_66/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2 
lstm_33/while/lstm_cell_66/add?
1lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp<lstm_33_while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype023
1lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOp?
"lstm_33/while/lstm_cell_66/BiasAddBiasAdd"lstm_33/while/lstm_cell_66/add:z:09lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2$
"lstm_33/while/lstm_cell_66/BiasAdd?
*lstm_33/while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_33/while/lstm_cell_66/split/split_dim?
 lstm_33/while/lstm_cell_66/splitSplit3lstm_33/while/lstm_cell_66/split/split_dim:output:0+lstm_33/while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2"
 lstm_33/while/lstm_cell_66/split?
"lstm_33/while/lstm_cell_66/SigmoidSigmoid)lstm_33/while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:?????????	2$
"lstm_33/while/lstm_cell_66/Sigmoid?
$lstm_33/while/lstm_cell_66/Sigmoid_1Sigmoid)lstm_33/while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:?????????	2&
$lstm_33/while/lstm_cell_66/Sigmoid_1?
lstm_33/while/lstm_cell_66/mulMul(lstm_33/while/lstm_cell_66/Sigmoid_1:y:0lstm_33_while_placeholder_3*
T0*'
_output_shapes
:?????????	2 
lstm_33/while/lstm_cell_66/mul?
lstm_33/while/lstm_cell_66/ReluRelu)lstm_33/while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:?????????	2!
lstm_33/while/lstm_cell_66/Relu?
 lstm_33/while/lstm_cell_66/mul_1Mul&lstm_33/while/lstm_cell_66/Sigmoid:y:0-lstm_33/while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:?????????	2"
 lstm_33/while/lstm_cell_66/mul_1?
 lstm_33/while/lstm_cell_66/add_1AddV2"lstm_33/while/lstm_cell_66/mul:z:0$lstm_33/while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:?????????	2"
 lstm_33/while/lstm_cell_66/add_1?
$lstm_33/while/lstm_cell_66/Sigmoid_2Sigmoid)lstm_33/while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:?????????	2&
$lstm_33/while/lstm_cell_66/Sigmoid_2?
!lstm_33/while/lstm_cell_66/Relu_1Relu$lstm_33/while/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:?????????	2#
!lstm_33/while/lstm_cell_66/Relu_1?
 lstm_33/while/lstm_cell_66/mul_2Mul(lstm_33/while/lstm_cell_66/Sigmoid_2:y:0/lstm_33/while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2"
 lstm_33/while/lstm_cell_66/mul_2?
2lstm_33/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_33_while_placeholder_1lstm_33_while_placeholder$lstm_33/while/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_33/while/TensorArrayV2Write/TensorListSetIteml
lstm_33/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_33/while/add/y?
lstm_33/while/addAddV2lstm_33_while_placeholderlstm_33/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_33/while/addp
lstm_33/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_33/while/add_1/y?
lstm_33/while/add_1AddV2(lstm_33_while_lstm_33_while_loop_counterlstm_33/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_33/while/add_1?
lstm_33/while/IdentityIdentitylstm_33/while/add_1:z:0^lstm_33/while/NoOp*
T0*
_output_shapes
: 2
lstm_33/while/Identity?
lstm_33/while/Identity_1Identity.lstm_33_while_lstm_33_while_maximum_iterations^lstm_33/while/NoOp*
T0*
_output_shapes
: 2
lstm_33/while/Identity_1?
lstm_33/while/Identity_2Identitylstm_33/while/add:z:0^lstm_33/while/NoOp*
T0*
_output_shapes
: 2
lstm_33/while/Identity_2?
lstm_33/while/Identity_3IdentityBlstm_33/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_33/while/NoOp*
T0*
_output_shapes
: 2
lstm_33/while/Identity_3?
lstm_33/while/Identity_4Identity$lstm_33/while/lstm_cell_66/mul_2:z:0^lstm_33/while/NoOp*
T0*'
_output_shapes
:?????????	2
lstm_33/while/Identity_4?
lstm_33/while/Identity_5Identity$lstm_33/while/lstm_cell_66/add_1:z:0^lstm_33/while/NoOp*
T0*'
_output_shapes
:?????????	2
lstm_33/while/Identity_5?
lstm_33/while/NoOpNoOp2^lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOp1^lstm_33/while/lstm_cell_66/MatMul/ReadVariableOp3^lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_33/while/NoOp"9
lstm_33_while_identitylstm_33/while/Identity:output:0"=
lstm_33_while_identity_1!lstm_33/while/Identity_1:output:0"=
lstm_33_while_identity_2!lstm_33/while/Identity_2:output:0"=
lstm_33_while_identity_3!lstm_33/while/Identity_3:output:0"=
lstm_33_while_identity_4!lstm_33/while/Identity_4:output:0"=
lstm_33_while_identity_5!lstm_33/while/Identity_5:output:0"P
%lstm_33_while_lstm_33_strided_slice_1'lstm_33_while_lstm_33_strided_slice_1_0"z
:lstm_33_while_lstm_cell_66_biasadd_readvariableop_resource<lstm_33_while_lstm_cell_66_biasadd_readvariableop_resource_0"|
;lstm_33_while_lstm_cell_66_matmul_1_readvariableop_resource=lstm_33_while_lstm_cell_66_matmul_1_readvariableop_resource_0"x
9lstm_33_while_lstm_cell_66_matmul_readvariableop_resource;lstm_33_while_lstm_cell_66_matmul_readvariableop_resource_0"?
alstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensorclstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2f
1lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOp1lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOp2d
0lstm_33/while/lstm_cell_66/MatMul/ReadVariableOp0lstm_33/while/lstm_cell_66/MatMul/ReadVariableOp2h
2lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOp2lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_194360
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_194360___redundant_placeholder04
0while_while_cond_194360___redundant_placeholder14
0while_while_cond_194360___redundant_placeholder24
0while_while_cond_194360___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
??
?
while_body_194361
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_67_matmul_readvariableop_resource_0:	@G
5while_lstm_cell_67_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_67_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_67_matmul_readvariableop_resource:	@E
3while_lstm_cell_67_matmul_1_readvariableop_resource:@@
2while_lstm_cell_67_biasadd_readvariableop_resource:@??)while/lstm_cell_67/BiasAdd/ReadVariableOp?(while/lstm_cell_67/MatMul/ReadVariableOp?*while/lstm_cell_67/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_67_matmul_readvariableop_resource_0*
_output_shapes

:	@*
dtype02*
(while/lstm_cell_67/MatMul/ReadVariableOp?
while/lstm_cell_67/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/MatMul?
*while/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_67_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_67/MatMul_1/ReadVariableOp?
while/lstm_cell_67/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/MatMul_1?
while/lstm_cell_67/addAddV2#while/lstm_cell_67/MatMul:product:0%while/lstm_cell_67/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/add?
)while/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_67_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_67/BiasAdd/ReadVariableOp?
while/lstm_cell_67/BiasAddBiasAddwhile/lstm_cell_67/add:z:01while/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/BiasAdd?
"while/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_67/split/split_dim?
while/lstm_cell_67/splitSplit+while/lstm_cell_67/split/split_dim:output:0#while/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/lstm_cell_67/split?
while/lstm_cell_67/SigmoidSigmoid!while/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Sigmoid?
while/lstm_cell_67/Sigmoid_1Sigmoid!while/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Sigmoid_1?
while/lstm_cell_67/mulMul while/lstm_cell_67/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/mul?
while/lstm_cell_67/ReluRelu!while/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Relu?
while/lstm_cell_67/mul_1Mulwhile/lstm_cell_67/Sigmoid:y:0%while/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/mul_1?
while/lstm_cell_67/add_1AddV2while/lstm_cell_67/mul:z:0while/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/add_1?
while/lstm_cell_67/Sigmoid_2Sigmoid!while/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Sigmoid_2?
while/lstm_cell_67/Relu_1Reluwhile/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Relu_1?
while/lstm_cell_67/mul_2Mul while/lstm_cell_67/Sigmoid_2:y:0'while/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_67/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_67/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_67/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_67/BiasAdd/ReadVariableOp)^while/lstm_cell_67/MatMul/ReadVariableOp+^while/lstm_cell_67/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_67_biasadd_readvariableop_resource4while_lstm_cell_67_biasadd_readvariableop_resource_0"l
3while_lstm_cell_67_matmul_1_readvariableop_resource5while_lstm_cell_67_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_67_matmul_readvariableop_resource3while_lstm_cell_67_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_67/BiasAdd/ReadVariableOp)while/lstm_cell_67/BiasAdd/ReadVariableOp2T
(while/lstm_cell_67/MatMul/ReadVariableOp(while/lstm_cell_67/MatMul/ReadVariableOp2X
*while/lstm_cell_67/MatMul_1/ReadVariableOp*while/lstm_cell_67/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_lstm_35_layer_call_fn_194456
inputs_0
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_35_layer_call_and_return_conditional_losses_1905392
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?
while_body_194691
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_68_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:	 ?C
4while_lstm_cell_68_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_68_matmul_readvariableop_resource:	?F
3while_lstm_cell_68_matmul_1_readvariableop_resource:	 ?A
2while_lstm_cell_68_biasadd_readvariableop_resource:	???)while/lstm_cell_68/BiasAdd/ReadVariableOp?(while/lstm_cell_68/MatMul/ReadVariableOp?*while/lstm_cell_68/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_68/MatMul/ReadVariableOp?
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/MatMul?
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02,
*while/lstm_cell_68/MatMul_1/ReadVariableOp?
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/MatMul_1?
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/add?
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_68/BiasAdd/ReadVariableOp?
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/BiasAdd?
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_68/split/split_dim?
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_68/split?
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Sigmoid?
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Sigmoid_1?
while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/mul?
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Relu?
while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/mul_1?
while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/add_1?
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Sigmoid_2?
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Relu_1?
while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?

?
lstm_33_while_cond_192403,
(lstm_33_while_lstm_33_while_loop_counter2
.lstm_33_while_lstm_33_while_maximum_iterations
lstm_33_while_placeholder
lstm_33_while_placeholder_1
lstm_33_while_placeholder_2
lstm_33_while_placeholder_3.
*lstm_33_while_less_lstm_33_strided_slice_1D
@lstm_33_while_lstm_33_while_cond_192403___redundant_placeholder0D
@lstm_33_while_lstm_33_while_cond_192403___redundant_placeholder1D
@lstm_33_while_lstm_33_while_cond_192403___redundant_placeholder2D
@lstm_33_while_lstm_33_while_cond_192403___redundant_placeholder3
lstm_33_while_identity
?
lstm_33/while/LessLesslstm_33_while_placeholder*lstm_33_while_less_lstm_33_strided_slice_1*
T0*
_output_shapes
: 2
lstm_33/while/Lessu
lstm_33/while/IdentityIdentitylstm_33/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_33/while/Identity"9
lstm_33_while_identitylstm_33/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_189273
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_189273___redundant_placeholder04
0while_while_cond_189273___redundant_placeholder14
0while_while_cond_189273___redundant_placeholder24
0while_while_cond_189273___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
?
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_190004

inputs

states
states_10
matmul_readvariableop_resource:	@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????	:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_namestates:OK
'
_output_shapes
:?????????
 
_user_specified_namestates
?%
?
while_body_189872
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_67_189896_0:	@-
while_lstm_cell_67_189898_0:@)
while_lstm_cell_67_189900_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_67_189896:	@+
while_lstm_cell_67_189898:@'
while_lstm_cell_67_189900:@??*while/lstm_cell_67/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_67/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_67_189896_0while_lstm_cell_67_189898_0while_lstm_cell_67_189900_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_1898582,
*while/lstm_cell_67/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_67/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_67/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_67/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_67/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_67_189896while_lstm_cell_67_189896_0"8
while_lstm_cell_67_189898while_lstm_cell_67_189898_0"8
while_lstm_cell_67_189900while_lstm_cell_67_189900_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_67/StatefulPartitionedCall*while/lstm_cell_67/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?

?
lstm_34_while_cond_192542,
(lstm_34_while_lstm_34_while_loop_counter2
.lstm_34_while_lstm_34_while_maximum_iterations
lstm_34_while_placeholder
lstm_34_while_placeholder_1
lstm_34_while_placeholder_2
lstm_34_while_placeholder_3.
*lstm_34_while_less_lstm_34_strided_slice_1D
@lstm_34_while_lstm_34_while_cond_192542___redundant_placeholder0D
@lstm_34_while_lstm_34_while_cond_192542___redundant_placeholder1D
@lstm_34_while_lstm_34_while_cond_192542___redundant_placeholder2D
@lstm_34_while_lstm_34_while_cond_192542___redundant_placeholder3
lstm_34_while_identity
?
lstm_34/while/LessLesslstm_34_while_placeholder*lstm_34_while_less_lstm_34_strided_slice_1*
T0*
_output_shapes
: 2
lstm_34/while/Lessu
lstm_34/while/IdentityIdentitylstm_34/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_34/while/Identity"9
lstm_34_while_identitylstm_34/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_195216

inputs
states_0
states_10
matmul_readvariableop_resource:$2
 matmul_1_readvariableop_resource:	$-
biasadd_readvariableop_resource:$
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????	2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????	2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????	2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????	2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????	2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????	2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????	2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????	2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????	:?????????	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????	
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????	
"
_user_specified_name
states/1
?
?
.__inference_sequential_11_layer_call_fn_191519
lstm_33_input
unknown:$
	unknown_0:	$
	unknown_1:$
	unknown_2:	@
	unknown_3:@
	unknown_4:@
	unknown_5:	?
	unknown_6:	 ?
	unknown_7:	?
	unknown_8:  
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_33_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_1914902
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????	: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????	
'
_user_specified_namelstm_33_input
?%
?
while_body_190470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_68_190494_0:	?.
while_lstm_cell_68_190496_0:	 ?*
while_lstm_cell_68_190498_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_68_190494:	?,
while_lstm_cell_68_190496:	 ?(
while_lstm_cell_68_190498:	???*while/lstm_cell_68/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_68/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_68_190494_0while_lstm_cell_68_190496_0while_lstm_cell_68_190498_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_1904562,
*while/lstm_cell_68/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_68/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_68/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_68/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_68/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_68_190494while_lstm_cell_68_190494_0"8
while_lstm_cell_68_190496while_lstm_cell_68_190496_0"8
while_lstm_cell_68_190498while_lstm_cell_68_190498_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_68/StatefulPartitionedCall*while/lstm_cell_68/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?U
?
C__inference_lstm_34_layer_call_and_return_conditional_losses_191872

inputs=
+lstm_cell_67_matmul_readvariableop_resource:	@?
-lstm_cell_67_matmul_1_readvariableop_resource:@:
,lstm_cell_67_biasadd_readvariableop_resource:@
identity??#lstm_cell_67/BiasAdd/ReadVariableOp?"lstm_cell_67/MatMul/ReadVariableOp?$lstm_cell_67/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	?????????	2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_67/MatMul/ReadVariableOpReadVariableOp+lstm_cell_67_matmul_readvariableop_resource*
_output_shapes

:	@*
dtype02$
"lstm_cell_67/MatMul/ReadVariableOp?
lstm_cell_67/MatMulMatMulstrided_slice_2:output:0*lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/MatMul?
$lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_67_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_67/MatMul_1/ReadVariableOp?
lstm_cell_67/MatMul_1MatMulzeros:output:0,lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/MatMul_1?
lstm_cell_67/addAddV2lstm_cell_67/MatMul:product:0lstm_cell_67/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/add?
#lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_67_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_67/BiasAdd/ReadVariableOp?
lstm_cell_67/BiasAddBiasAddlstm_cell_67/add:z:0+lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/BiasAdd~
lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_67/split/split_dim?
lstm_cell_67/splitSplit%lstm_cell_67/split/split_dim:output:0lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_cell_67/split?
lstm_cell_67/SigmoidSigmoidlstm_cell_67/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Sigmoid?
lstm_cell_67/Sigmoid_1Sigmoidlstm_cell_67/split:output:1*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Sigmoid_1?
lstm_cell_67/mulMullstm_cell_67/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/mul}
lstm_cell_67/ReluRelulstm_cell_67/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Relu?
lstm_cell_67/mul_1Mullstm_cell_67/Sigmoid:y:0lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/mul_1?
lstm_cell_67/add_1AddV2lstm_cell_67/mul:z:0lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/add_1?
lstm_cell_67/Sigmoid_2Sigmoidlstm_cell_67/split:output:3*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Sigmoid_2|
lstm_cell_67/Relu_1Relulstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Relu_1?
lstm_cell_67/mul_2Mullstm_cell_67/Sigmoid_2:y:0!lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_67_matmul_readvariableop_resource-lstm_cell_67_matmul_1_readvariableop_resource,lstm_cell_67_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_191788*
condR
while_cond_191787*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	?????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????	2

Identity?
NoOpNoOp$^lstm_cell_67/BiasAdd/ReadVariableOp#^lstm_cell_67/MatMul/ReadVariableOp%^lstm_cell_67/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????		: : : 2J
#lstm_cell_67/BiasAdd/ReadVariableOp#lstm_cell_67/BiasAdd/ReadVariableOp2H
"lstm_cell_67/MatMul/ReadVariableOp"lstm_cell_67/MatMul/ReadVariableOp2L
$lstm_cell_67/MatMul_1/ReadVariableOp$lstm_cell_67/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????		
 
_user_specified_nameinputs
??
?
I__inference_sequential_11_layer_call_and_return_conditional_losses_193213

inputsE
3lstm_33_lstm_cell_66_matmul_readvariableop_resource:$G
5lstm_33_lstm_cell_66_matmul_1_readvariableop_resource:	$B
4lstm_33_lstm_cell_66_biasadd_readvariableop_resource:$E
3lstm_34_lstm_cell_67_matmul_readvariableop_resource:	@G
5lstm_34_lstm_cell_67_matmul_1_readvariableop_resource:@B
4lstm_34_lstm_cell_67_biasadd_readvariableop_resource:@F
3lstm_35_lstm_cell_68_matmul_readvariableop_resource:	?H
5lstm_35_lstm_cell_68_matmul_1_readvariableop_resource:	 ?C
4lstm_35_lstm_cell_68_biasadd_readvariableop_resource:	?9
'dense_22_matmul_readvariableop_resource:  6
(dense_22_biasadd_readvariableop_resource: 9
'dense_23_matmul_readvariableop_resource: 6
(dense_23_biasadd_readvariableop_resource:
identity??dense_22/BiasAdd/ReadVariableOp?dense_22/MatMul/ReadVariableOp?dense_23/BiasAdd/ReadVariableOp?dense_23/MatMul/ReadVariableOp?+lstm_33/lstm_cell_66/BiasAdd/ReadVariableOp?*lstm_33/lstm_cell_66/MatMul/ReadVariableOp?,lstm_33/lstm_cell_66/MatMul_1/ReadVariableOp?lstm_33/while?+lstm_34/lstm_cell_67/BiasAdd/ReadVariableOp?*lstm_34/lstm_cell_67/MatMul/ReadVariableOp?,lstm_34/lstm_cell_67/MatMul_1/ReadVariableOp?lstm_34/while?+lstm_35/lstm_cell_68/BiasAdd/ReadVariableOp?*lstm_35/lstm_cell_68/MatMul/ReadVariableOp?,lstm_35/lstm_cell_68/MatMul_1/ReadVariableOp?lstm_35/whileT
lstm_33/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_33/Shape?
lstm_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_33/strided_slice/stack?
lstm_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_33/strided_slice/stack_1?
lstm_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_33/strided_slice/stack_2?
lstm_33/strided_sliceStridedSlicelstm_33/Shape:output:0$lstm_33/strided_slice/stack:output:0&lstm_33/strided_slice/stack_1:output:0&lstm_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_33/strided_slicer
lstm_33/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
lstm_33/zeros/packed/1?
lstm_33/zeros/packedPacklstm_33/strided_slice:output:0lstm_33/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_33/zeros/packedo
lstm_33/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_33/zeros/Const?
lstm_33/zerosFilllstm_33/zeros/packed:output:0lstm_33/zeros/Const:output:0*
T0*'
_output_shapes
:?????????	2
lstm_33/zerosv
lstm_33/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
lstm_33/zeros_1/packed/1?
lstm_33/zeros_1/packedPacklstm_33/strided_slice:output:0!lstm_33/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_33/zeros_1/packeds
lstm_33/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_33/zeros_1/Const?
lstm_33/zeros_1Filllstm_33/zeros_1/packed:output:0lstm_33/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????	2
lstm_33/zeros_1?
lstm_33/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_33/transpose/perm?
lstm_33/transpose	Transposeinputslstm_33/transpose/perm:output:0*
T0*+
_output_shapes
:	?????????2
lstm_33/transposeg
lstm_33/Shape_1Shapelstm_33/transpose:y:0*
T0*
_output_shapes
:2
lstm_33/Shape_1?
lstm_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_33/strided_slice_1/stack?
lstm_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_33/strided_slice_1/stack_1?
lstm_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_33/strided_slice_1/stack_2?
lstm_33/strided_slice_1StridedSlicelstm_33/Shape_1:output:0&lstm_33/strided_slice_1/stack:output:0(lstm_33/strided_slice_1/stack_1:output:0(lstm_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_33/strided_slice_1?
#lstm_33/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_33/TensorArrayV2/element_shape?
lstm_33/TensorArrayV2TensorListReserve,lstm_33/TensorArrayV2/element_shape:output:0 lstm_33/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_33/TensorArrayV2?
=lstm_33/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_33/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_33/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_33/transpose:y:0Flstm_33/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_33/TensorArrayUnstack/TensorListFromTensor?
lstm_33/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_33/strided_slice_2/stack?
lstm_33/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_33/strided_slice_2/stack_1?
lstm_33/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_33/strided_slice_2/stack_2?
lstm_33/strided_slice_2StridedSlicelstm_33/transpose:y:0&lstm_33/strided_slice_2/stack:output:0(lstm_33/strided_slice_2/stack_1:output:0(lstm_33/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_33/strided_slice_2?
*lstm_33/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3lstm_33_lstm_cell_66_matmul_readvariableop_resource*
_output_shapes

:$*
dtype02,
*lstm_33/lstm_cell_66/MatMul/ReadVariableOp?
lstm_33/lstm_cell_66/MatMulMatMul lstm_33/strided_slice_2:output:02lstm_33/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_33/lstm_cell_66/MatMul?
,lstm_33/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5lstm_33_lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02.
,lstm_33/lstm_cell_66/MatMul_1/ReadVariableOp?
lstm_33/lstm_cell_66/MatMul_1MatMullstm_33/zeros:output:04lstm_33/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_33/lstm_cell_66/MatMul_1?
lstm_33/lstm_cell_66/addAddV2%lstm_33/lstm_cell_66/MatMul:product:0'lstm_33/lstm_cell_66/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_33/lstm_cell_66/add?
+lstm_33/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4lstm_33_lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02-
+lstm_33/lstm_cell_66/BiasAdd/ReadVariableOp?
lstm_33/lstm_cell_66/BiasAddBiasAddlstm_33/lstm_cell_66/add:z:03lstm_33/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_33/lstm_cell_66/BiasAdd?
$lstm_33/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_33/lstm_cell_66/split/split_dim?
lstm_33/lstm_cell_66/splitSplit-lstm_33/lstm_cell_66/split/split_dim:output:0%lstm_33/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_33/lstm_cell_66/split?
lstm_33/lstm_cell_66/SigmoidSigmoid#lstm_33/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_33/lstm_cell_66/Sigmoid?
lstm_33/lstm_cell_66/Sigmoid_1Sigmoid#lstm_33/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:?????????	2 
lstm_33/lstm_cell_66/Sigmoid_1?
lstm_33/lstm_cell_66/mulMul"lstm_33/lstm_cell_66/Sigmoid_1:y:0lstm_33/zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_33/lstm_cell_66/mul?
lstm_33/lstm_cell_66/ReluRelu#lstm_33/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_33/lstm_cell_66/Relu?
lstm_33/lstm_cell_66/mul_1Mul lstm_33/lstm_cell_66/Sigmoid:y:0'lstm_33/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_33/lstm_cell_66/mul_1?
lstm_33/lstm_cell_66/add_1AddV2lstm_33/lstm_cell_66/mul:z:0lstm_33/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_33/lstm_cell_66/add_1?
lstm_33/lstm_cell_66/Sigmoid_2Sigmoid#lstm_33/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:?????????	2 
lstm_33/lstm_cell_66/Sigmoid_2?
lstm_33/lstm_cell_66/Relu_1Relulstm_33/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_33/lstm_cell_66/Relu_1?
lstm_33/lstm_cell_66/mul_2Mul"lstm_33/lstm_cell_66/Sigmoid_2:y:0)lstm_33/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_33/lstm_cell_66/mul_2?
%lstm_33/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2'
%lstm_33/TensorArrayV2_1/element_shape?
lstm_33/TensorArrayV2_1TensorListReserve.lstm_33/TensorArrayV2_1/element_shape:output:0 lstm_33/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_33/TensorArrayV2_1^
lstm_33/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_33/time?
 lstm_33/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_33/while/maximum_iterationsz
lstm_33/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_33/while/loop_counter?
lstm_33/whileWhile#lstm_33/while/loop_counter:output:0)lstm_33/while/maximum_iterations:output:0lstm_33/time:output:0 lstm_33/TensorArrayV2_1:handle:0lstm_33/zeros:output:0lstm_33/zeros_1:output:0 lstm_33/strided_slice_1:output:0?lstm_33/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_33_lstm_cell_66_matmul_readvariableop_resource5lstm_33_lstm_cell_66_matmul_1_readvariableop_resource4lstm_33_lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_33_while_body_192838*%
condR
lstm_33_while_cond_192837*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
lstm_33/while?
8lstm_33/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2:
8lstm_33/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_33/TensorArrayV2Stack/TensorListStackTensorListStacklstm_33/while:output:3Alstm_33/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	?????????	*
element_dtype02,
*lstm_33/TensorArrayV2Stack/TensorListStack?
lstm_33/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_33/strided_slice_3/stack?
lstm_33/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_33/strided_slice_3/stack_1?
lstm_33/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_33/strided_slice_3/stack_2?
lstm_33/strided_slice_3StridedSlice3lstm_33/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_33/strided_slice_3/stack:output:0(lstm_33/strided_slice_3/stack_1:output:0(lstm_33/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
lstm_33/strided_slice_3?
lstm_33/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_33/transpose_1/perm?
lstm_33/transpose_1	Transpose3lstm_33/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_33/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????		2
lstm_33/transpose_1v
lstm_33/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_33/runtimee
lstm_34/ShapeShapelstm_33/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_34/Shape?
lstm_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_34/strided_slice/stack?
lstm_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_34/strided_slice/stack_1?
lstm_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_34/strided_slice/stack_2?
lstm_34/strided_sliceStridedSlicelstm_34/Shape:output:0$lstm_34/strided_slice/stack:output:0&lstm_34/strided_slice/stack_1:output:0&lstm_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_34/strided_slicer
lstm_34/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_34/zeros/packed/1?
lstm_34/zeros/packedPacklstm_34/strided_slice:output:0lstm_34/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_34/zeros/packedo
lstm_34/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_34/zeros/Const?
lstm_34/zerosFilllstm_34/zeros/packed:output:0lstm_34/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_34/zerosv
lstm_34/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_34/zeros_1/packed/1?
lstm_34/zeros_1/packedPacklstm_34/strided_slice:output:0!lstm_34/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_34/zeros_1/packeds
lstm_34/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_34/zeros_1/Const?
lstm_34/zeros_1Filllstm_34/zeros_1/packed:output:0lstm_34/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_34/zeros_1?
lstm_34/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_34/transpose/perm?
lstm_34/transpose	Transposelstm_33/transpose_1:y:0lstm_34/transpose/perm:output:0*
T0*+
_output_shapes
:	?????????	2
lstm_34/transposeg
lstm_34/Shape_1Shapelstm_34/transpose:y:0*
T0*
_output_shapes
:2
lstm_34/Shape_1?
lstm_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_34/strided_slice_1/stack?
lstm_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_1/stack_1?
lstm_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_1/stack_2?
lstm_34/strided_slice_1StridedSlicelstm_34/Shape_1:output:0&lstm_34/strided_slice_1/stack:output:0(lstm_34/strided_slice_1/stack_1:output:0(lstm_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_34/strided_slice_1?
#lstm_34/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_34/TensorArrayV2/element_shape?
lstm_34/TensorArrayV2TensorListReserve,lstm_34/TensorArrayV2/element_shape:output:0 lstm_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_34/TensorArrayV2?
=lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2?
=lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_34/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_34/transpose:y:0Flstm_34/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_34/TensorArrayUnstack/TensorListFromTensor?
lstm_34/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_34/strided_slice_2/stack?
lstm_34/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_2/stack_1?
lstm_34/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_2/stack_2?
lstm_34/strided_slice_2StridedSlicelstm_34/transpose:y:0&lstm_34/strided_slice_2/stack:output:0(lstm_34/strided_slice_2/stack_1:output:0(lstm_34/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
lstm_34/strided_slice_2?
*lstm_34/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp3lstm_34_lstm_cell_67_matmul_readvariableop_resource*
_output_shapes

:	@*
dtype02,
*lstm_34/lstm_cell_67/MatMul/ReadVariableOp?
lstm_34/lstm_cell_67/MatMulMatMul lstm_34/strided_slice_2:output:02lstm_34/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_34/lstm_cell_67/MatMul?
,lstm_34/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp5lstm_34_lstm_cell_67_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_34/lstm_cell_67/MatMul_1/ReadVariableOp?
lstm_34/lstm_cell_67/MatMul_1MatMullstm_34/zeros:output:04lstm_34/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_34/lstm_cell_67/MatMul_1?
lstm_34/lstm_cell_67/addAddV2%lstm_34/lstm_cell_67/MatMul:product:0'lstm_34/lstm_cell_67/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
lstm_34/lstm_cell_67/add?
+lstm_34/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp4lstm_34_lstm_cell_67_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+lstm_34/lstm_cell_67/BiasAdd/ReadVariableOp?
lstm_34/lstm_cell_67/BiasAddBiasAddlstm_34/lstm_cell_67/add:z:03lstm_34/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_34/lstm_cell_67/BiasAdd?
$lstm_34/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_34/lstm_cell_67/split/split_dim?
lstm_34/lstm_cell_67/splitSplit-lstm_34/lstm_cell_67/split/split_dim:output:0%lstm_34/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_34/lstm_cell_67/split?
lstm_34/lstm_cell_67/SigmoidSigmoid#lstm_34/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_34/lstm_cell_67/Sigmoid?
lstm_34/lstm_cell_67/Sigmoid_1Sigmoid#lstm_34/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:?????????2 
lstm_34/lstm_cell_67/Sigmoid_1?
lstm_34/lstm_cell_67/mulMul"lstm_34/lstm_cell_67/Sigmoid_1:y:0lstm_34/zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_34/lstm_cell_67/mul?
lstm_34/lstm_cell_67/ReluRelu#lstm_34/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_34/lstm_cell_67/Relu?
lstm_34/lstm_cell_67/mul_1Mul lstm_34/lstm_cell_67/Sigmoid:y:0'lstm_34/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_34/lstm_cell_67/mul_1?
lstm_34/lstm_cell_67/add_1AddV2lstm_34/lstm_cell_67/mul:z:0lstm_34/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_34/lstm_cell_67/add_1?
lstm_34/lstm_cell_67/Sigmoid_2Sigmoid#lstm_34/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:?????????2 
lstm_34/lstm_cell_67/Sigmoid_2?
lstm_34/lstm_cell_67/Relu_1Relulstm_34/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_34/lstm_cell_67/Relu_1?
lstm_34/lstm_cell_67/mul_2Mul"lstm_34/lstm_cell_67/Sigmoid_2:y:0)lstm_34/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_34/lstm_cell_67/mul_2?
%lstm_34/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2'
%lstm_34/TensorArrayV2_1/element_shape?
lstm_34/TensorArrayV2_1TensorListReserve.lstm_34/TensorArrayV2_1/element_shape:output:0 lstm_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_34/TensorArrayV2_1^
lstm_34/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_34/time?
 lstm_34/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_34/while/maximum_iterationsz
lstm_34/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_34/while/loop_counter?
lstm_34/whileWhile#lstm_34/while/loop_counter:output:0)lstm_34/while/maximum_iterations:output:0lstm_34/time:output:0 lstm_34/TensorArrayV2_1:handle:0lstm_34/zeros:output:0lstm_34/zeros_1:output:0 lstm_34/strided_slice_1:output:0?lstm_34/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_34_lstm_cell_67_matmul_readvariableop_resource5lstm_34_lstm_cell_67_matmul_1_readvariableop_resource4lstm_34_lstm_cell_67_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_34_while_body_192977*%
condR
lstm_34_while_cond_192976*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
lstm_34/while?
8lstm_34/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2:
8lstm_34/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_34/TensorArrayV2Stack/TensorListStackTensorListStacklstm_34/while:output:3Alstm_34/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	?????????*
element_dtype02,
*lstm_34/TensorArrayV2Stack/TensorListStack?
lstm_34/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_34/strided_slice_3/stack?
lstm_34/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_34/strided_slice_3/stack_1?
lstm_34/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_3/stack_2?
lstm_34/strided_slice_3StridedSlice3lstm_34/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_34/strided_slice_3/stack:output:0(lstm_34/strided_slice_3/stack_1:output:0(lstm_34/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_34/strided_slice_3?
lstm_34/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_34/transpose_1/perm?
lstm_34/transpose_1	Transpose3lstm_34/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_34/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	2
lstm_34/transpose_1v
lstm_34/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_34/runtimee
lstm_35/ShapeShapelstm_34/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_35/Shape?
lstm_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_35/strided_slice/stack?
lstm_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_35/strided_slice/stack_1?
lstm_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_35/strided_slice/stack_2?
lstm_35/strided_sliceStridedSlicelstm_35/Shape:output:0$lstm_35/strided_slice/stack:output:0&lstm_35/strided_slice/stack_1:output:0&lstm_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_35/strided_slicer
lstm_35/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/zeros/packed/1?
lstm_35/zeros/packedPacklstm_35/strided_slice:output:0lstm_35/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_35/zeros/packedo
lstm_35/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_35/zeros/Const?
lstm_35/zerosFilllstm_35/zeros/packed:output:0lstm_35/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_35/zerosv
lstm_35/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/zeros_1/packed/1?
lstm_35/zeros_1/packedPacklstm_35/strided_slice:output:0!lstm_35/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_35/zeros_1/packeds
lstm_35/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_35/zeros_1/Const?
lstm_35/zeros_1Filllstm_35/zeros_1/packed:output:0lstm_35/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_35/zeros_1?
lstm_35/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_35/transpose/perm?
lstm_35/transpose	Transposelstm_34/transpose_1:y:0lstm_35/transpose/perm:output:0*
T0*+
_output_shapes
:	?????????2
lstm_35/transposeg
lstm_35/Shape_1Shapelstm_35/transpose:y:0*
T0*
_output_shapes
:2
lstm_35/Shape_1?
lstm_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_35/strided_slice_1/stack?
lstm_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_1/stack_1?
lstm_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_1/stack_2?
lstm_35/strided_slice_1StridedSlicelstm_35/Shape_1:output:0&lstm_35/strided_slice_1/stack:output:0(lstm_35/strided_slice_1/stack_1:output:0(lstm_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_35/strided_slice_1?
#lstm_35/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_35/TensorArrayV2/element_shape?
lstm_35/TensorArrayV2TensorListReserve,lstm_35/TensorArrayV2/element_shape:output:0 lstm_35/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_35/TensorArrayV2?
=lstm_35/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_35/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_35/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_35/transpose:y:0Flstm_35/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_35/TensorArrayUnstack/TensorListFromTensor?
lstm_35/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_35/strided_slice_2/stack?
lstm_35/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_2/stack_1?
lstm_35/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_2/stack_2?
lstm_35/strided_slice_2StridedSlicelstm_35/transpose:y:0&lstm_35/strided_slice_2/stack:output:0(lstm_35/strided_slice_2/stack_1:output:0(lstm_35/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_35/strided_slice_2?
*lstm_35/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3lstm_35_lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*lstm_35/lstm_cell_68/MatMul/ReadVariableOp?
lstm_35/lstm_cell_68/MatMulMatMul lstm_35/strided_slice_2:output:02lstm_35/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_35/lstm_cell_68/MatMul?
,lstm_35/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5lstm_35_lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02.
,lstm_35/lstm_cell_68/MatMul_1/ReadVariableOp?
lstm_35/lstm_cell_68/MatMul_1MatMullstm_35/zeros:output:04lstm_35/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_35/lstm_cell_68/MatMul_1?
lstm_35/lstm_cell_68/addAddV2%lstm_35/lstm_cell_68/MatMul:product:0'lstm_35/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_35/lstm_cell_68/add?
+lstm_35/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4lstm_35_lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_35/lstm_cell_68/BiasAdd/ReadVariableOp?
lstm_35/lstm_cell_68/BiasAddBiasAddlstm_35/lstm_cell_68/add:z:03lstm_35/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_35/lstm_cell_68/BiasAdd?
$lstm_35/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_35/lstm_cell_68/split/split_dim?
lstm_35/lstm_cell_68/splitSplit-lstm_35/lstm_cell_68/split/split_dim:output:0%lstm_35/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_35/lstm_cell_68/split?
lstm_35/lstm_cell_68/SigmoidSigmoid#lstm_35/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_35/lstm_cell_68/Sigmoid?
lstm_35/lstm_cell_68/Sigmoid_1Sigmoid#lstm_35/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:????????? 2 
lstm_35/lstm_cell_68/Sigmoid_1?
lstm_35/lstm_cell_68/mulMul"lstm_35/lstm_cell_68/Sigmoid_1:y:0lstm_35/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_35/lstm_cell_68/mul?
lstm_35/lstm_cell_68/ReluRelu#lstm_35/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_35/lstm_cell_68/Relu?
lstm_35/lstm_cell_68/mul_1Mul lstm_35/lstm_cell_68/Sigmoid:y:0'lstm_35/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_35/lstm_cell_68/mul_1?
lstm_35/lstm_cell_68/add_1AddV2lstm_35/lstm_cell_68/mul:z:0lstm_35/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_35/lstm_cell_68/add_1?
lstm_35/lstm_cell_68/Sigmoid_2Sigmoid#lstm_35/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:????????? 2 
lstm_35/lstm_cell_68/Sigmoid_2?
lstm_35/lstm_cell_68/Relu_1Relulstm_35/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_35/lstm_cell_68/Relu_1?
lstm_35/lstm_cell_68/mul_2Mul"lstm_35/lstm_cell_68/Sigmoid_2:y:0)lstm_35/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_35/lstm_cell_68/mul_2?
%lstm_35/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2'
%lstm_35/TensorArrayV2_1/element_shape?
lstm_35/TensorArrayV2_1TensorListReserve.lstm_35/TensorArrayV2_1/element_shape:output:0 lstm_35/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_35/TensorArrayV2_1^
lstm_35/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/time?
 lstm_35/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_35/while/maximum_iterationsz
lstm_35/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/while/loop_counter?
lstm_35/whileWhile#lstm_35/while/loop_counter:output:0)lstm_35/while/maximum_iterations:output:0lstm_35/time:output:0 lstm_35/TensorArrayV2_1:handle:0lstm_35/zeros:output:0lstm_35/zeros_1:output:0 lstm_35/strided_slice_1:output:0?lstm_35/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_35_lstm_cell_68_matmul_readvariableop_resource5lstm_35_lstm_cell_68_matmul_1_readvariableop_resource4lstm_35_lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_35_while_body_193116*%
condR
lstm_35_while_cond_193115*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_35/while?
8lstm_35/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2:
8lstm_35/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_35/TensorArrayV2Stack/TensorListStackTensorListStacklstm_35/while:output:3Alstm_35/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	????????? *
element_dtype02,
*lstm_35/TensorArrayV2Stack/TensorListStack?
lstm_35/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_35/strided_slice_3/stack?
lstm_35/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_35/strided_slice_3/stack_1?
lstm_35/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_3/stack_2?
lstm_35/strided_slice_3StridedSlice3lstm_35/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_35/strided_slice_3/stack:output:0(lstm_35/strided_slice_3/stack_1:output:0(lstm_35/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_35/strided_slice_3?
lstm_35/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_35/transpose_1/perm?
lstm_35/transpose_1	Transpose3lstm_35/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_35/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	 2
lstm_35/transpose_1v
lstm_35/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_35/runtime?
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_22/MatMul/ReadVariableOp?
dense_22/MatMulMatMul lstm_35/strided_slice_3:output:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_22/MatMul?
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_22/BiasAdd/ReadVariableOp?
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_22/BiasAdd}
activation_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
activation_22/Relu?
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_23/MatMul/ReadVariableOp?
dense_23/MatMulMatMul activation_22/Relu:activations:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_23/MatMul?
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOp?
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_23/BiasAddt
IdentityIdentitydense_23/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp,^lstm_33/lstm_cell_66/BiasAdd/ReadVariableOp+^lstm_33/lstm_cell_66/MatMul/ReadVariableOp-^lstm_33/lstm_cell_66/MatMul_1/ReadVariableOp^lstm_33/while,^lstm_34/lstm_cell_67/BiasAdd/ReadVariableOp+^lstm_34/lstm_cell_67/MatMul/ReadVariableOp-^lstm_34/lstm_cell_67/MatMul_1/ReadVariableOp^lstm_34/while,^lstm_35/lstm_cell_68/BiasAdd/ReadVariableOp+^lstm_35/lstm_cell_68/MatMul/ReadVariableOp-^lstm_35/lstm_cell_68/MatMul_1/ReadVariableOp^lstm_35/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????	: : : : : : : : : : : : : 2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2Z
+lstm_33/lstm_cell_66/BiasAdd/ReadVariableOp+lstm_33/lstm_cell_66/BiasAdd/ReadVariableOp2X
*lstm_33/lstm_cell_66/MatMul/ReadVariableOp*lstm_33/lstm_cell_66/MatMul/ReadVariableOp2\
,lstm_33/lstm_cell_66/MatMul_1/ReadVariableOp,lstm_33/lstm_cell_66/MatMul_1/ReadVariableOp2
lstm_33/whilelstm_33/while2Z
+lstm_34/lstm_cell_67/BiasAdd/ReadVariableOp+lstm_34/lstm_cell_67/BiasAdd/ReadVariableOp2X
*lstm_34/lstm_cell_67/MatMul/ReadVariableOp*lstm_34/lstm_cell_67/MatMul/ReadVariableOp2\
,lstm_34/lstm_cell_67/MatMul_1/ReadVariableOp,lstm_34/lstm_cell_67/MatMul_1/ReadVariableOp2
lstm_34/whilelstm_34/while2Z
+lstm_35/lstm_cell_68/BiasAdd/ReadVariableOp+lstm_35/lstm_cell_68/BiasAdd/ReadVariableOp2X
*lstm_35/lstm_cell_68/MatMul/ReadVariableOp*lstm_35/lstm_cell_68/MatMul/ReadVariableOp2\
,lstm_35/lstm_cell_68/MatMul_1/ReadVariableOp,lstm_35/lstm_cell_68/MatMul_1/ReadVariableOp2
lstm_35/whilelstm_35/while:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
??
?
!__inference__wrapped_model_189193
lstm_33_inputS
Asequential_11_lstm_33_lstm_cell_66_matmul_readvariableop_resource:$U
Csequential_11_lstm_33_lstm_cell_66_matmul_1_readvariableop_resource:	$P
Bsequential_11_lstm_33_lstm_cell_66_biasadd_readvariableop_resource:$S
Asequential_11_lstm_34_lstm_cell_67_matmul_readvariableop_resource:	@U
Csequential_11_lstm_34_lstm_cell_67_matmul_1_readvariableop_resource:@P
Bsequential_11_lstm_34_lstm_cell_67_biasadd_readvariableop_resource:@T
Asequential_11_lstm_35_lstm_cell_68_matmul_readvariableop_resource:	?V
Csequential_11_lstm_35_lstm_cell_68_matmul_1_readvariableop_resource:	 ?Q
Bsequential_11_lstm_35_lstm_cell_68_biasadd_readvariableop_resource:	?G
5sequential_11_dense_22_matmul_readvariableop_resource:  D
6sequential_11_dense_22_biasadd_readvariableop_resource: G
5sequential_11_dense_23_matmul_readvariableop_resource: D
6sequential_11_dense_23_biasadd_readvariableop_resource:
identity??-sequential_11/dense_22/BiasAdd/ReadVariableOp?,sequential_11/dense_22/MatMul/ReadVariableOp?-sequential_11/dense_23/BiasAdd/ReadVariableOp?,sequential_11/dense_23/MatMul/ReadVariableOp?9sequential_11/lstm_33/lstm_cell_66/BiasAdd/ReadVariableOp?8sequential_11/lstm_33/lstm_cell_66/MatMul/ReadVariableOp?:sequential_11/lstm_33/lstm_cell_66/MatMul_1/ReadVariableOp?sequential_11/lstm_33/while?9sequential_11/lstm_34/lstm_cell_67/BiasAdd/ReadVariableOp?8sequential_11/lstm_34/lstm_cell_67/MatMul/ReadVariableOp?:sequential_11/lstm_34/lstm_cell_67/MatMul_1/ReadVariableOp?sequential_11/lstm_34/while?9sequential_11/lstm_35/lstm_cell_68/BiasAdd/ReadVariableOp?8sequential_11/lstm_35/lstm_cell_68/MatMul/ReadVariableOp?:sequential_11/lstm_35/lstm_cell_68/MatMul_1/ReadVariableOp?sequential_11/lstm_35/whilew
sequential_11/lstm_33/ShapeShapelstm_33_input*
T0*
_output_shapes
:2
sequential_11/lstm_33/Shape?
)sequential_11/lstm_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_11/lstm_33/strided_slice/stack?
+sequential_11/lstm_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_11/lstm_33/strided_slice/stack_1?
+sequential_11/lstm_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_11/lstm_33/strided_slice/stack_2?
#sequential_11/lstm_33/strided_sliceStridedSlice$sequential_11/lstm_33/Shape:output:02sequential_11/lstm_33/strided_slice/stack:output:04sequential_11/lstm_33/strided_slice/stack_1:output:04sequential_11/lstm_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_11/lstm_33/strided_slice?
$sequential_11/lstm_33/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2&
$sequential_11/lstm_33/zeros/packed/1?
"sequential_11/lstm_33/zeros/packedPack,sequential_11/lstm_33/strided_slice:output:0-sequential_11/lstm_33/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_11/lstm_33/zeros/packed?
!sequential_11/lstm_33/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_11/lstm_33/zeros/Const?
sequential_11/lstm_33/zerosFill+sequential_11/lstm_33/zeros/packed:output:0*sequential_11/lstm_33/zeros/Const:output:0*
T0*'
_output_shapes
:?????????	2
sequential_11/lstm_33/zeros?
&sequential_11/lstm_33/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2(
&sequential_11/lstm_33/zeros_1/packed/1?
$sequential_11/lstm_33/zeros_1/packedPack,sequential_11/lstm_33/strided_slice:output:0/sequential_11/lstm_33/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_11/lstm_33/zeros_1/packed?
#sequential_11/lstm_33/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_11/lstm_33/zeros_1/Const?
sequential_11/lstm_33/zeros_1Fill-sequential_11/lstm_33/zeros_1/packed:output:0,sequential_11/lstm_33/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????	2
sequential_11/lstm_33/zeros_1?
$sequential_11/lstm_33/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_11/lstm_33/transpose/perm?
sequential_11/lstm_33/transpose	Transposelstm_33_input-sequential_11/lstm_33/transpose/perm:output:0*
T0*+
_output_shapes
:	?????????2!
sequential_11/lstm_33/transpose?
sequential_11/lstm_33/Shape_1Shape#sequential_11/lstm_33/transpose:y:0*
T0*
_output_shapes
:2
sequential_11/lstm_33/Shape_1?
+sequential_11/lstm_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_11/lstm_33/strided_slice_1/stack?
-sequential_11/lstm_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_11/lstm_33/strided_slice_1/stack_1?
-sequential_11/lstm_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_11/lstm_33/strided_slice_1/stack_2?
%sequential_11/lstm_33/strided_slice_1StridedSlice&sequential_11/lstm_33/Shape_1:output:04sequential_11/lstm_33/strided_slice_1/stack:output:06sequential_11/lstm_33/strided_slice_1/stack_1:output:06sequential_11/lstm_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_11/lstm_33/strided_slice_1?
1sequential_11/lstm_33/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1sequential_11/lstm_33/TensorArrayV2/element_shape?
#sequential_11/lstm_33/TensorArrayV2TensorListReserve:sequential_11/lstm_33/TensorArrayV2/element_shape:output:0.sequential_11/lstm_33/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_11/lstm_33/TensorArrayV2?
Ksequential_11/lstm_33/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2M
Ksequential_11/lstm_33/TensorArrayUnstack/TensorListFromTensor/element_shape?
=sequential_11/lstm_33/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_11/lstm_33/transpose:y:0Tsequential_11/lstm_33/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_11/lstm_33/TensorArrayUnstack/TensorListFromTensor?
+sequential_11/lstm_33/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_11/lstm_33/strided_slice_2/stack?
-sequential_11/lstm_33/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_11/lstm_33/strided_slice_2/stack_1?
-sequential_11/lstm_33/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_11/lstm_33/strided_slice_2/stack_2?
%sequential_11/lstm_33/strided_slice_2StridedSlice#sequential_11/lstm_33/transpose:y:04sequential_11/lstm_33/strided_slice_2/stack:output:06sequential_11/lstm_33/strided_slice_2/stack_1:output:06sequential_11/lstm_33/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2'
%sequential_11/lstm_33/strided_slice_2?
8sequential_11/lstm_33/lstm_cell_66/MatMul/ReadVariableOpReadVariableOpAsequential_11_lstm_33_lstm_cell_66_matmul_readvariableop_resource*
_output_shapes

:$*
dtype02:
8sequential_11/lstm_33/lstm_cell_66/MatMul/ReadVariableOp?
)sequential_11/lstm_33/lstm_cell_66/MatMulMatMul.sequential_11/lstm_33/strided_slice_2:output:0@sequential_11/lstm_33/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2+
)sequential_11/lstm_33/lstm_cell_66/MatMul?
:sequential_11/lstm_33/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOpCsequential_11_lstm_33_lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02<
:sequential_11/lstm_33/lstm_cell_66/MatMul_1/ReadVariableOp?
+sequential_11/lstm_33/lstm_cell_66/MatMul_1MatMul$sequential_11/lstm_33/zeros:output:0Bsequential_11/lstm_33/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2-
+sequential_11/lstm_33/lstm_cell_66/MatMul_1?
&sequential_11/lstm_33/lstm_cell_66/addAddV23sequential_11/lstm_33/lstm_cell_66/MatMul:product:05sequential_11/lstm_33/lstm_cell_66/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2(
&sequential_11/lstm_33/lstm_cell_66/add?
9sequential_11/lstm_33/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOpBsequential_11_lstm_33_lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02;
9sequential_11/lstm_33/lstm_cell_66/BiasAdd/ReadVariableOp?
*sequential_11/lstm_33/lstm_cell_66/BiasAddBiasAdd*sequential_11/lstm_33/lstm_cell_66/add:z:0Asequential_11/lstm_33/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2,
*sequential_11/lstm_33/lstm_cell_66/BiasAdd?
2sequential_11/lstm_33/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_11/lstm_33/lstm_cell_66/split/split_dim?
(sequential_11/lstm_33/lstm_cell_66/splitSplit;sequential_11/lstm_33/lstm_cell_66/split/split_dim:output:03sequential_11/lstm_33/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2*
(sequential_11/lstm_33/lstm_cell_66/split?
*sequential_11/lstm_33/lstm_cell_66/SigmoidSigmoid1sequential_11/lstm_33/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:?????????	2,
*sequential_11/lstm_33/lstm_cell_66/Sigmoid?
,sequential_11/lstm_33/lstm_cell_66/Sigmoid_1Sigmoid1sequential_11/lstm_33/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:?????????	2.
,sequential_11/lstm_33/lstm_cell_66/Sigmoid_1?
&sequential_11/lstm_33/lstm_cell_66/mulMul0sequential_11/lstm_33/lstm_cell_66/Sigmoid_1:y:0&sequential_11/lstm_33/zeros_1:output:0*
T0*'
_output_shapes
:?????????	2(
&sequential_11/lstm_33/lstm_cell_66/mul?
'sequential_11/lstm_33/lstm_cell_66/ReluRelu1sequential_11/lstm_33/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:?????????	2)
'sequential_11/lstm_33/lstm_cell_66/Relu?
(sequential_11/lstm_33/lstm_cell_66/mul_1Mul.sequential_11/lstm_33/lstm_cell_66/Sigmoid:y:05sequential_11/lstm_33/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:?????????	2*
(sequential_11/lstm_33/lstm_cell_66/mul_1?
(sequential_11/lstm_33/lstm_cell_66/add_1AddV2*sequential_11/lstm_33/lstm_cell_66/mul:z:0,sequential_11/lstm_33/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:?????????	2*
(sequential_11/lstm_33/lstm_cell_66/add_1?
,sequential_11/lstm_33/lstm_cell_66/Sigmoid_2Sigmoid1sequential_11/lstm_33/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:?????????	2.
,sequential_11/lstm_33/lstm_cell_66/Sigmoid_2?
)sequential_11/lstm_33/lstm_cell_66/Relu_1Relu,sequential_11/lstm_33/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:?????????	2+
)sequential_11/lstm_33/lstm_cell_66/Relu_1?
(sequential_11/lstm_33/lstm_cell_66/mul_2Mul0sequential_11/lstm_33/lstm_cell_66/Sigmoid_2:y:07sequential_11/lstm_33/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2*
(sequential_11/lstm_33/lstm_cell_66/mul_2?
3sequential_11/lstm_33/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   25
3sequential_11/lstm_33/TensorArrayV2_1/element_shape?
%sequential_11/lstm_33/TensorArrayV2_1TensorListReserve<sequential_11/lstm_33/TensorArrayV2_1/element_shape:output:0.sequential_11/lstm_33/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_11/lstm_33/TensorArrayV2_1z
sequential_11/lstm_33/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_11/lstm_33/time?
.sequential_11/lstm_33/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.sequential_11/lstm_33/while/maximum_iterations?
(sequential_11/lstm_33/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_11/lstm_33/while/loop_counter?
sequential_11/lstm_33/whileWhile1sequential_11/lstm_33/while/loop_counter:output:07sequential_11/lstm_33/while/maximum_iterations:output:0#sequential_11/lstm_33/time:output:0.sequential_11/lstm_33/TensorArrayV2_1:handle:0$sequential_11/lstm_33/zeros:output:0&sequential_11/lstm_33/zeros_1:output:0.sequential_11/lstm_33/strided_slice_1:output:0Msequential_11/lstm_33/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_11_lstm_33_lstm_cell_66_matmul_readvariableop_resourceCsequential_11_lstm_33_lstm_cell_66_matmul_1_readvariableop_resourceBsequential_11_lstm_33_lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_11_lstm_33_while_body_188818*3
cond+R)
'sequential_11_lstm_33_while_cond_188817*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
sequential_11/lstm_33/while?
Fsequential_11/lstm_33/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2H
Fsequential_11/lstm_33/TensorArrayV2Stack/TensorListStack/element_shape?
8sequential_11/lstm_33/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_11/lstm_33/while:output:3Osequential_11/lstm_33/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	?????????	*
element_dtype02:
8sequential_11/lstm_33/TensorArrayV2Stack/TensorListStack?
+sequential_11/lstm_33/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2-
+sequential_11/lstm_33/strided_slice_3/stack?
-sequential_11/lstm_33/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_11/lstm_33/strided_slice_3/stack_1?
-sequential_11/lstm_33/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_11/lstm_33/strided_slice_3/stack_2?
%sequential_11/lstm_33/strided_slice_3StridedSliceAsequential_11/lstm_33/TensorArrayV2Stack/TensorListStack:tensor:04sequential_11/lstm_33/strided_slice_3/stack:output:06sequential_11/lstm_33/strided_slice_3/stack_1:output:06sequential_11/lstm_33/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2'
%sequential_11/lstm_33/strided_slice_3?
&sequential_11/lstm_33/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_11/lstm_33/transpose_1/perm?
!sequential_11/lstm_33/transpose_1	TransposeAsequential_11/lstm_33/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_11/lstm_33/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????		2#
!sequential_11/lstm_33/transpose_1?
sequential_11/lstm_33/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_11/lstm_33/runtime?
sequential_11/lstm_34/ShapeShape%sequential_11/lstm_33/transpose_1:y:0*
T0*
_output_shapes
:2
sequential_11/lstm_34/Shape?
)sequential_11/lstm_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_11/lstm_34/strided_slice/stack?
+sequential_11/lstm_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_11/lstm_34/strided_slice/stack_1?
+sequential_11/lstm_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_11/lstm_34/strided_slice/stack_2?
#sequential_11/lstm_34/strided_sliceStridedSlice$sequential_11/lstm_34/Shape:output:02sequential_11/lstm_34/strided_slice/stack:output:04sequential_11/lstm_34/strided_slice/stack_1:output:04sequential_11/lstm_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_11/lstm_34/strided_slice?
$sequential_11/lstm_34/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_11/lstm_34/zeros/packed/1?
"sequential_11/lstm_34/zeros/packedPack,sequential_11/lstm_34/strided_slice:output:0-sequential_11/lstm_34/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_11/lstm_34/zeros/packed?
!sequential_11/lstm_34/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_11/lstm_34/zeros/Const?
sequential_11/lstm_34/zerosFill+sequential_11/lstm_34/zeros/packed:output:0*sequential_11/lstm_34/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
sequential_11/lstm_34/zeros?
&sequential_11/lstm_34/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_11/lstm_34/zeros_1/packed/1?
$sequential_11/lstm_34/zeros_1/packedPack,sequential_11/lstm_34/strided_slice:output:0/sequential_11/lstm_34/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_11/lstm_34/zeros_1/packed?
#sequential_11/lstm_34/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_11/lstm_34/zeros_1/Const?
sequential_11/lstm_34/zeros_1Fill-sequential_11/lstm_34/zeros_1/packed:output:0,sequential_11/lstm_34/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2
sequential_11/lstm_34/zeros_1?
$sequential_11/lstm_34/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_11/lstm_34/transpose/perm?
sequential_11/lstm_34/transpose	Transpose%sequential_11/lstm_33/transpose_1:y:0-sequential_11/lstm_34/transpose/perm:output:0*
T0*+
_output_shapes
:	?????????	2!
sequential_11/lstm_34/transpose?
sequential_11/lstm_34/Shape_1Shape#sequential_11/lstm_34/transpose:y:0*
T0*
_output_shapes
:2
sequential_11/lstm_34/Shape_1?
+sequential_11/lstm_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_11/lstm_34/strided_slice_1/stack?
-sequential_11/lstm_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_11/lstm_34/strided_slice_1/stack_1?
-sequential_11/lstm_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_11/lstm_34/strided_slice_1/stack_2?
%sequential_11/lstm_34/strided_slice_1StridedSlice&sequential_11/lstm_34/Shape_1:output:04sequential_11/lstm_34/strided_slice_1/stack:output:06sequential_11/lstm_34/strided_slice_1/stack_1:output:06sequential_11/lstm_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_11/lstm_34/strided_slice_1?
1sequential_11/lstm_34/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1sequential_11/lstm_34/TensorArrayV2/element_shape?
#sequential_11/lstm_34/TensorArrayV2TensorListReserve:sequential_11/lstm_34/TensorArrayV2/element_shape:output:0.sequential_11/lstm_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_11/lstm_34/TensorArrayV2?
Ksequential_11/lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2M
Ksequential_11/lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shape?
=sequential_11/lstm_34/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_11/lstm_34/transpose:y:0Tsequential_11/lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_11/lstm_34/TensorArrayUnstack/TensorListFromTensor?
+sequential_11/lstm_34/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_11/lstm_34/strided_slice_2/stack?
-sequential_11/lstm_34/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_11/lstm_34/strided_slice_2/stack_1?
-sequential_11/lstm_34/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_11/lstm_34/strided_slice_2/stack_2?
%sequential_11/lstm_34/strided_slice_2StridedSlice#sequential_11/lstm_34/transpose:y:04sequential_11/lstm_34/strided_slice_2/stack:output:06sequential_11/lstm_34/strided_slice_2/stack_1:output:06sequential_11/lstm_34/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2'
%sequential_11/lstm_34/strided_slice_2?
8sequential_11/lstm_34/lstm_cell_67/MatMul/ReadVariableOpReadVariableOpAsequential_11_lstm_34_lstm_cell_67_matmul_readvariableop_resource*
_output_shapes

:	@*
dtype02:
8sequential_11/lstm_34/lstm_cell_67/MatMul/ReadVariableOp?
)sequential_11/lstm_34/lstm_cell_67/MatMulMatMul.sequential_11/lstm_34/strided_slice_2:output:0@sequential_11/lstm_34/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2+
)sequential_11/lstm_34/lstm_cell_67/MatMul?
:sequential_11/lstm_34/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOpCsequential_11_lstm_34_lstm_cell_67_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02<
:sequential_11/lstm_34/lstm_cell_67/MatMul_1/ReadVariableOp?
+sequential_11/lstm_34/lstm_cell_67/MatMul_1MatMul$sequential_11/lstm_34/zeros:output:0Bsequential_11/lstm_34/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2-
+sequential_11/lstm_34/lstm_cell_67/MatMul_1?
&sequential_11/lstm_34/lstm_cell_67/addAddV23sequential_11/lstm_34/lstm_cell_67/MatMul:product:05sequential_11/lstm_34/lstm_cell_67/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2(
&sequential_11/lstm_34/lstm_cell_67/add?
9sequential_11/lstm_34/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOpBsequential_11_lstm_34_lstm_cell_67_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02;
9sequential_11/lstm_34/lstm_cell_67/BiasAdd/ReadVariableOp?
*sequential_11/lstm_34/lstm_cell_67/BiasAddBiasAdd*sequential_11/lstm_34/lstm_cell_67/add:z:0Asequential_11/lstm_34/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2,
*sequential_11/lstm_34/lstm_cell_67/BiasAdd?
2sequential_11/lstm_34/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_11/lstm_34/lstm_cell_67/split/split_dim?
(sequential_11/lstm_34/lstm_cell_67/splitSplit;sequential_11/lstm_34/lstm_cell_67/split/split_dim:output:03sequential_11/lstm_34/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2*
(sequential_11/lstm_34/lstm_cell_67/split?
*sequential_11/lstm_34/lstm_cell_67/SigmoidSigmoid1sequential_11/lstm_34/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:?????????2,
*sequential_11/lstm_34/lstm_cell_67/Sigmoid?
,sequential_11/lstm_34/lstm_cell_67/Sigmoid_1Sigmoid1sequential_11/lstm_34/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:?????????2.
,sequential_11/lstm_34/lstm_cell_67/Sigmoid_1?
&sequential_11/lstm_34/lstm_cell_67/mulMul0sequential_11/lstm_34/lstm_cell_67/Sigmoid_1:y:0&sequential_11/lstm_34/zeros_1:output:0*
T0*'
_output_shapes
:?????????2(
&sequential_11/lstm_34/lstm_cell_67/mul?
'sequential_11/lstm_34/lstm_cell_67/ReluRelu1sequential_11/lstm_34/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:?????????2)
'sequential_11/lstm_34/lstm_cell_67/Relu?
(sequential_11/lstm_34/lstm_cell_67/mul_1Mul.sequential_11/lstm_34/lstm_cell_67/Sigmoid:y:05sequential_11/lstm_34/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:?????????2*
(sequential_11/lstm_34/lstm_cell_67/mul_1?
(sequential_11/lstm_34/lstm_cell_67/add_1AddV2*sequential_11/lstm_34/lstm_cell_67/mul:z:0,sequential_11/lstm_34/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:?????????2*
(sequential_11/lstm_34/lstm_cell_67/add_1?
,sequential_11/lstm_34/lstm_cell_67/Sigmoid_2Sigmoid1sequential_11/lstm_34/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:?????????2.
,sequential_11/lstm_34/lstm_cell_67/Sigmoid_2?
)sequential_11/lstm_34/lstm_cell_67/Relu_1Relu,sequential_11/lstm_34/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:?????????2+
)sequential_11/lstm_34/lstm_cell_67/Relu_1?
(sequential_11/lstm_34/lstm_cell_67/mul_2Mul0sequential_11/lstm_34/lstm_cell_67/Sigmoid_2:y:07sequential_11/lstm_34/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2*
(sequential_11/lstm_34/lstm_cell_67/mul_2?
3sequential_11/lstm_34/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   25
3sequential_11/lstm_34/TensorArrayV2_1/element_shape?
%sequential_11/lstm_34/TensorArrayV2_1TensorListReserve<sequential_11/lstm_34/TensorArrayV2_1/element_shape:output:0.sequential_11/lstm_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_11/lstm_34/TensorArrayV2_1z
sequential_11/lstm_34/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_11/lstm_34/time?
.sequential_11/lstm_34/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.sequential_11/lstm_34/while/maximum_iterations?
(sequential_11/lstm_34/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_11/lstm_34/while/loop_counter?
sequential_11/lstm_34/whileWhile1sequential_11/lstm_34/while/loop_counter:output:07sequential_11/lstm_34/while/maximum_iterations:output:0#sequential_11/lstm_34/time:output:0.sequential_11/lstm_34/TensorArrayV2_1:handle:0$sequential_11/lstm_34/zeros:output:0&sequential_11/lstm_34/zeros_1:output:0.sequential_11/lstm_34/strided_slice_1:output:0Msequential_11/lstm_34/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_11_lstm_34_lstm_cell_67_matmul_readvariableop_resourceCsequential_11_lstm_34_lstm_cell_67_matmul_1_readvariableop_resourceBsequential_11_lstm_34_lstm_cell_67_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_11_lstm_34_while_body_188957*3
cond+R)
'sequential_11_lstm_34_while_cond_188956*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
sequential_11/lstm_34/while?
Fsequential_11/lstm_34/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2H
Fsequential_11/lstm_34/TensorArrayV2Stack/TensorListStack/element_shape?
8sequential_11/lstm_34/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_11/lstm_34/while:output:3Osequential_11/lstm_34/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	?????????*
element_dtype02:
8sequential_11/lstm_34/TensorArrayV2Stack/TensorListStack?
+sequential_11/lstm_34/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2-
+sequential_11/lstm_34/strided_slice_3/stack?
-sequential_11/lstm_34/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_11/lstm_34/strided_slice_3/stack_1?
-sequential_11/lstm_34/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_11/lstm_34/strided_slice_3/stack_2?
%sequential_11/lstm_34/strided_slice_3StridedSliceAsequential_11/lstm_34/TensorArrayV2Stack/TensorListStack:tensor:04sequential_11/lstm_34/strided_slice_3/stack:output:06sequential_11/lstm_34/strided_slice_3/stack_1:output:06sequential_11/lstm_34/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2'
%sequential_11/lstm_34/strided_slice_3?
&sequential_11/lstm_34/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_11/lstm_34/transpose_1/perm?
!sequential_11/lstm_34/transpose_1	TransposeAsequential_11/lstm_34/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_11/lstm_34/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	2#
!sequential_11/lstm_34/transpose_1?
sequential_11/lstm_34/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_11/lstm_34/runtime?
sequential_11/lstm_35/ShapeShape%sequential_11/lstm_34/transpose_1:y:0*
T0*
_output_shapes
:2
sequential_11/lstm_35/Shape?
)sequential_11/lstm_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_11/lstm_35/strided_slice/stack?
+sequential_11/lstm_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_11/lstm_35/strided_slice/stack_1?
+sequential_11/lstm_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_11/lstm_35/strided_slice/stack_2?
#sequential_11/lstm_35/strided_sliceStridedSlice$sequential_11/lstm_35/Shape:output:02sequential_11/lstm_35/strided_slice/stack:output:04sequential_11/lstm_35/strided_slice/stack_1:output:04sequential_11/lstm_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_11/lstm_35/strided_slice?
$sequential_11/lstm_35/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_11/lstm_35/zeros/packed/1?
"sequential_11/lstm_35/zeros/packedPack,sequential_11/lstm_35/strided_slice:output:0-sequential_11/lstm_35/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_11/lstm_35/zeros/packed?
!sequential_11/lstm_35/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_11/lstm_35/zeros/Const?
sequential_11/lstm_35/zerosFill+sequential_11/lstm_35/zeros/packed:output:0*sequential_11/lstm_35/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_11/lstm_35/zeros?
&sequential_11/lstm_35/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_11/lstm_35/zeros_1/packed/1?
$sequential_11/lstm_35/zeros_1/packedPack,sequential_11/lstm_35/strided_slice:output:0/sequential_11/lstm_35/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_11/lstm_35/zeros_1/packed?
#sequential_11/lstm_35/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_11/lstm_35/zeros_1/Const?
sequential_11/lstm_35/zeros_1Fill-sequential_11/lstm_35/zeros_1/packed:output:0,sequential_11/lstm_35/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_11/lstm_35/zeros_1?
$sequential_11/lstm_35/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_11/lstm_35/transpose/perm?
sequential_11/lstm_35/transpose	Transpose%sequential_11/lstm_34/transpose_1:y:0-sequential_11/lstm_35/transpose/perm:output:0*
T0*+
_output_shapes
:	?????????2!
sequential_11/lstm_35/transpose?
sequential_11/lstm_35/Shape_1Shape#sequential_11/lstm_35/transpose:y:0*
T0*
_output_shapes
:2
sequential_11/lstm_35/Shape_1?
+sequential_11/lstm_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_11/lstm_35/strided_slice_1/stack?
-sequential_11/lstm_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_11/lstm_35/strided_slice_1/stack_1?
-sequential_11/lstm_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_11/lstm_35/strided_slice_1/stack_2?
%sequential_11/lstm_35/strided_slice_1StridedSlice&sequential_11/lstm_35/Shape_1:output:04sequential_11/lstm_35/strided_slice_1/stack:output:06sequential_11/lstm_35/strided_slice_1/stack_1:output:06sequential_11/lstm_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_11/lstm_35/strided_slice_1?
1sequential_11/lstm_35/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1sequential_11/lstm_35/TensorArrayV2/element_shape?
#sequential_11/lstm_35/TensorArrayV2TensorListReserve:sequential_11/lstm_35/TensorArrayV2/element_shape:output:0.sequential_11/lstm_35/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_11/lstm_35/TensorArrayV2?
Ksequential_11/lstm_35/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2M
Ksequential_11/lstm_35/TensorArrayUnstack/TensorListFromTensor/element_shape?
=sequential_11/lstm_35/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_11/lstm_35/transpose:y:0Tsequential_11/lstm_35/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_11/lstm_35/TensorArrayUnstack/TensorListFromTensor?
+sequential_11/lstm_35/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_11/lstm_35/strided_slice_2/stack?
-sequential_11/lstm_35/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_11/lstm_35/strided_slice_2/stack_1?
-sequential_11/lstm_35/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_11/lstm_35/strided_slice_2/stack_2?
%sequential_11/lstm_35/strided_slice_2StridedSlice#sequential_11/lstm_35/transpose:y:04sequential_11/lstm_35/strided_slice_2/stack:output:06sequential_11/lstm_35/strided_slice_2/stack_1:output:06sequential_11/lstm_35/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2'
%sequential_11/lstm_35/strided_slice_2?
8sequential_11/lstm_35/lstm_cell_68/MatMul/ReadVariableOpReadVariableOpAsequential_11_lstm_35_lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02:
8sequential_11/lstm_35/lstm_cell_68/MatMul/ReadVariableOp?
)sequential_11/lstm_35/lstm_cell_68/MatMulMatMul.sequential_11/lstm_35/strided_slice_2:output:0@sequential_11/lstm_35/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)sequential_11/lstm_35/lstm_cell_68/MatMul?
:sequential_11/lstm_35/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOpCsequential_11_lstm_35_lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02<
:sequential_11/lstm_35/lstm_cell_68/MatMul_1/ReadVariableOp?
+sequential_11/lstm_35/lstm_cell_68/MatMul_1MatMul$sequential_11/lstm_35/zeros:output:0Bsequential_11/lstm_35/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+sequential_11/lstm_35/lstm_cell_68/MatMul_1?
&sequential_11/lstm_35/lstm_cell_68/addAddV23sequential_11/lstm_35/lstm_cell_68/MatMul:product:05sequential_11/lstm_35/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2(
&sequential_11/lstm_35/lstm_cell_68/add?
9sequential_11/lstm_35/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOpBsequential_11_lstm_35_lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9sequential_11/lstm_35/lstm_cell_68/BiasAdd/ReadVariableOp?
*sequential_11/lstm_35/lstm_cell_68/BiasAddBiasAdd*sequential_11/lstm_35/lstm_cell_68/add:z:0Asequential_11/lstm_35/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*sequential_11/lstm_35/lstm_cell_68/BiasAdd?
2sequential_11/lstm_35/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_11/lstm_35/lstm_cell_68/split/split_dim?
(sequential_11/lstm_35/lstm_cell_68/splitSplit;sequential_11/lstm_35/lstm_cell_68/split/split_dim:output:03sequential_11/lstm_35/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2*
(sequential_11/lstm_35/lstm_cell_68/split?
*sequential_11/lstm_35/lstm_cell_68/SigmoidSigmoid1sequential_11/lstm_35/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:????????? 2,
*sequential_11/lstm_35/lstm_cell_68/Sigmoid?
,sequential_11/lstm_35/lstm_cell_68/Sigmoid_1Sigmoid1sequential_11/lstm_35/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:????????? 2.
,sequential_11/lstm_35/lstm_cell_68/Sigmoid_1?
&sequential_11/lstm_35/lstm_cell_68/mulMul0sequential_11/lstm_35/lstm_cell_68/Sigmoid_1:y:0&sequential_11/lstm_35/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2(
&sequential_11/lstm_35/lstm_cell_68/mul?
'sequential_11/lstm_35/lstm_cell_68/ReluRelu1sequential_11/lstm_35/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:????????? 2)
'sequential_11/lstm_35/lstm_cell_68/Relu?
(sequential_11/lstm_35/lstm_cell_68/mul_1Mul.sequential_11/lstm_35/lstm_cell_68/Sigmoid:y:05sequential_11/lstm_35/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:????????? 2*
(sequential_11/lstm_35/lstm_cell_68/mul_1?
(sequential_11/lstm_35/lstm_cell_68/add_1AddV2*sequential_11/lstm_35/lstm_cell_68/mul:z:0,sequential_11/lstm_35/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:????????? 2*
(sequential_11/lstm_35/lstm_cell_68/add_1?
,sequential_11/lstm_35/lstm_cell_68/Sigmoid_2Sigmoid1sequential_11/lstm_35/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:????????? 2.
,sequential_11/lstm_35/lstm_cell_68/Sigmoid_2?
)sequential_11/lstm_35/lstm_cell_68/Relu_1Relu,sequential_11/lstm_35/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:????????? 2+
)sequential_11/lstm_35/lstm_cell_68/Relu_1?
(sequential_11/lstm_35/lstm_cell_68/mul_2Mul0sequential_11/lstm_35/lstm_cell_68/Sigmoid_2:y:07sequential_11/lstm_35/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2*
(sequential_11/lstm_35/lstm_cell_68/mul_2?
3sequential_11/lstm_35/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    25
3sequential_11/lstm_35/TensorArrayV2_1/element_shape?
%sequential_11/lstm_35/TensorArrayV2_1TensorListReserve<sequential_11/lstm_35/TensorArrayV2_1/element_shape:output:0.sequential_11/lstm_35/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_11/lstm_35/TensorArrayV2_1z
sequential_11/lstm_35/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_11/lstm_35/time?
.sequential_11/lstm_35/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.sequential_11/lstm_35/while/maximum_iterations?
(sequential_11/lstm_35/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_11/lstm_35/while/loop_counter?
sequential_11/lstm_35/whileWhile1sequential_11/lstm_35/while/loop_counter:output:07sequential_11/lstm_35/while/maximum_iterations:output:0#sequential_11/lstm_35/time:output:0.sequential_11/lstm_35/TensorArrayV2_1:handle:0$sequential_11/lstm_35/zeros:output:0&sequential_11/lstm_35/zeros_1:output:0.sequential_11/lstm_35/strided_slice_1:output:0Msequential_11/lstm_35/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_11_lstm_35_lstm_cell_68_matmul_readvariableop_resourceCsequential_11_lstm_35_lstm_cell_68_matmul_1_readvariableop_resourceBsequential_11_lstm_35_lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_11_lstm_35_while_body_189096*3
cond+R)
'sequential_11_lstm_35_while_cond_189095*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
sequential_11/lstm_35/while?
Fsequential_11/lstm_35/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2H
Fsequential_11/lstm_35/TensorArrayV2Stack/TensorListStack/element_shape?
8sequential_11/lstm_35/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_11/lstm_35/while:output:3Osequential_11/lstm_35/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	????????? *
element_dtype02:
8sequential_11/lstm_35/TensorArrayV2Stack/TensorListStack?
+sequential_11/lstm_35/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2-
+sequential_11/lstm_35/strided_slice_3/stack?
-sequential_11/lstm_35/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_11/lstm_35/strided_slice_3/stack_1?
-sequential_11/lstm_35/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_11/lstm_35/strided_slice_3/stack_2?
%sequential_11/lstm_35/strided_slice_3StridedSliceAsequential_11/lstm_35/TensorArrayV2Stack/TensorListStack:tensor:04sequential_11/lstm_35/strided_slice_3/stack:output:06sequential_11/lstm_35/strided_slice_3/stack_1:output:06sequential_11/lstm_35/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2'
%sequential_11/lstm_35/strided_slice_3?
&sequential_11/lstm_35/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_11/lstm_35/transpose_1/perm?
!sequential_11/lstm_35/transpose_1	TransposeAsequential_11/lstm_35/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_11/lstm_35/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	 2#
!sequential_11/lstm_35/transpose_1?
sequential_11/lstm_35/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_11/lstm_35/runtime?
,sequential_11/dense_22/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_22_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02.
,sequential_11/dense_22/MatMul/ReadVariableOp?
sequential_11/dense_22/MatMulMatMul.sequential_11/lstm_35/strided_slice_3:output:04sequential_11/dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential_11/dense_22/MatMul?
-sequential_11/dense_22/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_22_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_11/dense_22/BiasAdd/ReadVariableOp?
sequential_11/dense_22/BiasAddBiasAdd'sequential_11/dense_22/MatMul:product:05sequential_11/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2 
sequential_11/dense_22/BiasAdd?
 sequential_11/activation_22/ReluRelu'sequential_11/dense_22/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2"
 sequential_11/activation_22/Relu?
,sequential_11/dense_23/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_23_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,sequential_11/dense_23/MatMul/ReadVariableOp?
sequential_11/dense_23/MatMulMatMul.sequential_11/activation_22/Relu:activations:04sequential_11/dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_11/dense_23/MatMul?
-sequential_11/dense_23/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_11/dense_23/BiasAdd/ReadVariableOp?
sequential_11/dense_23/BiasAddBiasAdd'sequential_11/dense_23/MatMul:product:05sequential_11/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_11/dense_23/BiasAdd?
IdentityIdentity'sequential_11/dense_23/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp.^sequential_11/dense_22/BiasAdd/ReadVariableOp-^sequential_11/dense_22/MatMul/ReadVariableOp.^sequential_11/dense_23/BiasAdd/ReadVariableOp-^sequential_11/dense_23/MatMul/ReadVariableOp:^sequential_11/lstm_33/lstm_cell_66/BiasAdd/ReadVariableOp9^sequential_11/lstm_33/lstm_cell_66/MatMul/ReadVariableOp;^sequential_11/lstm_33/lstm_cell_66/MatMul_1/ReadVariableOp^sequential_11/lstm_33/while:^sequential_11/lstm_34/lstm_cell_67/BiasAdd/ReadVariableOp9^sequential_11/lstm_34/lstm_cell_67/MatMul/ReadVariableOp;^sequential_11/lstm_34/lstm_cell_67/MatMul_1/ReadVariableOp^sequential_11/lstm_34/while:^sequential_11/lstm_35/lstm_cell_68/BiasAdd/ReadVariableOp9^sequential_11/lstm_35/lstm_cell_68/MatMul/ReadVariableOp;^sequential_11/lstm_35/lstm_cell_68/MatMul_1/ReadVariableOp^sequential_11/lstm_35/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????	: : : : : : : : : : : : : 2^
-sequential_11/dense_22/BiasAdd/ReadVariableOp-sequential_11/dense_22/BiasAdd/ReadVariableOp2\
,sequential_11/dense_22/MatMul/ReadVariableOp,sequential_11/dense_22/MatMul/ReadVariableOp2^
-sequential_11/dense_23/BiasAdd/ReadVariableOp-sequential_11/dense_23/BiasAdd/ReadVariableOp2\
,sequential_11/dense_23/MatMul/ReadVariableOp,sequential_11/dense_23/MatMul/ReadVariableOp2v
9sequential_11/lstm_33/lstm_cell_66/BiasAdd/ReadVariableOp9sequential_11/lstm_33/lstm_cell_66/BiasAdd/ReadVariableOp2t
8sequential_11/lstm_33/lstm_cell_66/MatMul/ReadVariableOp8sequential_11/lstm_33/lstm_cell_66/MatMul/ReadVariableOp2x
:sequential_11/lstm_33/lstm_cell_66/MatMul_1/ReadVariableOp:sequential_11/lstm_33/lstm_cell_66/MatMul_1/ReadVariableOp2:
sequential_11/lstm_33/whilesequential_11/lstm_33/while2v
9sequential_11/lstm_34/lstm_cell_67/BiasAdd/ReadVariableOp9sequential_11/lstm_34/lstm_cell_67/BiasAdd/ReadVariableOp2t
8sequential_11/lstm_34/lstm_cell_67/MatMul/ReadVariableOp8sequential_11/lstm_34/lstm_cell_67/MatMul/ReadVariableOp2x
:sequential_11/lstm_34/lstm_cell_67/MatMul_1/ReadVariableOp:sequential_11/lstm_34/lstm_cell_67/MatMul_1/ReadVariableOp2:
sequential_11/lstm_34/whilesequential_11/lstm_34/while2v
9sequential_11/lstm_35/lstm_cell_68/BiasAdd/ReadVariableOp9sequential_11/lstm_35/lstm_cell_68/BiasAdd/ReadVariableOp2t
8sequential_11/lstm_35/lstm_cell_68/MatMul/ReadVariableOp8sequential_11/lstm_35/lstm_cell_68/MatMul/ReadVariableOp2x
:sequential_11/lstm_35/lstm_cell_68/MatMul_1/ReadVariableOp:sequential_11/lstm_35/lstm_cell_68/MatMul_1/ReadVariableOp2:
sequential_11/lstm_35/whilesequential_11/lstm_35/while:Z V
+
_output_shapes
:?????????	
'
_user_specified_namelstm_33_input
?U
?
C__inference_lstm_34_layer_call_and_return_conditional_losses_191286

inputs=
+lstm_cell_67_matmul_readvariableop_resource:	@?
-lstm_cell_67_matmul_1_readvariableop_resource:@:
,lstm_cell_67_biasadd_readvariableop_resource:@
identity??#lstm_cell_67/BiasAdd/ReadVariableOp?"lstm_cell_67/MatMul/ReadVariableOp?$lstm_cell_67/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	?????????	2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_67/MatMul/ReadVariableOpReadVariableOp+lstm_cell_67_matmul_readvariableop_resource*
_output_shapes

:	@*
dtype02$
"lstm_cell_67/MatMul/ReadVariableOp?
lstm_cell_67/MatMulMatMulstrided_slice_2:output:0*lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/MatMul?
$lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_67_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_67/MatMul_1/ReadVariableOp?
lstm_cell_67/MatMul_1MatMulzeros:output:0,lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/MatMul_1?
lstm_cell_67/addAddV2lstm_cell_67/MatMul:product:0lstm_cell_67/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/add?
#lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_67_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_67/BiasAdd/ReadVariableOp?
lstm_cell_67/BiasAddBiasAddlstm_cell_67/add:z:0+lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/BiasAdd~
lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_67/split/split_dim?
lstm_cell_67/splitSplit%lstm_cell_67/split/split_dim:output:0lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_cell_67/split?
lstm_cell_67/SigmoidSigmoidlstm_cell_67/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Sigmoid?
lstm_cell_67/Sigmoid_1Sigmoidlstm_cell_67/split:output:1*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Sigmoid_1?
lstm_cell_67/mulMullstm_cell_67/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/mul}
lstm_cell_67/ReluRelulstm_cell_67/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Relu?
lstm_cell_67/mul_1Mullstm_cell_67/Sigmoid:y:0lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/mul_1?
lstm_cell_67/add_1AddV2lstm_cell_67/mul:z:0lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/add_1?
lstm_cell_67/Sigmoid_2Sigmoidlstm_cell_67/split:output:3*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Sigmoid_2|
lstm_cell_67/Relu_1Relulstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Relu_1?
lstm_cell_67/mul_2Mullstm_cell_67/Sigmoid_2:y:0!lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_67_matmul_readvariableop_resource-lstm_cell_67_matmul_1_readvariableop_resource,lstm_cell_67_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_191202*
condR
while_cond_191201*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	?????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????	2

Identity?
NoOpNoOp$^lstm_cell_67/BiasAdd/ReadVariableOp#^lstm_cell_67/MatMul/ReadVariableOp%^lstm_cell_67/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????		: : : 2J
#lstm_cell_67/BiasAdd/ReadVariableOp#lstm_cell_67/BiasAdd/ReadVariableOp2H
"lstm_cell_67/MatMul/ReadVariableOp"lstm_cell_67/MatMul/ReadVariableOp2L
$lstm_cell_67/MatMul_1/ReadVariableOp$lstm_cell_67/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????		
 
_user_specified_nameinputs
?
?
(__inference_lstm_34_layer_call_fn_193840
inputs_0
unknown:	@
	unknown_0:@
	unknown_1:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_1899412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????	
"
_user_specified_name
inputs/0
?

?
D__inference_dense_22_layer_call_and_return_conditional_losses_191454

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
while_cond_193744
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_193744___redundant_placeholder04
0while_while_cond_193744___redundant_placeholder14
0while_while_cond_193744___redundant_placeholder24
0while_while_cond_193744___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_190469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_190469___redundant_placeholder04
0while_while_cond_190469___redundant_placeholder14
0while_while_cond_190469___redundant_placeholder24
0while_while_cond_190469___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
.__inference_sequential_11_layer_call_fn_192314

inputs
unknown:$
	unknown_0:	$
	unknown_1:$
	unknown_2:	@
	unknown_3:@
	unknown_4:@
	unknown_5:	?
	unknown_6:	 ?
	unknown_7:	?
	unknown_8:  
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_1914902
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????	: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?U
?
C__inference_lstm_35_layer_call_and_return_conditional_losses_191707

inputs>
+lstm_cell_68_matmul_readvariableop_resource:	?@
-lstm_cell_68_matmul_1_readvariableop_resource:	 ?;
,lstm_cell_68_biasadd_readvariableop_resource:	?
identity??#lstm_cell_68/BiasAdd/ReadVariableOp?"lstm_cell_68/MatMul/ReadVariableOp?$lstm_cell_68/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_68/MatMul/ReadVariableOp?
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/MatMul?
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02&
$lstm_cell_68/MatMul_1/ReadVariableOp?
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/MatMul_1?
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/add?
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_68/BiasAdd/ReadVariableOp?
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/BiasAdd~
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_68/split/split_dim?
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_68/split?
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Sigmoid?
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Sigmoid_1?
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/mul}
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Relu?
lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/mul_1?
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/add_1?
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Sigmoid_2|
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Relu_1?
lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_191623*
condR
while_cond_191622*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????	: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?$
?
I__inference_sequential_11_layer_call_and_return_conditional_losses_192213
lstm_33_input 
lstm_33_192179:$ 
lstm_33_192181:	$
lstm_33_192183:$ 
lstm_34_192186:	@ 
lstm_34_192188:@
lstm_34_192190:@!
lstm_35_192193:	?!
lstm_35_192195:	 ?
lstm_35_192197:	?!
dense_22_192200:  
dense_22_192202: !
dense_23_192206: 
dense_23_192208:
identity?? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?lstm_33/StatefulPartitionedCall?lstm_34/StatefulPartitionedCall?lstm_35/StatefulPartitionedCall?
lstm_33/StatefulPartitionedCallStatefulPartitionedCalllstm_33_inputlstm_33_192179lstm_33_192181lstm_33_192183*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????		*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_1911362!
lstm_33/StatefulPartitionedCall?
lstm_34/StatefulPartitionedCallStatefulPartitionedCall(lstm_33/StatefulPartitionedCall:output:0lstm_34_192186lstm_34_192188lstm_34_192190*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_1912862!
lstm_34/StatefulPartitionedCall?
lstm_35/StatefulPartitionedCallStatefulPartitionedCall(lstm_34/StatefulPartitionedCall:output:0lstm_35_192193lstm_35_192195lstm_35_192197*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_35_layer_call_and_return_conditional_losses_1914362!
lstm_35/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall(lstm_35/StatefulPartitionedCall:output:0dense_22_192200dense_22_192202*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_1914542"
 dense_22/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_22_layer_call_and_return_conditional_losses_1914652
activation_22/PartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0dense_23_192206dense_23_192208*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_1914772"
 dense_23/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall)dense_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_23_layer_call_and_return_conditional_losses_1914872
activation_23/PartitionedCall?
IdentityIdentity&activation_23/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall ^lstm_33/StatefulPartitionedCall ^lstm_34/StatefulPartitionedCall ^lstm_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????	: : : : : : : : : : : : : 2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2B
lstm_33/StatefulPartitionedCalllstm_33/StatefulPartitionedCall2B
lstm_34/StatefulPartitionedCalllstm_34/StatefulPartitionedCall2B
lstm_35/StatefulPartitionedCalllstm_35/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????	
'
_user_specified_namelstm_33_input
?
?
'sequential_11_lstm_34_while_cond_188956H
Dsequential_11_lstm_34_while_sequential_11_lstm_34_while_loop_counterN
Jsequential_11_lstm_34_while_sequential_11_lstm_34_while_maximum_iterations+
'sequential_11_lstm_34_while_placeholder-
)sequential_11_lstm_34_while_placeholder_1-
)sequential_11_lstm_34_while_placeholder_2-
)sequential_11_lstm_34_while_placeholder_3J
Fsequential_11_lstm_34_while_less_sequential_11_lstm_34_strided_slice_1`
\sequential_11_lstm_34_while_sequential_11_lstm_34_while_cond_188956___redundant_placeholder0`
\sequential_11_lstm_34_while_sequential_11_lstm_34_while_cond_188956___redundant_placeholder1`
\sequential_11_lstm_34_while_sequential_11_lstm_34_while_cond_188956___redundant_placeholder2`
\sequential_11_lstm_34_while_sequential_11_lstm_34_while_cond_188956___redundant_placeholder3(
$sequential_11_lstm_34_while_identity
?
 sequential_11/lstm_34/while/LessLess'sequential_11_lstm_34_while_placeholderFsequential_11_lstm_34_while_less_sequential_11_lstm_34_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_11/lstm_34/while/Less?
$sequential_11/lstm_34/while/IdentityIdentity$sequential_11/lstm_34/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_11/lstm_34/while/Identity"U
$sequential_11_lstm_34_while_identity-sequential_11/lstm_34/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
??
?
while_body_191623
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_68_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:	 ?C
4while_lstm_cell_68_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_68_matmul_readvariableop_resource:	?F
3while_lstm_cell_68_matmul_1_readvariableop_resource:	 ?A
2while_lstm_cell_68_biasadd_readvariableop_resource:	???)while/lstm_cell_68/BiasAdd/ReadVariableOp?(while/lstm_cell_68/MatMul/ReadVariableOp?*while/lstm_cell_68/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_68/MatMul/ReadVariableOp?
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/MatMul?
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02,
*while/lstm_cell_68/MatMul_1/ReadVariableOp?
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/MatMul_1?
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/add?
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_68/BiasAdd/ReadVariableOp?
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/BiasAdd?
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_68/split/split_dim?
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_68/split?
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Sigmoid?
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Sigmoid_1?
while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/mul?
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Relu?
while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/mul_1?
while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/add_1?
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Sigmoid_2?
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Relu_1?
while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
??
?
while_body_194977
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_68_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:	 ?C
4while_lstm_cell_68_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_68_matmul_readvariableop_resource:	?F
3while_lstm_cell_68_matmul_1_readvariableop_resource:	 ?A
2while_lstm_cell_68_biasadd_readvariableop_resource:	???)while/lstm_cell_68/BiasAdd/ReadVariableOp?(while/lstm_cell_68/MatMul/ReadVariableOp?*while/lstm_cell_68/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_68/MatMul/ReadVariableOp?
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/MatMul?
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02,
*while/lstm_cell_68/MatMul_1/ReadVariableOp?
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/MatMul_1?
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/add?
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_68/BiasAdd/ReadVariableOp?
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/BiasAdd?
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_68/split/split_dim?
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_68/split?
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Sigmoid?
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Sigmoid_1?
while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/mul?
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Relu?
while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/mul_1?
while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/add_1?
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Sigmoid_2?
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Relu_1?
while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_191351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_191351___redundant_placeholder04
0while_while_cond_191351___redundant_placeholder14
0while_while_cond_191351___redundant_placeholder24
0while_while_cond_191351___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?

?
lstm_34_while_cond_192976,
(lstm_34_while_lstm_34_while_loop_counter2
.lstm_34_while_lstm_34_while_maximum_iterations
lstm_34_while_placeholder
lstm_34_while_placeholder_1
lstm_34_while_placeholder_2
lstm_34_while_placeholder_3.
*lstm_34_while_less_lstm_34_strided_slice_1D
@lstm_34_while_lstm_34_while_cond_192976___redundant_placeholder0D
@lstm_34_while_lstm_34_while_cond_192976___redundant_placeholder1D
@lstm_34_while_lstm_34_while_cond_192976___redundant_placeholder2D
@lstm_34_while_lstm_34_while_cond_192976___redundant_placeholder3
lstm_34_while_identity
?
lstm_34/while/LessLesslstm_34_while_placeholder*lstm_34_while_less_lstm_34_strided_slice_1*
T0*
_output_shapes
: 2
lstm_34/while/Lessu
lstm_34/while/IdentityIdentitylstm_34/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_34/while/Identity"9
lstm_34_while_identitylstm_34/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_194547
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_194547___redundant_placeholder04
0while_while_cond_194547___redundant_placeholder14
0while_while_cond_194547___redundant_placeholder24
0while_while_cond_194547___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?U
?
C__inference_lstm_35_layer_call_and_return_conditional_losses_194632
inputs_0>
+lstm_cell_68_matmul_readvariableop_resource:	?@
-lstm_cell_68_matmul_1_readvariableop_resource:	 ?;
,lstm_cell_68_biasadd_readvariableop_resource:	?
identity??#lstm_cell_68/BiasAdd/ReadVariableOp?"lstm_cell_68/MatMul/ReadVariableOp?$lstm_cell_68/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_68/MatMul/ReadVariableOp?
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/MatMul?
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02&
$lstm_cell_68/MatMul_1/ReadVariableOp?
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/MatMul_1?
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/add?
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_68/BiasAdd/ReadVariableOp?
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/BiasAdd~
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_68/split/split_dim?
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_68/split?
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Sigmoid?
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Sigmoid_1?
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/mul}
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Relu?
lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/mul_1?
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/add_1?
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Sigmoid_2|
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Relu_1?
lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_194548*
condR
while_cond_194547*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?
while_body_191202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_67_matmul_readvariableop_resource_0:	@G
5while_lstm_cell_67_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_67_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_67_matmul_readvariableop_resource:	@E
3while_lstm_cell_67_matmul_1_readvariableop_resource:@@
2while_lstm_cell_67_biasadd_readvariableop_resource:@??)while/lstm_cell_67/BiasAdd/ReadVariableOp?(while/lstm_cell_67/MatMul/ReadVariableOp?*while/lstm_cell_67/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_67_matmul_readvariableop_resource_0*
_output_shapes

:	@*
dtype02*
(while/lstm_cell_67/MatMul/ReadVariableOp?
while/lstm_cell_67/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/MatMul?
*while/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_67_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_67/MatMul_1/ReadVariableOp?
while/lstm_cell_67/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/MatMul_1?
while/lstm_cell_67/addAddV2#while/lstm_cell_67/MatMul:product:0%while/lstm_cell_67/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/add?
)while/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_67_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_67/BiasAdd/ReadVariableOp?
while/lstm_cell_67/BiasAddBiasAddwhile/lstm_cell_67/add:z:01while/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/BiasAdd?
"while/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_67/split/split_dim?
while/lstm_cell_67/splitSplit+while/lstm_cell_67/split/split_dim:output:0#while/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/lstm_cell_67/split?
while/lstm_cell_67/SigmoidSigmoid!while/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Sigmoid?
while/lstm_cell_67/Sigmoid_1Sigmoid!while/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Sigmoid_1?
while/lstm_cell_67/mulMul while/lstm_cell_67/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/mul?
while/lstm_cell_67/ReluRelu!while/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Relu?
while/lstm_cell_67/mul_1Mulwhile/lstm_cell_67/Sigmoid:y:0%while/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/mul_1?
while/lstm_cell_67/add_1AddV2while/lstm_cell_67/mul:z:0while/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/add_1?
while/lstm_cell_67/Sigmoid_2Sigmoid!while/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Sigmoid_2?
while/lstm_cell_67/Relu_1Reluwhile/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Relu_1?
while/lstm_cell_67/mul_2Mul while/lstm_cell_67/Sigmoid_2:y:0'while/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_67/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_67/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_67/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_67/BiasAdd/ReadVariableOp)^while/lstm_cell_67/MatMul/ReadVariableOp+^while/lstm_cell_67/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_67_biasadd_readvariableop_resource4while_lstm_cell_67_biasadd_readvariableop_resource_0"l
3while_lstm_cell_67_matmul_1_readvariableop_resource5while_lstm_cell_67_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_67_matmul_readvariableop_resource3while_lstm_cell_67_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_67/BiasAdd/ReadVariableOp)while/lstm_cell_67/BiasAdd/ReadVariableOp2T
(while/lstm_cell_67/MatMul/ReadVariableOp(while/lstm_cell_67/MatMul/ReadVariableOp2X
*while/lstm_cell_67/MatMul_1/ReadVariableOp*while/lstm_cell_67/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?

?
D__inference_dense_23_layer_call_and_return_conditional_losses_191477

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
lstm_33_while_cond_192837,
(lstm_33_while_lstm_33_while_loop_counter2
.lstm_33_while_lstm_33_while_maximum_iterations
lstm_33_while_placeholder
lstm_33_while_placeholder_1
lstm_33_while_placeholder_2
lstm_33_while_placeholder_3.
*lstm_33_while_less_lstm_33_strided_slice_1D
@lstm_33_while_lstm_33_while_cond_192837___redundant_placeholder0D
@lstm_33_while_lstm_33_while_cond_192837___redundant_placeholder1D
@lstm_33_while_lstm_33_while_cond_192837___redundant_placeholder2D
@lstm_33_while_lstm_33_while_cond_192837___redundant_placeholder3
lstm_33_while_identity
?
lstm_33/while/LessLesslstm_33_while_placeholder*lstm_33_while_less_lstm_33_strided_slice_1*
T0*
_output_shapes
: 2
lstm_33/while/Lessu
lstm_33/while/IdentityIdentitylstm_33/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_33/while/Identity"9
lstm_33_while_identitylstm_33/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
??
?
C__inference_lstm_33_layer_call_and_return_conditional_losses_189545

inputs%
lstm_cell_66_189463:$%
lstm_cell_66_189465:	$!
lstm_cell_66_189467:$
identity??$lstm_cell_66/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????	2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????	2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_66_189463lstm_cell_66_189465lstm_cell_66_189467*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????	:?????????	:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_1894062&
$lstm_cell_66/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_66_189463lstm_cell_66_189465lstm_cell_66_189467*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_189476*
condR
while_cond_189475*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????	*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????	2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????	2

Identity}
NoOpNoOp%^lstm_cell_66/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_66/StatefulPartitionedCall$lstm_cell_66/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_190671
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_190671___redundant_placeholder04
0while_while_cond_190671___redundant_placeholder14
0while_while_cond_190671___redundant_placeholder24
0while_while_cond_190671___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
(__inference_lstm_34_layer_call_fn_193873

inputs
unknown:	@
	unknown_0:@
	unknown_1:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_1918722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????		: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????		
 
_user_specified_nameinputs
?U
?
C__inference_lstm_34_layer_call_and_return_conditional_losses_194016
inputs_0=
+lstm_cell_67_matmul_readvariableop_resource:	@?
-lstm_cell_67_matmul_1_readvariableop_resource:@:
,lstm_cell_67_biasadd_readvariableop_resource:@
identity??#lstm_cell_67/BiasAdd/ReadVariableOp?"lstm_cell_67/MatMul/ReadVariableOp?$lstm_cell_67/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????	2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_67/MatMul/ReadVariableOpReadVariableOp+lstm_cell_67_matmul_readvariableop_resource*
_output_shapes

:	@*
dtype02$
"lstm_cell_67/MatMul/ReadVariableOp?
lstm_cell_67/MatMulMatMulstrided_slice_2:output:0*lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/MatMul?
$lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_67_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_67/MatMul_1/ReadVariableOp?
lstm_cell_67/MatMul_1MatMulzeros:output:0,lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/MatMul_1?
lstm_cell_67/addAddV2lstm_cell_67/MatMul:product:0lstm_cell_67/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/add?
#lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_67_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_67/BiasAdd/ReadVariableOp?
lstm_cell_67/BiasAddBiasAddlstm_cell_67/add:z:0+lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/BiasAdd~
lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_67/split/split_dim?
lstm_cell_67/splitSplit%lstm_cell_67/split/split_dim:output:0lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_cell_67/split?
lstm_cell_67/SigmoidSigmoidlstm_cell_67/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Sigmoid?
lstm_cell_67/Sigmoid_1Sigmoidlstm_cell_67/split:output:1*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Sigmoid_1?
lstm_cell_67/mulMullstm_cell_67/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/mul}
lstm_cell_67/ReluRelulstm_cell_67/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Relu?
lstm_cell_67/mul_1Mullstm_cell_67/Sigmoid:y:0lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/mul_1?
lstm_cell_67/add_1AddV2lstm_cell_67/mul:z:0lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/add_1?
lstm_cell_67/Sigmoid_2Sigmoidlstm_cell_67/split:output:3*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Sigmoid_2|
lstm_cell_67/Relu_1Relulstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Relu_1?
lstm_cell_67/mul_2Mullstm_cell_67/Sigmoid_2:y:0!lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_67_matmul_readvariableop_resource-lstm_cell_67_matmul_1_readvariableop_resource,lstm_cell_67_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_193932*
condR
while_cond_193931*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2

Identity?
NoOpNoOp$^lstm_cell_67/BiasAdd/ReadVariableOp#^lstm_cell_67/MatMul/ReadVariableOp%^lstm_cell_67/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????	: : : 2J
#lstm_cell_67/BiasAdd/ReadVariableOp#lstm_cell_67/BiasAdd/ReadVariableOp2H
"lstm_cell_67/MatMul/ReadVariableOp"lstm_cell_67/MatMul/ReadVariableOp2L
$lstm_cell_67/MatMul_1/ReadVariableOp$lstm_cell_67/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????	
"
_user_specified_name
inputs/0
?
J
.__inference_activation_22_layer_call_fn_195085

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_22_layer_call_and_return_conditional_losses_1914652
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
D__inference_dense_22_layer_call_and_return_conditional_losses_195080

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?U
?
C__inference_lstm_35_layer_call_and_return_conditional_losses_195061

inputs>
+lstm_cell_68_matmul_readvariableop_resource:	?@
-lstm_cell_68_matmul_1_readvariableop_resource:	 ?;
,lstm_cell_68_biasadd_readvariableop_resource:	?
identity??#lstm_cell_68/BiasAdd/ReadVariableOp?"lstm_cell_68/MatMul/ReadVariableOp?$lstm_cell_68/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_68/MatMul/ReadVariableOp?
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/MatMul?
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02&
$lstm_cell_68/MatMul_1/ReadVariableOp?
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/MatMul_1?
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/add?
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_68/BiasAdd/ReadVariableOp?
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/BiasAdd~
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_68/split/split_dim?
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_68/split?
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Sigmoid?
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Sigmoid_1?
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/mul}
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Relu?
lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/mul_1?
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/add_1?
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Sigmoid_2|
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Relu_1?
lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_194977*
condR
while_cond_194976*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????	: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?U
?
C__inference_lstm_33_layer_call_and_return_conditional_losses_193543
inputs_0=
+lstm_cell_66_matmul_readvariableop_resource:$?
-lstm_cell_66_matmul_1_readvariableop_resource:	$:
,lstm_cell_66_biasadd_readvariableop_resource:$
identity??#lstm_cell_66/BiasAdd/ReadVariableOp?"lstm_cell_66/MatMul/ReadVariableOp?$lstm_cell_66/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????	2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????	2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource*
_output_shapes

:$*
dtype02$
"lstm_cell_66/MatMul/ReadVariableOp?
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/MatMul?
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02&
$lstm_cell_66/MatMul_1/ReadVariableOp?
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/MatMul_1?
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/add?
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02%
#lstm_cell_66/BiasAdd/ReadVariableOp?
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_66/BiasAdd~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dim?
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_cell_66/split?
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Sigmoid?
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Sigmoid_1?
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/mul}
lstm_cell_66/ReluRelulstm_cell_66/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Relu?
lstm_cell_66/mul_1Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/mul_1?
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/add_1?
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Sigmoid_2|
lstm_cell_66/Relu_1Relulstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/Relu_1?
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_66/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_193459*
condR
while_cond_193458*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????	*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????	2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????	2

Identity?
NoOpNoOp$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_191952
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_191952___redundant_placeholder04
0while_while_cond_191952___redundant_placeholder14
0while_while_cond_191952___redundant_placeholder24
0while_while_cond_191952___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
??
?
C__inference_lstm_35_layer_call_and_return_conditional_losses_190741

inputs&
lstm_cell_68_190659:	?&
lstm_cell_68_190661:	 ?"
lstm_cell_68_190663:	?
identity??$lstm_cell_68/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_68/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_68_190659lstm_cell_68_190661lstm_cell_68_190663*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_1906022&
$lstm_cell_68/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_68_190659lstm_cell_68_190661lstm_cell_68_190663*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_190672*
condR
while_cond_190671*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity}
NoOpNoOp%^lstm_cell_68/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_68/StatefulPartitionedCall$lstm_cell_68/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
)__inference_dense_23_layer_call_fn_195099

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_1914772
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
while_body_191788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_67_matmul_readvariableop_resource_0:	@G
5while_lstm_cell_67_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_67_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_67_matmul_readvariableop_resource:	@E
3while_lstm_cell_67_matmul_1_readvariableop_resource:@@
2while_lstm_cell_67_biasadd_readvariableop_resource:@??)while/lstm_cell_67/BiasAdd/ReadVariableOp?(while/lstm_cell_67/MatMul/ReadVariableOp?*while/lstm_cell_67/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_67_matmul_readvariableop_resource_0*
_output_shapes

:	@*
dtype02*
(while/lstm_cell_67/MatMul/ReadVariableOp?
while/lstm_cell_67/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/MatMul?
*while/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_67_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_67/MatMul_1/ReadVariableOp?
while/lstm_cell_67/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/MatMul_1?
while/lstm_cell_67/addAddV2#while/lstm_cell_67/MatMul:product:0%while/lstm_cell_67/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/add?
)while/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_67_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_67/BiasAdd/ReadVariableOp?
while/lstm_cell_67/BiasAddBiasAddwhile/lstm_cell_67/add:z:01while/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/BiasAdd?
"while/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_67/split/split_dim?
while/lstm_cell_67/splitSplit+while/lstm_cell_67/split/split_dim:output:0#while/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/lstm_cell_67/split?
while/lstm_cell_67/SigmoidSigmoid!while/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Sigmoid?
while/lstm_cell_67/Sigmoid_1Sigmoid!while/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Sigmoid_1?
while/lstm_cell_67/mulMul while/lstm_cell_67/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/mul?
while/lstm_cell_67/ReluRelu!while/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Relu?
while/lstm_cell_67/mul_1Mulwhile/lstm_cell_67/Sigmoid:y:0%while/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/mul_1?
while/lstm_cell_67/add_1AddV2while/lstm_cell_67/mul:z:0while/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/add_1?
while/lstm_cell_67/Sigmoid_2Sigmoid!while/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Sigmoid_2?
while/lstm_cell_67/Relu_1Reluwhile/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Relu_1?
while/lstm_cell_67/mul_2Mul while/lstm_cell_67/Sigmoid_2:y:0'while/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_67/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_67/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_67/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_67/BiasAdd/ReadVariableOp)^while/lstm_cell_67/MatMul/ReadVariableOp+^while/lstm_cell_67/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_67_biasadd_readvariableop_resource4while_lstm_cell_67_biasadd_readvariableop_resource_0"l
3while_lstm_cell_67_matmul_1_readvariableop_resource5while_lstm_cell_67_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_67_matmul_readvariableop_resource3while_lstm_cell_67_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_67/BiasAdd/ReadVariableOp)while/lstm_cell_67/BiasAdd/ReadVariableOp2T
(while/lstm_cell_67/MatMul/ReadVariableOp(while/lstm_cell_67/MatMul/ReadVariableOp2X
*while/lstm_cell_67/MatMul_1/ReadVariableOp*while/lstm_cell_67/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
)__inference_dense_22_layer_call_fn_195070

inputs
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_1914542
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?U
?
C__inference_lstm_35_layer_call_and_return_conditional_losses_194775
inputs_0>
+lstm_cell_68_matmul_readvariableop_resource:	?@
-lstm_cell_68_matmul_1_readvariableop_resource:	 ?;
,lstm_cell_68_biasadd_readvariableop_resource:	?
identity??#lstm_cell_68/BiasAdd/ReadVariableOp?"lstm_cell_68/MatMul/ReadVariableOp?$lstm_cell_68/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_68/MatMul/ReadVariableOp?
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/MatMul?
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02&
$lstm_cell_68/MatMul_1/ReadVariableOp?
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/MatMul_1?
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/add?
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_68/BiasAdd/ReadVariableOp?
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_68/BiasAdd~
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_68/split/split_dim?
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_68/split?
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Sigmoid?
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Sigmoid_1?
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/mul}
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Relu?
lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/mul_1?
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/add_1?
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Sigmoid_2|
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/Relu_1?
lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_68/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_194691*
condR
while_cond_194690*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_194690
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_194690___redundant_placeholder04
0while_while_cond_194690___redundant_placeholder14
0while_while_cond_194690___redundant_placeholder24
0while_while_cond_194690___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?

?
lstm_35_while_cond_192681,
(lstm_35_while_lstm_35_while_loop_counter2
.lstm_35_while_lstm_35_while_maximum_iterations
lstm_35_while_placeholder
lstm_35_while_placeholder_1
lstm_35_while_placeholder_2
lstm_35_while_placeholder_3.
*lstm_35_while_less_lstm_35_strided_slice_1D
@lstm_35_while_lstm_35_while_cond_192681___redundant_placeholder0D
@lstm_35_while_lstm_35_while_cond_192681___redundant_placeholder1D
@lstm_35_while_lstm_35_while_cond_192681___redundant_placeholder2D
@lstm_35_while_lstm_35_while_cond_192681___redundant_placeholder3
lstm_35_while_identity
?
lstm_35/while/LessLesslstm_35_while_placeholder*lstm_35_while_less_lstm_35_strided_slice_1*
T0*
_output_shapes
: 2
lstm_35/while/Lessu
lstm_35/while/IdentityIdentitylstm_35/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_35/while/Identity"9
lstm_35_while_identitylstm_35/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
??
?
while_body_191052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_66_matmul_readvariableop_resource_0:$G
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:	$B
4while_lstm_cell_66_biasadd_readvariableop_resource_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_66_matmul_readvariableop_resource:$E
3while_lstm_cell_66_matmul_1_readvariableop_resource:	$@
2while_lstm_cell_66_biasadd_readvariableop_resource:$??)while/lstm_cell_66/BiasAdd/ReadVariableOp?(while/lstm_cell_66/MatMul/ReadVariableOp?*while/lstm_cell_66/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes

:$*
dtype02*
(while/lstm_cell_66/MatMul/ReadVariableOp?
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/MatMul?
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02,
*while/lstm_cell_66/MatMul_1/ReadVariableOp?
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/MatMul_1?
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/add?
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02+
)while/lstm_cell_66/BiasAdd/ReadVariableOp?
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/BiasAdd?
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dim?
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
while/lstm_cell_66/split?
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Sigmoid?
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Sigmoid_1?
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/mul?
while/lstm_cell_66/ReluRelu!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Relu?
while/lstm_cell_66/mul_1Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/mul_1?
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/add_1?
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Sigmoid_2?
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Relu_1?
while/lstm_cell_66/mul_2Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_66/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?
?
.__inference_sequential_11_layer_call_fn_192345

inputs
unknown:$
	unknown_0:	$
	unknown_1:$
	unknown_2:	@
	unknown_3:@
	unknown_4:@
	unknown_5:	?
	unknown_6:	 ?
	unknown_7:	?
	unknown_8:  
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_1921162
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????	: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?U
?
C__inference_lstm_34_layer_call_and_return_conditional_losses_194302

inputs=
+lstm_cell_67_matmul_readvariableop_resource:	@?
-lstm_cell_67_matmul_1_readvariableop_resource:@:
,lstm_cell_67_biasadd_readvariableop_resource:@
identity??#lstm_cell_67/BiasAdd/ReadVariableOp?"lstm_cell_67/MatMul/ReadVariableOp?$lstm_cell_67/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	?????????	2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_67/MatMul/ReadVariableOpReadVariableOp+lstm_cell_67_matmul_readvariableop_resource*
_output_shapes

:	@*
dtype02$
"lstm_cell_67/MatMul/ReadVariableOp?
lstm_cell_67/MatMulMatMulstrided_slice_2:output:0*lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/MatMul?
$lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_67_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_67/MatMul_1/ReadVariableOp?
lstm_cell_67/MatMul_1MatMulzeros:output:0,lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/MatMul_1?
lstm_cell_67/addAddV2lstm_cell_67/MatMul:product:0lstm_cell_67/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/add?
#lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_67_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_67/BiasAdd/ReadVariableOp?
lstm_cell_67/BiasAddBiasAddlstm_cell_67/add:z:0+lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/BiasAdd~
lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_67/split/split_dim?
lstm_cell_67/splitSplit%lstm_cell_67/split/split_dim:output:0lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_cell_67/split?
lstm_cell_67/SigmoidSigmoidlstm_cell_67/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Sigmoid?
lstm_cell_67/Sigmoid_1Sigmoidlstm_cell_67/split:output:1*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Sigmoid_1?
lstm_cell_67/mulMullstm_cell_67/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/mul}
lstm_cell_67/ReluRelulstm_cell_67/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Relu?
lstm_cell_67/mul_1Mullstm_cell_67/Sigmoid:y:0lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/mul_1?
lstm_cell_67/add_1AddV2lstm_cell_67/mul:z:0lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/add_1?
lstm_cell_67/Sigmoid_2Sigmoidlstm_cell_67/split:output:3*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Sigmoid_2|
lstm_cell_67/Relu_1Relulstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Relu_1?
lstm_cell_67/mul_2Mullstm_cell_67/Sigmoid_2:y:0!lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_67_matmul_readvariableop_resource-lstm_cell_67_matmul_1_readvariableop_resource,lstm_cell_67_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_194218*
condR
while_cond_194217*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	?????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????	2

Identity?
NoOpNoOp$^lstm_cell_67/BiasAdd/ReadVariableOp#^lstm_cell_67/MatMul/ReadVariableOp%^lstm_cell_67/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????		: : : 2J
#lstm_cell_67/BiasAdd/ReadVariableOp#lstm_cell_67/BiasAdd/ReadVariableOp2H
"lstm_cell_67/MatMul/ReadVariableOp"lstm_cell_67/MatMul/ReadVariableOp2L
$lstm_cell_67/MatMul_1/ReadVariableOp$lstm_cell_67/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????		
 
_user_specified_nameinputs
?J
?

lstm_35_while_body_192682,
(lstm_35_while_lstm_35_while_loop_counter2
.lstm_35_while_lstm_35_while_maximum_iterations
lstm_35_while_placeholder
lstm_35_while_placeholder_1
lstm_35_while_placeholder_2
lstm_35_while_placeholder_3+
'lstm_35_while_lstm_35_strided_slice_1_0g
clstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_35_while_lstm_cell_68_matmul_readvariableop_resource_0:	?P
=lstm_35_while_lstm_cell_68_matmul_1_readvariableop_resource_0:	 ?K
<lstm_35_while_lstm_cell_68_biasadd_readvariableop_resource_0:	?
lstm_35_while_identity
lstm_35_while_identity_1
lstm_35_while_identity_2
lstm_35_while_identity_3
lstm_35_while_identity_4
lstm_35_while_identity_5)
%lstm_35_while_lstm_35_strided_slice_1e
alstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensorL
9lstm_35_while_lstm_cell_68_matmul_readvariableop_resource:	?N
;lstm_35_while_lstm_cell_68_matmul_1_readvariableop_resource:	 ?I
:lstm_35_while_lstm_cell_68_biasadd_readvariableop_resource:	???1lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOp?0lstm_35/while/lstm_cell_68/MatMul/ReadVariableOp?2lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOp?
?lstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_35/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensor_0lstm_35_while_placeholderHlstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_35/while/TensorArrayV2Read/TensorListGetItem?
0lstm_35/while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp;lstm_35_while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype022
0lstm_35/while/lstm_cell_68/MatMul/ReadVariableOp?
!lstm_35/while/lstm_cell_68/MatMulMatMul8lstm_35/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_35/while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_35/while/lstm_cell_68/MatMul?
2lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp=lstm_35_while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype024
2lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOp?
#lstm_35/while/lstm_cell_68/MatMul_1MatMullstm_35_while_placeholder_2:lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_35/while/lstm_cell_68/MatMul_1?
lstm_35/while/lstm_cell_68/addAddV2+lstm_35/while/lstm_cell_68/MatMul:product:0-lstm_35/while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2 
lstm_35/while/lstm_cell_68/add?
1lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp<lstm_35_while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOp?
"lstm_35/while/lstm_cell_68/BiasAddBiasAdd"lstm_35/while/lstm_cell_68/add:z:09lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_35/while/lstm_cell_68/BiasAdd?
*lstm_35/while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_35/while/lstm_cell_68/split/split_dim?
 lstm_35/while/lstm_cell_68/splitSplit3lstm_35/while/lstm_cell_68/split/split_dim:output:0+lstm_35/while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2"
 lstm_35/while/lstm_cell_68/split?
"lstm_35/while/lstm_cell_68/SigmoidSigmoid)lstm_35/while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_35/while/lstm_cell_68/Sigmoid?
$lstm_35/while/lstm_cell_68/Sigmoid_1Sigmoid)lstm_35/while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:????????? 2&
$lstm_35/while/lstm_cell_68/Sigmoid_1?
lstm_35/while/lstm_cell_68/mulMul(lstm_35/while/lstm_cell_68/Sigmoid_1:y:0lstm_35_while_placeholder_3*
T0*'
_output_shapes
:????????? 2 
lstm_35/while/lstm_cell_68/mul?
lstm_35/while/lstm_cell_68/ReluRelu)lstm_35/while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:????????? 2!
lstm_35/while/lstm_cell_68/Relu?
 lstm_35/while/lstm_cell_68/mul_1Mul&lstm_35/while/lstm_cell_68/Sigmoid:y:0-lstm_35/while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_35/while/lstm_cell_68/mul_1?
 lstm_35/while/lstm_cell_68/add_1AddV2"lstm_35/while/lstm_cell_68/mul:z:0$lstm_35/while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_35/while/lstm_cell_68/add_1?
$lstm_35/while/lstm_cell_68/Sigmoid_2Sigmoid)lstm_35/while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:????????? 2&
$lstm_35/while/lstm_cell_68/Sigmoid_2?
!lstm_35/while/lstm_cell_68/Relu_1Relu$lstm_35/while/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:????????? 2#
!lstm_35/while/lstm_cell_68/Relu_1?
 lstm_35/while/lstm_cell_68/mul_2Mul(lstm_35/while/lstm_cell_68/Sigmoid_2:y:0/lstm_35/while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_35/while/lstm_cell_68/mul_2?
2lstm_35/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_35_while_placeholder_1lstm_35_while_placeholder$lstm_35/while/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_35/while/TensorArrayV2Write/TensorListSetIteml
lstm_35/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_35/while/add/y?
lstm_35/while/addAddV2lstm_35_while_placeholderlstm_35/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_35/while/addp
lstm_35/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_35/while/add_1/y?
lstm_35/while/add_1AddV2(lstm_35_while_lstm_35_while_loop_counterlstm_35/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_35/while/add_1?
lstm_35/while/IdentityIdentitylstm_35/while/add_1:z:0^lstm_35/while/NoOp*
T0*
_output_shapes
: 2
lstm_35/while/Identity?
lstm_35/while/Identity_1Identity.lstm_35_while_lstm_35_while_maximum_iterations^lstm_35/while/NoOp*
T0*
_output_shapes
: 2
lstm_35/while/Identity_1?
lstm_35/while/Identity_2Identitylstm_35/while/add:z:0^lstm_35/while/NoOp*
T0*
_output_shapes
: 2
lstm_35/while/Identity_2?
lstm_35/while/Identity_3IdentityBlstm_35/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_35/while/NoOp*
T0*
_output_shapes
: 2
lstm_35/while/Identity_3?
lstm_35/while/Identity_4Identity$lstm_35/while/lstm_cell_68/mul_2:z:0^lstm_35/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_35/while/Identity_4?
lstm_35/while/Identity_5Identity$lstm_35/while/lstm_cell_68/add_1:z:0^lstm_35/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_35/while/Identity_5?
lstm_35/while/NoOpNoOp2^lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOp1^lstm_35/while/lstm_cell_68/MatMul/ReadVariableOp3^lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_35/while/NoOp"9
lstm_35_while_identitylstm_35/while/Identity:output:0"=
lstm_35_while_identity_1!lstm_35/while/Identity_1:output:0"=
lstm_35_while_identity_2!lstm_35/while/Identity_2:output:0"=
lstm_35_while_identity_3!lstm_35/while/Identity_3:output:0"=
lstm_35_while_identity_4!lstm_35/while/Identity_4:output:0"=
lstm_35_while_identity_5!lstm_35/while/Identity_5:output:0"P
%lstm_35_while_lstm_35_strided_slice_1'lstm_35_while_lstm_35_strided_slice_1_0"z
:lstm_35_while_lstm_cell_68_biasadd_readvariableop_resource<lstm_35_while_lstm_cell_68_biasadd_readvariableop_resource_0"|
;lstm_35_while_lstm_cell_68_matmul_1_readvariableop_resource=lstm_35_while_lstm_cell_68_matmul_1_readvariableop_resource_0"x
9lstm_35_while_lstm_cell_68_matmul_readvariableop_resource;lstm_35_while_lstm_cell_68_matmul_readvariableop_resource_0"?
alstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensorclstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2f
1lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOp1lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOp2d
0lstm_35/while/lstm_cell_68/MatMul/ReadVariableOp0lstm_35/while/lstm_cell_68/MatMul/ReadVariableOp2h
2lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOp2lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_195184

inputs
states_0
states_10
matmul_readvariableop_resource:$2
 matmul_1_readvariableop_resource:	$-
biasadd_readvariableop_resource:$
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????	2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????	2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????	2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????	2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????	2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????	2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????	2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????	2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????	:?????????	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????	
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????	
"
_user_specified_name
states/1
??
?
while_body_194548
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_68_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:	 ?C
4while_lstm_cell_68_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_68_matmul_readvariableop_resource:	?F
3while_lstm_cell_68_matmul_1_readvariableop_resource:	 ?A
2while_lstm_cell_68_biasadd_readvariableop_resource:	???)while/lstm_cell_68/BiasAdd/ReadVariableOp?(while/lstm_cell_68/MatMul/ReadVariableOp?*while/lstm_cell_68/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_68/MatMul/ReadVariableOp?
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/MatMul?
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02,
*while/lstm_cell_68/MatMul_1/ReadVariableOp?
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/MatMul_1?
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/add?
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_68/BiasAdd/ReadVariableOp?
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/BiasAdd?
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_68/split/split_dim?
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_68/split?
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Sigmoid?
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Sigmoid_1?
while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/mul?
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Relu?
while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/mul_1?
while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/add_1?
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Sigmoid_2?
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Relu_1?
while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
??
?
while_body_193316
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_66_matmul_readvariableop_resource_0:$G
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:	$B
4while_lstm_cell_66_biasadd_readvariableop_resource_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_66_matmul_readvariableop_resource:$E
3while_lstm_cell_66_matmul_1_readvariableop_resource:	$@
2while_lstm_cell_66_biasadd_readvariableop_resource:$??)while/lstm_cell_66/BiasAdd/ReadVariableOp?(while/lstm_cell_66/MatMul/ReadVariableOp?*while/lstm_cell_66/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes

:$*
dtype02*
(while/lstm_cell_66/MatMul/ReadVariableOp?
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/MatMul?
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02,
*while/lstm_cell_66/MatMul_1/ReadVariableOp?
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/MatMul_1?
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/add?
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02+
)while/lstm_cell_66/BiasAdd/ReadVariableOp?
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_66/BiasAdd?
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dim?
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
while/lstm_cell_66/split?
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Sigmoid?
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Sigmoid_1?
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/mul?
while/lstm_cell_66/ReluRelu!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Relu?
while/lstm_cell_66/mul_1Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/mul_1?
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/add_1?
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Sigmoid_2?
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/Relu_1?
while/lstm_cell_66/mul_2Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_66/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_66/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
??
?
while_body_194075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_67_matmul_readvariableop_resource_0:	@G
5while_lstm_cell_67_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_67_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_67_matmul_readvariableop_resource:	@E
3while_lstm_cell_67_matmul_1_readvariableop_resource:@@
2while_lstm_cell_67_biasadd_readvariableop_resource:@??)while/lstm_cell_67/BiasAdd/ReadVariableOp?(while/lstm_cell_67/MatMul/ReadVariableOp?*while/lstm_cell_67/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_67_matmul_readvariableop_resource_0*
_output_shapes

:	@*
dtype02*
(while/lstm_cell_67/MatMul/ReadVariableOp?
while/lstm_cell_67/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/MatMul?
*while/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_67_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype02,
*while/lstm_cell_67/MatMul_1/ReadVariableOp?
while/lstm_cell_67/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/MatMul_1?
while/lstm_cell_67/addAddV2#while/lstm_cell_67/MatMul:product:0%while/lstm_cell_67/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/add?
)while/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_67_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02+
)while/lstm_cell_67/BiasAdd/ReadVariableOp?
while/lstm_cell_67/BiasAddBiasAddwhile/lstm_cell_67/add:z:01while/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_67/BiasAdd?
"while/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_67/split/split_dim?
while/lstm_cell_67/splitSplit+while/lstm_cell_67/split/split_dim:output:0#while/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/lstm_cell_67/split?
while/lstm_cell_67/SigmoidSigmoid!while/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Sigmoid?
while/lstm_cell_67/Sigmoid_1Sigmoid!while/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Sigmoid_1?
while/lstm_cell_67/mulMul while/lstm_cell_67/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/mul?
while/lstm_cell_67/ReluRelu!while/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Relu?
while/lstm_cell_67/mul_1Mulwhile/lstm_cell_67/Sigmoid:y:0%while/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/mul_1?
while/lstm_cell_67/add_1AddV2while/lstm_cell_67/mul:z:0while/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/add_1?
while/lstm_cell_67/Sigmoid_2Sigmoid!while/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Sigmoid_2?
while/lstm_cell_67/Relu_1Reluwhile/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/Relu_1?
while/lstm_cell_67/mul_2Mul while/lstm_cell_67/Sigmoid_2:y:0'while/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_67/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_67/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_67/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_67/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_67/BiasAdd/ReadVariableOp)^while/lstm_cell_67/MatMul/ReadVariableOp+^while/lstm_cell_67/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_67_biasadd_readvariableop_resource4while_lstm_cell_67_biasadd_readvariableop_resource_0"l
3while_lstm_cell_67_matmul_1_readvariableop_resource5while_lstm_cell_67_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_67_matmul_readvariableop_resource3while_lstm_cell_67_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_67/BiasAdd/ReadVariableOp)while/lstm_cell_67/BiasAdd/ReadVariableOp2T
(while/lstm_cell_67/MatMul/ReadVariableOp(while/lstm_cell_67/MatMul/ReadVariableOp2X
*while/lstm_cell_67/MatMul_1/ReadVariableOp*while/lstm_cell_67/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?

?
D__inference_dense_23_layer_call_and_return_conditional_losses_195109

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?U
?
C__inference_lstm_34_layer_call_and_return_conditional_losses_194445

inputs=
+lstm_cell_67_matmul_readvariableop_resource:	@?
-lstm_cell_67_matmul_1_readvariableop_resource:@:
,lstm_cell_67_biasadd_readvariableop_resource:@
identity??#lstm_cell_67/BiasAdd/ReadVariableOp?"lstm_cell_67/MatMul/ReadVariableOp?$lstm_cell_67/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	?????????	2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_67/MatMul/ReadVariableOpReadVariableOp+lstm_cell_67_matmul_readvariableop_resource*
_output_shapes

:	@*
dtype02$
"lstm_cell_67/MatMul/ReadVariableOp?
lstm_cell_67/MatMulMatMulstrided_slice_2:output:0*lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/MatMul?
$lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_67_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_67/MatMul_1/ReadVariableOp?
lstm_cell_67/MatMul_1MatMulzeros:output:0,lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/MatMul_1?
lstm_cell_67/addAddV2lstm_cell_67/MatMul:product:0lstm_cell_67/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/add?
#lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_67_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_67/BiasAdd/ReadVariableOp?
lstm_cell_67/BiasAddBiasAddlstm_cell_67/add:z:0+lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/BiasAdd~
lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_67/split/split_dim?
lstm_cell_67/splitSplit%lstm_cell_67/split/split_dim:output:0lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_cell_67/split?
lstm_cell_67/SigmoidSigmoidlstm_cell_67/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Sigmoid?
lstm_cell_67/Sigmoid_1Sigmoidlstm_cell_67/split:output:1*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Sigmoid_1?
lstm_cell_67/mulMullstm_cell_67/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/mul}
lstm_cell_67/ReluRelulstm_cell_67/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Relu?
lstm_cell_67/mul_1Mullstm_cell_67/Sigmoid:y:0lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/mul_1?
lstm_cell_67/add_1AddV2lstm_cell_67/mul:z:0lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/add_1?
lstm_cell_67/Sigmoid_2Sigmoidlstm_cell_67/split:output:3*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Sigmoid_2|
lstm_cell_67/Relu_1Relulstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Relu_1?
lstm_cell_67/mul_2Mullstm_cell_67/Sigmoid_2:y:0!lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_67_matmul_readvariableop_resource-lstm_cell_67_matmul_1_readvariableop_resource,lstm_cell_67_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_194361*
condR
while_cond_194360*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	?????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????	2

Identity?
NoOpNoOp$^lstm_cell_67/BiasAdd/ReadVariableOp#^lstm_cell_67/MatMul/ReadVariableOp%^lstm_cell_67/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????		: : : 2J
#lstm_cell_67/BiasAdd/ReadVariableOp#lstm_cell_67/BiasAdd/ReadVariableOp2H
"lstm_cell_67/MatMul/ReadVariableOp"lstm_cell_67/MatMul/ReadVariableOp2L
$lstm_cell_67/MatMul_1/ReadVariableOp$lstm_cell_67/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????		
 
_user_specified_nameinputs
??
?
while_body_194834
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_68_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:	 ?C
4while_lstm_cell_68_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_68_matmul_readvariableop_resource:	?F
3while_lstm_cell_68_matmul_1_readvariableop_resource:	 ?A
2while_lstm_cell_68_biasadd_readvariableop_resource:	???)while/lstm_cell_68/BiasAdd/ReadVariableOp?(while/lstm_cell_68/MatMul/ReadVariableOp?*while/lstm_cell_68/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_68/MatMul/ReadVariableOp?
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/MatMul?
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02,
*while/lstm_cell_68/MatMul_1/ReadVariableOp?
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/MatMul_1?
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/add?
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_68/BiasAdd/ReadVariableOp?
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_68/BiasAdd?
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_68/split/split_dim?
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_68/split?
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Sigmoid?
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Sigmoid_1?
while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/mul?
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Relu?
while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/mul_1?
while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/add_1?
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Sigmoid_2?
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/Relu_1?
while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_68/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_189858

inputs

states
states_10
matmul_readvariableop_resource:	@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????	:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_namestates:OK
'
_output_shapes
:?????????
 
_user_specified_namestates
?U
?
C__inference_lstm_34_layer_call_and_return_conditional_losses_194159
inputs_0=
+lstm_cell_67_matmul_readvariableop_resource:	@?
-lstm_cell_67_matmul_1_readvariableop_resource:@:
,lstm_cell_67_biasadd_readvariableop_resource:@
identity??#lstm_cell_67/BiasAdd/ReadVariableOp?"lstm_cell_67/MatMul/ReadVariableOp?$lstm_cell_67/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????	2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_67/MatMul/ReadVariableOpReadVariableOp+lstm_cell_67_matmul_readvariableop_resource*
_output_shapes

:	@*
dtype02$
"lstm_cell_67/MatMul/ReadVariableOp?
lstm_cell_67/MatMulMatMulstrided_slice_2:output:0*lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/MatMul?
$lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_67_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02&
$lstm_cell_67/MatMul_1/ReadVariableOp?
lstm_cell_67/MatMul_1MatMulzeros:output:0,lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/MatMul_1?
lstm_cell_67/addAddV2lstm_cell_67/MatMul:product:0lstm_cell_67/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/add?
#lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_67_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#lstm_cell_67/BiasAdd/ReadVariableOp?
lstm_cell_67/BiasAddBiasAddlstm_cell_67/add:z:0+lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_67/BiasAdd~
lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_67/split/split_dim?
lstm_cell_67/splitSplit%lstm_cell_67/split/split_dim:output:0lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_cell_67/split?
lstm_cell_67/SigmoidSigmoidlstm_cell_67/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Sigmoid?
lstm_cell_67/Sigmoid_1Sigmoidlstm_cell_67/split:output:1*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Sigmoid_1?
lstm_cell_67/mulMullstm_cell_67/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/mul}
lstm_cell_67/ReluRelulstm_cell_67/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Relu?
lstm_cell_67/mul_1Mullstm_cell_67/Sigmoid:y:0lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/mul_1?
lstm_cell_67/add_1AddV2lstm_cell_67/mul:z:0lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/add_1?
lstm_cell_67/Sigmoid_2Sigmoidlstm_cell_67/split:output:3*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Sigmoid_2|
lstm_cell_67/Relu_1Relulstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/Relu_1?
lstm_cell_67/mul_2Mullstm_cell_67/Sigmoid_2:y:0!lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_67/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_67_matmul_readvariableop_resource-lstm_cell_67_matmul_1_readvariableop_resource,lstm_cell_67_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_194075*
condR
while_cond_194074*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2

Identity?
NoOpNoOp$^lstm_cell_67/BiasAdd/ReadVariableOp#^lstm_cell_67/MatMul/ReadVariableOp%^lstm_cell_67/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????	: : : 2J
#lstm_cell_67/BiasAdd/ReadVariableOp#lstm_cell_67/BiasAdd/ReadVariableOp2H
"lstm_cell_67/MatMul/ReadVariableOp"lstm_cell_67/MatMul/ReadVariableOp2L
$lstm_cell_67/MatMul_1/ReadVariableOp$lstm_cell_67/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????	
"
_user_specified_name
inputs/0
?^
?
'sequential_11_lstm_33_while_body_188818H
Dsequential_11_lstm_33_while_sequential_11_lstm_33_while_loop_counterN
Jsequential_11_lstm_33_while_sequential_11_lstm_33_while_maximum_iterations+
'sequential_11_lstm_33_while_placeholder-
)sequential_11_lstm_33_while_placeholder_1-
)sequential_11_lstm_33_while_placeholder_2-
)sequential_11_lstm_33_while_placeholder_3G
Csequential_11_lstm_33_while_sequential_11_lstm_33_strided_slice_1_0?
sequential_11_lstm_33_while_tensorarrayv2read_tensorlistgetitem_sequential_11_lstm_33_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_11_lstm_33_while_lstm_cell_66_matmul_readvariableop_resource_0:$]
Ksequential_11_lstm_33_while_lstm_cell_66_matmul_1_readvariableop_resource_0:	$X
Jsequential_11_lstm_33_while_lstm_cell_66_biasadd_readvariableop_resource_0:$(
$sequential_11_lstm_33_while_identity*
&sequential_11_lstm_33_while_identity_1*
&sequential_11_lstm_33_while_identity_2*
&sequential_11_lstm_33_while_identity_3*
&sequential_11_lstm_33_while_identity_4*
&sequential_11_lstm_33_while_identity_5E
Asequential_11_lstm_33_while_sequential_11_lstm_33_strided_slice_1?
}sequential_11_lstm_33_while_tensorarrayv2read_tensorlistgetitem_sequential_11_lstm_33_tensorarrayunstack_tensorlistfromtensorY
Gsequential_11_lstm_33_while_lstm_cell_66_matmul_readvariableop_resource:$[
Isequential_11_lstm_33_while_lstm_cell_66_matmul_1_readvariableop_resource:	$V
Hsequential_11_lstm_33_while_lstm_cell_66_biasadd_readvariableop_resource:$???sequential_11/lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOp?>sequential_11/lstm_33/while/lstm_cell_66/MatMul/ReadVariableOp?@sequential_11/lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOp?
Msequential_11/lstm_33/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2O
Msequential_11/lstm_33/while/TensorArrayV2Read/TensorListGetItem/element_shape?
?sequential_11/lstm_33/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_11_lstm_33_while_tensorarrayv2read_tensorlistgetitem_sequential_11_lstm_33_tensorarrayunstack_tensorlistfromtensor_0'sequential_11_lstm_33_while_placeholderVsequential_11/lstm_33/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02A
?sequential_11/lstm_33/while/TensorArrayV2Read/TensorListGetItem?
>sequential_11/lstm_33/while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOpIsequential_11_lstm_33_while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes

:$*
dtype02@
>sequential_11/lstm_33/while/lstm_cell_66/MatMul/ReadVariableOp?
/sequential_11/lstm_33/while/lstm_cell_66/MatMulMatMulFsequential_11/lstm_33/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_11/lstm_33/while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$21
/sequential_11/lstm_33/while/lstm_cell_66/MatMul?
@sequential_11/lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOpKsequential_11_lstm_33_while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02B
@sequential_11/lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOp?
1sequential_11/lstm_33/while/lstm_cell_66/MatMul_1MatMul)sequential_11_lstm_33_while_placeholder_2Hsequential_11/lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$23
1sequential_11/lstm_33/while/lstm_cell_66/MatMul_1?
,sequential_11/lstm_33/while/lstm_cell_66/addAddV29sequential_11/lstm_33/while/lstm_cell_66/MatMul:product:0;sequential_11/lstm_33/while/lstm_cell_66/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2.
,sequential_11/lstm_33/while/lstm_cell_66/add?
?sequential_11/lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOpJsequential_11_lstm_33_while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02A
?sequential_11/lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOp?
0sequential_11/lstm_33/while/lstm_cell_66/BiasAddBiasAdd0sequential_11/lstm_33/while/lstm_cell_66/add:z:0Gsequential_11/lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$22
0sequential_11/lstm_33/while/lstm_cell_66/BiasAdd?
8sequential_11/lstm_33/while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_11/lstm_33/while/lstm_cell_66/split/split_dim?
.sequential_11/lstm_33/while/lstm_cell_66/splitSplitAsequential_11/lstm_33/while/lstm_cell_66/split/split_dim:output:09sequential_11/lstm_33/while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split20
.sequential_11/lstm_33/while/lstm_cell_66/split?
0sequential_11/lstm_33/while/lstm_cell_66/SigmoidSigmoid7sequential_11/lstm_33/while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:?????????	22
0sequential_11/lstm_33/while/lstm_cell_66/Sigmoid?
2sequential_11/lstm_33/while/lstm_cell_66/Sigmoid_1Sigmoid7sequential_11/lstm_33/while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:?????????	24
2sequential_11/lstm_33/while/lstm_cell_66/Sigmoid_1?
,sequential_11/lstm_33/while/lstm_cell_66/mulMul6sequential_11/lstm_33/while/lstm_cell_66/Sigmoid_1:y:0)sequential_11_lstm_33_while_placeholder_3*
T0*'
_output_shapes
:?????????	2.
,sequential_11/lstm_33/while/lstm_cell_66/mul?
-sequential_11/lstm_33/while/lstm_cell_66/ReluRelu7sequential_11/lstm_33/while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:?????????	2/
-sequential_11/lstm_33/while/lstm_cell_66/Relu?
.sequential_11/lstm_33/while/lstm_cell_66/mul_1Mul4sequential_11/lstm_33/while/lstm_cell_66/Sigmoid:y:0;sequential_11/lstm_33/while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:?????????	20
.sequential_11/lstm_33/while/lstm_cell_66/mul_1?
.sequential_11/lstm_33/while/lstm_cell_66/add_1AddV20sequential_11/lstm_33/while/lstm_cell_66/mul:z:02sequential_11/lstm_33/while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:?????????	20
.sequential_11/lstm_33/while/lstm_cell_66/add_1?
2sequential_11/lstm_33/while/lstm_cell_66/Sigmoid_2Sigmoid7sequential_11/lstm_33/while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:?????????	24
2sequential_11/lstm_33/while/lstm_cell_66/Sigmoid_2?
/sequential_11/lstm_33/while/lstm_cell_66/Relu_1Relu2sequential_11/lstm_33/while/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:?????????	21
/sequential_11/lstm_33/while/lstm_cell_66/Relu_1?
.sequential_11/lstm_33/while/lstm_cell_66/mul_2Mul6sequential_11/lstm_33/while/lstm_cell_66/Sigmoid_2:y:0=sequential_11/lstm_33/while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	20
.sequential_11/lstm_33/while/lstm_cell_66/mul_2?
@sequential_11/lstm_33/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_11_lstm_33_while_placeholder_1'sequential_11_lstm_33_while_placeholder2sequential_11/lstm_33/while/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_11/lstm_33/while/TensorArrayV2Write/TensorListSetItem?
!sequential_11/lstm_33/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_11/lstm_33/while/add/y?
sequential_11/lstm_33/while/addAddV2'sequential_11_lstm_33_while_placeholder*sequential_11/lstm_33/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_11/lstm_33/while/add?
#sequential_11/lstm_33/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_11/lstm_33/while/add_1/y?
!sequential_11/lstm_33/while/add_1AddV2Dsequential_11_lstm_33_while_sequential_11_lstm_33_while_loop_counter,sequential_11/lstm_33/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_11/lstm_33/while/add_1?
$sequential_11/lstm_33/while/IdentityIdentity%sequential_11/lstm_33/while/add_1:z:0!^sequential_11/lstm_33/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_11/lstm_33/while/Identity?
&sequential_11/lstm_33/while/Identity_1IdentityJsequential_11_lstm_33_while_sequential_11_lstm_33_while_maximum_iterations!^sequential_11/lstm_33/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_11/lstm_33/while/Identity_1?
&sequential_11/lstm_33/while/Identity_2Identity#sequential_11/lstm_33/while/add:z:0!^sequential_11/lstm_33/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_11/lstm_33/while/Identity_2?
&sequential_11/lstm_33/while/Identity_3IdentityPsequential_11/lstm_33/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_11/lstm_33/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_11/lstm_33/while/Identity_3?
&sequential_11/lstm_33/while/Identity_4Identity2sequential_11/lstm_33/while/lstm_cell_66/mul_2:z:0!^sequential_11/lstm_33/while/NoOp*
T0*'
_output_shapes
:?????????	2(
&sequential_11/lstm_33/while/Identity_4?
&sequential_11/lstm_33/while/Identity_5Identity2sequential_11/lstm_33/while/lstm_cell_66/add_1:z:0!^sequential_11/lstm_33/while/NoOp*
T0*'
_output_shapes
:?????????	2(
&sequential_11/lstm_33/while/Identity_5?
 sequential_11/lstm_33/while/NoOpNoOp@^sequential_11/lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOp?^sequential_11/lstm_33/while/lstm_cell_66/MatMul/ReadVariableOpA^sequential_11/lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_11/lstm_33/while/NoOp"U
$sequential_11_lstm_33_while_identity-sequential_11/lstm_33/while/Identity:output:0"Y
&sequential_11_lstm_33_while_identity_1/sequential_11/lstm_33/while/Identity_1:output:0"Y
&sequential_11_lstm_33_while_identity_2/sequential_11/lstm_33/while/Identity_2:output:0"Y
&sequential_11_lstm_33_while_identity_3/sequential_11/lstm_33/while/Identity_3:output:0"Y
&sequential_11_lstm_33_while_identity_4/sequential_11/lstm_33/while/Identity_4:output:0"Y
&sequential_11_lstm_33_while_identity_5/sequential_11/lstm_33/while/Identity_5:output:0"?
Hsequential_11_lstm_33_while_lstm_cell_66_biasadd_readvariableop_resourceJsequential_11_lstm_33_while_lstm_cell_66_biasadd_readvariableop_resource_0"?
Isequential_11_lstm_33_while_lstm_cell_66_matmul_1_readvariableop_resourceKsequential_11_lstm_33_while_lstm_cell_66_matmul_1_readvariableop_resource_0"?
Gsequential_11_lstm_33_while_lstm_cell_66_matmul_readvariableop_resourceIsequential_11_lstm_33_while_lstm_cell_66_matmul_readvariableop_resource_0"?
Asequential_11_lstm_33_while_sequential_11_lstm_33_strided_slice_1Csequential_11_lstm_33_while_sequential_11_lstm_33_strided_slice_1_0"?
}sequential_11_lstm_33_while_tensorarrayv2read_tensorlistgetitem_sequential_11_lstm_33_tensorarrayunstack_tensorlistfromtensorsequential_11_lstm_33_while_tensorarrayv2read_tensorlistgetitem_sequential_11_lstm_33_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2?
?sequential_11/lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOp?sequential_11/lstm_33/while/lstm_cell_66/BiasAdd/ReadVariableOp2?
>sequential_11/lstm_33/while/lstm_cell_66/MatMul/ReadVariableOp>sequential_11/lstm_33/while/lstm_cell_66/MatMul/ReadVariableOp2?
@sequential_11/lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOp@sequential_11/lstm_33/while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
??
?
C__inference_lstm_33_layer_call_and_return_conditional_losses_189343

inputs%
lstm_cell_66_189261:$%
lstm_cell_66_189263:	$!
lstm_cell_66_189265:$
identity??$lstm_cell_66/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????	2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????	2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_66_189261lstm_cell_66_189263lstm_cell_66_189265*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????	:?????????	:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_1892602&
$lstm_cell_66/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_66_189261lstm_cell_66_189263lstm_cell_66_189265*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_189274*
condR
while_cond_189273*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????	*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????	2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????	2

Identity}
NoOpNoOp%^lstm_cell_66/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_66/StatefulPartitionedCall$lstm_cell_66/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_194833
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_194833___redundant_placeholder04
0while_while_cond_194833___redundant_placeholder14
0while_while_cond_194833___redundant_placeholder24
0while_while_cond_194833___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
while_cond_190073
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_190073___redundant_placeholder04
0while_while_cond_190073___redundant_placeholder14
0while_while_cond_190073___redundant_placeholder24
0while_while_cond_190073___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_195314

inputs
states_0
states_10
matmul_readvariableop_resource:	@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????	:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
?
?
while_cond_194074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_194074___redundant_placeholder04
0while_while_cond_194074___redundant_placeholder14
0while_while_cond_194074___redundant_placeholder24
0while_while_cond_194074___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
(__inference_lstm_35_layer_call_fn_194467
inputs_0
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_35_layer_call_and_return_conditional_losses_1907412
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?

lstm_34_while_body_192543,
(lstm_34_while_lstm_34_while_loop_counter2
.lstm_34_while_lstm_34_while_maximum_iterations
lstm_34_while_placeholder
lstm_34_while_placeholder_1
lstm_34_while_placeholder_2
lstm_34_while_placeholder_3+
'lstm_34_while_lstm_34_strided_slice_1_0g
clstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_34_while_lstm_cell_67_matmul_readvariableop_resource_0:	@O
=lstm_34_while_lstm_cell_67_matmul_1_readvariableop_resource_0:@J
<lstm_34_while_lstm_cell_67_biasadd_readvariableop_resource_0:@
lstm_34_while_identity
lstm_34_while_identity_1
lstm_34_while_identity_2
lstm_34_while_identity_3
lstm_34_while_identity_4
lstm_34_while_identity_5)
%lstm_34_while_lstm_34_strided_slice_1e
alstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensorK
9lstm_34_while_lstm_cell_67_matmul_readvariableop_resource:	@M
;lstm_34_while_lstm_cell_67_matmul_1_readvariableop_resource:@H
:lstm_34_while_lstm_cell_67_biasadd_readvariableop_resource:@??1lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOp?0lstm_34/while/lstm_cell_67/MatMul/ReadVariableOp?2lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOp?
?lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2A
?lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_34/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensor_0lstm_34_while_placeholderHlstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype023
1lstm_34/while/TensorArrayV2Read/TensorListGetItem?
0lstm_34/while/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp;lstm_34_while_lstm_cell_67_matmul_readvariableop_resource_0*
_output_shapes

:	@*
dtype022
0lstm_34/while/lstm_cell_67/MatMul/ReadVariableOp?
!lstm_34/while/lstm_cell_67/MatMulMatMul8lstm_34/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_34/while/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2#
!lstm_34/while/lstm_cell_67/MatMul?
2lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp=lstm_34_while_lstm_cell_67_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOp?
#lstm_34/while/lstm_cell_67/MatMul_1MatMullstm_34_while_placeholder_2:lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2%
#lstm_34/while/lstm_cell_67/MatMul_1?
lstm_34/while/lstm_cell_67/addAddV2+lstm_34/while/lstm_cell_67/MatMul:product:0-lstm_34/while/lstm_cell_67/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2 
lstm_34/while/lstm_cell_67/add?
1lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp<lstm_34_while_lstm_cell_67_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype023
1lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOp?
"lstm_34/while/lstm_cell_67/BiasAddBiasAdd"lstm_34/while/lstm_cell_67/add:z:09lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2$
"lstm_34/while/lstm_cell_67/BiasAdd?
*lstm_34/while/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_34/while/lstm_cell_67/split/split_dim?
 lstm_34/while/lstm_cell_67/splitSplit3lstm_34/while/lstm_cell_67/split/split_dim:output:0+lstm_34/while/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2"
 lstm_34/while/lstm_cell_67/split?
"lstm_34/while/lstm_cell_67/SigmoidSigmoid)lstm_34/while/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:?????????2$
"lstm_34/while/lstm_cell_67/Sigmoid?
$lstm_34/while/lstm_cell_67/Sigmoid_1Sigmoid)lstm_34/while/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:?????????2&
$lstm_34/while/lstm_cell_67/Sigmoid_1?
lstm_34/while/lstm_cell_67/mulMul(lstm_34/while/lstm_cell_67/Sigmoid_1:y:0lstm_34_while_placeholder_3*
T0*'
_output_shapes
:?????????2 
lstm_34/while/lstm_cell_67/mul?
lstm_34/while/lstm_cell_67/ReluRelu)lstm_34/while/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:?????????2!
lstm_34/while/lstm_cell_67/Relu?
 lstm_34/while/lstm_cell_67/mul_1Mul&lstm_34/while/lstm_cell_67/Sigmoid:y:0-lstm_34/while/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:?????????2"
 lstm_34/while/lstm_cell_67/mul_1?
 lstm_34/while/lstm_cell_67/add_1AddV2"lstm_34/while/lstm_cell_67/mul:z:0$lstm_34/while/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:?????????2"
 lstm_34/while/lstm_cell_67/add_1?
$lstm_34/while/lstm_cell_67/Sigmoid_2Sigmoid)lstm_34/while/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:?????????2&
$lstm_34/while/lstm_cell_67/Sigmoid_2?
!lstm_34/while/lstm_cell_67/Relu_1Relu$lstm_34/while/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:?????????2#
!lstm_34/while/lstm_cell_67/Relu_1?
 lstm_34/while/lstm_cell_67/mul_2Mul(lstm_34/while/lstm_cell_67/Sigmoid_2:y:0/lstm_34/while/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2"
 lstm_34/while/lstm_cell_67/mul_2?
2lstm_34/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_34_while_placeholder_1lstm_34_while_placeholder$lstm_34/while/lstm_cell_67/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_34/while/TensorArrayV2Write/TensorListSetIteml
lstm_34/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_34/while/add/y?
lstm_34/while/addAddV2lstm_34_while_placeholderlstm_34/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_34/while/addp
lstm_34/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_34/while/add_1/y?
lstm_34/while/add_1AddV2(lstm_34_while_lstm_34_while_loop_counterlstm_34/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_34/while/add_1?
lstm_34/while/IdentityIdentitylstm_34/while/add_1:z:0^lstm_34/while/NoOp*
T0*
_output_shapes
: 2
lstm_34/while/Identity?
lstm_34/while/Identity_1Identity.lstm_34_while_lstm_34_while_maximum_iterations^lstm_34/while/NoOp*
T0*
_output_shapes
: 2
lstm_34/while/Identity_1?
lstm_34/while/Identity_2Identitylstm_34/while/add:z:0^lstm_34/while/NoOp*
T0*
_output_shapes
: 2
lstm_34/while/Identity_2?
lstm_34/while/Identity_3IdentityBlstm_34/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_34/while/NoOp*
T0*
_output_shapes
: 2
lstm_34/while/Identity_3?
lstm_34/while/Identity_4Identity$lstm_34/while/lstm_cell_67/mul_2:z:0^lstm_34/while/NoOp*
T0*'
_output_shapes
:?????????2
lstm_34/while/Identity_4?
lstm_34/while/Identity_5Identity$lstm_34/while/lstm_cell_67/add_1:z:0^lstm_34/while/NoOp*
T0*'
_output_shapes
:?????????2
lstm_34/while/Identity_5?
lstm_34/while/NoOpNoOp2^lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOp1^lstm_34/while/lstm_cell_67/MatMul/ReadVariableOp3^lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_34/while/NoOp"9
lstm_34_while_identitylstm_34/while/Identity:output:0"=
lstm_34_while_identity_1!lstm_34/while/Identity_1:output:0"=
lstm_34_while_identity_2!lstm_34/while/Identity_2:output:0"=
lstm_34_while_identity_3!lstm_34/while/Identity_3:output:0"=
lstm_34_while_identity_4!lstm_34/while/Identity_4:output:0"=
lstm_34_while_identity_5!lstm_34/while/Identity_5:output:0"P
%lstm_34_while_lstm_34_strided_slice_1'lstm_34_while_lstm_34_strided_slice_1_0"z
:lstm_34_while_lstm_cell_67_biasadd_readvariableop_resource<lstm_34_while_lstm_cell_67_biasadd_readvariableop_resource_0"|
;lstm_34_while_lstm_cell_67_matmul_1_readvariableop_resource=lstm_34_while_lstm_cell_67_matmul_1_readvariableop_resource_0"x
9lstm_34_while_lstm_cell_67_matmul_readvariableop_resource;lstm_34_while_lstm_cell_67_matmul_readvariableop_resource_0"?
alstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensorclstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2f
1lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOp1lstm_34/while/lstm_cell_67/BiasAdd/ReadVariableOp2d
0lstm_34/while/lstm_cell_67/MatMul/ReadVariableOp0lstm_34/while/lstm_cell_67/MatMul/ReadVariableOp2h
2lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOp2lstm_34/while/lstm_cell_67/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_lstm_cell_68_layer_call_fn_195348

inputs
states_0
states_1
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_1906022
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
(__inference_lstm_33_layer_call_fn_193235
inputs_0
unknown:$
	unknown_0:	$
	unknown_1:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_1895452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
(__inference_lstm_34_layer_call_fn_193851
inputs_0
unknown:	@
	unknown_0:@
	unknown_1:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_1901432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????	
"
_user_specified_name
inputs/0
?
?
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_189406

inputs

states
states_10
matmul_readvariableop_resource:$2
 matmul_1_readvariableop_resource:	$-
biasadd_readvariableop_resource:$
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????	2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????	2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????	2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????	2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????	2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????	2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????	2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????	2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????	:?????????	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????	
 
_user_specified_namestates:OK
'
_output_shapes
:?????????	
 
_user_specified_namestates
?*
?
__inference__traced_save_195480
file_prefix.
*savev2_dense_22_kernel_read_readvariableop,
(savev2_dense_22_bias_read_readvariableop.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableop:
6savev2_lstm_33_lstm_cell_66_kernel_read_readvariableopD
@savev2_lstm_33_lstm_cell_66_recurrent_kernel_read_readvariableop8
4savev2_lstm_33_lstm_cell_66_bias_read_readvariableop:
6savev2_lstm_34_lstm_cell_67_kernel_read_readvariableopD
@savev2_lstm_34_lstm_cell_67_recurrent_kernel_read_readvariableop8
4savev2_lstm_34_lstm_cell_67_bias_read_readvariableop:
6savev2_lstm_35_lstm_cell_68_kernel_read_readvariableopD
@savev2_lstm_35_lstm_cell_68_recurrent_kernel_read_readvariableop8
4savev2_lstm_35_lstm_cell_68_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_22_kernel_read_readvariableop(savev2_dense_22_bias_read_readvariableop*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop6savev2_lstm_33_lstm_cell_66_kernel_read_readvariableop@savev2_lstm_33_lstm_cell_66_recurrent_kernel_read_readvariableop4savev2_lstm_33_lstm_cell_66_bias_read_readvariableop6savev2_lstm_34_lstm_cell_67_kernel_read_readvariableop@savev2_lstm_34_lstm_cell_67_recurrent_kernel_read_readvariableop4savev2_lstm_34_lstm_cell_67_bias_read_readvariableop6savev2_lstm_35_lstm_cell_68_kernel_read_readvariableop@savev2_lstm_35_lstm_cell_68_recurrent_kernel_read_readvariableop4savev2_lstm_35_lstm_cell_68_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
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

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes{
y: :  : : ::$:	$:$:	@:@:@:	?:	 ?:?: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:$:$ 

_output_shapes

:	$: 

_output_shapes
:$:$ 

_output_shapes

:	@:$	 

_output_shapes

:@: 


_output_shapes
:@:%!

_output_shapes
:	?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_191787
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_191787___redundant_placeholder04
0while_while_cond_191787___redundant_placeholder14
0while_while_cond_191787___redundant_placeholder24
0while_while_cond_191787___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?^
?
'sequential_11_lstm_35_while_body_189096H
Dsequential_11_lstm_35_while_sequential_11_lstm_35_while_loop_counterN
Jsequential_11_lstm_35_while_sequential_11_lstm_35_while_maximum_iterations+
'sequential_11_lstm_35_while_placeholder-
)sequential_11_lstm_35_while_placeholder_1-
)sequential_11_lstm_35_while_placeholder_2-
)sequential_11_lstm_35_while_placeholder_3G
Csequential_11_lstm_35_while_sequential_11_lstm_35_strided_slice_1_0?
sequential_11_lstm_35_while_tensorarrayv2read_tensorlistgetitem_sequential_11_lstm_35_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_11_lstm_35_while_lstm_cell_68_matmul_readvariableop_resource_0:	?^
Ksequential_11_lstm_35_while_lstm_cell_68_matmul_1_readvariableop_resource_0:	 ?Y
Jsequential_11_lstm_35_while_lstm_cell_68_biasadd_readvariableop_resource_0:	?(
$sequential_11_lstm_35_while_identity*
&sequential_11_lstm_35_while_identity_1*
&sequential_11_lstm_35_while_identity_2*
&sequential_11_lstm_35_while_identity_3*
&sequential_11_lstm_35_while_identity_4*
&sequential_11_lstm_35_while_identity_5E
Asequential_11_lstm_35_while_sequential_11_lstm_35_strided_slice_1?
}sequential_11_lstm_35_while_tensorarrayv2read_tensorlistgetitem_sequential_11_lstm_35_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_11_lstm_35_while_lstm_cell_68_matmul_readvariableop_resource:	?\
Isequential_11_lstm_35_while_lstm_cell_68_matmul_1_readvariableop_resource:	 ?W
Hsequential_11_lstm_35_while_lstm_cell_68_biasadd_readvariableop_resource:	????sequential_11/lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOp?>sequential_11/lstm_35/while/lstm_cell_68/MatMul/ReadVariableOp?@sequential_11/lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOp?
Msequential_11/lstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2O
Msequential_11/lstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shape?
?sequential_11/lstm_35/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_11_lstm_35_while_tensorarrayv2read_tensorlistgetitem_sequential_11_lstm_35_tensorarrayunstack_tensorlistfromtensor_0'sequential_11_lstm_35_while_placeholderVsequential_11/lstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02A
?sequential_11/lstm_35/while/TensorArrayV2Read/TensorListGetItem?
>sequential_11/lstm_35/while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOpIsequential_11_lstm_35_while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02@
>sequential_11/lstm_35/while/lstm_cell_68/MatMul/ReadVariableOp?
/sequential_11/lstm_35/while/lstm_cell_68/MatMulMatMulFsequential_11/lstm_35/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_11/lstm_35/while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????21
/sequential_11/lstm_35/while/lstm_cell_68/MatMul?
@sequential_11/lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOpKsequential_11_lstm_35_while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02B
@sequential_11/lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOp?
1sequential_11/lstm_35/while/lstm_cell_68/MatMul_1MatMul)sequential_11_lstm_35_while_placeholder_2Hsequential_11/lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????23
1sequential_11/lstm_35/while/lstm_cell_68/MatMul_1?
,sequential_11/lstm_35/while/lstm_cell_68/addAddV29sequential_11/lstm_35/while/lstm_cell_68/MatMul:product:0;sequential_11/lstm_35/while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2.
,sequential_11/lstm_35/while/lstm_cell_68/add?
?sequential_11/lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOpJsequential_11_lstm_35_while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02A
?sequential_11/lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOp?
0sequential_11/lstm_35/while/lstm_cell_68/BiasAddBiasAdd0sequential_11/lstm_35/while/lstm_cell_68/add:z:0Gsequential_11/lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????22
0sequential_11/lstm_35/while/lstm_cell_68/BiasAdd?
8sequential_11/lstm_35/while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_11/lstm_35/while/lstm_cell_68/split/split_dim?
.sequential_11/lstm_35/while/lstm_cell_68/splitSplitAsequential_11/lstm_35/while/lstm_cell_68/split/split_dim:output:09sequential_11/lstm_35/while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split20
.sequential_11/lstm_35/while/lstm_cell_68/split?
0sequential_11/lstm_35/while/lstm_cell_68/SigmoidSigmoid7sequential_11/lstm_35/while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:????????? 22
0sequential_11/lstm_35/while/lstm_cell_68/Sigmoid?
2sequential_11/lstm_35/while/lstm_cell_68/Sigmoid_1Sigmoid7sequential_11/lstm_35/while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:????????? 24
2sequential_11/lstm_35/while/lstm_cell_68/Sigmoid_1?
,sequential_11/lstm_35/while/lstm_cell_68/mulMul6sequential_11/lstm_35/while/lstm_cell_68/Sigmoid_1:y:0)sequential_11_lstm_35_while_placeholder_3*
T0*'
_output_shapes
:????????? 2.
,sequential_11/lstm_35/while/lstm_cell_68/mul?
-sequential_11/lstm_35/while/lstm_cell_68/ReluRelu7sequential_11/lstm_35/while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:????????? 2/
-sequential_11/lstm_35/while/lstm_cell_68/Relu?
.sequential_11/lstm_35/while/lstm_cell_68/mul_1Mul4sequential_11/lstm_35/while/lstm_cell_68/Sigmoid:y:0;sequential_11/lstm_35/while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:????????? 20
.sequential_11/lstm_35/while/lstm_cell_68/mul_1?
.sequential_11/lstm_35/while/lstm_cell_68/add_1AddV20sequential_11/lstm_35/while/lstm_cell_68/mul:z:02sequential_11/lstm_35/while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:????????? 20
.sequential_11/lstm_35/while/lstm_cell_68/add_1?
2sequential_11/lstm_35/while/lstm_cell_68/Sigmoid_2Sigmoid7sequential_11/lstm_35/while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:????????? 24
2sequential_11/lstm_35/while/lstm_cell_68/Sigmoid_2?
/sequential_11/lstm_35/while/lstm_cell_68/Relu_1Relu2sequential_11/lstm_35/while/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:????????? 21
/sequential_11/lstm_35/while/lstm_cell_68/Relu_1?
.sequential_11/lstm_35/while/lstm_cell_68/mul_2Mul6sequential_11/lstm_35/while/lstm_cell_68/Sigmoid_2:y:0=sequential_11/lstm_35/while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 20
.sequential_11/lstm_35/while/lstm_cell_68/mul_2?
@sequential_11/lstm_35/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_11_lstm_35_while_placeholder_1'sequential_11_lstm_35_while_placeholder2sequential_11/lstm_35/while/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_11/lstm_35/while/TensorArrayV2Write/TensorListSetItem?
!sequential_11/lstm_35/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_11/lstm_35/while/add/y?
sequential_11/lstm_35/while/addAddV2'sequential_11_lstm_35_while_placeholder*sequential_11/lstm_35/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_11/lstm_35/while/add?
#sequential_11/lstm_35/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_11/lstm_35/while/add_1/y?
!sequential_11/lstm_35/while/add_1AddV2Dsequential_11_lstm_35_while_sequential_11_lstm_35_while_loop_counter,sequential_11/lstm_35/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_11/lstm_35/while/add_1?
$sequential_11/lstm_35/while/IdentityIdentity%sequential_11/lstm_35/while/add_1:z:0!^sequential_11/lstm_35/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_11/lstm_35/while/Identity?
&sequential_11/lstm_35/while/Identity_1IdentityJsequential_11_lstm_35_while_sequential_11_lstm_35_while_maximum_iterations!^sequential_11/lstm_35/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_11/lstm_35/while/Identity_1?
&sequential_11/lstm_35/while/Identity_2Identity#sequential_11/lstm_35/while/add:z:0!^sequential_11/lstm_35/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_11/lstm_35/while/Identity_2?
&sequential_11/lstm_35/while/Identity_3IdentityPsequential_11/lstm_35/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_11/lstm_35/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_11/lstm_35/while/Identity_3?
&sequential_11/lstm_35/while/Identity_4Identity2sequential_11/lstm_35/while/lstm_cell_68/mul_2:z:0!^sequential_11/lstm_35/while/NoOp*
T0*'
_output_shapes
:????????? 2(
&sequential_11/lstm_35/while/Identity_4?
&sequential_11/lstm_35/while/Identity_5Identity2sequential_11/lstm_35/while/lstm_cell_68/add_1:z:0!^sequential_11/lstm_35/while/NoOp*
T0*'
_output_shapes
:????????? 2(
&sequential_11/lstm_35/while/Identity_5?
 sequential_11/lstm_35/while/NoOpNoOp@^sequential_11/lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOp?^sequential_11/lstm_35/while/lstm_cell_68/MatMul/ReadVariableOpA^sequential_11/lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_11/lstm_35/while/NoOp"U
$sequential_11_lstm_35_while_identity-sequential_11/lstm_35/while/Identity:output:0"Y
&sequential_11_lstm_35_while_identity_1/sequential_11/lstm_35/while/Identity_1:output:0"Y
&sequential_11_lstm_35_while_identity_2/sequential_11/lstm_35/while/Identity_2:output:0"Y
&sequential_11_lstm_35_while_identity_3/sequential_11/lstm_35/while/Identity_3:output:0"Y
&sequential_11_lstm_35_while_identity_4/sequential_11/lstm_35/while/Identity_4:output:0"Y
&sequential_11_lstm_35_while_identity_5/sequential_11/lstm_35/while/Identity_5:output:0"?
Hsequential_11_lstm_35_while_lstm_cell_68_biasadd_readvariableop_resourceJsequential_11_lstm_35_while_lstm_cell_68_biasadd_readvariableop_resource_0"?
Isequential_11_lstm_35_while_lstm_cell_68_matmul_1_readvariableop_resourceKsequential_11_lstm_35_while_lstm_cell_68_matmul_1_readvariableop_resource_0"?
Gsequential_11_lstm_35_while_lstm_cell_68_matmul_readvariableop_resourceIsequential_11_lstm_35_while_lstm_cell_68_matmul_readvariableop_resource_0"?
Asequential_11_lstm_35_while_sequential_11_lstm_35_strided_slice_1Csequential_11_lstm_35_while_sequential_11_lstm_35_strided_slice_1_0"?
}sequential_11_lstm_35_while_tensorarrayv2read_tensorlistgetitem_sequential_11_lstm_35_tensorarrayunstack_tensorlistfromtensorsequential_11_lstm_35_while_tensorarrayv2read_tensorlistgetitem_sequential_11_lstm_35_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2?
?sequential_11/lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOp?sequential_11/lstm_35/while/lstm_cell_68/BiasAdd/ReadVariableOp2?
>sequential_11/lstm_35/while/lstm_cell_68/MatMul/ReadVariableOp>sequential_11/lstm_35/while/lstm_cell_68/MatMul/ReadVariableOp2?
@sequential_11/lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOp@sequential_11/lstm_35/while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?%
?
while_body_189476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_66_189500_0:$-
while_lstm_cell_66_189502_0:	$)
while_lstm_cell_66_189504_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_66_189500:$+
while_lstm_cell_66_189502:	$'
while_lstm_cell_66_189504:$??*while/lstm_cell_66/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_66_189500_0while_lstm_cell_66_189502_0while_lstm_cell_66_189504_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????	:?????????	:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_1894062,
*while/lstm_cell_66/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_66/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_66/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_66/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_66/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_66_189500while_lstm_cell_66_189500_0"8
while_lstm_cell_66_189502while_lstm_cell_66_189502_0"8
while_lstm_cell_66_189504while_lstm_cell_66_189504_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2X
*while/lstm_cell_66/StatefulPartitionedCall*while/lstm_cell_66/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_193458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_193458___redundant_placeholder04
0while_while_cond_193458___redundant_placeholder14
0while_while_cond_193458___redundant_placeholder24
0while_while_cond_193458___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_189475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_189475___redundant_placeholder04
0while_while_cond_189475___redundant_placeholder14
0while_while_cond_189475___redundant_placeholder24
0while_while_cond_189475___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
?
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_190456

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
?
e
I__inference_activation_22_layer_call_and_return_conditional_losses_191465

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:????????? 2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
while_cond_194976
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_194976___redundant_placeholder04
0while_while_cond_194976___redundant_placeholder14
0while_while_cond_194976___redundant_placeholder24
0while_while_cond_194976___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
??
?
I__inference_sequential_11_layer_call_and_return_conditional_losses_192779

inputsE
3lstm_33_lstm_cell_66_matmul_readvariableop_resource:$G
5lstm_33_lstm_cell_66_matmul_1_readvariableop_resource:	$B
4lstm_33_lstm_cell_66_biasadd_readvariableop_resource:$E
3lstm_34_lstm_cell_67_matmul_readvariableop_resource:	@G
5lstm_34_lstm_cell_67_matmul_1_readvariableop_resource:@B
4lstm_34_lstm_cell_67_biasadd_readvariableop_resource:@F
3lstm_35_lstm_cell_68_matmul_readvariableop_resource:	?H
5lstm_35_lstm_cell_68_matmul_1_readvariableop_resource:	 ?C
4lstm_35_lstm_cell_68_biasadd_readvariableop_resource:	?9
'dense_22_matmul_readvariableop_resource:  6
(dense_22_biasadd_readvariableop_resource: 9
'dense_23_matmul_readvariableop_resource: 6
(dense_23_biasadd_readvariableop_resource:
identity??dense_22/BiasAdd/ReadVariableOp?dense_22/MatMul/ReadVariableOp?dense_23/BiasAdd/ReadVariableOp?dense_23/MatMul/ReadVariableOp?+lstm_33/lstm_cell_66/BiasAdd/ReadVariableOp?*lstm_33/lstm_cell_66/MatMul/ReadVariableOp?,lstm_33/lstm_cell_66/MatMul_1/ReadVariableOp?lstm_33/while?+lstm_34/lstm_cell_67/BiasAdd/ReadVariableOp?*lstm_34/lstm_cell_67/MatMul/ReadVariableOp?,lstm_34/lstm_cell_67/MatMul_1/ReadVariableOp?lstm_34/while?+lstm_35/lstm_cell_68/BiasAdd/ReadVariableOp?*lstm_35/lstm_cell_68/MatMul/ReadVariableOp?,lstm_35/lstm_cell_68/MatMul_1/ReadVariableOp?lstm_35/whileT
lstm_33/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_33/Shape?
lstm_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_33/strided_slice/stack?
lstm_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_33/strided_slice/stack_1?
lstm_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_33/strided_slice/stack_2?
lstm_33/strided_sliceStridedSlicelstm_33/Shape:output:0$lstm_33/strided_slice/stack:output:0&lstm_33/strided_slice/stack_1:output:0&lstm_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_33/strided_slicer
lstm_33/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
lstm_33/zeros/packed/1?
lstm_33/zeros/packedPacklstm_33/strided_slice:output:0lstm_33/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_33/zeros/packedo
lstm_33/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_33/zeros/Const?
lstm_33/zerosFilllstm_33/zeros/packed:output:0lstm_33/zeros/Const:output:0*
T0*'
_output_shapes
:?????????	2
lstm_33/zerosv
lstm_33/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
lstm_33/zeros_1/packed/1?
lstm_33/zeros_1/packedPacklstm_33/strided_slice:output:0!lstm_33/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_33/zeros_1/packeds
lstm_33/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_33/zeros_1/Const?
lstm_33/zeros_1Filllstm_33/zeros_1/packed:output:0lstm_33/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????	2
lstm_33/zeros_1?
lstm_33/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_33/transpose/perm?
lstm_33/transpose	Transposeinputslstm_33/transpose/perm:output:0*
T0*+
_output_shapes
:	?????????2
lstm_33/transposeg
lstm_33/Shape_1Shapelstm_33/transpose:y:0*
T0*
_output_shapes
:2
lstm_33/Shape_1?
lstm_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_33/strided_slice_1/stack?
lstm_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_33/strided_slice_1/stack_1?
lstm_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_33/strided_slice_1/stack_2?
lstm_33/strided_slice_1StridedSlicelstm_33/Shape_1:output:0&lstm_33/strided_slice_1/stack:output:0(lstm_33/strided_slice_1/stack_1:output:0(lstm_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_33/strided_slice_1?
#lstm_33/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_33/TensorArrayV2/element_shape?
lstm_33/TensorArrayV2TensorListReserve,lstm_33/TensorArrayV2/element_shape:output:0 lstm_33/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_33/TensorArrayV2?
=lstm_33/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_33/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_33/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_33/transpose:y:0Flstm_33/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_33/TensorArrayUnstack/TensorListFromTensor?
lstm_33/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_33/strided_slice_2/stack?
lstm_33/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_33/strided_slice_2/stack_1?
lstm_33/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_33/strided_slice_2/stack_2?
lstm_33/strided_slice_2StridedSlicelstm_33/transpose:y:0&lstm_33/strided_slice_2/stack:output:0(lstm_33/strided_slice_2/stack_1:output:0(lstm_33/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_33/strided_slice_2?
*lstm_33/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3lstm_33_lstm_cell_66_matmul_readvariableop_resource*
_output_shapes

:$*
dtype02,
*lstm_33/lstm_cell_66/MatMul/ReadVariableOp?
lstm_33/lstm_cell_66/MatMulMatMul lstm_33/strided_slice_2:output:02lstm_33/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_33/lstm_cell_66/MatMul?
,lstm_33/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5lstm_33_lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02.
,lstm_33/lstm_cell_66/MatMul_1/ReadVariableOp?
lstm_33/lstm_cell_66/MatMul_1MatMullstm_33/zeros:output:04lstm_33/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_33/lstm_cell_66/MatMul_1?
lstm_33/lstm_cell_66/addAddV2%lstm_33/lstm_cell_66/MatMul:product:0'lstm_33/lstm_cell_66/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_33/lstm_cell_66/add?
+lstm_33/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4lstm_33_lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02-
+lstm_33/lstm_cell_66/BiasAdd/ReadVariableOp?
lstm_33/lstm_cell_66/BiasAddBiasAddlstm_33/lstm_cell_66/add:z:03lstm_33/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_33/lstm_cell_66/BiasAdd?
$lstm_33/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_33/lstm_cell_66/split/split_dim?
lstm_33/lstm_cell_66/splitSplit-lstm_33/lstm_cell_66/split/split_dim:output:0%lstm_33/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_33/lstm_cell_66/split?
lstm_33/lstm_cell_66/SigmoidSigmoid#lstm_33/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_33/lstm_cell_66/Sigmoid?
lstm_33/lstm_cell_66/Sigmoid_1Sigmoid#lstm_33/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:?????????	2 
lstm_33/lstm_cell_66/Sigmoid_1?
lstm_33/lstm_cell_66/mulMul"lstm_33/lstm_cell_66/Sigmoid_1:y:0lstm_33/zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_33/lstm_cell_66/mul?
lstm_33/lstm_cell_66/ReluRelu#lstm_33/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_33/lstm_cell_66/Relu?
lstm_33/lstm_cell_66/mul_1Mul lstm_33/lstm_cell_66/Sigmoid:y:0'lstm_33/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_33/lstm_cell_66/mul_1?
lstm_33/lstm_cell_66/add_1AddV2lstm_33/lstm_cell_66/mul:z:0lstm_33/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_33/lstm_cell_66/add_1?
lstm_33/lstm_cell_66/Sigmoid_2Sigmoid#lstm_33/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:?????????	2 
lstm_33/lstm_cell_66/Sigmoid_2?
lstm_33/lstm_cell_66/Relu_1Relulstm_33/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_33/lstm_cell_66/Relu_1?
lstm_33/lstm_cell_66/mul_2Mul"lstm_33/lstm_cell_66/Sigmoid_2:y:0)lstm_33/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_33/lstm_cell_66/mul_2?
%lstm_33/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2'
%lstm_33/TensorArrayV2_1/element_shape?
lstm_33/TensorArrayV2_1TensorListReserve.lstm_33/TensorArrayV2_1/element_shape:output:0 lstm_33/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_33/TensorArrayV2_1^
lstm_33/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_33/time?
 lstm_33/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_33/while/maximum_iterationsz
lstm_33/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_33/while/loop_counter?
lstm_33/whileWhile#lstm_33/while/loop_counter:output:0)lstm_33/while/maximum_iterations:output:0lstm_33/time:output:0 lstm_33/TensorArrayV2_1:handle:0lstm_33/zeros:output:0lstm_33/zeros_1:output:0 lstm_33/strided_slice_1:output:0?lstm_33/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_33_lstm_cell_66_matmul_readvariableop_resource5lstm_33_lstm_cell_66_matmul_1_readvariableop_resource4lstm_33_lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_33_while_body_192404*%
condR
lstm_33_while_cond_192403*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
lstm_33/while?
8lstm_33/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2:
8lstm_33/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_33/TensorArrayV2Stack/TensorListStackTensorListStacklstm_33/while:output:3Alstm_33/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	?????????	*
element_dtype02,
*lstm_33/TensorArrayV2Stack/TensorListStack?
lstm_33/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_33/strided_slice_3/stack?
lstm_33/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_33/strided_slice_3/stack_1?
lstm_33/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_33/strided_slice_3/stack_2?
lstm_33/strided_slice_3StridedSlice3lstm_33/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_33/strided_slice_3/stack:output:0(lstm_33/strided_slice_3/stack_1:output:0(lstm_33/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
lstm_33/strided_slice_3?
lstm_33/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_33/transpose_1/perm?
lstm_33/transpose_1	Transpose3lstm_33/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_33/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????		2
lstm_33/transpose_1v
lstm_33/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_33/runtimee
lstm_34/ShapeShapelstm_33/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_34/Shape?
lstm_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_34/strided_slice/stack?
lstm_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_34/strided_slice/stack_1?
lstm_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_34/strided_slice/stack_2?
lstm_34/strided_sliceStridedSlicelstm_34/Shape:output:0$lstm_34/strided_slice/stack:output:0&lstm_34/strided_slice/stack_1:output:0&lstm_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_34/strided_slicer
lstm_34/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_34/zeros/packed/1?
lstm_34/zeros/packedPacklstm_34/strided_slice:output:0lstm_34/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_34/zeros/packedo
lstm_34/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_34/zeros/Const?
lstm_34/zerosFilllstm_34/zeros/packed:output:0lstm_34/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_34/zerosv
lstm_34/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_34/zeros_1/packed/1?
lstm_34/zeros_1/packedPacklstm_34/strided_slice:output:0!lstm_34/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_34/zeros_1/packeds
lstm_34/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_34/zeros_1/Const?
lstm_34/zeros_1Filllstm_34/zeros_1/packed:output:0lstm_34/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_34/zeros_1?
lstm_34/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_34/transpose/perm?
lstm_34/transpose	Transposelstm_33/transpose_1:y:0lstm_34/transpose/perm:output:0*
T0*+
_output_shapes
:	?????????	2
lstm_34/transposeg
lstm_34/Shape_1Shapelstm_34/transpose:y:0*
T0*
_output_shapes
:2
lstm_34/Shape_1?
lstm_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_34/strided_slice_1/stack?
lstm_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_1/stack_1?
lstm_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_1/stack_2?
lstm_34/strided_slice_1StridedSlicelstm_34/Shape_1:output:0&lstm_34/strided_slice_1/stack:output:0(lstm_34/strided_slice_1/stack_1:output:0(lstm_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_34/strided_slice_1?
#lstm_34/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_34/TensorArrayV2/element_shape?
lstm_34/TensorArrayV2TensorListReserve,lstm_34/TensorArrayV2/element_shape:output:0 lstm_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_34/TensorArrayV2?
=lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2?
=lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_34/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_34/transpose:y:0Flstm_34/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_34/TensorArrayUnstack/TensorListFromTensor?
lstm_34/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_34/strided_slice_2/stack?
lstm_34/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_2/stack_1?
lstm_34/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_2/stack_2?
lstm_34/strided_slice_2StridedSlicelstm_34/transpose:y:0&lstm_34/strided_slice_2/stack:output:0(lstm_34/strided_slice_2/stack_1:output:0(lstm_34/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
lstm_34/strided_slice_2?
*lstm_34/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp3lstm_34_lstm_cell_67_matmul_readvariableop_resource*
_output_shapes

:	@*
dtype02,
*lstm_34/lstm_cell_67/MatMul/ReadVariableOp?
lstm_34/lstm_cell_67/MatMulMatMul lstm_34/strided_slice_2:output:02lstm_34/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_34/lstm_cell_67/MatMul?
,lstm_34/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp5lstm_34_lstm_cell_67_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype02.
,lstm_34/lstm_cell_67/MatMul_1/ReadVariableOp?
lstm_34/lstm_cell_67/MatMul_1MatMullstm_34/zeros:output:04lstm_34/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_34/lstm_cell_67/MatMul_1?
lstm_34/lstm_cell_67/addAddV2%lstm_34/lstm_cell_67/MatMul:product:0'lstm_34/lstm_cell_67/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
lstm_34/lstm_cell_67/add?
+lstm_34/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp4lstm_34_lstm_cell_67_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+lstm_34/lstm_cell_67/BiasAdd/ReadVariableOp?
lstm_34/lstm_cell_67/BiasAddBiasAddlstm_34/lstm_cell_67/add:z:03lstm_34/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
lstm_34/lstm_cell_67/BiasAdd?
$lstm_34/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_34/lstm_cell_67/split/split_dim?
lstm_34/lstm_cell_67/splitSplit-lstm_34/lstm_cell_67/split/split_dim:output:0%lstm_34/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_34/lstm_cell_67/split?
lstm_34/lstm_cell_67/SigmoidSigmoid#lstm_34/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_34/lstm_cell_67/Sigmoid?
lstm_34/lstm_cell_67/Sigmoid_1Sigmoid#lstm_34/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:?????????2 
lstm_34/lstm_cell_67/Sigmoid_1?
lstm_34/lstm_cell_67/mulMul"lstm_34/lstm_cell_67/Sigmoid_1:y:0lstm_34/zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_34/lstm_cell_67/mul?
lstm_34/lstm_cell_67/ReluRelu#lstm_34/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_34/lstm_cell_67/Relu?
lstm_34/lstm_cell_67/mul_1Mul lstm_34/lstm_cell_67/Sigmoid:y:0'lstm_34/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_34/lstm_cell_67/mul_1?
lstm_34/lstm_cell_67/add_1AddV2lstm_34/lstm_cell_67/mul:z:0lstm_34/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_34/lstm_cell_67/add_1?
lstm_34/lstm_cell_67/Sigmoid_2Sigmoid#lstm_34/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:?????????2 
lstm_34/lstm_cell_67/Sigmoid_2?
lstm_34/lstm_cell_67/Relu_1Relulstm_34/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_34/lstm_cell_67/Relu_1?
lstm_34/lstm_cell_67/mul_2Mul"lstm_34/lstm_cell_67/Sigmoid_2:y:0)lstm_34/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_34/lstm_cell_67/mul_2?
%lstm_34/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2'
%lstm_34/TensorArrayV2_1/element_shape?
lstm_34/TensorArrayV2_1TensorListReserve.lstm_34/TensorArrayV2_1/element_shape:output:0 lstm_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_34/TensorArrayV2_1^
lstm_34/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_34/time?
 lstm_34/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_34/while/maximum_iterationsz
lstm_34/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_34/while/loop_counter?
lstm_34/whileWhile#lstm_34/while/loop_counter:output:0)lstm_34/while/maximum_iterations:output:0lstm_34/time:output:0 lstm_34/TensorArrayV2_1:handle:0lstm_34/zeros:output:0lstm_34/zeros_1:output:0 lstm_34/strided_slice_1:output:0?lstm_34/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_34_lstm_cell_67_matmul_readvariableop_resource5lstm_34_lstm_cell_67_matmul_1_readvariableop_resource4lstm_34_lstm_cell_67_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_34_while_body_192543*%
condR
lstm_34_while_cond_192542*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
lstm_34/while?
8lstm_34/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2:
8lstm_34/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_34/TensorArrayV2Stack/TensorListStackTensorListStacklstm_34/while:output:3Alstm_34/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	?????????*
element_dtype02,
*lstm_34/TensorArrayV2Stack/TensorListStack?
lstm_34/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_34/strided_slice_3/stack?
lstm_34/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_34/strided_slice_3/stack_1?
lstm_34/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_3/stack_2?
lstm_34/strided_slice_3StridedSlice3lstm_34/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_34/strided_slice_3/stack:output:0(lstm_34/strided_slice_3/stack_1:output:0(lstm_34/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_34/strided_slice_3?
lstm_34/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_34/transpose_1/perm?
lstm_34/transpose_1	Transpose3lstm_34/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_34/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	2
lstm_34/transpose_1v
lstm_34/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_34/runtimee
lstm_35/ShapeShapelstm_34/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_35/Shape?
lstm_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_35/strided_slice/stack?
lstm_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_35/strided_slice/stack_1?
lstm_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_35/strided_slice/stack_2?
lstm_35/strided_sliceStridedSlicelstm_35/Shape:output:0$lstm_35/strided_slice/stack:output:0&lstm_35/strided_slice/stack_1:output:0&lstm_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_35/strided_slicer
lstm_35/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/zeros/packed/1?
lstm_35/zeros/packedPacklstm_35/strided_slice:output:0lstm_35/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_35/zeros/packedo
lstm_35/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_35/zeros/Const?
lstm_35/zerosFilllstm_35/zeros/packed:output:0lstm_35/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_35/zerosv
lstm_35/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/zeros_1/packed/1?
lstm_35/zeros_1/packedPacklstm_35/strided_slice:output:0!lstm_35/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_35/zeros_1/packeds
lstm_35/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_35/zeros_1/Const?
lstm_35/zeros_1Filllstm_35/zeros_1/packed:output:0lstm_35/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_35/zeros_1?
lstm_35/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_35/transpose/perm?
lstm_35/transpose	Transposelstm_34/transpose_1:y:0lstm_35/transpose/perm:output:0*
T0*+
_output_shapes
:	?????????2
lstm_35/transposeg
lstm_35/Shape_1Shapelstm_35/transpose:y:0*
T0*
_output_shapes
:2
lstm_35/Shape_1?
lstm_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_35/strided_slice_1/stack?
lstm_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_1/stack_1?
lstm_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_1/stack_2?
lstm_35/strided_slice_1StridedSlicelstm_35/Shape_1:output:0&lstm_35/strided_slice_1/stack:output:0(lstm_35/strided_slice_1/stack_1:output:0(lstm_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_35/strided_slice_1?
#lstm_35/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_35/TensorArrayV2/element_shape?
lstm_35/TensorArrayV2TensorListReserve,lstm_35/TensorArrayV2/element_shape:output:0 lstm_35/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_35/TensorArrayV2?
=lstm_35/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_35/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_35/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_35/transpose:y:0Flstm_35/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_35/TensorArrayUnstack/TensorListFromTensor?
lstm_35/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_35/strided_slice_2/stack?
lstm_35/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_2/stack_1?
lstm_35/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_2/stack_2?
lstm_35/strided_slice_2StridedSlicelstm_35/transpose:y:0&lstm_35/strided_slice_2/stack:output:0(lstm_35/strided_slice_2/stack_1:output:0(lstm_35/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_35/strided_slice_2?
*lstm_35/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3lstm_35_lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*lstm_35/lstm_cell_68/MatMul/ReadVariableOp?
lstm_35/lstm_cell_68/MatMulMatMul lstm_35/strided_slice_2:output:02lstm_35/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_35/lstm_cell_68/MatMul?
,lstm_35/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5lstm_35_lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02.
,lstm_35/lstm_cell_68/MatMul_1/ReadVariableOp?
lstm_35/lstm_cell_68/MatMul_1MatMullstm_35/zeros:output:04lstm_35/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_35/lstm_cell_68/MatMul_1?
lstm_35/lstm_cell_68/addAddV2%lstm_35/lstm_cell_68/MatMul:product:0'lstm_35/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_35/lstm_cell_68/add?
+lstm_35/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4lstm_35_lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_35/lstm_cell_68/BiasAdd/ReadVariableOp?
lstm_35/lstm_cell_68/BiasAddBiasAddlstm_35/lstm_cell_68/add:z:03lstm_35/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_35/lstm_cell_68/BiasAdd?
$lstm_35/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_35/lstm_cell_68/split/split_dim?
lstm_35/lstm_cell_68/splitSplit-lstm_35/lstm_cell_68/split/split_dim:output:0%lstm_35/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_35/lstm_cell_68/split?
lstm_35/lstm_cell_68/SigmoidSigmoid#lstm_35/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_35/lstm_cell_68/Sigmoid?
lstm_35/lstm_cell_68/Sigmoid_1Sigmoid#lstm_35/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:????????? 2 
lstm_35/lstm_cell_68/Sigmoid_1?
lstm_35/lstm_cell_68/mulMul"lstm_35/lstm_cell_68/Sigmoid_1:y:0lstm_35/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_35/lstm_cell_68/mul?
lstm_35/lstm_cell_68/ReluRelu#lstm_35/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_35/lstm_cell_68/Relu?
lstm_35/lstm_cell_68/mul_1Mul lstm_35/lstm_cell_68/Sigmoid:y:0'lstm_35/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_35/lstm_cell_68/mul_1?
lstm_35/lstm_cell_68/add_1AddV2lstm_35/lstm_cell_68/mul:z:0lstm_35/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_35/lstm_cell_68/add_1?
lstm_35/lstm_cell_68/Sigmoid_2Sigmoid#lstm_35/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:????????? 2 
lstm_35/lstm_cell_68/Sigmoid_2?
lstm_35/lstm_cell_68/Relu_1Relulstm_35/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_35/lstm_cell_68/Relu_1?
lstm_35/lstm_cell_68/mul_2Mul"lstm_35/lstm_cell_68/Sigmoid_2:y:0)lstm_35/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_35/lstm_cell_68/mul_2?
%lstm_35/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2'
%lstm_35/TensorArrayV2_1/element_shape?
lstm_35/TensorArrayV2_1TensorListReserve.lstm_35/TensorArrayV2_1/element_shape:output:0 lstm_35/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_35/TensorArrayV2_1^
lstm_35/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/time?
 lstm_35/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_35/while/maximum_iterationsz
lstm_35/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/while/loop_counter?
lstm_35/whileWhile#lstm_35/while/loop_counter:output:0)lstm_35/while/maximum_iterations:output:0lstm_35/time:output:0 lstm_35/TensorArrayV2_1:handle:0lstm_35/zeros:output:0lstm_35/zeros_1:output:0 lstm_35/strided_slice_1:output:0?lstm_35/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_35_lstm_cell_68_matmul_readvariableop_resource5lstm_35_lstm_cell_68_matmul_1_readvariableop_resource4lstm_35_lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_35_while_body_192682*%
condR
lstm_35_while_cond_192681*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_35/while?
8lstm_35/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2:
8lstm_35/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_35/TensorArrayV2Stack/TensorListStackTensorListStacklstm_35/while:output:3Alstm_35/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:	????????? *
element_dtype02,
*lstm_35/TensorArrayV2Stack/TensorListStack?
lstm_35/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_35/strided_slice_3/stack?
lstm_35/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_35/strided_slice_3/stack_1?
lstm_35/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_3/stack_2?
lstm_35/strided_slice_3StridedSlice3lstm_35/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_35/strided_slice_3/stack:output:0(lstm_35/strided_slice_3/stack_1:output:0(lstm_35/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_35/strided_slice_3?
lstm_35/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_35/transpose_1/perm?
lstm_35/transpose_1	Transpose3lstm_35/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_35/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	 2
lstm_35/transpose_1v
lstm_35/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_35/runtime?
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_22/MatMul/ReadVariableOp?
dense_22/MatMulMatMul lstm_35/strided_slice_3:output:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_22/MatMul?
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_22/BiasAdd/ReadVariableOp?
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_22/BiasAdd}
activation_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
activation_22/Relu?
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_23/MatMul/ReadVariableOp?
dense_23/MatMulMatMul activation_22/Relu:activations:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_23/MatMul?
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOp?
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_23/BiasAddt
IdentityIdentitydense_23/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp,^lstm_33/lstm_cell_66/BiasAdd/ReadVariableOp+^lstm_33/lstm_cell_66/MatMul/ReadVariableOp-^lstm_33/lstm_cell_66/MatMul_1/ReadVariableOp^lstm_33/while,^lstm_34/lstm_cell_67/BiasAdd/ReadVariableOp+^lstm_34/lstm_cell_67/MatMul/ReadVariableOp-^lstm_34/lstm_cell_67/MatMul_1/ReadVariableOp^lstm_34/while,^lstm_35/lstm_cell_68/BiasAdd/ReadVariableOp+^lstm_35/lstm_cell_68/MatMul/ReadVariableOp-^lstm_35/lstm_cell_68/MatMul_1/ReadVariableOp^lstm_35/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????	: : : : : : : : : : : : : 2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2Z
+lstm_33/lstm_cell_66/BiasAdd/ReadVariableOp+lstm_33/lstm_cell_66/BiasAdd/ReadVariableOp2X
*lstm_33/lstm_cell_66/MatMul/ReadVariableOp*lstm_33/lstm_cell_66/MatMul/ReadVariableOp2\
,lstm_33/lstm_cell_66/MatMul_1/ReadVariableOp,lstm_33/lstm_cell_66/MatMul_1/ReadVariableOp2
lstm_33/whilelstm_33/while2Z
+lstm_34/lstm_cell_67/BiasAdd/ReadVariableOp+lstm_34/lstm_cell_67/BiasAdd/ReadVariableOp2X
*lstm_34/lstm_cell_67/MatMul/ReadVariableOp*lstm_34/lstm_cell_67/MatMul/ReadVariableOp2\
,lstm_34/lstm_cell_67/MatMul_1/ReadVariableOp,lstm_34/lstm_cell_67/MatMul_1/ReadVariableOp2
lstm_34/whilelstm_34/while2Z
+lstm_35/lstm_cell_68/BiasAdd/ReadVariableOp+lstm_35/lstm_cell_68/BiasAdd/ReadVariableOp2X
*lstm_35/lstm_cell_68/MatMul/ReadVariableOp*lstm_35/lstm_cell_68/MatMul/ReadVariableOp2\
,lstm_35/lstm_cell_68/MatMul_1/ReadVariableOp,lstm_35/lstm_cell_68/MatMul_1/ReadVariableOp2
lstm_35/whilelstm_35/while:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?

?
lstm_35_while_cond_193115,
(lstm_35_while_lstm_35_while_loop_counter2
.lstm_35_while_lstm_35_while_maximum_iterations
lstm_35_while_placeholder
lstm_35_while_placeholder_1
lstm_35_while_placeholder_2
lstm_35_while_placeholder_3.
*lstm_35_while_less_lstm_35_strided_slice_1D
@lstm_35_while_lstm_35_while_cond_193115___redundant_placeholder0D
@lstm_35_while_lstm_35_while_cond_193115___redundant_placeholder1D
@lstm_35_while_lstm_35_while_cond_193115___redundant_placeholder2D
@lstm_35_while_lstm_35_while_cond_193115___redundant_placeholder3
lstm_35_while_identity
?
lstm_35/while/LessLesslstm_35_while_placeholder*lstm_35_while_less_lstm_35_strided_slice_1*
T0*
_output_shapes
: 2
lstm_35/while/Lessu
lstm_35/while/IdentityIdentitylstm_35/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_35/while/Identity"9
lstm_35_while_identitylstm_35/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
.__inference_sequential_11_layer_call_fn_192176
lstm_33_input
unknown:$
	unknown_0:	$
	unknown_1:$
	unknown_2:	@
	unknown_3:@
	unknown_4:@
	unknown_5:	?
	unknown_6:	 ?
	unknown_7:	?
	unknown_8:  
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_33_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_1921162
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????	: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????	
'
_user_specified_namelstm_33_input
?
?
while_cond_193931
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_193931___redundant_placeholder04
0while_while_cond_193931___redundant_placeholder14
0while_while_cond_193931___redundant_placeholder24
0while_while_cond_193931___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
e
I__inference_activation_22_layer_call_and_return_conditional_losses_195090

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:????????? 2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
lstm_33_input:
serving_default_lstm_33_input:0?????????	A
activation_230
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer_with_weights-4
layer-5
layer-6
	optimizer
		variables

regularization_losses
trainable_variables
	keras_api

signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

 kernel
!bias
"	variables
#regularization_losses
$trainable_variables
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
&	variables
'regularization_losses
(trainable_variables
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

*kernel
+bias
,	variables
-regularization_losses
.trainable_variables
/	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
0	variables
1regularization_losses
2trainable_variables
3	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
"
	optimizer
~
40
51
62
73
84
95
:6
;7
<8
 9
!10
*11
+12"
trackable_list_wrapper
 "
trackable_list_wrapper
~
40
51
62
73
84
95
:6
;7
<8
 9
!10
*11
+12"
trackable_list_wrapper
?
=non_trainable_variables
		variables
>layer_regularization_losses

?layers
@layer_metrics

regularization_losses
Ametrics
trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
B
state_size

4kernel
5recurrent_kernel
6bias
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
 "
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
?
Gnon_trainable_variables
	variables

Hstates
Ilayer_regularization_losses

Jlayers
Klayer_metrics
regularization_losses
Lmetrics
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
M
state_size

7kernel
8recurrent_kernel
9bias
N	variables
Oregularization_losses
Ptrainable_variables
Q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
 "
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
?
Rnon_trainable_variables
	variables

Sstates
Tlayer_regularization_losses

Ulayers
Vlayer_metrics
regularization_losses
Wmetrics
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
X
state_size

:kernel
;recurrent_kernel
<bias
Y	variables
Zregularization_losses
[trainable_variables
\	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
?
]non_trainable_variables
	variables

^states
_layer_regularization_losses

`layers
alayer_metrics
regularization_losses
bmetrics
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:  2dense_22/kernel
: 2dense_22/bias
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
?
cnon_trainable_variables
"	variables
dlayer_regularization_losses
emetrics

flayers
glayer_metrics
#regularization_losses
$trainable_variables
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
hnon_trainable_variables
&	variables
ilayer_regularization_losses
jmetrics

klayers
llayer_metrics
'regularization_losses
(trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_23/kernel
:2dense_23/bias
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
?
mnon_trainable_variables
,	variables
nlayer_regularization_losses
ometrics

players
qlayer_metrics
-regularization_losses
.trainable_variables
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
rnon_trainable_variables
0	variables
slayer_regularization_losses
tmetrics

ulayers
vlayer_metrics
1regularization_losses
2trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+$2lstm_33/lstm_cell_66/kernel
7:5	$2%lstm_33/lstm_cell_66/recurrent_kernel
':%$2lstm_33/lstm_cell_66/bias
-:+	@2lstm_34/lstm_cell_67/kernel
7:5@2%lstm_34/lstm_cell_67/recurrent_kernel
':%@2lstm_34/lstm_cell_67/bias
.:,	?2lstm_35/lstm_cell_68/kernel
8:6	 ?2%lstm_35/lstm_cell_68/recurrent_kernel
(:&?2lstm_35/lstm_cell_68/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_dict_wrapper
'
w0"
trackable_list_wrapper
 "
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
 "
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
?
xnon_trainable_variables
C	variables
ylayer_regularization_losses
zmetrics

{layers
|layer_metrics
Dregularization_losses
Etrainable_variables
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
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
 "
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
?
}non_trainable_variables
N	variables
~layer_regularization_losses
metrics
?layers
?layer_metrics
Oregularization_losses
Ptrainable_variables
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
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
?
?non_trainable_variables
Y	variables
 ?layer_regularization_losses
?metrics
?layers
?layer_metrics
Zregularization_losses
[trainable_variables
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
'
0"
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
?2?
.__inference_sequential_11_layer_call_fn_191519
.__inference_sequential_11_layer_call_fn_192314
.__inference_sequential_11_layer_call_fn_192345
.__inference_sequential_11_layer_call_fn_192176?
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
?B?
!__inference__wrapped_model_189193lstm_33_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_sequential_11_layer_call_and_return_conditional_losses_192779
I__inference_sequential_11_layer_call_and_return_conditional_losses_193213
I__inference_sequential_11_layer_call_and_return_conditional_losses_192213
I__inference_sequential_11_layer_call_and_return_conditional_losses_192250?
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
(__inference_lstm_33_layer_call_fn_193224
(__inference_lstm_33_layer_call_fn_193235
(__inference_lstm_33_layer_call_fn_193246
(__inference_lstm_33_layer_call_fn_193257?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_lstm_33_layer_call_and_return_conditional_losses_193400
C__inference_lstm_33_layer_call_and_return_conditional_losses_193543
C__inference_lstm_33_layer_call_and_return_conditional_losses_193686
C__inference_lstm_33_layer_call_and_return_conditional_losses_193829?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_lstm_34_layer_call_fn_193840
(__inference_lstm_34_layer_call_fn_193851
(__inference_lstm_34_layer_call_fn_193862
(__inference_lstm_34_layer_call_fn_193873?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_lstm_34_layer_call_and_return_conditional_losses_194016
C__inference_lstm_34_layer_call_and_return_conditional_losses_194159
C__inference_lstm_34_layer_call_and_return_conditional_losses_194302
C__inference_lstm_34_layer_call_and_return_conditional_losses_194445?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_lstm_35_layer_call_fn_194456
(__inference_lstm_35_layer_call_fn_194467
(__inference_lstm_35_layer_call_fn_194478
(__inference_lstm_35_layer_call_fn_194489?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_lstm_35_layer_call_and_return_conditional_losses_194632
C__inference_lstm_35_layer_call_and_return_conditional_losses_194775
C__inference_lstm_35_layer_call_and_return_conditional_losses_194918
C__inference_lstm_35_layer_call_and_return_conditional_losses_195061?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dense_22_layer_call_fn_195070?
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
D__inference_dense_22_layer_call_and_return_conditional_losses_195080?
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
.__inference_activation_22_layer_call_fn_195085?
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
I__inference_activation_22_layer_call_and_return_conditional_losses_195090?
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
)__inference_dense_23_layer_call_fn_195099?
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
D__inference_dense_23_layer_call_and_return_conditional_losses_195109?
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
.__inference_activation_23_layer_call_fn_195114?
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
I__inference_activation_23_layer_call_and_return_conditional_losses_195118?
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
?B?
$__inference_signature_wrapper_192283lstm_33_input"?
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
 
?2?
-__inference_lstm_cell_66_layer_call_fn_195135
-__inference_lstm_cell_66_layer_call_fn_195152?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_195184
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_195216?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
-__inference_lstm_cell_67_layer_call_fn_195233
-__inference_lstm_cell_67_layer_call_fn_195250?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_195282
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_195314?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
-__inference_lstm_cell_68_layer_call_fn_195331
-__inference_lstm_cell_68_layer_call_fn_195348?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_195380
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_195412?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
 ?
!__inference__wrapped_model_189193?456789:;< !*+:?7
0?-
+?(
lstm_33_input?????????	
? "=?:
8
activation_23'?$
activation_23??????????
I__inference_activation_22_layer_call_and_return_conditional_losses_195090X/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? }
.__inference_activation_22_layer_call_fn_195085K/?,
%?"
 ?
inputs????????? 
? "?????????? ?
I__inference_activation_23_layer_call_and_return_conditional_losses_195118X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
.__inference_activation_23_layer_call_fn_195114K/?,
%?"
 ?
inputs?????????
? "???????????
D__inference_dense_22_layer_call_and_return_conditional_losses_195080\ !/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? |
)__inference_dense_22_layer_call_fn_195070O !/?,
%?"
 ?
inputs????????? 
? "?????????? ?
D__inference_dense_23_layer_call_and_return_conditional_losses_195109\*+/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? |
)__inference_dense_23_layer_call_fn_195099O*+/?,
%?"
 ?
inputs????????? 
? "???????????
C__inference_lstm_33_layer_call_and_return_conditional_losses_193400?456O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "2?/
(?%
0??????????????????	
? ?
C__inference_lstm_33_layer_call_and_return_conditional_losses_193543?456O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "2?/
(?%
0??????????????????	
? ?
C__inference_lstm_33_layer_call_and_return_conditional_losses_193686q456??<
5?2
$?!
inputs?????????	

 
p 

 
? ")?&
?
0?????????		
? ?
C__inference_lstm_33_layer_call_and_return_conditional_losses_193829q456??<
5?2
$?!
inputs?????????	

 
p

 
? ")?&
?
0?????????		
? ?
(__inference_lstm_33_layer_call_fn_193224}456O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"??????????????????	?
(__inference_lstm_33_layer_call_fn_193235}456O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"??????????????????	?
(__inference_lstm_33_layer_call_fn_193246d456??<
5?2
$?!
inputs?????????	

 
p 

 
? "??????????		?
(__inference_lstm_33_layer_call_fn_193257d456??<
5?2
$?!
inputs?????????	

 
p

 
? "??????????		?
C__inference_lstm_34_layer_call_and_return_conditional_losses_194016?789O?L
E?B
4?1
/?,
inputs/0??????????????????	

 
p 

 
? "2?/
(?%
0??????????????????
? ?
C__inference_lstm_34_layer_call_and_return_conditional_losses_194159?789O?L
E?B
4?1
/?,
inputs/0??????????????????	

 
p

 
? "2?/
(?%
0??????????????????
? ?
C__inference_lstm_34_layer_call_and_return_conditional_losses_194302q789??<
5?2
$?!
inputs?????????		

 
p 

 
? ")?&
?
0?????????	
? ?
C__inference_lstm_34_layer_call_and_return_conditional_losses_194445q789??<
5?2
$?!
inputs?????????		

 
p

 
? ")?&
?
0?????????	
? ?
(__inference_lstm_34_layer_call_fn_193840}789O?L
E?B
4?1
/?,
inputs/0??????????????????	

 
p 

 
? "%?"???????????????????
(__inference_lstm_34_layer_call_fn_193851}789O?L
E?B
4?1
/?,
inputs/0??????????????????	

 
p

 
? "%?"???????????????????
(__inference_lstm_34_layer_call_fn_193862d789??<
5?2
$?!
inputs?????????		

 
p 

 
? "??????????	?
(__inference_lstm_34_layer_call_fn_193873d789??<
5?2
$?!
inputs?????????		

 
p

 
? "??????????	?
C__inference_lstm_35_layer_call_and_return_conditional_losses_194632}:;<O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"
?
0????????? 
? ?
C__inference_lstm_35_layer_call_and_return_conditional_losses_194775}:;<O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"
?
0????????? 
? ?
C__inference_lstm_35_layer_call_and_return_conditional_losses_194918m:;<??<
5?2
$?!
inputs?????????	

 
p 

 
? "%?"
?
0????????? 
? ?
C__inference_lstm_35_layer_call_and_return_conditional_losses_195061m:;<??<
5?2
$?!
inputs?????????	

 
p

 
? "%?"
?
0????????? 
? ?
(__inference_lstm_35_layer_call_fn_194456p:;<O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "?????????? ?
(__inference_lstm_35_layer_call_fn_194467p:;<O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "?????????? ?
(__inference_lstm_35_layer_call_fn_194478`:;<??<
5?2
$?!
inputs?????????	

 
p 

 
? "?????????? ?
(__inference_lstm_35_layer_call_fn_194489`:;<??<
5?2
$?!
inputs?????????	

 
p

 
? "?????????? ?
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_195184?456??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????	
"?
states/1?????????	
p 
? "s?p
i?f
?
0/0?????????	
E?B
?
0/1/0?????????	
?
0/1/1?????????	
? ?
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_195216?456??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????	
"?
states/1?????????	
p
? "s?p
i?f
?
0/0?????????	
E?B
?
0/1/0?????????	
?
0/1/1?????????	
? ?
-__inference_lstm_cell_66_layer_call_fn_195135?456??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????	
"?
states/1?????????	
p 
? "c?`
?
0?????????	
A?>
?
1/0?????????	
?
1/1?????????	?
-__inference_lstm_cell_66_layer_call_fn_195152?456??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????	
"?
states/1?????????	
p
? "c?`
?
0?????????	
A?>
?
1/0?????????	
?
1/1?????????	?
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_195282?789??}
v?s
 ?
inputs?????????	
K?H
"?
states/0?????????
"?
states/1?????????
p 
? "s?p
i?f
?
0/0?????????
E?B
?
0/1/0?????????
?
0/1/1?????????
? ?
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_195314?789??}
v?s
 ?
inputs?????????	
K?H
"?
states/0?????????
"?
states/1?????????
p
? "s?p
i?f
?
0/0?????????
E?B
?
0/1/0?????????
?
0/1/1?????????
? ?
-__inference_lstm_cell_67_layer_call_fn_195233?789??}
v?s
 ?
inputs?????????	
K?H
"?
states/0?????????
"?
states/1?????????
p 
? "c?`
?
0?????????
A?>
?
1/0?????????
?
1/1??????????
-__inference_lstm_cell_67_layer_call_fn_195250?789??}
v?s
 ?
inputs?????????	
K?H
"?
states/0?????????
"?
states/1?????????
p
? "c?`
?
0?????????
A?>
?
1/0?????????
?
1/1??????????
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_195380?:;<??}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p 
? "s?p
i?f
?
0/0????????? 
E?B
?
0/1/0????????? 
?
0/1/1????????? 
? ?
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_195412?:;<??}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p
? "s?p
i?f
?
0/0????????? 
E?B
?
0/1/0????????? 
?
0/1/1????????? 
? ?
-__inference_lstm_cell_68_layer_call_fn_195331?:;<??}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p 
? "c?`
?
0????????? 
A?>
?
1/0????????? 
?
1/1????????? ?
-__inference_lstm_cell_68_layer_call_fn_195348?:;<??}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p
? "c?`
?
0????????? 
A?>
?
1/0????????? 
?
1/1????????? ?
I__inference_sequential_11_layer_call_and_return_conditional_losses_192213z456789:;< !*+B??
8?5
+?(
lstm_33_input?????????	
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_11_layer_call_and_return_conditional_losses_192250z456789:;< !*+B??
8?5
+?(
lstm_33_input?????????	
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_11_layer_call_and_return_conditional_losses_192779s456789:;< !*+;?8
1?.
$?!
inputs?????????	
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_11_layer_call_and_return_conditional_losses_193213s456789:;< !*+;?8
1?.
$?!
inputs?????????	
p

 
? "%?"
?
0?????????
? ?
.__inference_sequential_11_layer_call_fn_191519m456789:;< !*+B??
8?5
+?(
lstm_33_input?????????	
p 

 
? "???????????
.__inference_sequential_11_layer_call_fn_192176m456789:;< !*+B??
8?5
+?(
lstm_33_input?????????	
p

 
? "???????????
.__inference_sequential_11_layer_call_fn_192314f456789:;< !*+;?8
1?.
$?!
inputs?????????	
p 

 
? "???????????
.__inference_sequential_11_layer_call_fn_192345f456789:;< !*+;?8
1?.
$?!
inputs?????????	
p

 
? "???????????
$__inference_signature_wrapper_192283?456789:;< !*+K?H
? 
A?>
<
lstm_33_input+?(
lstm_33_input?????????	"=?:
8
activation_23'?$
activation_23?????????