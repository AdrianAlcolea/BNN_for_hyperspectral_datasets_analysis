��$
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
A
BroadcastArgs
s0"T
s1"T
r0"T"
Ttype0:
2	
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Expm1
x"T
y"T"
Ttype:

2
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
,
Log
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
�
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
�
RandomUniformInt

shape"T
minval"Tout
maxval"Tout
output"Tout"
seedint "
seed2int "
Touttype:
2	"
Ttype:
2	�
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
@
Softplus
features"T
activations"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
�
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
executor_typestring ��
^
StatelessRandomGetKeyCounter
seed"Tseed
key
counter"
Tseedtype0	:
2	
�
StatelessRandomUniformIntV2
shape"Tshape
key
counter
alg
minval"dtype
maxval"dtype
output"dtype"
dtypetype:
2	"
Tshapetype0:
2	
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.11.02v2.11.0-0-gd5b57ca98ϰ#
Z
ConstConst*
_output_shapes

:*
dtype0*
valueB*    
L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �?
\
Const_2Const*
_output_shapes

: *
dtype0*
valueB *    
L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  �?
^
Const_4Const*
_output_shapes
:	� *
dtype0*
valueB	� *    
L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *  �?
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
�
 Adam/v/output/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/v/output/bias_posterior_loc
�
4Adam/v/output/bias_posterior_loc/Read/ReadVariableOpReadVariableOp Adam/v/output/bias_posterior_loc*
_output_shapes
:*
dtype0
�
 Adam/m/output/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/m/output/bias_posterior_loc
�
4Adam/m/output/bias_posterior_loc/Read/ReadVariableOpReadVariableOp Adam/m/output/bias_posterior_loc*
_output_shapes
:*
dtype0
�
2Adam/v/output/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*C
shared_name42Adam/v/output/kernel_posterior_untransformed_scale
�
FAdam/v/output/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp2Adam/v/output/kernel_posterior_untransformed_scale*
_output_shapes

:*
dtype0
�
2Adam/m/output/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*C
shared_name42Adam/m/output/kernel_posterior_untransformed_scale
�
FAdam/m/output/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp2Adam/m/output/kernel_posterior_untransformed_scale*
_output_shapes

:*
dtype0
�
"Adam/v/output/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/v/output/kernel_posterior_loc
�
6Adam/v/output/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp"Adam/v/output/kernel_posterior_loc*
_output_shapes

:*
dtype0
�
"Adam/m/output/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/m/output/kernel_posterior_loc
�
6Adam/m/output/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp"Adam/m/output/kernel_posterior_loc*
_output_shapes

:*
dtype0
�
%Adam/v/dense_tfp_2/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/v/dense_tfp_2/bias_posterior_loc
�
9Adam/v/dense_tfp_2/bias_posterior_loc/Read/ReadVariableOpReadVariableOp%Adam/v/dense_tfp_2/bias_posterior_loc*
_output_shapes
:*
dtype0
�
%Adam/m/dense_tfp_2/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/m/dense_tfp_2/bias_posterior_loc
�
9Adam/m/dense_tfp_2/bias_posterior_loc/Read/ReadVariableOpReadVariableOp%Adam/m/dense_tfp_2/bias_posterior_loc*
_output_shapes
:*
dtype0
�
7Adam/v/dense_tfp_2/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *H
shared_name97Adam/v/dense_tfp_2/kernel_posterior_untransformed_scale
�
KAdam/v/dense_tfp_2/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp7Adam/v/dense_tfp_2/kernel_posterior_untransformed_scale*
_output_shapes

: *
dtype0
�
7Adam/m/dense_tfp_2/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *H
shared_name97Adam/m/dense_tfp_2/kernel_posterior_untransformed_scale
�
KAdam/m/dense_tfp_2/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp7Adam/m/dense_tfp_2/kernel_posterior_untransformed_scale*
_output_shapes

: *
dtype0
�
'Adam/v/dense_tfp_2/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *8
shared_name)'Adam/v/dense_tfp_2/kernel_posterior_loc
�
;Adam/v/dense_tfp_2/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp'Adam/v/dense_tfp_2/kernel_posterior_loc*
_output_shapes

: *
dtype0
�
'Adam/m/dense_tfp_2/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *8
shared_name)'Adam/m/dense_tfp_2/kernel_posterior_loc
�
;Adam/m/dense_tfp_2/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp'Adam/m/dense_tfp_2/kernel_posterior_loc*
_output_shapes

: *
dtype0
�
%Adam/v/dense_tfp_1/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/v/dense_tfp_1/bias_posterior_loc
�
9Adam/v/dense_tfp_1/bias_posterior_loc/Read/ReadVariableOpReadVariableOp%Adam/v/dense_tfp_1/bias_posterior_loc*
_output_shapes
: *
dtype0
�
%Adam/m/dense_tfp_1/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/m/dense_tfp_1/bias_posterior_loc
�
9Adam/m/dense_tfp_1/bias_posterior_loc/Read/ReadVariableOpReadVariableOp%Adam/m/dense_tfp_1/bias_posterior_loc*
_output_shapes
: *
dtype0
�
7Adam/v/dense_tfp_1/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *H
shared_name97Adam/v/dense_tfp_1/kernel_posterior_untransformed_scale
�
KAdam/v/dense_tfp_1/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp7Adam/v/dense_tfp_1/kernel_posterior_untransformed_scale*
_output_shapes
:	� *
dtype0
�
7Adam/m/dense_tfp_1/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *H
shared_name97Adam/m/dense_tfp_1/kernel_posterior_untransformed_scale
�
KAdam/m/dense_tfp_1/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp7Adam/m/dense_tfp_1/kernel_posterior_untransformed_scale*
_output_shapes
:	� *
dtype0
�
'Adam/v/dense_tfp_1/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *8
shared_name)'Adam/v/dense_tfp_1/kernel_posterior_loc
�
;Adam/v/dense_tfp_1/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp'Adam/v/dense_tfp_1/kernel_posterior_loc*
_output_shapes
:	� *
dtype0
�
'Adam/m/dense_tfp_1/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *8
shared_name)'Adam/m/dense_tfp_1/kernel_posterior_loc
�
;Adam/m/dense_tfp_1/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp'Adam/m/dense_tfp_1/kernel_posterior_loc*
_output_shapes
:	� *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
output/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameoutput/bias_posterior_loc
�
-output/bias_posterior_loc/Read/ReadVariableOpReadVariableOpoutput/bias_posterior_loc*
_output_shapes
:*
dtype0
�
+output/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*<
shared_name-+output/kernel_posterior_untransformed_scale
�
?output/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp+output/kernel_posterior_untransformed_scale*
_output_shapes

:*
dtype0
�
output/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_nameoutput/kernel_posterior_loc
�
/output/kernel_posterior_loc/Read/ReadVariableOpReadVariableOpoutput/kernel_posterior_loc*
_output_shapes

:*
dtype0
�
dense_tfp_2/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name dense_tfp_2/bias_posterior_loc
�
2dense_tfp_2/bias_posterior_loc/Read/ReadVariableOpReadVariableOpdense_tfp_2/bias_posterior_loc*
_output_shapes
:*
dtype0
�
0dense_tfp_2/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *A
shared_name20dense_tfp_2/kernel_posterior_untransformed_scale
�
Ddense_tfp_2/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp0dense_tfp_2/kernel_posterior_untransformed_scale*
_output_shapes

: *
dtype0
�
 dense_tfp_2/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *1
shared_name" dense_tfp_2/kernel_posterior_loc
�
4dense_tfp_2/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp dense_tfp_2/kernel_posterior_loc*
_output_shapes

: *
dtype0
�
dense_tfp_1/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name dense_tfp_1/bias_posterior_loc
�
2dense_tfp_1/bias_posterior_loc/Read/ReadVariableOpReadVariableOpdense_tfp_1/bias_posterior_loc*
_output_shapes
: *
dtype0
�
0dense_tfp_1/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *A
shared_name20dense_tfp_1/kernel_posterior_untransformed_scale
�
Ddense_tfp_1/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp0dense_tfp_1/kernel_posterior_untransformed_scale*
_output_shapes
:	� *
dtype0
�
 dense_tfp_1/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *1
shared_name" dense_tfp_1/kernel_posterior_loc
�
4dense_tfp_1/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp dense_tfp_1/kernel_posterior_loc*
_output_shapes
:	� *
dtype0
z
serving_default_inputPlaceholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input0dense_tfp_1/kernel_posterior_untransformed_scale dense_tfp_1/kernel_posterior_locdense_tfp_1/bias_posterior_locConst_5Const_40dense_tfp_2/kernel_posterior_untransformed_scale dense_tfp_2/kernel_posterior_locdense_tfp_2/bias_posterior_locConst_3Const_2+output/kernel_posterior_untransformed_scaleoutput/kernel_posterior_locoutput/bias_posterior_locConst_1Const*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_3133663

NoOpNoOp
�N
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*�M
value�MB�M B�M
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
kernel_posterior_loc
($kernel_posterior_untransformed_scale
kernel_posterior
kernel_prior
bias_posterior_loc
bias_posterior
kernel_posterior_affine*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 kernel_posterior_loc
(!$kernel_posterior_untransformed_scale
"kernel_posterior
#kernel_prior
$bias_posterior_loc
%bias_posterior
&kernel_posterior_affine*
�
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-kernel_posterior_loc
(.$kernel_posterior_untransformed_scale
/kernel_posterior
0kernel_prior
1bias_posterior_loc
2bias_posterior
3kernel_posterior_affine*
C
0
1
2
 3
!4
$5
-6
.7
18*
C
0
1
2
 3
!4
$5
-6
.7
18*
* 
�
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
9trace_0
:trace_1
;trace_2
<trace_3* 
6
=trace_0
>trace_1
?trace_2
@trace_3* 
^
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14* 
�
G
_variables
H_iterations
I_learning_rate
J_index_dict
K
_momentums
L_velocities
M_update_step_xla*

Nserving_default* 

0
1
2*

0
1
2*
* 
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ttrace_0* 

Utrace_0* 
~x
VARIABLE_VALUE dense_tfp_1/kernel_posterior_locDlayer_with_weights-0/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE0dense_tfp_1/kernel_posterior_untransformed_scaleTlayer_with_weights-0/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUE*
+
V_distribution
W_graph_parents*
)
X_distribution
Y_graph_parents* 
zt
VARIABLE_VALUEdense_tfp_1/bias_posterior_locBlayer_with_weights-0/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
+
Z_distribution
[_graph_parents*
$

\_scale
]_graph_parents*

 0
!1
$2*

 0
!1
$2*
* 
�
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ctrace_0* 

dtrace_0* 
~x
VARIABLE_VALUE dense_tfp_2/kernel_posterior_locDlayer_with_weights-1/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE0dense_tfp_2/kernel_posterior_untransformed_scaleTlayer_with_weights-1/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUE*
+
e_distribution
f_graph_parents*
)
g_distribution
h_graph_parents* 
zt
VARIABLE_VALUEdense_tfp_2/bias_posterior_locBlayer_with_weights-1/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
+
i_distribution
j_graph_parents*
$

k_scale
l_graph_parents*

-0
.1
12*

-0
.1
12*
* 
�
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

rtrace_0* 

strace_0* 
ys
VARIABLE_VALUEoutput/kernel_posterior_locDlayer_with_weights-2/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE+output/kernel_posterior_untransformed_scaleTlayer_with_weights-2/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUE*
+
t_distribution
u_graph_parents*
)
v_distribution
w_graph_parents* 
uo
VARIABLE_VALUEoutput/bias_posterior_locBlayer_with_weights-2/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
+
x_distribution
y_graph_parents*
$

z_scale
{_graph_parents*
* 

0
1
2*

|0
}1*
* 
* 
^
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14* 
^
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14* 
^
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14* 
^
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14* 
^
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14* 
^
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14* 
^
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14* 
^
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14* 
* 
* 
* 
* 
* 
* 
�
H0
~1
2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
K
~0
�1
�2
�3
�4
�5
�6
�7
�8*
K
0
�1
�2
�3
�4
�5
�6
�7
�8*
* 
^
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14* 
* 
* 
* 
* 
* 
 
A	capture_3
B	capture_4* 
 
A	capture_3
B	capture_4* 
/
_loc

\_scale
�_graph_parents*
* 

�_graph_parents* 
* 
#
_loc
�_graph_parents*
* 

_pretransformed_input*
* 
* 
* 
* 
* 
* 
 
C	capture_3
D	capture_4* 
 
C	capture_3
D	capture_4* 
/
 _loc

k_scale
�_graph_parents*
* 

�_graph_parents* 
* 
#
$_loc
�_graph_parents*
* 

!_pretransformed_input*
* 
* 
* 
* 
* 
* 
 
E	capture_3
F	capture_4* 
 
E	capture_3
F	capture_4* 
/
-_loc

z_scale
�_graph_parents*
* 

�_graph_parents* 
* 
#
1_loc
�_graph_parents*
* 

._pretransformed_input*
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
rl
VARIABLE_VALUE'Adam/m/dense_tfp_1/kernel_posterior_loc1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE'Adam/v/dense_tfp_1/kernel_posterior_loc1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUE7Adam/m/dense_tfp_1/kernel_posterior_untransformed_scale1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUE7Adam/v/dense_tfp_1/kernel_posterior_untransformed_scale1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE%Adam/m/dense_tfp_1/bias_posterior_loc1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE%Adam/v/dense_tfp_1/bias_posterior_loc1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE'Adam/m/dense_tfp_2/kernel_posterior_loc1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE'Adam/v/dense_tfp_2/kernel_posterior_loc1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUE7Adam/m/dense_tfp_2/kernel_posterior_untransformed_scale1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUE7Adam/v/dense_tfp_2/kernel_posterior_untransformed_scale2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE%Adam/m/dense_tfp_2/bias_posterior_loc2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE%Adam/v/dense_tfp_2/bias_posterior_loc2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/output/kernel_posterior_loc2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/output/kernel_posterior_loc2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE2Adam/m/output/kernel_posterior_untransformed_scale2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE2Adam/v/output/kernel_posterior_untransformed_scale2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/m/output/bias_posterior_loc2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/v/output/bias_posterior_loc2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename4dense_tfp_1/kernel_posterior_loc/Read/ReadVariableOpDdense_tfp_1/kernel_posterior_untransformed_scale/Read/ReadVariableOp2dense_tfp_1/bias_posterior_loc/Read/ReadVariableOp4dense_tfp_2/kernel_posterior_loc/Read/ReadVariableOpDdense_tfp_2/kernel_posterior_untransformed_scale/Read/ReadVariableOp2dense_tfp_2/bias_posterior_loc/Read/ReadVariableOp/output/kernel_posterior_loc/Read/ReadVariableOp?output/kernel_posterior_untransformed_scale/Read/ReadVariableOp-output/bias_posterior_loc/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp;Adam/m/dense_tfp_1/kernel_posterior_loc/Read/ReadVariableOp;Adam/v/dense_tfp_1/kernel_posterior_loc/Read/ReadVariableOpKAdam/m/dense_tfp_1/kernel_posterior_untransformed_scale/Read/ReadVariableOpKAdam/v/dense_tfp_1/kernel_posterior_untransformed_scale/Read/ReadVariableOp9Adam/m/dense_tfp_1/bias_posterior_loc/Read/ReadVariableOp9Adam/v/dense_tfp_1/bias_posterior_loc/Read/ReadVariableOp;Adam/m/dense_tfp_2/kernel_posterior_loc/Read/ReadVariableOp;Adam/v/dense_tfp_2/kernel_posterior_loc/Read/ReadVariableOpKAdam/m/dense_tfp_2/kernel_posterior_untransformed_scale/Read/ReadVariableOpKAdam/v/dense_tfp_2/kernel_posterior_untransformed_scale/Read/ReadVariableOp9Adam/m/dense_tfp_2/bias_posterior_loc/Read/ReadVariableOp9Adam/v/dense_tfp_2/bias_posterior_loc/Read/ReadVariableOp6Adam/m/output/kernel_posterior_loc/Read/ReadVariableOp6Adam/v/output/kernel_posterior_loc/Read/ReadVariableOpFAdam/m/output/kernel_posterior_untransformed_scale/Read/ReadVariableOpFAdam/v/output/kernel_posterior_untransformed_scale/Read/ReadVariableOp4Adam/m/output/bias_posterior_loc/Read/ReadVariableOp4Adam/v/output/bias_posterior_loc/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst_6*.
Tin'
%2#	*
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_3135165
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename dense_tfp_1/kernel_posterior_loc0dense_tfp_1/kernel_posterior_untransformed_scaledense_tfp_1/bias_posterior_loc dense_tfp_2/kernel_posterior_loc0dense_tfp_2/kernel_posterior_untransformed_scaledense_tfp_2/bias_posterior_locoutput/kernel_posterior_loc+output/kernel_posterior_untransformed_scaleoutput/bias_posterior_loc	iterationlearning_rate'Adam/m/dense_tfp_1/kernel_posterior_loc'Adam/v/dense_tfp_1/kernel_posterior_loc7Adam/m/dense_tfp_1/kernel_posterior_untransformed_scale7Adam/v/dense_tfp_1/kernel_posterior_untransformed_scale%Adam/m/dense_tfp_1/bias_posterior_loc%Adam/v/dense_tfp_1/bias_posterior_loc'Adam/m/dense_tfp_2/kernel_posterior_loc'Adam/v/dense_tfp_2/kernel_posterior_loc7Adam/m/dense_tfp_2/kernel_posterior_untransformed_scale7Adam/v/dense_tfp_2/kernel_posterior_untransformed_scale%Adam/m/dense_tfp_2/bias_posterior_loc%Adam/v/dense_tfp_2/bias_posterior_loc"Adam/m/output/kernel_posterior_loc"Adam/v/output/kernel_posterior_loc2Adam/m/output/kernel_posterior_untransformed_scale2Adam/v/output/kernel_posterior_untransformed_scale Adam/m/output/bias_posterior_loc Adam/v/output/bias_posterior_loctotal_1count_1totalcount*-
Tin&
$2"*
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_3135274��!
�
�
,__inference_sequential_layer_call_fn_3133739

inputs
unknown:	� 
	unknown_0:	� 
	unknown_1: 
	unknown_2
	unknown_3
	unknown_4: 
	unknown_5: 
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:���������: : : *+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_3133464o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������: : : : :	� : : : : : : : : : :22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:

_output_shapes
: :%!

_output_shapes
:	� :	

_output_shapes
: :$
 

_output_shapes

: :

_output_shapes
: :$ 

_output_shapes

:
�N
�
 __inference__traced_save_3135165
file_prefix?
;savev2_dense_tfp_1_kernel_posterior_loc_read_readvariableopO
Ksavev2_dense_tfp_1_kernel_posterior_untransformed_scale_read_readvariableop=
9savev2_dense_tfp_1_bias_posterior_loc_read_readvariableop?
;savev2_dense_tfp_2_kernel_posterior_loc_read_readvariableopO
Ksavev2_dense_tfp_2_kernel_posterior_untransformed_scale_read_readvariableop=
9savev2_dense_tfp_2_bias_posterior_loc_read_readvariableop:
6savev2_output_kernel_posterior_loc_read_readvariableopJ
Fsavev2_output_kernel_posterior_untransformed_scale_read_readvariableop8
4savev2_output_bias_posterior_loc_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableopF
Bsavev2_adam_m_dense_tfp_1_kernel_posterior_loc_read_readvariableopF
Bsavev2_adam_v_dense_tfp_1_kernel_posterior_loc_read_readvariableopV
Rsavev2_adam_m_dense_tfp_1_kernel_posterior_untransformed_scale_read_readvariableopV
Rsavev2_adam_v_dense_tfp_1_kernel_posterior_untransformed_scale_read_readvariableopD
@savev2_adam_m_dense_tfp_1_bias_posterior_loc_read_readvariableopD
@savev2_adam_v_dense_tfp_1_bias_posterior_loc_read_readvariableopF
Bsavev2_adam_m_dense_tfp_2_kernel_posterior_loc_read_readvariableopF
Bsavev2_adam_v_dense_tfp_2_kernel_posterior_loc_read_readvariableopV
Rsavev2_adam_m_dense_tfp_2_kernel_posterior_untransformed_scale_read_readvariableopV
Rsavev2_adam_v_dense_tfp_2_kernel_posterior_untransformed_scale_read_readvariableopD
@savev2_adam_m_dense_tfp_2_bias_posterior_loc_read_readvariableopD
@savev2_adam_v_dense_tfp_2_bias_posterior_loc_read_readvariableopA
=savev2_adam_m_output_kernel_posterior_loc_read_readvariableopA
=savev2_adam_v_output_kernel_posterior_loc_read_readvariableopQ
Msavev2_adam_m_output_kernel_posterior_untransformed_scale_read_readvariableopQ
Msavev2_adam_v_output_kernel_posterior_untransformed_scale_read_readvariableop?
;savev2_adam_m_output_bias_posterior_loc_read_readvariableop?
;savev2_adam_v_output_bias_posterior_loc_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const_6

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*�
value�B�"BDlayer_with_weights-0/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-1/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-1/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-2/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-2/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0;savev2_dense_tfp_1_kernel_posterior_loc_read_readvariableopKsavev2_dense_tfp_1_kernel_posterior_untransformed_scale_read_readvariableop9savev2_dense_tfp_1_bias_posterior_loc_read_readvariableop;savev2_dense_tfp_2_kernel_posterior_loc_read_readvariableopKsavev2_dense_tfp_2_kernel_posterior_untransformed_scale_read_readvariableop9savev2_dense_tfp_2_bias_posterior_loc_read_readvariableop6savev2_output_kernel_posterior_loc_read_readvariableopFsavev2_output_kernel_posterior_untransformed_scale_read_readvariableop4savev2_output_bias_posterior_loc_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableopBsavev2_adam_m_dense_tfp_1_kernel_posterior_loc_read_readvariableopBsavev2_adam_v_dense_tfp_1_kernel_posterior_loc_read_readvariableopRsavev2_adam_m_dense_tfp_1_kernel_posterior_untransformed_scale_read_readvariableopRsavev2_adam_v_dense_tfp_1_kernel_posterior_untransformed_scale_read_readvariableop@savev2_adam_m_dense_tfp_1_bias_posterior_loc_read_readvariableop@savev2_adam_v_dense_tfp_1_bias_posterior_loc_read_readvariableopBsavev2_adam_m_dense_tfp_2_kernel_posterior_loc_read_readvariableopBsavev2_adam_v_dense_tfp_2_kernel_posterior_loc_read_readvariableopRsavev2_adam_m_dense_tfp_2_kernel_posterior_untransformed_scale_read_readvariableopRsavev2_adam_v_dense_tfp_2_kernel_posterior_untransformed_scale_read_readvariableop@savev2_adam_m_dense_tfp_2_bias_posterior_loc_read_readvariableop@savev2_adam_v_dense_tfp_2_bias_posterior_loc_read_readvariableop=savev2_adam_m_output_kernel_posterior_loc_read_readvariableop=savev2_adam_v_output_kernel_posterior_loc_read_readvariableopMsavev2_adam_m_output_kernel_posterior_untransformed_scale_read_readvariableopMsavev2_adam_v_output_kernel_posterior_untransformed_scale_read_readvariableop;savev2_adam_m_output_bias_posterior_loc_read_readvariableop;savev2_adam_v_output_bias_posterior_loc_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const_6"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *0
dtypes&
$2"	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :	� :	� : : : ::::: : :	� :	� :	� :	� : : : : : : ::::::::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	� :%!

_output_shapes
:	� : 

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 	

_output_shapes
::


_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	� :%!

_output_shapes
:	� :%!

_output_shapes
:	� :%!

_output_shapes
:	� : 

_output_shapes
: : 

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :$ 

_output_shapes

: :$ 

_output_shapes

: : 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: 
�
�
#__inference__traced_restore_3135274
file_prefixD
1assignvariableop_dense_tfp_1_kernel_posterior_loc:	� V
Cassignvariableop_1_dense_tfp_1_kernel_posterior_untransformed_scale:	� ?
1assignvariableop_2_dense_tfp_1_bias_posterior_loc: E
3assignvariableop_3_dense_tfp_2_kernel_posterior_loc: U
Cassignvariableop_4_dense_tfp_2_kernel_posterior_untransformed_scale: ?
1assignvariableop_5_dense_tfp_2_bias_posterior_loc:@
.assignvariableop_6_output_kernel_posterior_loc:P
>assignvariableop_7_output_kernel_posterior_untransformed_scale::
,assignvariableop_8_output_bias_posterior_loc:&
assignvariableop_9_iteration:	 +
!assignvariableop_10_learning_rate: N
;assignvariableop_11_adam_m_dense_tfp_1_kernel_posterior_loc:	� N
;assignvariableop_12_adam_v_dense_tfp_1_kernel_posterior_loc:	� ^
Kassignvariableop_13_adam_m_dense_tfp_1_kernel_posterior_untransformed_scale:	� ^
Kassignvariableop_14_adam_v_dense_tfp_1_kernel_posterior_untransformed_scale:	� G
9assignvariableop_15_adam_m_dense_tfp_1_bias_posterior_loc: G
9assignvariableop_16_adam_v_dense_tfp_1_bias_posterior_loc: M
;assignvariableop_17_adam_m_dense_tfp_2_kernel_posterior_loc: M
;assignvariableop_18_adam_v_dense_tfp_2_kernel_posterior_loc: ]
Kassignvariableop_19_adam_m_dense_tfp_2_kernel_posterior_untransformed_scale: ]
Kassignvariableop_20_adam_v_dense_tfp_2_kernel_posterior_untransformed_scale: G
9assignvariableop_21_adam_m_dense_tfp_2_bias_posterior_loc:G
9assignvariableop_22_adam_v_dense_tfp_2_bias_posterior_loc:H
6assignvariableop_23_adam_m_output_kernel_posterior_loc:H
6assignvariableop_24_adam_v_output_kernel_posterior_loc:X
Fassignvariableop_25_adam_m_output_kernel_posterior_untransformed_scale:X
Fassignvariableop_26_adam_v_output_kernel_posterior_untransformed_scale:B
4assignvariableop_27_adam_m_output_bias_posterior_loc:B
4assignvariableop_28_adam_v_output_bias_posterior_loc:%
assignvariableop_29_total_1: %
assignvariableop_30_count_1: #
assignvariableop_31_total: #
assignvariableop_32_count: 
identity_34��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*�
value�B�"BDlayer_with_weights-0/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-1/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-1/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-2/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-2/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp1assignvariableop_dense_tfp_1_kernel_posterior_locIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpCassignvariableop_1_dense_tfp_1_kernel_posterior_untransformed_scaleIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp1assignvariableop_2_dense_tfp_1_bias_posterior_locIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp3assignvariableop_3_dense_tfp_2_kernel_posterior_locIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpCassignvariableop_4_dense_tfp_2_kernel_posterior_untransformed_scaleIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp1assignvariableop_5_dense_tfp_2_bias_posterior_locIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp.assignvariableop_6_output_kernel_posterior_locIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp>assignvariableop_7_output_kernel_posterior_untransformed_scaleIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp,assignvariableop_8_output_bias_posterior_locIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_iterationIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp!assignvariableop_10_learning_rateIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp;assignvariableop_11_adam_m_dense_tfp_1_kernel_posterior_locIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp;assignvariableop_12_adam_v_dense_tfp_1_kernel_posterior_locIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpKassignvariableop_13_adam_m_dense_tfp_1_kernel_posterior_untransformed_scaleIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpKassignvariableop_14_adam_v_dense_tfp_1_kernel_posterior_untransformed_scaleIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp9assignvariableop_15_adam_m_dense_tfp_1_bias_posterior_locIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp9assignvariableop_16_adam_v_dense_tfp_1_bias_posterior_locIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp;assignvariableop_17_adam_m_dense_tfp_2_kernel_posterior_locIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp;assignvariableop_18_adam_v_dense_tfp_2_kernel_posterior_locIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpKassignvariableop_19_adam_m_dense_tfp_2_kernel_posterior_untransformed_scaleIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpKassignvariableop_20_adam_v_dense_tfp_2_kernel_posterior_untransformed_scaleIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp9assignvariableop_21_adam_m_dense_tfp_2_bias_posterior_locIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp9assignvariableop_22_adam_v_dense_tfp_2_bias_posterior_locIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_m_output_kernel_posterior_locIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp6assignvariableop_24_adam_v_output_kernel_posterior_locIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpFassignvariableop_25_adam_m_output_kernel_posterior_untransformed_scaleIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpFassignvariableop_26_adam_v_output_kernel_posterior_untransformed_scaleIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_m_output_bias_posterior_locIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_v_output_bias_posterior_locIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_1Identity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_1Identity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpassignvariableop_31_totalIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_countIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322(
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
�
�
G__inference_sequential_layer_call_and_return_conditional_losses_3133624	
input&
dense_tfp_1_3133584:	� &
dense_tfp_1_3133586:	� !
dense_tfp_1_3133588: 
dense_tfp_1_3133590
dense_tfp_1_3133592%
dense_tfp_2_3133596: %
dense_tfp_2_3133598: !
dense_tfp_2_3133600:
dense_tfp_2_3133602
dense_tfp_2_3133604 
output_3133608: 
output_3133610:
output_3133612:
output_3133614
output_3133616
identity

identity_1

identity_2

identity_3��#dense_tfp_1/StatefulPartitionedCall�#dense_tfp_2/StatefulPartitionedCall�output/StatefulPartitionedCall�
#dense_tfp_1/StatefulPartitionedCallStatefulPartitionedCallinputdense_tfp_1_3133584dense_tfp_1_3133586dense_tfp_1_3133588dense_tfp_1_3133590dense_tfp_1_3133592*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:��������� : *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_tfp_1_layer_call_and_return_conditional_losses_3132971�
#dense_tfp_2/StatefulPartitionedCallStatefulPartitionedCall,dense_tfp_1/StatefulPartitionedCall:output:0dense_tfp_2_3133596dense_tfp_2_3133598dense_tfp_2_3133600dense_tfp_2_3133602dense_tfp_2_3133604*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_tfp_2_layer_call_and_return_conditional_losses_3133124�
output/StatefulPartitionedCallStatefulPartitionedCall,dense_tfp_2/StatefulPartitionedCall:output:0output_3133608output_3133610output_3133612output_3133614output_3133616*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_3133277v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������l

Identity_1Identity,dense_tfp_1/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: l

Identity_2Identity,dense_tfp_2/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: g

Identity_3Identity'output/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: �
NoOpNoOp$^dense_tfp_1/StatefulPartitionedCall$^dense_tfp_2/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������: : : : :	� : : : : : : : : : :2J
#dense_tfp_1/StatefulPartitionedCall#dense_tfp_1/StatefulPartitionedCall2J
#dense_tfp_2/StatefulPartitionedCall#dense_tfp_2/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
(
_output_shapes
:����������

_user_specified_nameinput:

_output_shapes
: :%!

_output_shapes
:	� :	

_output_shapes
: :$
 

_output_shapes

: :

_output_shapes
: :$ 

_output_shapes

:
��
�

H__inference_dense_tfp_1_layer_call_and_return_conditional_losses_3132971

inputsA
.normal_sample_softplus_readvariableop_resource:	� 3
 matmul_1_readvariableop_resource:	� u
gindependentdeterministic_constructed_at_dense_tfp_1_sample_deterministic_sample_readvariableop_resource: �
�kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3132941�
�kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1��^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReadVariableOp��KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp��KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�MatMul_1/ReadVariableOp�%Normal/sample/Softplus/ReadVariableOpk
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"�       U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    |

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes
:	� ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes
:	� *
dtype0{
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes
:	� X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes
:	� n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"�       U
Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : k
!Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Normal/sample/strided_sliceStridedSlice&Normal/sample/shape_as_tensor:output:0*Normal/sample/strided_slice/stack:output:0,Normal/sample/strided_slice/stack_1:output:0,Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"�       W
Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : m
#Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Normal/sample/strided_slice_1StridedSlice(Normal/sample/shape_as_tensor_1:output:0,Normal/sample/strided_slice_1/stack:output:0.Normal/sample/strided_slice_1/stack_1:output:0.Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maska
Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB c
 Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
Normal/sample/BroadcastArgsBroadcastArgs)Normal/sample/BroadcastArgs/s0_1:output:0$Normal/sample/strided_slice:output:0*
_output_shapes
:�
Normal/sample/BroadcastArgs_1BroadcastArgs Normal/sample/BroadcastArgs:r0:0&Normal/sample/strided_slice_1:output:0*
_output_shapes
:g
Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:[
Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Normal/sample/concatConcatV2&Normal/sample/concat/values_0:output:0"Normal/sample/BroadcastArgs_1:r0:0"Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:l
'Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    n
)Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
7Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormalNormal/sample/concat:output:0*
T0*#
_output_shapes
:� *
dtype0�
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*#
_output_shapes
:� �
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*#
_output_shapes
:� �
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*#
_output_shapes
:� v
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*#
_output_shapes
:� l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�       �
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes
:	� ;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_masku
+rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:t
)rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������o
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
%rademacher/uniform/sanitize_seed/seedRandomUniformInt4rademacher/uniform/sanitize_seed/seed/shape:output:02rademacher/uniform/sanitize_seed/seed/min:output:02rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:q
/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R q
/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*(
_output_shapes
:����������*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*(
_output_shapes
:����������R
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rw
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*(
_output_shapes
:����������m
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*(
_output_shapes
:����������R
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B : P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsExpandDims/input:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2strided_slice:output:0ExpandDims:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
-rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:v
+rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������q
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
'rademacher_1/uniform/sanitize_seed/seedRandomUniformInt6rademacher_1/uniform/sanitize_seed/seed/shape:output:04rademacher_1/uniform/sanitize_seed/seed/min:output:04rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:s
1rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R s
1rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:��������� *
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:��������� T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:��������� p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:��������� Z
mulMulinputsrademacher/Cast:y:0*
T0*(
_output_shapes
:����������k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:��������� g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:��������� y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	� *
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� ]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:��������� �
GIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
\IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :�
mIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:�
^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReadVariableOpReadVariableOpgindependentdeterministic_constructed_at_dense_tfp_1_sample_deterministic_sample_readvariableop_resource*
_output_shapes
: *
dtype0�
_IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB: �
UIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
cIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
eIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
eIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
]IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_sliceStridedSlicehIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/shape_as_tensor:output:0lIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice/stack:output:0nIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice/stack_1:output:0nIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
`IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB �
bIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
]IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastArgsBroadcastArgskIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0fIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:�
_IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:�
_IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB �
[IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
VIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concatConcatV2hIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat/values_0:output:0bIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastArgs:r0:0hIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat/values_2:output:0dIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
[IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastToBroadcastTofIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReadVariableOp:value:0_IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

: �
]IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       �
WIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReshapeReshapedIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastTo:output:0fIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

: �
HIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB: �
BIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/ReshapeReshape`IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/Reshape:output:0QIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Reshape/shape:output:0*
T0*
_output_shapes
: �
BiasAddBiasAddadd:z:0KIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Reshape:output:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes
:	� *
dtype0�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplus�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLog�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Log�kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3132941*
T0*
_output_shapes
: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSub�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	� *
dtype0�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDiv�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0�kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3132941*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDiv�kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x�kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3132941*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifference�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mul�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mul�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Sub�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"���������
vKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSum�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 * آE�
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0truediv/y:output:0*
T0*
_output_shapes
: K
divergence_kernelIdentitytruediv:z:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp_^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReadVariableOp�^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':����������: : : : :	� 2�
^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReadVariableOp^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReadVariableOp2�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:

_output_shapes
: :%!

_output_shapes
:	� 
�
�
,__inference_sequential_layer_call_fn_3133330	
input
unknown:	� 
	unknown_0:	� 
	unknown_1: 
	unknown_2
	unknown_3
	unknown_4: 
	unknown_5: 
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:���������: : : *+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_3133294o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������: : : : :	� : : : : : : : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
(
_output_shapes
:����������

_user_specified_nameinput:

_output_shapes
: :%!

_output_shapes
:	� :	

_output_shapes
: :$
 

_output_shapes

: :

_output_shapes
: :$ 

_output_shapes

:
��
�

H__inference_dense_tfp_2_layer_call_and_return_conditional_losses_3134881

inputs@
.normal_sample_softplus_readvariableop_resource: 2
 matmul_1_readvariableop_resource: u
gindependentdeterministic_constructed_at_dense_tfp_2_sample_deterministic_sample_readvariableop_resource:�
�kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134851�
�kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1��^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReadVariableOp��KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp��KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�MatMul_1/ReadVariableOp�%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

: *
dtype0*
valueB *    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

: *
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

: X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

: n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"       U
Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : k
!Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Normal/sample/strided_sliceStridedSlice&Normal/sample/shape_as_tensor:output:0*Normal/sample/strided_slice/stack:output:0,Normal/sample/strided_slice/stack_1:output:0,Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"       W
Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : m
#Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Normal/sample/strided_slice_1StridedSlice(Normal/sample/shape_as_tensor_1:output:0,Normal/sample/strided_slice_1/stack:output:0.Normal/sample/strided_slice_1/stack_1:output:0.Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maska
Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB c
 Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
Normal/sample/BroadcastArgsBroadcastArgs)Normal/sample/BroadcastArgs/s0_1:output:0$Normal/sample/strided_slice:output:0*
_output_shapes
:�
Normal/sample/BroadcastArgs_1BroadcastArgs Normal/sample/BroadcastArgs:r0:0&Normal/sample/strided_slice_1:output:0*
_output_shapes
:g
Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:[
Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Normal/sample/concatConcatV2&Normal/sample/concat/values_0:output:0"Normal/sample/BroadcastArgs_1:r0:0"Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:l
'Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    n
)Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
7Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormalNormal/sample/concat:output:0*
T0*"
_output_shapes
: *
dtype0�
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
: �
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
: �
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
: u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
: l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       �
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

: ;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_masku
+rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:t
)rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������o
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
%rademacher/uniform/sanitize_seed/seedRandomUniformInt4rademacher/uniform/sanitize_seed/seed/shape:output:02rademacher/uniform/sanitize_seed/seed/min:output:02rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:q
/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R q
/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:��������� *
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:��������� R
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:��������� l
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:��������� R
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsExpandDims/input:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2strided_slice:output:0ExpandDims:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
-rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:v
+rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������q
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
'rademacher_1/uniform/sanitize_seed/seedRandomUniformInt6rademacher_1/uniform/sanitize_seed/seed/shape:output:04rademacher_1/uniform/sanitize_seed/seed/min:output:04rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:s
1rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R s
1rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:���������*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:���������T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:���������p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:���������Y
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:��������� k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:���������g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:���������x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:����������
GIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
\IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :�
mIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:�
^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReadVariableOpReadVariableOpgindependentdeterministic_constructed_at_dense_tfp_2_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0�
_IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:�
UIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
cIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
eIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
eIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
]IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_sliceStridedSlicehIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/shape_as_tensor:output:0lIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice/stack:output:0nIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice/stack_1:output:0nIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
`IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB �
bIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
]IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastArgsBroadcastArgskIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0fIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:�
_IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:�
_IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB �
[IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
VIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concatConcatV2hIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat/values_0:output:0bIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastArgs:r0:0hIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat/values_2:output:0dIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
[IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastToBroadcastTofIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReadVariableOp:value:0_IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:�
]IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
WIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReshapeReshapedIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastTo:output:0fIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:�
HIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
BIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/ReshapeReshape`IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/Reshape:output:0QIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Reshape/shape:output:0*
T0*
_output_shapes
:�
BiasAddBiasAddadd:z:0KIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Reshape:output:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:����������
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

: *
dtype0�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplus�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLog�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Log�kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134851*
T0*
_output_shapes
: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSub�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDiv�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0�kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134851*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDiv�kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x�kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134851*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifference�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mul�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mul�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Sub�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"���������
vKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSum�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 * آE�
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0truediv/y:output:0*
T0*
_output_shapes
: K
divergence_kernelIdentitytruediv:z:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp_^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReadVariableOp�^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� : : : : : 2�
^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReadVariableOp^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReadVariableOp2�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

: 
�
�
-__inference_dense_tfp_2_layer_call_fn_3134741

inputs
unknown: 
	unknown_0: 
	unknown_1:
	unknown_2
	unknown_3
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_tfp_2_layer_call_and_return_conditional_losses_3133124o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

: 
�
�
,__inference_sequential_layer_call_fn_3133538	
input
unknown:	� 
	unknown_0:	� 
	unknown_1: 
	unknown_2
	unknown_3
	unknown_4: 
	unknown_5: 
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:���������: : : *+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_3133464o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������: : : : :	� : : : : : : : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
(
_output_shapes
:����������

_user_specified_nameinput:

_output_shapes
: :%!

_output_shapes
:	� :	

_output_shapes
: :$
 

_output_shapes

: :

_output_shapes
: :$ 

_output_shapes

:
�
�
(__inference_output_layer_call_fn_3134897

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_3133277o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
��
�

C__inference_output_layer_call_and_return_conditional_losses_3133277

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:p
bindependentdeterministic_constructed_at_output_sample_deterministic_sample_readvariableop_resource:�
�kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3133247�
�kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1��YIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReadVariableOp��KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp��KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�MatMul_1/ReadVariableOp�%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : k
!Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Normal/sample/strided_sliceStridedSlice&Normal/sample/shape_as_tensor:output:0*Normal/sample/strided_slice/stack:output:0,Normal/sample/strided_slice/stack_1:output:0,Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      W
Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : m
#Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Normal/sample/strided_slice_1StridedSlice(Normal/sample/shape_as_tensor_1:output:0,Normal/sample/strided_slice_1/stack:output:0.Normal/sample/strided_slice_1/stack_1:output:0.Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maska
Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB c
 Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
Normal/sample/BroadcastArgsBroadcastArgs)Normal/sample/BroadcastArgs/s0_1:output:0$Normal/sample/strided_slice:output:0*
_output_shapes
:�
Normal/sample/BroadcastArgs_1BroadcastArgs Normal/sample/BroadcastArgs:r0:0&Normal/sample/strided_slice_1:output:0*
_output_shapes
:g
Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:[
Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Normal/sample/concatConcatV2&Normal/sample/concat/values_0:output:0"Normal/sample/BroadcastArgs_1:r0:0"Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:l
'Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    n
)Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
7Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormalNormal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0�
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:�
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:�
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_masku
+rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:t
)rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������o
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
%rademacher/uniform/sanitize_seed/seedRandomUniformInt4rademacher/uniform/sanitize_seed/seed/shape:output:02rademacher/uniform/sanitize_seed/seed/min:output:02rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:q
/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R q
/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:���������*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:���������R
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:���������l
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:���������R
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsExpandDims/input:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2strided_slice:output:0ExpandDims:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
-rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:v
+rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������q
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
'rademacher_1/uniform/sanitize_seed/seedRandomUniformInt6rademacher_1/uniform/sanitize_seed/seed/shape:output:04rademacher_1/uniform/sanitize_seed/seed/min:output:04rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:s
1rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R s
1rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:���������*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:���������T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:���������p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:���������Y
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:���������k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:���������g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:���������x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:����������
BIndependentDeterministic_CONSTRUCTED_AT_output/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
WIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :�
hIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:�
YIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReadVariableOpReadVariableOpbindependentdeterministic_constructed_at_output_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0�
ZIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:�
PIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
^IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
`IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
`IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
XIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_sliceStridedSlicecIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/shape_as_tensor:output:0gIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice/stack:output:0iIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice/stack_1:output:0iIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
[IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB �
]IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
XIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastArgsBroadcastArgsfIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0aIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:�
ZIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:�
ZIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB �
VIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
QIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concatConcatV2cIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat/values_0:output:0]IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastArgs:r0:0cIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat/values_2:output:0_IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
VIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastToBroadcastToaIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReadVariableOp:value:0ZIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:�
XIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
RIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReshapeReshape_IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastTo:output:0aIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:�
CIndependentDeterministic_CONSTRUCTED_AT_output/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
=IndependentDeterministic_CONSTRUCTED_AT_output/sample/ReshapeReshape[IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/Reshape:output:0LIndependentDeterministic_CONSTRUCTED_AT_output/sample/Reshape/shape:output:0*
T0*
_output_shapes
:�
BiasAddBiasAddadd:z:0FIndependentDeterministic_CONSTRUCTED_AT_output/sample/Reshape:output:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:����������
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplus�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLog�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Log�kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3133247*
T0*
_output_shapes
: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSub�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDiv�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0�kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3133247*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDiv�kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x�kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3133247*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifference�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mul�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mul�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Sub�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"���������
qKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSum�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 * آE�
truedivRealDivzKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0truediv/y:output:0*
T0*
_output_shapes
: K
divergence_kernelIdentitytruediv:z:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOpZ^IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReadVariableOp�^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : :2�
YIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReadVariableOpYIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReadVariableOp2�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
��
�

H__inference_dense_tfp_1_layer_call_and_return_conditional_losses_3134725

inputsA
.normal_sample_softplus_readvariableop_resource:	� 3
 matmul_1_readvariableop_resource:	� u
gindependentdeterministic_constructed_at_dense_tfp_1_sample_deterministic_sample_readvariableop_resource: �
�kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134695�
�kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1��^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReadVariableOp��KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp��KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�MatMul_1/ReadVariableOp�%Normal/sample/Softplus/ReadVariableOpk
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"�       U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    |

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes
:	� ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes
:	� *
dtype0{
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes
:	� X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes
:	� n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"�       U
Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : k
!Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Normal/sample/strided_sliceStridedSlice&Normal/sample/shape_as_tensor:output:0*Normal/sample/strided_slice/stack:output:0,Normal/sample/strided_slice/stack_1:output:0,Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"�       W
Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : m
#Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Normal/sample/strided_slice_1StridedSlice(Normal/sample/shape_as_tensor_1:output:0,Normal/sample/strided_slice_1/stack:output:0.Normal/sample/strided_slice_1/stack_1:output:0.Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maska
Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB c
 Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
Normal/sample/BroadcastArgsBroadcastArgs)Normal/sample/BroadcastArgs/s0_1:output:0$Normal/sample/strided_slice:output:0*
_output_shapes
:�
Normal/sample/BroadcastArgs_1BroadcastArgs Normal/sample/BroadcastArgs:r0:0&Normal/sample/strided_slice_1:output:0*
_output_shapes
:g
Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:[
Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Normal/sample/concatConcatV2&Normal/sample/concat/values_0:output:0"Normal/sample/BroadcastArgs_1:r0:0"Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:l
'Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    n
)Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
7Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormalNormal/sample/concat:output:0*
T0*#
_output_shapes
:� *
dtype0�
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*#
_output_shapes
:� �
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*#
_output_shapes
:� �
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*#
_output_shapes
:� v
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*#
_output_shapes
:� l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�       �
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes
:	� ;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_masku
+rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:t
)rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������o
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
%rademacher/uniform/sanitize_seed/seedRandomUniformInt4rademacher/uniform/sanitize_seed/seed/shape:output:02rademacher/uniform/sanitize_seed/seed/min:output:02rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:q
/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R q
/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*(
_output_shapes
:����������*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*(
_output_shapes
:����������R
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rw
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*(
_output_shapes
:����������m
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*(
_output_shapes
:����������R
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B : P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsExpandDims/input:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2strided_slice:output:0ExpandDims:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
-rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:v
+rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������q
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
'rademacher_1/uniform/sanitize_seed/seedRandomUniformInt6rademacher_1/uniform/sanitize_seed/seed/shape:output:04rademacher_1/uniform/sanitize_seed/seed/min:output:04rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:s
1rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R s
1rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:��������� *
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:��������� T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:��������� p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:��������� Z
mulMulinputsrademacher/Cast:y:0*
T0*(
_output_shapes
:����������k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:��������� g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:��������� y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	� *
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� ]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:��������� �
GIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
\IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :�
mIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:�
^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReadVariableOpReadVariableOpgindependentdeterministic_constructed_at_dense_tfp_1_sample_deterministic_sample_readvariableop_resource*
_output_shapes
: *
dtype0�
_IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB: �
UIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
cIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
eIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
eIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
]IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_sliceStridedSlicehIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/shape_as_tensor:output:0lIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice/stack:output:0nIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice/stack_1:output:0nIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
`IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB �
bIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
]IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastArgsBroadcastArgskIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0fIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:�
_IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:�
_IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB �
[IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
VIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concatConcatV2hIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat/values_0:output:0bIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastArgs:r0:0hIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat/values_2:output:0dIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
[IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastToBroadcastTofIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReadVariableOp:value:0_IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

: �
]IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       �
WIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReshapeReshapedIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastTo:output:0fIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

: �
HIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB: �
BIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/ReshapeReshape`IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/Reshape:output:0QIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Reshape/shape:output:0*
T0*
_output_shapes
: �
BiasAddBiasAddadd:z:0KIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Reshape:output:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes
:	� *
dtype0�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplus�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLog�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Log�kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134695*
T0*
_output_shapes
: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSub�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	� *
dtype0�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDiv�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0�kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134695*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDiv�kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x�kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134695*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifference�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mul�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mul�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Sub�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes
:	� �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"���������
vKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSum�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 * آE�
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0truediv/y:output:0*
T0*
_output_shapes
: K
divergence_kernelIdentitytruediv:z:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp_^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReadVariableOp�^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':����������: : : : :	� 2�
^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReadVariableOp^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReadVariableOp2�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:

_output_shapes
: :%!

_output_shapes
:	� 
�	
�
-__inference_dense_tfp_1_layer_call_fn_3134583

inputs
unknown:	� 
	unknown_0:	� 
	unknown_1: 
	unknown_2
	unknown_3
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:��������� : *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_tfp_1_layer_call_and_return_conditional_losses_3132971o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':����������: : : : :	� 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:

_output_shapes
: :%!

_output_shapes
:	� 
�
�
G__inference_sequential_layer_call_and_return_conditional_losses_3133581	
input&
dense_tfp_1_3133541:	� &
dense_tfp_1_3133543:	� !
dense_tfp_1_3133545: 
dense_tfp_1_3133547
dense_tfp_1_3133549%
dense_tfp_2_3133553: %
dense_tfp_2_3133555: !
dense_tfp_2_3133557:
dense_tfp_2_3133559
dense_tfp_2_3133561 
output_3133565: 
output_3133567:
output_3133569:
output_3133571
output_3133573
identity

identity_1

identity_2

identity_3��#dense_tfp_1/StatefulPartitionedCall�#dense_tfp_2/StatefulPartitionedCall�output/StatefulPartitionedCall�
#dense_tfp_1/StatefulPartitionedCallStatefulPartitionedCallinputdense_tfp_1_3133541dense_tfp_1_3133543dense_tfp_1_3133545dense_tfp_1_3133547dense_tfp_1_3133549*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:��������� : *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_tfp_1_layer_call_and_return_conditional_losses_3132971�
#dense_tfp_2/StatefulPartitionedCallStatefulPartitionedCall,dense_tfp_1/StatefulPartitionedCall:output:0dense_tfp_2_3133553dense_tfp_2_3133555dense_tfp_2_3133557dense_tfp_2_3133559dense_tfp_2_3133561*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_tfp_2_layer_call_and_return_conditional_losses_3133124�
output/StatefulPartitionedCallStatefulPartitionedCall,dense_tfp_2/StatefulPartitionedCall:output:0output_3133565output_3133567output_3133569output_3133571output_3133573*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_3133277v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������l

Identity_1Identity,dense_tfp_1/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: l

Identity_2Identity,dense_tfp_2/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: g

Identity_3Identity'output/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: �
NoOpNoOp$^dense_tfp_1/StatefulPartitionedCall$^dense_tfp_2/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������: : : : :	� : : : : : : : : : :2J
#dense_tfp_1/StatefulPartitionedCall#dense_tfp_1/StatefulPartitionedCall2J
#dense_tfp_2/StatefulPartitionedCall#dense_tfp_2/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
(
_output_shapes
:����������

_user_specified_nameinput:

_output_shapes
: :%!

_output_shapes
:	� :	

_output_shapes
: :$
 

_output_shapes

: :

_output_shapes
: :$ 

_output_shapes

:
��
�#
"__inference__wrapped_model_3132822	
inputX
Esequential_dense_tfp_1_normal_sample_softplus_readvariableop_resource:	� J
7sequential_dense_tfp_1_matmul_1_readvariableop_resource:	� �
~sequential_dense_tfp_1_independentdeterministic_constructed_at_dense_tfp_1_sample_deterministic_sample_readvariableop_resource: �
�sequential_dense_tfp_1_kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3132523�
�sequential_dense_tfp_1_kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xW
Esequential_dense_tfp_2_normal_sample_softplus_readvariableop_resource: I
7sequential_dense_tfp_2_matmul_1_readvariableop_resource: �
~sequential_dense_tfp_2_independentdeterministic_constructed_at_dense_tfp_2_sample_deterministic_sample_readvariableop_resource:�
�sequential_dense_tfp_2_kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3132658�
�sequential_dense_tfp_2_kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xR
@sequential_output_normal_sample_softplus_readvariableop_resource:D
2sequential_output_matmul_1_readvariableop_resource:�
tsequential_output_independentdeterministic_constructed_at_output_sample_deterministic_sample_readvariableop_resource:�
�sequential_output_kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3132793�
�sequential_output_kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity��usequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReadVariableOp��sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp��sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�.sequential/dense_tfp_1/MatMul_1/ReadVariableOp�<sequential/dense_tfp_1/Normal/sample/Softplus/ReadVariableOp�usequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReadVariableOp��sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp��sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�.sequential/dense_tfp_2/MatMul_1/ReadVariableOp�<sequential/dense_tfp_2/Normal/sample/Softplus/ReadVariableOp�ksequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReadVariableOp��sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp��sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�)sequential/output/MatMul_1/ReadVariableOp�7sequential/output/Normal/sample/Softplus/ReadVariableOp�
1sequential/dense_tfp_1/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"�       l
'sequential/dense_tfp_1/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!sequential/dense_tfp_1/zeros_likeFill:sequential/dense_tfp_1/zeros_like/shape_as_tensor:output:00sequential/dense_tfp_1/zeros_like/Const:output:0*
T0*
_output_shapes
:	� t
1sequential/dense_tfp_1/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
<sequential/dense_tfp_1/Normal/sample/Softplus/ReadVariableOpReadVariableOpEsequential_dense_tfp_1_normal_sample_softplus_readvariableop_resource*
_output_shapes
:	� *
dtype0�
-sequential/dense_tfp_1/Normal/sample/SoftplusSoftplusDsequential/dense_tfp_1/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes
:	� o
*sequential/dense_tfp_1/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
(sequential/dense_tfp_1/Normal/sample/addAddV23sequential/dense_tfp_1/Normal/sample/add/x:output:0;sequential/dense_tfp_1/Normal/sample/Softplus:activations:0*
T0*
_output_shapes
:	� �
4sequential/dense_tfp_1/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"�       l
*sequential/dense_tfp_1/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
8sequential/dense_tfp_1/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
:sequential/dense_tfp_1/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
:sequential/dense_tfp_1/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
2sequential/dense_tfp_1/Normal/sample/strided_sliceStridedSlice=sequential/dense_tfp_1/Normal/sample/shape_as_tensor:output:0Asequential/dense_tfp_1/Normal/sample/strided_slice/stack:output:0Csequential/dense_tfp_1/Normal/sample/strided_slice/stack_1:output:0Csequential/dense_tfp_1/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
6sequential/dense_tfp_1/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"�       n
,sequential/dense_tfp_1/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : �
:sequential/dense_tfp_1/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
<sequential/dense_tfp_1/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
<sequential/dense_tfp_1/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
4sequential/dense_tfp_1/Normal/sample/strided_slice_1StridedSlice?sequential/dense_tfp_1/Normal/sample/shape_as_tensor_1:output:0Csequential/dense_tfp_1/Normal/sample/strided_slice_1/stack:output:0Esequential/dense_tfp_1/Normal/sample/strided_slice_1/stack_1:output:0Esequential/dense_tfp_1/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskx
5sequential/dense_tfp_1/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB z
7sequential/dense_tfp_1/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
2sequential/dense_tfp_1/Normal/sample/BroadcastArgsBroadcastArgs@sequential/dense_tfp_1/Normal/sample/BroadcastArgs/s0_1:output:0;sequential/dense_tfp_1/Normal/sample/strided_slice:output:0*
_output_shapes
:�
4sequential/dense_tfp_1/Normal/sample/BroadcastArgs_1BroadcastArgs7sequential/dense_tfp_1/Normal/sample/BroadcastArgs:r0:0=sequential/dense_tfp_1/Normal/sample/strided_slice_1:output:0*
_output_shapes
:~
4sequential/dense_tfp_1/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:r
0sequential/dense_tfp_1/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
+sequential/dense_tfp_1/Normal/sample/concatConcatV2=sequential/dense_tfp_1/Normal/sample/concat/values_0:output:09sequential/dense_tfp_1/Normal/sample/BroadcastArgs_1:r0:09sequential/dense_tfp_1/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
>sequential/dense_tfp_1/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    �
@sequential/dense_tfp_1/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Nsequential/dense_tfp_1/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal4sequential/dense_tfp_1/Normal/sample/concat:output:0*
T0*#
_output_shapes
:� *
dtype0�
=sequential/dense_tfp_1/Normal/sample/normal/random_normal/mulMulWsequential/dense_tfp_1/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Isequential/dense_tfp_1/Normal/sample/normal/random_normal/stddev:output:0*
T0*#
_output_shapes
:� �
9sequential/dense_tfp_1/Normal/sample/normal/random_normalAddV2Asequential/dense_tfp_1/Normal/sample/normal/random_normal/mul:z:0Gsequential/dense_tfp_1/Normal/sample/normal/random_normal/mean:output:0*
T0*#
_output_shapes
:� �
(sequential/dense_tfp_1/Normal/sample/mulMul=sequential/dense_tfp_1/Normal/sample/normal/random_normal:z:0,sequential/dense_tfp_1/Normal/sample/add:z:0*
T0*#
_output_shapes
:� �
*sequential/dense_tfp_1/Normal/sample/add_1AddV2,sequential/dense_tfp_1/Normal/sample/mul:z:0*sequential/dense_tfp_1/zeros_like:output:0*
T0*#
_output_shapes
:� �
2sequential/dense_tfp_1/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�       �
,sequential/dense_tfp_1/Normal/sample/ReshapeReshape.sequential/dense_tfp_1/Normal/sample/add_1:z:0;sequential/dense_tfp_1/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes
:	� Q
sequential/dense_tfp_1/ShapeShapeinput*
T0*
_output_shapes
:t
*sequential/dense_tfp_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
,sequential/dense_tfp_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������v
,sequential/dense_tfp_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$sequential/dense_tfp_1/strided_sliceStridedSlice%sequential/dense_tfp_1/Shape:output:03sequential/dense_tfp_1/strided_slice/stack:output:05sequential/dense_tfp_1/strided_slice/stack_1:output:05sequential/dense_tfp_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
Bsequential/dense_tfp_1/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
@sequential/dense_tfp_1/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
����������
@sequential/dense_tfp_1/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
<sequential/dense_tfp_1/rademacher/uniform/sanitize_seed/seedRandomUniformIntKsequential/dense_tfp_1/rademacher/uniform/sanitize_seed/seed/shape:output:0Isequential/dense_tfp_1/rademacher/uniform/sanitize_seed/seed/min:output:0Isequential/dense_tfp_1/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:�
Fsequential/dense_tfp_1/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Fsequential/dense_tfp_1/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
_sequential/dense_tfp_1/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterEsequential/dense_tfp_1/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::�
Fsequential/dense_tfp_1/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
Bsequential/dense_tfp_1/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2%sequential/dense_tfp_1/Shape:output:0esequential/dense_tfp_1/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0isequential/dense_tfp_1/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Osequential/dense_tfp_1/rademacher/uniform/stateless_random_uniform/alg:output:0Osequential/dense_tfp_1/rademacher/uniform/stateless_random_uniform/min:output:0Osequential/dense_tfp_1/rademacher/uniform/stateless_random_uniform/max:output:0*(
_output_shapes
:����������*
dtype0	i
'sequential/dense_tfp_1/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
%sequential/dense_tfp_1/rademacher/mulMul0sequential/dense_tfp_1/rademacher/mul/x:output:0Ksequential/dense_tfp_1/rademacher/uniform/stateless_random_uniform:output:0*
T0	*(
_output_shapes
:����������i
'sequential/dense_tfp_1/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
%sequential/dense_tfp_1/rademacher/subSub)sequential/dense_tfp_1/rademacher/mul:z:00sequential/dense_tfp_1/rademacher/sub/y:output:0*
T0	*(
_output_shapes
:�����������
&sequential/dense_tfp_1/rademacher/CastCast)sequential/dense_tfp_1/rademacher/sub:z:0*

DstT0*

SrcT0	*(
_output_shapes
:����������i
'sequential/dense_tfp_1/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B : g
%sequential/dense_tfp_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
!sequential/dense_tfp_1/ExpandDims
ExpandDims0sequential/dense_tfp_1/ExpandDims/input:output:0.sequential/dense_tfp_1/ExpandDims/dim:output:0*
T0*
_output_shapes
:d
"sequential/dense_tfp_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
sequential/dense_tfp_1/concatConcatV2-sequential/dense_tfp_1/strided_slice:output:0*sequential/dense_tfp_1/ExpandDims:output:0+sequential/dense_tfp_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Dsequential/dense_tfp_1/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
Bsequential/dense_tfp_1/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
����������
Bsequential/dense_tfp_1/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
>sequential/dense_tfp_1/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntMsequential/dense_tfp_1/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Ksequential/dense_tfp_1/rademacher_1/uniform/sanitize_seed/seed/min:output:0Ksequential/dense_tfp_1/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:�
Hsequential/dense_tfp_1/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Hsequential/dense_tfp_1/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
asequential/dense_tfp_1/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterGsequential/dense_tfp_1/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::�
Hsequential/dense_tfp_1/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
Dsequential/dense_tfp_1/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2&sequential/dense_tfp_1/concat:output:0gsequential/dense_tfp_1/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ksequential/dense_tfp_1/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Qsequential/dense_tfp_1/rademacher_1/uniform/stateless_random_uniform/alg:output:0Qsequential/dense_tfp_1/rademacher_1/uniform/stateless_random_uniform/min:output:0Qsequential/dense_tfp_1/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:��������� *
dtype0	k
)sequential/dense_tfp_1/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
'sequential/dense_tfp_1/rademacher_1/mulMul2sequential/dense_tfp_1/rademacher_1/mul/x:output:0Msequential/dense_tfp_1/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:��������� k
)sequential/dense_tfp_1/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
'sequential/dense_tfp_1/rademacher_1/subSub+sequential/dense_tfp_1/rademacher_1/mul:z:02sequential/dense_tfp_1/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:��������� �
(sequential/dense_tfp_1/rademacher_1/CastCast+sequential/dense_tfp_1/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:��������� �
sequential/dense_tfp_1/mulMulinput*sequential/dense_tfp_1/rademacher/Cast:y:0*
T0*(
_output_shapes
:�����������
sequential/dense_tfp_1/MatMulMatMulsequential/dense_tfp_1/mul:z:05sequential/dense_tfp_1/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:��������� �
sequential/dense_tfp_1/mul_1Mul'sequential/dense_tfp_1/MatMul:product:0,sequential/dense_tfp_1/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:��������� �
.sequential/dense_tfp_1/MatMul_1/ReadVariableOpReadVariableOp7sequential_dense_tfp_1_matmul_1_readvariableop_resource*
_output_shapes
:	� *
dtype0�
sequential/dense_tfp_1/MatMul_1MatMulinput6sequential/dense_tfp_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
sequential/dense_tfp_1/addAddV2)sequential/dense_tfp_1/MatMul_1:product:0 sequential/dense_tfp_1/mul_1:z:0*
T0*'
_output_shapes
:��������� �
^sequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
ssequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :�
�sequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:�
usequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReadVariableOpReadVariableOp~sequential_dense_tfp_1_independentdeterministic_constructed_at_dense_tfp_1_sample_deterministic_sample_readvariableop_resource*
_output_shapes
: *
dtype0�
vsequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB: �
lsequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
zsequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
|sequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
|sequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
tsequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_sliceStridedSlicesequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/shape_as_tensor:output:0�sequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice/stack:output:0�sequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice/stack_1:output:0�sequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
wsequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB �
ysequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
tsequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastArgsBroadcastArgs�sequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0}sequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:�
vsequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:�
vsequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB �
rsequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
msequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concatConcatV2sequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat/values_0:output:0ysequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastArgs:r0:0sequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat/values_2:output:0{sequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
rsequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastToBroadcastTo}sequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReadVariableOp:value:0vsequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

: �
tsequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       �
nsequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReshapeReshape{sequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/BroadcastTo:output:0}sequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

: �
_sequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB: �
Ysequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/ReshapeReshapewsequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/Reshape:output:0hsequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Reshape/shape:output:0*
T0*
_output_shapes
: �
sequential/dense_tfp_1/BiasAddBiasAddsequential/dense_tfp_1/add:z:0bsequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Reshape:output:0*
T0*'
_output_shapes
:��������� ~
sequential/dense_tfp_1/ReluRelu'sequential/dense_tfp_1/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOpEsequential_dense_tfp_1_normal_sample_softplus_readvariableop_resource*
_output_shapes
:	� *
dtype0�
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplus�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes
:	� �
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes
:	� �
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLog�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes
:	� �
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Log�sequential_dense_tfp_1_kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3132523*
T0*
_output_shapes
: �
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSub�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes
:	� �
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp7sequential_dense_tfp_1_matmul_1_readvariableop_resource*
_output_shapes
:	� *
dtype0�
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDiv�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0�sequential_dense_tfp_1_kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3132523*
T0*
_output_shapes
:	� �
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDiv�sequential_dense_tfp_1_kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x�sequential_dense_tfp_1_kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3132523*
T0*
_output_shapes
:	� �
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifference�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes
:	� �
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes
:	� �
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mul�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes
:	� �
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes
:	� �
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mul�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes
:	� �
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes
:	� �
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Sub�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes
:	� �
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"���������
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSum�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: e
 sequential/dense_tfp_1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 * آE�
sequential/dense_tfp_1/truedivRealDiv�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0)sequential/dense_tfp_1/truediv/y:output:0*
T0*
_output_shapes
: y
(sequential/dense_tfp_1/divergence_kernelIdentity"sequential/dense_tfp_1/truediv:z:0*
T0*
_output_shapes
: v
!sequential/dense_tfp_2/zeros_likeConst*
_output_shapes

: *
dtype0*
valueB *    t
1sequential/dense_tfp_2/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
<sequential/dense_tfp_2/Normal/sample/Softplus/ReadVariableOpReadVariableOpEsequential_dense_tfp_2_normal_sample_softplus_readvariableop_resource*
_output_shapes

: *
dtype0�
-sequential/dense_tfp_2/Normal/sample/SoftplusSoftplusDsequential/dense_tfp_2/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

: o
*sequential/dense_tfp_2/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
(sequential/dense_tfp_2/Normal/sample/addAddV23sequential/dense_tfp_2/Normal/sample/add/x:output:0;sequential/dense_tfp_2/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

: �
4sequential/dense_tfp_2/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"       l
*sequential/dense_tfp_2/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
8sequential/dense_tfp_2/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
:sequential/dense_tfp_2/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
:sequential/dense_tfp_2/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
2sequential/dense_tfp_2/Normal/sample/strided_sliceStridedSlice=sequential/dense_tfp_2/Normal/sample/shape_as_tensor:output:0Asequential/dense_tfp_2/Normal/sample/strided_slice/stack:output:0Csequential/dense_tfp_2/Normal/sample/strided_slice/stack_1:output:0Csequential/dense_tfp_2/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
6sequential/dense_tfp_2/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"       n
,sequential/dense_tfp_2/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : �
:sequential/dense_tfp_2/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
<sequential/dense_tfp_2/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
<sequential/dense_tfp_2/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
4sequential/dense_tfp_2/Normal/sample/strided_slice_1StridedSlice?sequential/dense_tfp_2/Normal/sample/shape_as_tensor_1:output:0Csequential/dense_tfp_2/Normal/sample/strided_slice_1/stack:output:0Esequential/dense_tfp_2/Normal/sample/strided_slice_1/stack_1:output:0Esequential/dense_tfp_2/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskx
5sequential/dense_tfp_2/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB z
7sequential/dense_tfp_2/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
2sequential/dense_tfp_2/Normal/sample/BroadcastArgsBroadcastArgs@sequential/dense_tfp_2/Normal/sample/BroadcastArgs/s0_1:output:0;sequential/dense_tfp_2/Normal/sample/strided_slice:output:0*
_output_shapes
:�
4sequential/dense_tfp_2/Normal/sample/BroadcastArgs_1BroadcastArgs7sequential/dense_tfp_2/Normal/sample/BroadcastArgs:r0:0=sequential/dense_tfp_2/Normal/sample/strided_slice_1:output:0*
_output_shapes
:~
4sequential/dense_tfp_2/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:r
0sequential/dense_tfp_2/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
+sequential/dense_tfp_2/Normal/sample/concatConcatV2=sequential/dense_tfp_2/Normal/sample/concat/values_0:output:09sequential/dense_tfp_2/Normal/sample/BroadcastArgs_1:r0:09sequential/dense_tfp_2/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
>sequential/dense_tfp_2/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    �
@sequential/dense_tfp_2/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Nsequential/dense_tfp_2/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal4sequential/dense_tfp_2/Normal/sample/concat:output:0*
T0*"
_output_shapes
: *
dtype0�
=sequential/dense_tfp_2/Normal/sample/normal/random_normal/mulMulWsequential/dense_tfp_2/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Isequential/dense_tfp_2/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
: �
9sequential/dense_tfp_2/Normal/sample/normal/random_normalAddV2Asequential/dense_tfp_2/Normal/sample/normal/random_normal/mul:z:0Gsequential/dense_tfp_2/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
: �
(sequential/dense_tfp_2/Normal/sample/mulMul=sequential/dense_tfp_2/Normal/sample/normal/random_normal:z:0,sequential/dense_tfp_2/Normal/sample/add:z:0*
T0*"
_output_shapes
: �
*sequential/dense_tfp_2/Normal/sample/add_1AddV2,sequential/dense_tfp_2/Normal/sample/mul:z:0*sequential/dense_tfp_2/zeros_like:output:0*
T0*"
_output_shapes
: �
2sequential/dense_tfp_2/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       �
,sequential/dense_tfp_2/Normal/sample/ReshapeReshape.sequential/dense_tfp_2/Normal/sample/add_1:z:0;sequential/dense_tfp_2/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

: u
sequential/dense_tfp_2/ShapeShape)sequential/dense_tfp_1/Relu:activations:0*
T0*
_output_shapes
:t
*sequential/dense_tfp_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
,sequential/dense_tfp_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������v
,sequential/dense_tfp_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$sequential/dense_tfp_2/strided_sliceStridedSlice%sequential/dense_tfp_2/Shape:output:03sequential/dense_tfp_2/strided_slice/stack:output:05sequential/dense_tfp_2/strided_slice/stack_1:output:05sequential/dense_tfp_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
Bsequential/dense_tfp_2/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
@sequential/dense_tfp_2/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
����������
@sequential/dense_tfp_2/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
<sequential/dense_tfp_2/rademacher/uniform/sanitize_seed/seedRandomUniformIntKsequential/dense_tfp_2/rademacher/uniform/sanitize_seed/seed/shape:output:0Isequential/dense_tfp_2/rademacher/uniform/sanitize_seed/seed/min:output:0Isequential/dense_tfp_2/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:�
Fsequential/dense_tfp_2/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Fsequential/dense_tfp_2/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
_sequential/dense_tfp_2/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterEsequential/dense_tfp_2/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::�
Fsequential/dense_tfp_2/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
Bsequential/dense_tfp_2/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2%sequential/dense_tfp_2/Shape:output:0esequential/dense_tfp_2/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0isequential/dense_tfp_2/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Osequential/dense_tfp_2/rademacher/uniform/stateless_random_uniform/alg:output:0Osequential/dense_tfp_2/rademacher/uniform/stateless_random_uniform/min:output:0Osequential/dense_tfp_2/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:��������� *
dtype0	i
'sequential/dense_tfp_2/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
%sequential/dense_tfp_2/rademacher/mulMul0sequential/dense_tfp_2/rademacher/mul/x:output:0Ksequential/dense_tfp_2/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:��������� i
'sequential/dense_tfp_2/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
%sequential/dense_tfp_2/rademacher/subSub)sequential/dense_tfp_2/rademacher/mul:z:00sequential/dense_tfp_2/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:��������� �
&sequential/dense_tfp_2/rademacher/CastCast)sequential/dense_tfp_2/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:��������� i
'sequential/dense_tfp_2/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :g
%sequential/dense_tfp_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
!sequential/dense_tfp_2/ExpandDims
ExpandDims0sequential/dense_tfp_2/ExpandDims/input:output:0.sequential/dense_tfp_2/ExpandDims/dim:output:0*
T0*
_output_shapes
:d
"sequential/dense_tfp_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
sequential/dense_tfp_2/concatConcatV2-sequential/dense_tfp_2/strided_slice:output:0*sequential/dense_tfp_2/ExpandDims:output:0+sequential/dense_tfp_2/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Dsequential/dense_tfp_2/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
Bsequential/dense_tfp_2/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
����������
Bsequential/dense_tfp_2/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
>sequential/dense_tfp_2/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntMsequential/dense_tfp_2/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Ksequential/dense_tfp_2/rademacher_1/uniform/sanitize_seed/seed/min:output:0Ksequential/dense_tfp_2/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:�
Hsequential/dense_tfp_2/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Hsequential/dense_tfp_2/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
asequential/dense_tfp_2/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterGsequential/dense_tfp_2/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::�
Hsequential/dense_tfp_2/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
Dsequential/dense_tfp_2/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2&sequential/dense_tfp_2/concat:output:0gsequential/dense_tfp_2/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ksequential/dense_tfp_2/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Qsequential/dense_tfp_2/rademacher_1/uniform/stateless_random_uniform/alg:output:0Qsequential/dense_tfp_2/rademacher_1/uniform/stateless_random_uniform/min:output:0Qsequential/dense_tfp_2/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:���������*
dtype0	k
)sequential/dense_tfp_2/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
'sequential/dense_tfp_2/rademacher_1/mulMul2sequential/dense_tfp_2/rademacher_1/mul/x:output:0Msequential/dense_tfp_2/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:���������k
)sequential/dense_tfp_2/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
'sequential/dense_tfp_2/rademacher_1/subSub+sequential/dense_tfp_2/rademacher_1/mul:z:02sequential/dense_tfp_2/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:����������
(sequential/dense_tfp_2/rademacher_1/CastCast+sequential/dense_tfp_2/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:����������
sequential/dense_tfp_2/mulMul)sequential/dense_tfp_1/Relu:activations:0*sequential/dense_tfp_2/rademacher/Cast:y:0*
T0*'
_output_shapes
:��������� �
sequential/dense_tfp_2/MatMulMatMulsequential/dense_tfp_2/mul:z:05sequential/dense_tfp_2/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:����������
sequential/dense_tfp_2/mul_1Mul'sequential/dense_tfp_2/MatMul:product:0,sequential/dense_tfp_2/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:����������
.sequential/dense_tfp_2/MatMul_1/ReadVariableOpReadVariableOp7sequential_dense_tfp_2_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
sequential/dense_tfp_2/MatMul_1MatMul)sequential/dense_tfp_1/Relu:activations:06sequential/dense_tfp_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential/dense_tfp_2/addAddV2)sequential/dense_tfp_2/MatMul_1:product:0 sequential/dense_tfp_2/mul_1:z:0*
T0*'
_output_shapes
:����������
^sequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
ssequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :�
�sequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:�
usequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReadVariableOpReadVariableOp~sequential_dense_tfp_2_independentdeterministic_constructed_at_dense_tfp_2_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0�
vsequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:�
lsequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
zsequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
|sequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
|sequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
tsequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_sliceStridedSlicesequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/shape_as_tensor:output:0�sequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice/stack:output:0�sequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice/stack_1:output:0�sequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
wsequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB �
ysequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
tsequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastArgsBroadcastArgs�sequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0}sequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:�
vsequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:�
vsequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB �
rsequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
msequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concatConcatV2sequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat/values_0:output:0ysequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastArgs:r0:0sequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat/values_2:output:0{sequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
rsequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastToBroadcastTo}sequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReadVariableOp:value:0vsequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:�
tsequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
nsequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReshapeReshape{sequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastTo:output:0}sequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:�
_sequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
Ysequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/ReshapeReshapewsequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/Reshape:output:0hsequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Reshape/shape:output:0*
T0*
_output_shapes
:�
sequential/dense_tfp_2/BiasAddBiasAddsequential/dense_tfp_2/add:z:0bsequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Reshape:output:0*
T0*'
_output_shapes
:���������~
sequential/dense_tfp_2/ReluRelu'sequential/dense_tfp_2/BiasAdd:output:0*
T0*'
_output_shapes
:����������
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOpEsequential_dense_tfp_2_normal_sample_softplus_readvariableop_resource*
_output_shapes

: *
dtype0�
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplus�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

: �
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

: �
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLog�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

: �
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Log�sequential_dense_tfp_2_kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3132658*
T0*
_output_shapes
: �
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSub�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

: �
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp7sequential_dense_tfp_2_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDiv�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0�sequential_dense_tfp_2_kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3132658*
T0*
_output_shapes

: �
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDiv�sequential_dense_tfp_2_kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x�sequential_dense_tfp_2_kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3132658*
T0*
_output_shapes

: �
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifference�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

: �
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

: �
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mul�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

: �
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

: �
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mul�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

: �
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

: �
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Sub�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

: �
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"���������
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSum�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: e
 sequential/dense_tfp_2/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 * آE�
sequential/dense_tfp_2/truedivRealDiv�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0)sequential/dense_tfp_2/truediv/y:output:0*
T0*
_output_shapes
: y
(sequential/dense_tfp_2/divergence_kernelIdentity"sequential/dense_tfp_2/truediv:z:0*
T0*
_output_shapes
: q
sequential/output/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    o
,sequential/output/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
7sequential/output/Normal/sample/Softplus/ReadVariableOpReadVariableOp@sequential_output_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0�
(sequential/output/Normal/sample/SoftplusSoftplus?sequential/output/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:j
%sequential/output/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
#sequential/output/Normal/sample/addAddV2.sequential/output/Normal/sample/add/x:output:06sequential/output/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:�
/sequential/output/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      g
%sequential/output/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : }
3sequential/output/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential/output/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential/output/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-sequential/output/Normal/sample/strided_sliceStridedSlice8sequential/output/Normal/sample/shape_as_tensor:output:0<sequential/output/Normal/sample/strided_slice/stack:output:0>sequential/output/Normal/sample/strided_slice/stack_1:output:0>sequential/output/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
1sequential/output/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      i
'sequential/output/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : 
5sequential/output/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential/output/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential/output/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential/output/Normal/sample/strided_slice_1StridedSlice:sequential/output/Normal/sample/shape_as_tensor_1:output:0>sequential/output/Normal/sample/strided_slice_1/stack:output:0@sequential/output/Normal/sample/strided_slice_1/stack_1:output:0@sequential/output/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_masks
0sequential/output/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB u
2sequential/output/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
-sequential/output/Normal/sample/BroadcastArgsBroadcastArgs;sequential/output/Normal/sample/BroadcastArgs/s0_1:output:06sequential/output/Normal/sample/strided_slice:output:0*
_output_shapes
:�
/sequential/output/Normal/sample/BroadcastArgs_1BroadcastArgs2sequential/output/Normal/sample/BroadcastArgs:r0:08sequential/output/Normal/sample/strided_slice_1:output:0*
_output_shapes
:y
/sequential/output/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:m
+sequential/output/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
&sequential/output/Normal/sample/concatConcatV28sequential/output/Normal/sample/concat/values_0:output:04sequential/output/Normal/sample/BroadcastArgs_1:r0:04sequential/output/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:~
9sequential/output/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    �
;sequential/output/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Isequential/output/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal/sequential/output/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0�
8sequential/output/Normal/sample/normal/random_normal/mulMulRsequential/output/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Dsequential/output/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:�
4sequential/output/Normal/sample/normal/random_normalAddV2<sequential/output/Normal/sample/normal/random_normal/mul:z:0Bsequential/output/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:�
#sequential/output/Normal/sample/mulMul8sequential/output/Normal/sample/normal/random_normal:z:0'sequential/output/Normal/sample/add:z:0*
T0*"
_output_shapes
:�
%sequential/output/Normal/sample/add_1AddV2'sequential/output/Normal/sample/mul:z:0%sequential/output/zeros_like:output:0*
T0*"
_output_shapes
:~
-sequential/output/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
'sequential/output/Normal/sample/ReshapeReshape)sequential/output/Normal/sample/add_1:z:06sequential/output/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:p
sequential/output/ShapeShape)sequential/dense_tfp_2/Relu:activations:0*
T0*
_output_shapes
:o
%sequential/output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
'sequential/output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������q
'sequential/output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
sequential/output/strided_sliceStridedSlice sequential/output/Shape:output:0.sequential/output/strided_slice/stack:output:00sequential/output/strided_slice/stack_1:output:00sequential/output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
=sequential/output/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
;sequential/output/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
����������
;sequential/output/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
7sequential/output/rademacher/uniform/sanitize_seed/seedRandomUniformIntFsequential/output/rademacher/uniform/sanitize_seed/seed/shape:output:0Dsequential/output/rademacher/uniform/sanitize_seed/seed/min:output:0Dsequential/output/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:�
Asequential/output/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Asequential/output/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Zsequential/output/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter@sequential/output/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::�
Asequential/output/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
=sequential/output/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2 sequential/output/Shape:output:0`sequential/output/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0dsequential/output/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Jsequential/output/rademacher/uniform/stateless_random_uniform/alg:output:0Jsequential/output/rademacher/uniform/stateless_random_uniform/min:output:0Jsequential/output/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:���������*
dtype0	d
"sequential/output/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
 sequential/output/rademacher/mulMul+sequential/output/rademacher/mul/x:output:0Fsequential/output/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:���������d
"sequential/output/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
 sequential/output/rademacher/subSub$sequential/output/rademacher/mul:z:0+sequential/output/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:����������
!sequential/output/rademacher/CastCast$sequential/output/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:���������d
"sequential/output/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :b
 sequential/output/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
sequential/output/ExpandDims
ExpandDims+sequential/output/ExpandDims/input:output:0)sequential/output/ExpandDims/dim:output:0*
T0*
_output_shapes
:_
sequential/output/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
sequential/output/concatConcatV2(sequential/output/strided_slice:output:0%sequential/output/ExpandDims:output:0&sequential/output/concat/axis:output:0*
N*
T0*
_output_shapes
:�
?sequential/output/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
=sequential/output/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
����������
=sequential/output/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
9sequential/output/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntHsequential/output/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Fsequential/output/rademacher_1/uniform/sanitize_seed/seed/min:output:0Fsequential/output/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:�
Csequential/output/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Csequential/output/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
\sequential/output/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterBsequential/output/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::�
Csequential/output/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
?sequential/output/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2!sequential/output/concat:output:0bsequential/output/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0fsequential/output/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Lsequential/output/rademacher_1/uniform/stateless_random_uniform/alg:output:0Lsequential/output/rademacher_1/uniform/stateless_random_uniform/min:output:0Lsequential/output/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:���������*
dtype0	f
$sequential/output/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
"sequential/output/rademacher_1/mulMul-sequential/output/rademacher_1/mul/x:output:0Hsequential/output/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:���������f
$sequential/output/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
"sequential/output/rademacher_1/subSub&sequential/output/rademacher_1/mul:z:0-sequential/output/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:����������
#sequential/output/rademacher_1/CastCast&sequential/output/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:����������
sequential/output/mulMul)sequential/dense_tfp_2/Relu:activations:0%sequential/output/rademacher/Cast:y:0*
T0*'
_output_shapes
:����������
sequential/output/MatMulMatMulsequential/output/mul:z:00sequential/output/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:����������
sequential/output/mul_1Mul"sequential/output/MatMul:product:0'sequential/output/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:����������
)sequential/output/MatMul_1/ReadVariableOpReadVariableOp2sequential_output_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential/output/MatMul_1MatMul)sequential/dense_tfp_2/Relu:activations:01sequential/output/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential/output/addAddV2$sequential/output/MatMul_1:product:0sequential/output/mul_1:z:0*
T0*'
_output_shapes
:����������
Tsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
isequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :�
zsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:�
ksequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReadVariableOpReadVariableOptsequential_output_independentdeterministic_constructed_at_output_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0�
lsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:�
bsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
psequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
rsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
rsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
jsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_sliceStridedSliceusequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/shape_as_tensor:output:0ysequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice/stack:output:0{sequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice/stack_1:output:0{sequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
msequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB �
osequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
jsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastArgsBroadcastArgsxsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0ssequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:�
lsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:�
lsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB �
hsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
csequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concatConcatV2usequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat/values_0:output:0osequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastArgs:r0:0usequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat/values_2:output:0qsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
hsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastToBroadcastTossequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReadVariableOp:value:0lsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:�
jsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
dsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReshapeReshapeqsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastTo:output:0ssequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:�
Usequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
Osequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/ReshapeReshapemsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/Reshape:output:0^sequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Reshape/shape:output:0*
T0*
_output_shapes
:�
sequential/output/BiasAddBiasAddsequential/output/add:z:0Xsequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Reshape:output:0*
T0*'
_output_shapes
:���������z
sequential/output/SoftmaxSoftmax"sequential/output/BiasAdd:output:0*
T0*'
_output_shapes
:����������
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp@sequential_output_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplus�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLog�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Log�sequential_output_kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3132793*
T0*
_output_shapes
: �
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSub�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp2sequential_output_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDiv�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0�sequential_output_kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3132793*
T0*
_output_shapes

:�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDiv�sequential_output_kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x�sequential_output_kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3132793*
T0*
_output_shapes

:�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifference�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mul�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mul�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Sub�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"���������
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSum�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: `
sequential/output/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 * آE�
sequential/output/truedivRealDiv�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0$sequential/output/truediv/y:output:0*
T0*
_output_shapes
: o
#sequential/output/divergence_kernelIdentitysequential/output/truediv:z:0*
T0*
_output_shapes
: r
IdentityIdentity#sequential/output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOpv^sequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReadVariableOp�^sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�^sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp/^sequential/dense_tfp_1/MatMul_1/ReadVariableOp=^sequential/dense_tfp_1/Normal/sample/Softplus/ReadVariableOpv^sequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReadVariableOp�^sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�^sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp/^sequential/dense_tfp_2/MatMul_1/ReadVariableOp=^sequential/dense_tfp_2/Normal/sample/Softplus/ReadVariableOpl^sequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReadVariableOp�^sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�^sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp*^sequential/output/MatMul_1/ReadVariableOp8^sequential/output/Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������: : : : :	� : : : : : : : : : :2�
usequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReadVariableOpusequential/dense_tfp_1/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_1/sample/Deterministic/sample/ReadVariableOp2�
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2�
�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�sequential/dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2`
.sequential/dense_tfp_1/MatMul_1/ReadVariableOp.sequential/dense_tfp_1/MatMul_1/ReadVariableOp2|
<sequential/dense_tfp_1/Normal/sample/Softplus/ReadVariableOp<sequential/dense_tfp_1/Normal/sample/Softplus/ReadVariableOp2�
usequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReadVariableOpusequential/dense_tfp_2/IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReadVariableOp2�
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2�
�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�sequential/dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2`
.sequential/dense_tfp_2/MatMul_1/ReadVariableOp.sequential/dense_tfp_2/MatMul_1/ReadVariableOp2|
<sequential/dense_tfp_2/Normal/sample/Softplus/ReadVariableOp<sequential/dense_tfp_2/Normal/sample/Softplus/ReadVariableOp2�
ksequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReadVariableOpksequential/output/IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReadVariableOp2�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2�
�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�sequential/output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2V
)sequential/output/MatMul_1/ReadVariableOp)sequential/output/MatMul_1/ReadVariableOp2r
7sequential/output/Normal/sample/Softplus/ReadVariableOp7sequential/output/Normal/sample/Softplus/ReadVariableOp:O K
(
_output_shapes
:����������

_user_specified_nameinput:

_output_shapes
: :%!

_output_shapes
:	� :	

_output_shapes
: :$
 

_output_shapes

: :

_output_shapes
: :$ 

_output_shapes

:
�
�
%__inference_signature_wrapper_3133663	
input
unknown:	� 
	unknown_0:	� 
	unknown_1: 
	unknown_2
	unknown_3
	unknown_4: 
	unknown_5: 
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_3132822o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������: : : : :	� : : : : : : : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
(
_output_shapes
:����������

_user_specified_nameinput:

_output_shapes
: :%!

_output_shapes
:	� :	

_output_shapes
: :$
 

_output_shapes

: :

_output_shapes
: :$ 

_output_shapes

:
ˆ
�
G__inference_sequential_layer_call_and_return_conditional_losses_3134567

inputsM
:dense_tfp_1_normal_sample_softplus_readvariableop_resource:	� ?
,dense_tfp_1_matmul_1_readvariableop_resource:	� f
Xdense_tfp_1_independentdeterministic_sample_deterministic_sample_readvariableop_resource: �
�dense_tfp_1_kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134265�
�dense_tfp_1_kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xL
:dense_tfp_2_normal_sample_softplus_readvariableop_resource: >
,dense_tfp_2_matmul_1_readvariableop_resource: f
Xdense_tfp_2_independentdeterministic_sample_deterministic_sample_readvariableop_resource:�
�dense_tfp_2_kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134400�
�dense_tfp_2_kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xG
5output_normal_sample_softplus_readvariableop_resource:9
'output_matmul_1_readvariableop_resource:a
Soutput_independentdeterministic_sample_deterministic_sample_readvariableop_resource:�
�output_kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134535�
�output_kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1

identity_2

identity_3��Odense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp��dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp��dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�#dense_tfp_1/MatMul_1/ReadVariableOp�1dense_tfp_1/Normal/sample/Softplus/ReadVariableOp�Odense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp��dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp��dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�#dense_tfp_2/MatMul_1/ReadVariableOp�1dense_tfp_2/Normal/sample/Softplus/ReadVariableOp�Joutput/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp��output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp��output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�output/MatMul_1/ReadVariableOp�,output/Normal/sample/Softplus/ReadVariableOpw
&dense_tfp_1/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"�       a
dense_tfp_1/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_tfp_1/zeros_likeFill/dense_tfp_1/zeros_like/shape_as_tensor:output:0%dense_tfp_1/zeros_like/Const:output:0*
T0*
_output_shapes
:	� i
&dense_tfp_1/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
1dense_tfp_1/Normal/sample/Softplus/ReadVariableOpReadVariableOp:dense_tfp_1_normal_sample_softplus_readvariableop_resource*
_output_shapes
:	� *
dtype0�
"dense_tfp_1/Normal/sample/SoftplusSoftplus9dense_tfp_1/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes
:	� d
dense_tfp_1/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
dense_tfp_1/Normal/sample/addAddV2(dense_tfp_1/Normal/sample/add/x:output:00dense_tfp_1/Normal/sample/Softplus:activations:0*
T0*
_output_shapes
:	� z
)dense_tfp_1/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"�       a
dense_tfp_1/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : w
-dense_tfp_1/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense_tfp_1/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense_tfp_1/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'dense_tfp_1/Normal/sample/strided_sliceStridedSlice2dense_tfp_1/Normal/sample/shape_as_tensor:output:06dense_tfp_1/Normal/sample/strided_slice/stack:output:08dense_tfp_1/Normal/sample/strided_slice/stack_1:output:08dense_tfp_1/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask|
+dense_tfp_1/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"�       c
!dense_tfp_1/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : y
/dense_tfp_1/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_tfp_1/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_tfp_1/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_tfp_1/Normal/sample/strided_slice_1StridedSlice4dense_tfp_1/Normal/sample/shape_as_tensor_1:output:08dense_tfp_1/Normal/sample/strided_slice_1/stack:output:0:dense_tfp_1/Normal/sample/strided_slice_1/stack_1:output:0:dense_tfp_1/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskm
*dense_tfp_1/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB o
,dense_tfp_1/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
'dense_tfp_1/Normal/sample/BroadcastArgsBroadcastArgs5dense_tfp_1/Normal/sample/BroadcastArgs/s0_1:output:00dense_tfp_1/Normal/sample/strided_slice:output:0*
_output_shapes
:�
)dense_tfp_1/Normal/sample/BroadcastArgs_1BroadcastArgs,dense_tfp_1/Normal/sample/BroadcastArgs:r0:02dense_tfp_1/Normal/sample/strided_slice_1:output:0*
_output_shapes
:s
)dense_tfp_1/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
%dense_tfp_1/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 dense_tfp_1/Normal/sample/concatConcatV22dense_tfp_1/Normal/sample/concat/values_0:output:0.dense_tfp_1/Normal/sample/BroadcastArgs_1:r0:0.dense_tfp_1/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:x
3dense_tfp_1/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    z
5dense_tfp_1/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Cdense_tfp_1/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal)dense_tfp_1/Normal/sample/concat:output:0*
T0*#
_output_shapes
:� *
dtype0�
2dense_tfp_1/Normal/sample/normal/random_normal/mulMulLdense_tfp_1/Normal/sample/normal/random_normal/RandomStandardNormal:output:0>dense_tfp_1/Normal/sample/normal/random_normal/stddev:output:0*
T0*#
_output_shapes
:� �
.dense_tfp_1/Normal/sample/normal/random_normalAddV26dense_tfp_1/Normal/sample/normal/random_normal/mul:z:0<dense_tfp_1/Normal/sample/normal/random_normal/mean:output:0*
T0*#
_output_shapes
:� �
dense_tfp_1/Normal/sample/mulMul2dense_tfp_1/Normal/sample/normal/random_normal:z:0!dense_tfp_1/Normal/sample/add:z:0*
T0*#
_output_shapes
:� �
dense_tfp_1/Normal/sample/add_1AddV2!dense_tfp_1/Normal/sample/mul:z:0dense_tfp_1/zeros_like:output:0*
T0*#
_output_shapes
:� x
'dense_tfp_1/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�       �
!dense_tfp_1/Normal/sample/ReshapeReshape#dense_tfp_1/Normal/sample/add_1:z:00dense_tfp_1/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes
:	� G
dense_tfp_1/ShapeShapeinputs*
T0*
_output_shapes
:i
dense_tfp_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
!dense_tfp_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������k
!dense_tfp_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
dense_tfp_1/strided_sliceStridedSlicedense_tfp_1/Shape:output:0(dense_tfp_1/strided_slice/stack:output:0*dense_tfp_1/strided_slice/stack_1:output:0*dense_tfp_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
7dense_tfp_1/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
5dense_tfp_1/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������{
5dense_tfp_1/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
1dense_tfp_1/rademacher/uniform/sanitize_seed/seedRandomUniformInt@dense_tfp_1/rademacher/uniform/sanitize_seed/seed/shape:output:0>dense_tfp_1/rademacher/uniform/sanitize_seed/seed/min:output:0>dense_tfp_1/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:}
;dense_tfp_1/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R }
;dense_tfp_1/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Tdense_tfp_1/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter:dense_tfp_1/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::}
;dense_tfp_1/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
7dense_tfp_1/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_tfp_1/Shape:output:0Zdense_tfp_1/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0^dense_tfp_1/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Ddense_tfp_1/rademacher/uniform/stateless_random_uniform/alg:output:0Ddense_tfp_1/rademacher/uniform/stateless_random_uniform/min:output:0Ddense_tfp_1/rademacher/uniform/stateless_random_uniform/max:output:0*(
_output_shapes
:����������*
dtype0	^
dense_tfp_1/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
dense_tfp_1/rademacher/mulMul%dense_tfp_1/rademacher/mul/x:output:0@dense_tfp_1/rademacher/uniform/stateless_random_uniform:output:0*
T0	*(
_output_shapes
:����������^
dense_tfp_1/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
dense_tfp_1/rademacher/subSubdense_tfp_1/rademacher/mul:z:0%dense_tfp_1/rademacher/sub/y:output:0*
T0	*(
_output_shapes
:�����������
dense_tfp_1/rademacher/CastCastdense_tfp_1/rademacher/sub:z:0*

DstT0*

SrcT0	*(
_output_shapes
:����������^
dense_tfp_1/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B : \
dense_tfp_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
dense_tfp_1/ExpandDims
ExpandDims%dense_tfp_1/ExpandDims/input:output:0#dense_tfp_1/ExpandDims/dim:output:0*
T0*
_output_shapes
:Y
dense_tfp_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_tfp_1/concatConcatV2"dense_tfp_1/strided_slice:output:0dense_tfp_1/ExpandDims:output:0 dense_tfp_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
9dense_tfp_1/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
7dense_tfp_1/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������}
7dense_tfp_1/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
3dense_tfp_1/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntBdense_tfp_1/rademacher_1/uniform/sanitize_seed/seed/shape:output:0@dense_tfp_1/rademacher_1/uniform/sanitize_seed/seed/min:output:0@dense_tfp_1/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
=dense_tfp_1/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
=dense_tfp_1/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Vdense_tfp_1/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter<dense_tfp_1/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
=dense_tfp_1/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
9dense_tfp_1/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_tfp_1/concat:output:0\dense_tfp_1/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`dense_tfp_1/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Fdense_tfp_1/rademacher_1/uniform/stateless_random_uniform/alg:output:0Fdense_tfp_1/rademacher_1/uniform/stateless_random_uniform/min:output:0Fdense_tfp_1/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:��������� *
dtype0	`
dense_tfp_1/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
dense_tfp_1/rademacher_1/mulMul'dense_tfp_1/rademacher_1/mul/x:output:0Bdense_tfp_1/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:��������� `
dense_tfp_1/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
dense_tfp_1/rademacher_1/subSub dense_tfp_1/rademacher_1/mul:z:0'dense_tfp_1/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:��������� �
dense_tfp_1/rademacher_1/CastCast dense_tfp_1/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:��������� r
dense_tfp_1/mulMulinputsdense_tfp_1/rademacher/Cast:y:0*
T0*(
_output_shapes
:�����������
dense_tfp_1/MatMulMatMuldense_tfp_1/mul:z:0*dense_tfp_1/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:��������� �
dense_tfp_1/mul_1Muldense_tfp_1/MatMul:product:0!dense_tfp_1/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:��������� �
#dense_tfp_1/MatMul_1/ReadVariableOpReadVariableOp,dense_tfp_1_matmul_1_readvariableop_resource*
_output_shapes
:	� *
dtype0�
dense_tfp_1/MatMul_1MatMulinputs+dense_tfp_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_tfp_1/addAddV2dense_tfp_1/MatMul_1:product:0dense_tfp_1/mul_1:z:0*
T0*'
_output_shapes
:��������� {
8dense_tfp_1/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
Mdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :�
^dense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:�
Odense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOpXdense_tfp_1_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
: *
dtype0�
Pdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB: �
Fdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
Tdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Vdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Vdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Ndense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSliceYdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0]dense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0_dense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0_dense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
Qdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB �
Sdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
Ndense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgs\dense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0Wdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:�
Pdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:�
Pdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB �
Ldense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Gdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2Ydense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Sdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0Ydense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Udense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ldense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastToWdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Pdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

: �
Ndense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       �
Hdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeUdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0Wdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

: �
9dense_tfp_1/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB: �
3dense_tfp_1/IndependentDeterministic/sample/ReshapeReshapeQdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Bdense_tfp_1/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
: �
dense_tfp_1/BiasAddBiasAdddense_tfp_1/add:z:0<dense_tfp_1/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:��������� h
dense_tfp_1/ReluReludense_tfp_1/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp:dense_tfp_1_normal_sample_softplus_readvariableop_resource*
_output_shapes
:	� *
dtype0�
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplus�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLog�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Log�dense_tfp_1_kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134265*
T0*
_output_shapes
: �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSub�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp,dense_tfp_1_matmul_1_readvariableop_resource*
_output_shapes
:	� *
dtype0�
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDiv�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0�dense_tfp_1_kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134265*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDiv�dense_tfp_1_kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x�dense_tfp_1_kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134265*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifference�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mul�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mul�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Sub�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"���������
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSum�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_tfp_1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 * آE�
dense_tfp_1/truedivRealDiv�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_tfp_1/truediv/y:output:0*
T0*
_output_shapes
: c
dense_tfp_1/divergence_kernelIdentitydense_tfp_1/truediv:z:0*
T0*
_output_shapes
: k
dense_tfp_2/zeros_likeConst*
_output_shapes

: *
dtype0*
valueB *    i
&dense_tfp_2/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
1dense_tfp_2/Normal/sample/Softplus/ReadVariableOpReadVariableOp:dense_tfp_2_normal_sample_softplus_readvariableop_resource*
_output_shapes

: *
dtype0�
"dense_tfp_2/Normal/sample/SoftplusSoftplus9dense_tfp_2/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

: d
dense_tfp_2/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
dense_tfp_2/Normal/sample/addAddV2(dense_tfp_2/Normal/sample/add/x:output:00dense_tfp_2/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

: z
)dense_tfp_2/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"       a
dense_tfp_2/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : w
-dense_tfp_2/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense_tfp_2/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense_tfp_2/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'dense_tfp_2/Normal/sample/strided_sliceStridedSlice2dense_tfp_2/Normal/sample/shape_as_tensor:output:06dense_tfp_2/Normal/sample/strided_slice/stack:output:08dense_tfp_2/Normal/sample/strided_slice/stack_1:output:08dense_tfp_2/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask|
+dense_tfp_2/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"       c
!dense_tfp_2/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : y
/dense_tfp_2/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_tfp_2/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_tfp_2/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_tfp_2/Normal/sample/strided_slice_1StridedSlice4dense_tfp_2/Normal/sample/shape_as_tensor_1:output:08dense_tfp_2/Normal/sample/strided_slice_1/stack:output:0:dense_tfp_2/Normal/sample/strided_slice_1/stack_1:output:0:dense_tfp_2/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskm
*dense_tfp_2/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB o
,dense_tfp_2/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
'dense_tfp_2/Normal/sample/BroadcastArgsBroadcastArgs5dense_tfp_2/Normal/sample/BroadcastArgs/s0_1:output:00dense_tfp_2/Normal/sample/strided_slice:output:0*
_output_shapes
:�
)dense_tfp_2/Normal/sample/BroadcastArgs_1BroadcastArgs,dense_tfp_2/Normal/sample/BroadcastArgs:r0:02dense_tfp_2/Normal/sample/strided_slice_1:output:0*
_output_shapes
:s
)dense_tfp_2/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
%dense_tfp_2/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 dense_tfp_2/Normal/sample/concatConcatV22dense_tfp_2/Normal/sample/concat/values_0:output:0.dense_tfp_2/Normal/sample/BroadcastArgs_1:r0:0.dense_tfp_2/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:x
3dense_tfp_2/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    z
5dense_tfp_2/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Cdense_tfp_2/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal)dense_tfp_2/Normal/sample/concat:output:0*
T0*"
_output_shapes
: *
dtype0�
2dense_tfp_2/Normal/sample/normal/random_normal/mulMulLdense_tfp_2/Normal/sample/normal/random_normal/RandomStandardNormal:output:0>dense_tfp_2/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
: �
.dense_tfp_2/Normal/sample/normal/random_normalAddV26dense_tfp_2/Normal/sample/normal/random_normal/mul:z:0<dense_tfp_2/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
: �
dense_tfp_2/Normal/sample/mulMul2dense_tfp_2/Normal/sample/normal/random_normal:z:0!dense_tfp_2/Normal/sample/add:z:0*
T0*"
_output_shapes
: �
dense_tfp_2/Normal/sample/add_1AddV2!dense_tfp_2/Normal/sample/mul:z:0dense_tfp_2/zeros_like:output:0*
T0*"
_output_shapes
: x
'dense_tfp_2/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       �
!dense_tfp_2/Normal/sample/ReshapeReshape#dense_tfp_2/Normal/sample/add_1:z:00dense_tfp_2/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

: _
dense_tfp_2/ShapeShapedense_tfp_1/Relu:activations:0*
T0*
_output_shapes
:i
dense_tfp_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
!dense_tfp_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������k
!dense_tfp_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
dense_tfp_2/strided_sliceStridedSlicedense_tfp_2/Shape:output:0(dense_tfp_2/strided_slice/stack:output:0*dense_tfp_2/strided_slice/stack_1:output:0*dense_tfp_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
7dense_tfp_2/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
5dense_tfp_2/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������{
5dense_tfp_2/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
1dense_tfp_2/rademacher/uniform/sanitize_seed/seedRandomUniformInt@dense_tfp_2/rademacher/uniform/sanitize_seed/seed/shape:output:0>dense_tfp_2/rademacher/uniform/sanitize_seed/seed/min:output:0>dense_tfp_2/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:}
;dense_tfp_2/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R }
;dense_tfp_2/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Tdense_tfp_2/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter:dense_tfp_2/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::}
;dense_tfp_2/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
7dense_tfp_2/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_tfp_2/Shape:output:0Zdense_tfp_2/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0^dense_tfp_2/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Ddense_tfp_2/rademacher/uniform/stateless_random_uniform/alg:output:0Ddense_tfp_2/rademacher/uniform/stateless_random_uniform/min:output:0Ddense_tfp_2/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:��������� *
dtype0	^
dense_tfp_2/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
dense_tfp_2/rademacher/mulMul%dense_tfp_2/rademacher/mul/x:output:0@dense_tfp_2/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:��������� ^
dense_tfp_2/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
dense_tfp_2/rademacher/subSubdense_tfp_2/rademacher/mul:z:0%dense_tfp_2/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:��������� �
dense_tfp_2/rademacher/CastCastdense_tfp_2/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:��������� ^
dense_tfp_2/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :\
dense_tfp_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
dense_tfp_2/ExpandDims
ExpandDims%dense_tfp_2/ExpandDims/input:output:0#dense_tfp_2/ExpandDims/dim:output:0*
T0*
_output_shapes
:Y
dense_tfp_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_tfp_2/concatConcatV2"dense_tfp_2/strided_slice:output:0dense_tfp_2/ExpandDims:output:0 dense_tfp_2/concat/axis:output:0*
N*
T0*
_output_shapes
:�
9dense_tfp_2/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
7dense_tfp_2/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������}
7dense_tfp_2/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
3dense_tfp_2/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntBdense_tfp_2/rademacher_1/uniform/sanitize_seed/seed/shape:output:0@dense_tfp_2/rademacher_1/uniform/sanitize_seed/seed/min:output:0@dense_tfp_2/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
=dense_tfp_2/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
=dense_tfp_2/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Vdense_tfp_2/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter<dense_tfp_2/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
=dense_tfp_2/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
9dense_tfp_2/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_tfp_2/concat:output:0\dense_tfp_2/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`dense_tfp_2/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Fdense_tfp_2/rademacher_1/uniform/stateless_random_uniform/alg:output:0Fdense_tfp_2/rademacher_1/uniform/stateless_random_uniform/min:output:0Fdense_tfp_2/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:���������*
dtype0	`
dense_tfp_2/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
dense_tfp_2/rademacher_1/mulMul'dense_tfp_2/rademacher_1/mul/x:output:0Bdense_tfp_2/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:���������`
dense_tfp_2/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
dense_tfp_2/rademacher_1/subSub dense_tfp_2/rademacher_1/mul:z:0'dense_tfp_2/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:����������
dense_tfp_2/rademacher_1/CastCast dense_tfp_2/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:����������
dense_tfp_2/mulMuldense_tfp_1/Relu:activations:0dense_tfp_2/rademacher/Cast:y:0*
T0*'
_output_shapes
:��������� �
dense_tfp_2/MatMulMatMuldense_tfp_2/mul:z:0*dense_tfp_2/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:����������
dense_tfp_2/mul_1Muldense_tfp_2/MatMul:product:0!dense_tfp_2/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:����������
#dense_tfp_2/MatMul_1/ReadVariableOpReadVariableOp,dense_tfp_2_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_tfp_2/MatMul_1MatMuldense_tfp_1/Relu:activations:0+dense_tfp_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_tfp_2/addAddV2dense_tfp_2/MatMul_1:product:0dense_tfp_2/mul_1:z:0*
T0*'
_output_shapes
:���������{
8dense_tfp_2/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
Mdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :�
^dense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:�
Odense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOpXdense_tfp_2_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0�
Pdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:�
Fdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
Tdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Vdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Vdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Ndense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSliceYdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0]dense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0_dense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0_dense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
Qdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB �
Sdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
Ndense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgs\dense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0Wdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:�
Pdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:�
Pdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB �
Ldense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Gdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2Ydense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Sdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0Ydense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Udense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ldense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastToWdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Pdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:�
Ndense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
Hdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeUdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0Wdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:�
9dense_tfp_2/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
3dense_tfp_2/IndependentDeterministic/sample/ReshapeReshapeQdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Bdense_tfp_2/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:�
dense_tfp_2/BiasAddBiasAdddense_tfp_2/add:z:0<dense_tfp_2/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:���������h
dense_tfp_2/ReluReludense_tfp_2/BiasAdd:output:0*
T0*'
_output_shapes
:����������
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp:dense_tfp_2_normal_sample_softplus_readvariableop_resource*
_output_shapes

: *
dtype0�
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplus�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLog�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Log�dense_tfp_2_kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134400*
T0*
_output_shapes
: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSub�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp,dense_tfp_2_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDiv�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0�dense_tfp_2_kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134400*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDiv�dense_tfp_2_kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x�dense_tfp_2_kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134400*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifference�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mul�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mul�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Sub�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"���������
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSum�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_tfp_2/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 * آE�
dense_tfp_2/truedivRealDiv�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_tfp_2/truediv/y:output:0*
T0*
_output_shapes
: c
dense_tfp_2/divergence_kernelIdentitydense_tfp_2/truediv:z:0*
T0*
_output_shapes
: f
output/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    d
!output/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
,output/Normal/sample/Softplus/ReadVariableOpReadVariableOp5output_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0�
output/Normal/sample/SoftplusSoftplus4output/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:_
output/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
output/Normal/sample/addAddV2#output/Normal/sample/add/x:output:0+output/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:u
$output/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      \
output/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(output/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*output/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*output/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"output/Normal/sample/strided_sliceStridedSlice-output/Normal/sample/shape_as_tensor:output:01output/Normal/sample/strided_slice/stack:output:03output/Normal/sample/strided_slice/stack_1:output:03output/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskw
&output/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      ^
output/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : t
*output/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,output/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,output/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$output/Normal/sample/strided_slice_1StridedSlice/output/Normal/sample/shape_as_tensor_1:output:03output/Normal/sample/strided_slice_1/stack:output:05output/Normal/sample/strided_slice_1/stack_1:output:05output/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%output/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'output/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
"output/Normal/sample/BroadcastArgsBroadcastArgs0output/Normal/sample/BroadcastArgs/s0_1:output:0+output/Normal/sample/strided_slice:output:0*
_output_shapes
:�
$output/Normal/sample/BroadcastArgs_1BroadcastArgs'output/Normal/sample/BroadcastArgs:r0:0-output/Normal/sample/strided_slice_1:output:0*
_output_shapes
:n
$output/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:b
 output/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
output/Normal/sample/concatConcatV2-output/Normal/sample/concat/values_0:output:0)output/Normal/sample/BroadcastArgs_1:r0:0)output/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:s
.output/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    u
0output/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
>output/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal$output/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0�
-output/Normal/sample/normal/random_normal/mulMulGoutput/Normal/sample/normal/random_normal/RandomStandardNormal:output:09output/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:�
)output/Normal/sample/normal/random_normalAddV21output/Normal/sample/normal/random_normal/mul:z:07output/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:�
output/Normal/sample/mulMul-output/Normal/sample/normal/random_normal:z:0output/Normal/sample/add:z:0*
T0*"
_output_shapes
:�
output/Normal/sample/add_1AddV2output/Normal/sample/mul:z:0output/zeros_like:output:0*
T0*"
_output_shapes
:s
"output/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
output/Normal/sample/ReshapeReshapeoutput/Normal/sample/add_1:z:0+output/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:Z
output/ShapeShapedense_tfp_2/Relu:activations:0*
T0*
_output_shapes
:d
output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������f
output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
output/strided_sliceStridedSliceoutput/Shape:output:0#output/strided_slice/stack:output:0%output/strided_slice/stack_1:output:0%output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask|
2output/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:{
0output/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������v
0output/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
,output/rademacher/uniform/sanitize_seed/seedRandomUniformInt;output/rademacher/uniform/sanitize_seed/seed/shape:output:09output/rademacher/uniform/sanitize_seed/seed/min:output:09output/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:x
6output/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R x
6output/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Ooutput/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter5output/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::x
6output/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
2output/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2output/Shape:output:0Uoutput/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Youtput/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0?output/rademacher/uniform/stateless_random_uniform/alg:output:0?output/rademacher/uniform/stateless_random_uniform/min:output:0?output/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:���������*
dtype0	Y
output/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
output/rademacher/mulMul output/rademacher/mul/x:output:0;output/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:���������Y
output/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
output/rademacher/subSuboutput/rademacher/mul:z:0 output/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:���������z
output/rademacher/CastCastoutput/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:���������Y
output/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :W
output/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
output/ExpandDims
ExpandDims output/ExpandDims/input:output:0output/ExpandDims/dim:output:0*
T0*
_output_shapes
:T
output/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
output/concatConcatV2output/strided_slice:output:0output/ExpandDims:output:0output/concat/axis:output:0*
N*
T0*
_output_shapes
:~
4output/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:}
2output/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������x
2output/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
.output/rademacher_1/uniform/sanitize_seed/seedRandomUniformInt=output/rademacher_1/uniform/sanitize_seed/seed/shape:output:0;output/rademacher_1/uniform/sanitize_seed/seed/min:output:0;output/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:z
8output/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R z
8output/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Qoutput/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter7output/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::z
8output/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
4output/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2output/concat:output:0Woutput/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0[output/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Aoutput/rademacher_1/uniform/stateless_random_uniform/alg:output:0Aoutput/rademacher_1/uniform/stateless_random_uniform/min:output:0Aoutput/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:���������*
dtype0	[
output/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
output/rademacher_1/mulMul"output/rademacher_1/mul/x:output:0=output/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:���������[
output/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
output/rademacher_1/subSuboutput/rademacher_1/mul:z:0"output/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:���������~
output/rademacher_1/CastCastoutput/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:���������

output/mulMuldense_tfp_2/Relu:activations:0output/rademacher/Cast:y:0*
T0*'
_output_shapes
:����������
output/MatMulMatMuloutput/mul:z:0%output/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:���������|
output/mul_1Muloutput/MatMul:product:0output/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:����������
output/MatMul_1/ReadVariableOpReadVariableOp'output_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
output/MatMul_1MatMuldense_tfp_2/Relu:activations:0&output/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r

output/addAddV2output/MatMul_1:product:0output/mul_1:z:0*
T0*'
_output_shapes
:���������v
3output/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
Houtput/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :�
Youtput/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:�
Joutput/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOpSoutput_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0�
Koutput/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:�
Aoutput/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
Ooutput/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Qoutput/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Qoutput/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Ioutput/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSliceToutput/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0Xoutput/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0Zoutput/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0Zoutput/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
Loutput/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB �
Noutput/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
Ioutput/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsWoutput/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0Routput/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:�
Koutput/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:�
Koutput/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB �
Goutput/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Boutput/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2Toutput/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Noutput/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0Toutput/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Poutput/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Goutput/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastToRoutput/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Koutput/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:�
Ioutput/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
Coutput/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapePoutput/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0Routput/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:~
4output/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
.output/IndependentDeterministic/sample/ReshapeReshapeLoutput/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0=output/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:�
output/BiasAddBiasAddoutput/add:z:07output/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:���������d
output/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:����������
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp5output_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplus�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLog�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Log�output_kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134535*
T0*
_output_shapes
: �
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSub�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp'output_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDiv�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0�output_kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134535*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDiv�output_kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x�output_kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134535*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifference�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mul�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mul�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Sub�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"���������
xoutput/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSum�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: U
output/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 * آE�
output/truedivRealDiv�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0output/truediv/y:output:0*
T0*
_output_shapes
: Y
output/divergence_kernelIdentityoutput/truediv:z:0*
T0*
_output_shapes
: g
IdentityIdentityoutput/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������f

Identity_1Identity&dense_tfp_1/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: f

Identity_2Identity&dense_tfp_2/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: a

Identity_3Identity!output/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOpP^dense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp�^dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�^dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp$^dense_tfp_1/MatMul_1/ReadVariableOp2^dense_tfp_1/Normal/sample/Softplus/ReadVariableOpP^dense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp�^dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�^dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp$^dense_tfp_2/MatMul_1/ReadVariableOp2^dense_tfp_2/Normal/sample/Softplus/ReadVariableOpK^output/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp�^output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�^output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^output/MatMul_1/ReadVariableOp-^output/Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������: : : : :	� : : : : : : : : : :2�
Odense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpOdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2�
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2�
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2J
#dense_tfp_1/MatMul_1/ReadVariableOp#dense_tfp_1/MatMul_1/ReadVariableOp2f
1dense_tfp_1/Normal/sample/Softplus/ReadVariableOp1dense_tfp_1/Normal/sample/Softplus/ReadVariableOp2�
Odense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpOdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2�
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2�
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2J
#dense_tfp_2/MatMul_1/ReadVariableOp#dense_tfp_2/MatMul_1/ReadVariableOp2f
1dense_tfp_2/Normal/sample/Softplus/ReadVariableOp1dense_tfp_2/Normal/sample/Softplus/ReadVariableOp2�
Joutput/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpJoutput/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2@
output/MatMul_1/ReadVariableOpoutput/MatMul_1/ReadVariableOp2\
,output/Normal/sample/Softplus/ReadVariableOp,output/Normal/sample/Softplus/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:

_output_shapes
: :%!

_output_shapes
:	� :	

_output_shapes
: :$
 

_output_shapes

: :

_output_shapes
: :$ 

_output_shapes

:
��
�

C__inference_output_layer_call_and_return_conditional_losses_3135037

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:p
bindependentdeterministic_constructed_at_output_sample_deterministic_sample_readvariableop_resource:�
�kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3135007�
�kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1��YIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReadVariableOp��KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp��KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�MatMul_1/ReadVariableOp�%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : k
!Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Normal/sample/strided_sliceStridedSlice&Normal/sample/shape_as_tensor:output:0*Normal/sample/strided_slice/stack:output:0,Normal/sample/strided_slice/stack_1:output:0,Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      W
Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : m
#Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Normal/sample/strided_slice_1StridedSlice(Normal/sample/shape_as_tensor_1:output:0,Normal/sample/strided_slice_1/stack:output:0.Normal/sample/strided_slice_1/stack_1:output:0.Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maska
Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB c
 Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
Normal/sample/BroadcastArgsBroadcastArgs)Normal/sample/BroadcastArgs/s0_1:output:0$Normal/sample/strided_slice:output:0*
_output_shapes
:�
Normal/sample/BroadcastArgs_1BroadcastArgs Normal/sample/BroadcastArgs:r0:0&Normal/sample/strided_slice_1:output:0*
_output_shapes
:g
Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:[
Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Normal/sample/concatConcatV2&Normal/sample/concat/values_0:output:0"Normal/sample/BroadcastArgs_1:r0:0"Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:l
'Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    n
)Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
7Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormalNormal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0�
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:�
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:�
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_masku
+rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:t
)rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������o
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
%rademacher/uniform/sanitize_seed/seedRandomUniformInt4rademacher/uniform/sanitize_seed/seed/shape:output:02rademacher/uniform/sanitize_seed/seed/min:output:02rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:q
/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R q
/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:���������*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:���������R
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:���������l
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:���������R
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsExpandDims/input:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2strided_slice:output:0ExpandDims:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
-rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:v
+rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������q
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
'rademacher_1/uniform/sanitize_seed/seedRandomUniformInt6rademacher_1/uniform/sanitize_seed/seed/shape:output:04rademacher_1/uniform/sanitize_seed/seed/min:output:04rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:s
1rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R s
1rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:���������*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:���������T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:���������p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:���������Y
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:���������k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:���������g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:���������x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:����������
BIndependentDeterministic_CONSTRUCTED_AT_output/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
WIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :�
hIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:�
YIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReadVariableOpReadVariableOpbindependentdeterministic_constructed_at_output_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0�
ZIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:�
PIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
^IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
`IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
`IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
XIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_sliceStridedSlicecIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/shape_as_tensor:output:0gIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice/stack:output:0iIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice/stack_1:output:0iIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
[IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB �
]IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
XIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastArgsBroadcastArgsfIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0aIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:�
ZIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:�
ZIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB �
VIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
QIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concatConcatV2cIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat/values_0:output:0]IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastArgs:r0:0cIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat/values_2:output:0_IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
VIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastToBroadcastToaIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReadVariableOp:value:0ZIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:�
XIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
RIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReshapeReshape_IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/BroadcastTo:output:0aIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:�
CIndependentDeterministic_CONSTRUCTED_AT_output/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
=IndependentDeterministic_CONSTRUCTED_AT_output/sample/ReshapeReshape[IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/Reshape:output:0LIndependentDeterministic_CONSTRUCTED_AT_output/sample/Reshape/shape:output:0*
T0*
_output_shapes
:�
BiasAddBiasAddadd:z:0FIndependentDeterministic_CONSTRUCTED_AT_output/sample/Reshape:output:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:����������
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplus�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLog�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Log�kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3135007*
T0*
_output_shapes
: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSub�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDiv�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0�kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3135007*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDiv�kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x�kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3135007*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifference�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mul�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mul�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Sub�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"���������
qKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSum�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 * آE�
truedivRealDivzKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0truediv/y:output:0*
T0*
_output_shapes
: K
divergence_kernelIdentitytruediv:z:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOpZ^IndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReadVariableOp�^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : :2�
YIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReadVariableOpYIndependentDeterministic_CONSTRUCTED_AT_output/sample/Deterministic/sample/ReadVariableOp2�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
ˆ
�
G__inference_sequential_layer_call_and_return_conditional_losses_3134153

inputsM
:dense_tfp_1_normal_sample_softplus_readvariableop_resource:	� ?
,dense_tfp_1_matmul_1_readvariableop_resource:	� f
Xdense_tfp_1_independentdeterministic_sample_deterministic_sample_readvariableop_resource: �
�dense_tfp_1_kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3133851�
�dense_tfp_1_kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xL
:dense_tfp_2_normal_sample_softplus_readvariableop_resource: >
,dense_tfp_2_matmul_1_readvariableop_resource: f
Xdense_tfp_2_independentdeterministic_sample_deterministic_sample_readvariableop_resource:�
�dense_tfp_2_kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3133986�
�dense_tfp_2_kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xG
5output_normal_sample_softplus_readvariableop_resource:9
'output_matmul_1_readvariableop_resource:a
Soutput_independentdeterministic_sample_deterministic_sample_readvariableop_resource:�
�output_kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134121�
�output_kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1

identity_2

identity_3��Odense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp��dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp��dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�#dense_tfp_1/MatMul_1/ReadVariableOp�1dense_tfp_1/Normal/sample/Softplus/ReadVariableOp�Odense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp��dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp��dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�#dense_tfp_2/MatMul_1/ReadVariableOp�1dense_tfp_2/Normal/sample/Softplus/ReadVariableOp�Joutput/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp��output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp��output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�output/MatMul_1/ReadVariableOp�,output/Normal/sample/Softplus/ReadVariableOpw
&dense_tfp_1/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"�       a
dense_tfp_1/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_tfp_1/zeros_likeFill/dense_tfp_1/zeros_like/shape_as_tensor:output:0%dense_tfp_1/zeros_like/Const:output:0*
T0*
_output_shapes
:	� i
&dense_tfp_1/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
1dense_tfp_1/Normal/sample/Softplus/ReadVariableOpReadVariableOp:dense_tfp_1_normal_sample_softplus_readvariableop_resource*
_output_shapes
:	� *
dtype0�
"dense_tfp_1/Normal/sample/SoftplusSoftplus9dense_tfp_1/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes
:	� d
dense_tfp_1/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
dense_tfp_1/Normal/sample/addAddV2(dense_tfp_1/Normal/sample/add/x:output:00dense_tfp_1/Normal/sample/Softplus:activations:0*
T0*
_output_shapes
:	� z
)dense_tfp_1/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"�       a
dense_tfp_1/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : w
-dense_tfp_1/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense_tfp_1/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense_tfp_1/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'dense_tfp_1/Normal/sample/strided_sliceStridedSlice2dense_tfp_1/Normal/sample/shape_as_tensor:output:06dense_tfp_1/Normal/sample/strided_slice/stack:output:08dense_tfp_1/Normal/sample/strided_slice/stack_1:output:08dense_tfp_1/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask|
+dense_tfp_1/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"�       c
!dense_tfp_1/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : y
/dense_tfp_1/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_tfp_1/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_tfp_1/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_tfp_1/Normal/sample/strided_slice_1StridedSlice4dense_tfp_1/Normal/sample/shape_as_tensor_1:output:08dense_tfp_1/Normal/sample/strided_slice_1/stack:output:0:dense_tfp_1/Normal/sample/strided_slice_1/stack_1:output:0:dense_tfp_1/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskm
*dense_tfp_1/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB o
,dense_tfp_1/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
'dense_tfp_1/Normal/sample/BroadcastArgsBroadcastArgs5dense_tfp_1/Normal/sample/BroadcastArgs/s0_1:output:00dense_tfp_1/Normal/sample/strided_slice:output:0*
_output_shapes
:�
)dense_tfp_1/Normal/sample/BroadcastArgs_1BroadcastArgs,dense_tfp_1/Normal/sample/BroadcastArgs:r0:02dense_tfp_1/Normal/sample/strided_slice_1:output:0*
_output_shapes
:s
)dense_tfp_1/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
%dense_tfp_1/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 dense_tfp_1/Normal/sample/concatConcatV22dense_tfp_1/Normal/sample/concat/values_0:output:0.dense_tfp_1/Normal/sample/BroadcastArgs_1:r0:0.dense_tfp_1/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:x
3dense_tfp_1/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    z
5dense_tfp_1/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Cdense_tfp_1/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal)dense_tfp_1/Normal/sample/concat:output:0*
T0*#
_output_shapes
:� *
dtype0�
2dense_tfp_1/Normal/sample/normal/random_normal/mulMulLdense_tfp_1/Normal/sample/normal/random_normal/RandomStandardNormal:output:0>dense_tfp_1/Normal/sample/normal/random_normal/stddev:output:0*
T0*#
_output_shapes
:� �
.dense_tfp_1/Normal/sample/normal/random_normalAddV26dense_tfp_1/Normal/sample/normal/random_normal/mul:z:0<dense_tfp_1/Normal/sample/normal/random_normal/mean:output:0*
T0*#
_output_shapes
:� �
dense_tfp_1/Normal/sample/mulMul2dense_tfp_1/Normal/sample/normal/random_normal:z:0!dense_tfp_1/Normal/sample/add:z:0*
T0*#
_output_shapes
:� �
dense_tfp_1/Normal/sample/add_1AddV2!dense_tfp_1/Normal/sample/mul:z:0dense_tfp_1/zeros_like:output:0*
T0*#
_output_shapes
:� x
'dense_tfp_1/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�       �
!dense_tfp_1/Normal/sample/ReshapeReshape#dense_tfp_1/Normal/sample/add_1:z:00dense_tfp_1/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes
:	� G
dense_tfp_1/ShapeShapeinputs*
T0*
_output_shapes
:i
dense_tfp_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
!dense_tfp_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������k
!dense_tfp_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
dense_tfp_1/strided_sliceStridedSlicedense_tfp_1/Shape:output:0(dense_tfp_1/strided_slice/stack:output:0*dense_tfp_1/strided_slice/stack_1:output:0*dense_tfp_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
7dense_tfp_1/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
5dense_tfp_1/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������{
5dense_tfp_1/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
1dense_tfp_1/rademacher/uniform/sanitize_seed/seedRandomUniformInt@dense_tfp_1/rademacher/uniform/sanitize_seed/seed/shape:output:0>dense_tfp_1/rademacher/uniform/sanitize_seed/seed/min:output:0>dense_tfp_1/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:}
;dense_tfp_1/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R }
;dense_tfp_1/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Tdense_tfp_1/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter:dense_tfp_1/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::}
;dense_tfp_1/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
7dense_tfp_1/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_tfp_1/Shape:output:0Zdense_tfp_1/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0^dense_tfp_1/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Ddense_tfp_1/rademacher/uniform/stateless_random_uniform/alg:output:0Ddense_tfp_1/rademacher/uniform/stateless_random_uniform/min:output:0Ddense_tfp_1/rademacher/uniform/stateless_random_uniform/max:output:0*(
_output_shapes
:����������*
dtype0	^
dense_tfp_1/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
dense_tfp_1/rademacher/mulMul%dense_tfp_1/rademacher/mul/x:output:0@dense_tfp_1/rademacher/uniform/stateless_random_uniform:output:0*
T0	*(
_output_shapes
:����������^
dense_tfp_1/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
dense_tfp_1/rademacher/subSubdense_tfp_1/rademacher/mul:z:0%dense_tfp_1/rademacher/sub/y:output:0*
T0	*(
_output_shapes
:�����������
dense_tfp_1/rademacher/CastCastdense_tfp_1/rademacher/sub:z:0*

DstT0*

SrcT0	*(
_output_shapes
:����������^
dense_tfp_1/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B : \
dense_tfp_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
dense_tfp_1/ExpandDims
ExpandDims%dense_tfp_1/ExpandDims/input:output:0#dense_tfp_1/ExpandDims/dim:output:0*
T0*
_output_shapes
:Y
dense_tfp_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_tfp_1/concatConcatV2"dense_tfp_1/strided_slice:output:0dense_tfp_1/ExpandDims:output:0 dense_tfp_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
9dense_tfp_1/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
7dense_tfp_1/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������}
7dense_tfp_1/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
3dense_tfp_1/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntBdense_tfp_1/rademacher_1/uniform/sanitize_seed/seed/shape:output:0@dense_tfp_1/rademacher_1/uniform/sanitize_seed/seed/min:output:0@dense_tfp_1/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
=dense_tfp_1/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
=dense_tfp_1/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Vdense_tfp_1/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter<dense_tfp_1/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
=dense_tfp_1/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
9dense_tfp_1/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_tfp_1/concat:output:0\dense_tfp_1/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`dense_tfp_1/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Fdense_tfp_1/rademacher_1/uniform/stateless_random_uniform/alg:output:0Fdense_tfp_1/rademacher_1/uniform/stateless_random_uniform/min:output:0Fdense_tfp_1/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:��������� *
dtype0	`
dense_tfp_1/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
dense_tfp_1/rademacher_1/mulMul'dense_tfp_1/rademacher_1/mul/x:output:0Bdense_tfp_1/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:��������� `
dense_tfp_1/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
dense_tfp_1/rademacher_1/subSub dense_tfp_1/rademacher_1/mul:z:0'dense_tfp_1/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:��������� �
dense_tfp_1/rademacher_1/CastCast dense_tfp_1/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:��������� r
dense_tfp_1/mulMulinputsdense_tfp_1/rademacher/Cast:y:0*
T0*(
_output_shapes
:�����������
dense_tfp_1/MatMulMatMuldense_tfp_1/mul:z:0*dense_tfp_1/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:��������� �
dense_tfp_1/mul_1Muldense_tfp_1/MatMul:product:0!dense_tfp_1/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:��������� �
#dense_tfp_1/MatMul_1/ReadVariableOpReadVariableOp,dense_tfp_1_matmul_1_readvariableop_resource*
_output_shapes
:	� *
dtype0�
dense_tfp_1/MatMul_1MatMulinputs+dense_tfp_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_tfp_1/addAddV2dense_tfp_1/MatMul_1:product:0dense_tfp_1/mul_1:z:0*
T0*'
_output_shapes
:��������� {
8dense_tfp_1/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
Mdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :�
^dense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:�
Odense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOpXdense_tfp_1_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
: *
dtype0�
Pdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB: �
Fdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
Tdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Vdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Vdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Ndense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSliceYdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0]dense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0_dense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0_dense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
Qdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB �
Sdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
Ndense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgs\dense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0Wdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:�
Pdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:�
Pdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB �
Ldense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Gdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2Ydense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Sdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0Ydense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Udense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ldense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastToWdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Pdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

: �
Ndense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       �
Hdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeUdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0Wdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

: �
9dense_tfp_1/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB: �
3dense_tfp_1/IndependentDeterministic/sample/ReshapeReshapeQdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Bdense_tfp_1/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
: �
dense_tfp_1/BiasAddBiasAdddense_tfp_1/add:z:0<dense_tfp_1/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:��������� h
dense_tfp_1/ReluReludense_tfp_1/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp:dense_tfp_1_normal_sample_softplus_readvariableop_resource*
_output_shapes
:	� *
dtype0�
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplus�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLog�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Log�dense_tfp_1_kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3133851*
T0*
_output_shapes
: �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSub�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp,dense_tfp_1_matmul_1_readvariableop_resource*
_output_shapes
:	� *
dtype0�
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDiv�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0�dense_tfp_1_kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3133851*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDiv�dense_tfp_1_kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x�dense_tfp_1_kullbackleibler_independentnormal_constructed_at_dense_tfp_1_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3133851*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifference�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mul�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mul�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Sub�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes
:	� �
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"���������
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSum�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_tfp_1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 * آE�
dense_tfp_1/truedivRealDiv�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_tfp_1/truediv/y:output:0*
T0*
_output_shapes
: c
dense_tfp_1/divergence_kernelIdentitydense_tfp_1/truediv:z:0*
T0*
_output_shapes
: k
dense_tfp_2/zeros_likeConst*
_output_shapes

: *
dtype0*
valueB *    i
&dense_tfp_2/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
1dense_tfp_2/Normal/sample/Softplus/ReadVariableOpReadVariableOp:dense_tfp_2_normal_sample_softplus_readvariableop_resource*
_output_shapes

: *
dtype0�
"dense_tfp_2/Normal/sample/SoftplusSoftplus9dense_tfp_2/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

: d
dense_tfp_2/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
dense_tfp_2/Normal/sample/addAddV2(dense_tfp_2/Normal/sample/add/x:output:00dense_tfp_2/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

: z
)dense_tfp_2/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"       a
dense_tfp_2/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : w
-dense_tfp_2/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense_tfp_2/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense_tfp_2/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'dense_tfp_2/Normal/sample/strided_sliceStridedSlice2dense_tfp_2/Normal/sample/shape_as_tensor:output:06dense_tfp_2/Normal/sample/strided_slice/stack:output:08dense_tfp_2/Normal/sample/strided_slice/stack_1:output:08dense_tfp_2/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask|
+dense_tfp_2/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"       c
!dense_tfp_2/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : y
/dense_tfp_2/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_tfp_2/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_tfp_2/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_tfp_2/Normal/sample/strided_slice_1StridedSlice4dense_tfp_2/Normal/sample/shape_as_tensor_1:output:08dense_tfp_2/Normal/sample/strided_slice_1/stack:output:0:dense_tfp_2/Normal/sample/strided_slice_1/stack_1:output:0:dense_tfp_2/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskm
*dense_tfp_2/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB o
,dense_tfp_2/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
'dense_tfp_2/Normal/sample/BroadcastArgsBroadcastArgs5dense_tfp_2/Normal/sample/BroadcastArgs/s0_1:output:00dense_tfp_2/Normal/sample/strided_slice:output:0*
_output_shapes
:�
)dense_tfp_2/Normal/sample/BroadcastArgs_1BroadcastArgs,dense_tfp_2/Normal/sample/BroadcastArgs:r0:02dense_tfp_2/Normal/sample/strided_slice_1:output:0*
_output_shapes
:s
)dense_tfp_2/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
%dense_tfp_2/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 dense_tfp_2/Normal/sample/concatConcatV22dense_tfp_2/Normal/sample/concat/values_0:output:0.dense_tfp_2/Normal/sample/BroadcastArgs_1:r0:0.dense_tfp_2/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:x
3dense_tfp_2/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    z
5dense_tfp_2/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Cdense_tfp_2/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal)dense_tfp_2/Normal/sample/concat:output:0*
T0*"
_output_shapes
: *
dtype0�
2dense_tfp_2/Normal/sample/normal/random_normal/mulMulLdense_tfp_2/Normal/sample/normal/random_normal/RandomStandardNormal:output:0>dense_tfp_2/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
: �
.dense_tfp_2/Normal/sample/normal/random_normalAddV26dense_tfp_2/Normal/sample/normal/random_normal/mul:z:0<dense_tfp_2/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
: �
dense_tfp_2/Normal/sample/mulMul2dense_tfp_2/Normal/sample/normal/random_normal:z:0!dense_tfp_2/Normal/sample/add:z:0*
T0*"
_output_shapes
: �
dense_tfp_2/Normal/sample/add_1AddV2!dense_tfp_2/Normal/sample/mul:z:0dense_tfp_2/zeros_like:output:0*
T0*"
_output_shapes
: x
'dense_tfp_2/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       �
!dense_tfp_2/Normal/sample/ReshapeReshape#dense_tfp_2/Normal/sample/add_1:z:00dense_tfp_2/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

: _
dense_tfp_2/ShapeShapedense_tfp_1/Relu:activations:0*
T0*
_output_shapes
:i
dense_tfp_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
!dense_tfp_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������k
!dense_tfp_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
dense_tfp_2/strided_sliceStridedSlicedense_tfp_2/Shape:output:0(dense_tfp_2/strided_slice/stack:output:0*dense_tfp_2/strided_slice/stack_1:output:0*dense_tfp_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
7dense_tfp_2/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
5dense_tfp_2/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������{
5dense_tfp_2/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
1dense_tfp_2/rademacher/uniform/sanitize_seed/seedRandomUniformInt@dense_tfp_2/rademacher/uniform/sanitize_seed/seed/shape:output:0>dense_tfp_2/rademacher/uniform/sanitize_seed/seed/min:output:0>dense_tfp_2/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:}
;dense_tfp_2/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R }
;dense_tfp_2/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Tdense_tfp_2/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter:dense_tfp_2/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::}
;dense_tfp_2/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
7dense_tfp_2/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_tfp_2/Shape:output:0Zdense_tfp_2/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0^dense_tfp_2/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Ddense_tfp_2/rademacher/uniform/stateless_random_uniform/alg:output:0Ddense_tfp_2/rademacher/uniform/stateless_random_uniform/min:output:0Ddense_tfp_2/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:��������� *
dtype0	^
dense_tfp_2/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
dense_tfp_2/rademacher/mulMul%dense_tfp_2/rademacher/mul/x:output:0@dense_tfp_2/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:��������� ^
dense_tfp_2/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
dense_tfp_2/rademacher/subSubdense_tfp_2/rademacher/mul:z:0%dense_tfp_2/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:��������� �
dense_tfp_2/rademacher/CastCastdense_tfp_2/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:��������� ^
dense_tfp_2/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :\
dense_tfp_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
dense_tfp_2/ExpandDims
ExpandDims%dense_tfp_2/ExpandDims/input:output:0#dense_tfp_2/ExpandDims/dim:output:0*
T0*
_output_shapes
:Y
dense_tfp_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_tfp_2/concatConcatV2"dense_tfp_2/strided_slice:output:0dense_tfp_2/ExpandDims:output:0 dense_tfp_2/concat/axis:output:0*
N*
T0*
_output_shapes
:�
9dense_tfp_2/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
7dense_tfp_2/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������}
7dense_tfp_2/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
3dense_tfp_2/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntBdense_tfp_2/rademacher_1/uniform/sanitize_seed/seed/shape:output:0@dense_tfp_2/rademacher_1/uniform/sanitize_seed/seed/min:output:0@dense_tfp_2/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
=dense_tfp_2/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
=dense_tfp_2/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Vdense_tfp_2/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter<dense_tfp_2/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
=dense_tfp_2/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
9dense_tfp_2/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_tfp_2/concat:output:0\dense_tfp_2/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`dense_tfp_2/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Fdense_tfp_2/rademacher_1/uniform/stateless_random_uniform/alg:output:0Fdense_tfp_2/rademacher_1/uniform/stateless_random_uniform/min:output:0Fdense_tfp_2/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:���������*
dtype0	`
dense_tfp_2/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
dense_tfp_2/rademacher_1/mulMul'dense_tfp_2/rademacher_1/mul/x:output:0Bdense_tfp_2/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:���������`
dense_tfp_2/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
dense_tfp_2/rademacher_1/subSub dense_tfp_2/rademacher_1/mul:z:0'dense_tfp_2/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:����������
dense_tfp_2/rademacher_1/CastCast dense_tfp_2/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:����������
dense_tfp_2/mulMuldense_tfp_1/Relu:activations:0dense_tfp_2/rademacher/Cast:y:0*
T0*'
_output_shapes
:��������� �
dense_tfp_2/MatMulMatMuldense_tfp_2/mul:z:0*dense_tfp_2/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:����������
dense_tfp_2/mul_1Muldense_tfp_2/MatMul:product:0!dense_tfp_2/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:����������
#dense_tfp_2/MatMul_1/ReadVariableOpReadVariableOp,dense_tfp_2_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_tfp_2/MatMul_1MatMuldense_tfp_1/Relu:activations:0+dense_tfp_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_tfp_2/addAddV2dense_tfp_2/MatMul_1:product:0dense_tfp_2/mul_1:z:0*
T0*'
_output_shapes
:���������{
8dense_tfp_2/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
Mdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :�
^dense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:�
Odense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOpXdense_tfp_2_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0�
Pdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:�
Fdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
Tdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Vdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Vdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Ndense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSliceYdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0]dense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0_dense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0_dense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
Qdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB �
Sdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
Ndense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgs\dense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0Wdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:�
Pdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:�
Pdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB �
Ldense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Gdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2Ydense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Sdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0Ydense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Udense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ldense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastToWdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Pdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:�
Ndense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
Hdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeUdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0Wdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:�
9dense_tfp_2/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
3dense_tfp_2/IndependentDeterministic/sample/ReshapeReshapeQdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Bdense_tfp_2/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:�
dense_tfp_2/BiasAddBiasAdddense_tfp_2/add:z:0<dense_tfp_2/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:���������h
dense_tfp_2/ReluReludense_tfp_2/BiasAdd:output:0*
T0*'
_output_shapes
:����������
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp:dense_tfp_2_normal_sample_softplus_readvariableop_resource*
_output_shapes

: *
dtype0�
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplus�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLog�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Log�dense_tfp_2_kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3133986*
T0*
_output_shapes
: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSub�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp,dense_tfp_2_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDiv�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0�dense_tfp_2_kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3133986*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDiv�dense_tfp_2_kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x�dense_tfp_2_kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3133986*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifference�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mul�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mul�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Sub�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

: �
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"���������
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSum�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_tfp_2/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 * آE�
dense_tfp_2/truedivRealDiv�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_tfp_2/truediv/y:output:0*
T0*
_output_shapes
: c
dense_tfp_2/divergence_kernelIdentitydense_tfp_2/truediv:z:0*
T0*
_output_shapes
: f
output/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    d
!output/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
,output/Normal/sample/Softplus/ReadVariableOpReadVariableOp5output_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0�
output/Normal/sample/SoftplusSoftplus4output/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:_
output/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
output/Normal/sample/addAddV2#output/Normal/sample/add/x:output:0+output/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:u
$output/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      \
output/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(output/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*output/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*output/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"output/Normal/sample/strided_sliceStridedSlice-output/Normal/sample/shape_as_tensor:output:01output/Normal/sample/strided_slice/stack:output:03output/Normal/sample/strided_slice/stack_1:output:03output/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskw
&output/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      ^
output/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : t
*output/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,output/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,output/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$output/Normal/sample/strided_slice_1StridedSlice/output/Normal/sample/shape_as_tensor_1:output:03output/Normal/sample/strided_slice_1/stack:output:05output/Normal/sample/strided_slice_1/stack_1:output:05output/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%output/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'output/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
"output/Normal/sample/BroadcastArgsBroadcastArgs0output/Normal/sample/BroadcastArgs/s0_1:output:0+output/Normal/sample/strided_slice:output:0*
_output_shapes
:�
$output/Normal/sample/BroadcastArgs_1BroadcastArgs'output/Normal/sample/BroadcastArgs:r0:0-output/Normal/sample/strided_slice_1:output:0*
_output_shapes
:n
$output/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:b
 output/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
output/Normal/sample/concatConcatV2-output/Normal/sample/concat/values_0:output:0)output/Normal/sample/BroadcastArgs_1:r0:0)output/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:s
.output/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    u
0output/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
>output/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal$output/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0�
-output/Normal/sample/normal/random_normal/mulMulGoutput/Normal/sample/normal/random_normal/RandomStandardNormal:output:09output/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:�
)output/Normal/sample/normal/random_normalAddV21output/Normal/sample/normal/random_normal/mul:z:07output/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:�
output/Normal/sample/mulMul-output/Normal/sample/normal/random_normal:z:0output/Normal/sample/add:z:0*
T0*"
_output_shapes
:�
output/Normal/sample/add_1AddV2output/Normal/sample/mul:z:0output/zeros_like:output:0*
T0*"
_output_shapes
:s
"output/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
output/Normal/sample/ReshapeReshapeoutput/Normal/sample/add_1:z:0+output/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:Z
output/ShapeShapedense_tfp_2/Relu:activations:0*
T0*
_output_shapes
:d
output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������f
output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
output/strided_sliceStridedSliceoutput/Shape:output:0#output/strided_slice/stack:output:0%output/strided_slice/stack_1:output:0%output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask|
2output/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:{
0output/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������v
0output/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
,output/rademacher/uniform/sanitize_seed/seedRandomUniformInt;output/rademacher/uniform/sanitize_seed/seed/shape:output:09output/rademacher/uniform/sanitize_seed/seed/min:output:09output/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:x
6output/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R x
6output/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Ooutput/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter5output/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::x
6output/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
2output/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2output/Shape:output:0Uoutput/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Youtput/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0?output/rademacher/uniform/stateless_random_uniform/alg:output:0?output/rademacher/uniform/stateless_random_uniform/min:output:0?output/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:���������*
dtype0	Y
output/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
output/rademacher/mulMul output/rademacher/mul/x:output:0;output/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:���������Y
output/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
output/rademacher/subSuboutput/rademacher/mul:z:0 output/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:���������z
output/rademacher/CastCastoutput/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:���������Y
output/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :W
output/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
output/ExpandDims
ExpandDims output/ExpandDims/input:output:0output/ExpandDims/dim:output:0*
T0*
_output_shapes
:T
output/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
output/concatConcatV2output/strided_slice:output:0output/ExpandDims:output:0output/concat/axis:output:0*
N*
T0*
_output_shapes
:~
4output/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:}
2output/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������x
2output/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
.output/rademacher_1/uniform/sanitize_seed/seedRandomUniformInt=output/rademacher_1/uniform/sanitize_seed/seed/shape:output:0;output/rademacher_1/uniform/sanitize_seed/seed/min:output:0;output/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:z
8output/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R z
8output/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Qoutput/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter7output/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::z
8output/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
4output/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2output/concat:output:0Woutput/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0[output/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Aoutput/rademacher_1/uniform/stateless_random_uniform/alg:output:0Aoutput/rademacher_1/uniform/stateless_random_uniform/min:output:0Aoutput/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:���������*
dtype0	[
output/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
output/rademacher_1/mulMul"output/rademacher_1/mul/x:output:0=output/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:���������[
output/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
output/rademacher_1/subSuboutput/rademacher_1/mul:z:0"output/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:���������~
output/rademacher_1/CastCastoutput/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:���������

output/mulMuldense_tfp_2/Relu:activations:0output/rademacher/Cast:y:0*
T0*'
_output_shapes
:����������
output/MatMulMatMuloutput/mul:z:0%output/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:���������|
output/mul_1Muloutput/MatMul:product:0output/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:����������
output/MatMul_1/ReadVariableOpReadVariableOp'output_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
output/MatMul_1MatMuldense_tfp_2/Relu:activations:0&output/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r

output/addAddV2output/MatMul_1:product:0output/mul_1:z:0*
T0*'
_output_shapes
:���������v
3output/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
Houtput/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :�
Youtput/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:�
Joutput/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOpSoutput_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0�
Koutput/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:�
Aoutput/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
Ooutput/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Qoutput/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Qoutput/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Ioutput/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSliceToutput/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0Xoutput/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0Zoutput/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0Zoutput/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
Loutput/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB �
Noutput/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
Ioutput/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsWoutput/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0Routput/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:�
Koutput/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:�
Koutput/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB �
Goutput/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Boutput/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2Toutput/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Noutput/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0Toutput/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Poutput/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Goutput/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastToRoutput/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Koutput/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:�
Ioutput/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
Coutput/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapePoutput/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0Routput/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:~
4output/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
.output/IndependentDeterministic/sample/ReshapeReshapeLoutput/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0=output/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:�
output/BiasAddBiasAddoutput/add:z:07output/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:���������d
output/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:����������
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp5output_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplus�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLog�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Log�output_kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134121*
T0*
_output_shapes
: �
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSub�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp'output_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDiv�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0�output_kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134121*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDiv�output_kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x�output_kullbackleibler_independentnormal_constructed_at_output_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3134121*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifference�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mul�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mul�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Sub�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"���������
xoutput/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSum�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: U
output/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 * آE�
output/truedivRealDiv�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0output/truediv/y:output:0*
T0*
_output_shapes
: Y
output/divergence_kernelIdentityoutput/truediv:z:0*
T0*
_output_shapes
: g
IdentityIdentityoutput/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������f

Identity_1Identity&dense_tfp_1/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: f

Identity_2Identity&dense_tfp_2/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: a

Identity_3Identity!output/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOpP^dense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp�^dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�^dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp$^dense_tfp_1/MatMul_1/ReadVariableOp2^dense_tfp_1/Normal/sample/Softplus/ReadVariableOpP^dense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp�^dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�^dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp$^dense_tfp_2/MatMul_1/ReadVariableOp2^dense_tfp_2/Normal/sample/Softplus/ReadVariableOpK^output/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp�^output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�^output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^output/MatMul_1/ReadVariableOp-^output/Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������: : : : :	� : : : : : : : : : :2�
Odense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpOdense_tfp_1/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2�
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2�
�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�dense_tfp_1/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_1/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2J
#dense_tfp_1/MatMul_1/ReadVariableOp#dense_tfp_1/MatMul_1/ReadVariableOp2f
1dense_tfp_1/Normal/sample/Softplus/ReadVariableOp1dense_tfp_1/Normal/sample/Softplus/ReadVariableOp2�
Odense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpOdense_tfp_2/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2�
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2�
�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�dense_tfp_2/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2J
#dense_tfp_2/MatMul_1/ReadVariableOp#dense_tfp_2/MatMul_1/ReadVariableOp2f
1dense_tfp_2/Normal/sample/Softplus/ReadVariableOp1dense_tfp_2/Normal/sample/Softplus/ReadVariableOp2�
Joutput/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpJoutput/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2�
�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�output/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_output/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2@
output/MatMul_1/ReadVariableOpoutput/MatMul_1/ReadVariableOp2\
,output/Normal/sample/Softplus/ReadVariableOp,output/Normal/sample/Softplus/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:

_output_shapes
: :%!

_output_shapes
:	� :	

_output_shapes
: :$
 

_output_shapes

: :

_output_shapes
: :$ 

_output_shapes

:
��
�

H__inference_dense_tfp_2_layer_call_and_return_conditional_losses_3133124

inputs@
.normal_sample_softplus_readvariableop_resource: 2
 matmul_1_readvariableop_resource: u
gindependentdeterministic_constructed_at_dense_tfp_2_sample_deterministic_sample_readvariableop_resource:�
�kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3133094�
�kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1��^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReadVariableOp��KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp��KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�MatMul_1/ReadVariableOp�%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

: *
dtype0*
valueB *    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

: *
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

: X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

: n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"       U
Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : k
!Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Normal/sample/strided_sliceStridedSlice&Normal/sample/shape_as_tensor:output:0*Normal/sample/strided_slice/stack:output:0,Normal/sample/strided_slice/stack_1:output:0,Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"       W
Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : m
#Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Normal/sample/strided_slice_1StridedSlice(Normal/sample/shape_as_tensor_1:output:0,Normal/sample/strided_slice_1/stack:output:0.Normal/sample/strided_slice_1/stack_1:output:0.Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maska
Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB c
 Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
Normal/sample/BroadcastArgsBroadcastArgs)Normal/sample/BroadcastArgs/s0_1:output:0$Normal/sample/strided_slice:output:0*
_output_shapes
:�
Normal/sample/BroadcastArgs_1BroadcastArgs Normal/sample/BroadcastArgs:r0:0&Normal/sample/strided_slice_1:output:0*
_output_shapes
:g
Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:[
Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Normal/sample/concatConcatV2&Normal/sample/concat/values_0:output:0"Normal/sample/BroadcastArgs_1:r0:0"Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:l
'Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    n
)Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
7Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormalNormal/sample/concat:output:0*
T0*"
_output_shapes
: *
dtype0�
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
: �
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
: �
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
: u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
: l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       �
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

: ;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_masku
+rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:t
)rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������o
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
%rademacher/uniform/sanitize_seed/seedRandomUniformInt4rademacher/uniform/sanitize_seed/seed/shape:output:02rademacher/uniform/sanitize_seed/seed/min:output:02rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:q
/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R q
/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:��������� *
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:��������� R
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:��������� l
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:��������� R
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsExpandDims/input:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2strided_slice:output:0ExpandDims:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
-rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:v
+rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
���������q
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :�����
'rademacher_1/uniform/sanitize_seed/seedRandomUniformInt6rademacher_1/uniform/sanitize_seed/seed/shape:output:04rademacher_1/uniform/sanitize_seed/seed/min:output:04rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:s
1rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R s
1rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R�
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :�
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:���������*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R�
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:���������T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:���������p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:���������Y
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:��������� k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:���������g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:���������x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:����������
GIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
\IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :�
mIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:�
^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReadVariableOpReadVariableOpgindependentdeterministic_constructed_at_dense_tfp_2_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0�
_IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:�
UIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
cIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
eIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
eIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
]IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_sliceStridedSlicehIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/shape_as_tensor:output:0lIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice/stack:output:0nIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice/stack_1:output:0nIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
`IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB �
bIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
]IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastArgsBroadcastArgskIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0fIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:�
_IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:�
_IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB �
[IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
VIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concatConcatV2hIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat/values_0:output:0bIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastArgs:r0:0hIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat/values_2:output:0dIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
[IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastToBroadcastTofIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReadVariableOp:value:0_IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:�
]IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
WIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReshapeReshapedIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/BroadcastTo:output:0fIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:�
HIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
BIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/ReshapeReshape`IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/Reshape:output:0QIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Reshape/shape:output:0*
T0*
_output_shapes
:�
BiasAddBiasAddadd:z:0KIndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Reshape:output:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:����������
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

: *
dtype0�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplus�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLog�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Log�kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3133094*
T0*
_output_shapes
: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSub�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDiv�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0�kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3133094*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDiv�kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x�kullbackleibler_independentnormal_constructed_at_dense_tfp_2_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_3133094*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifference�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mul�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mul�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Sub�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

: �
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"���������
vKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSum�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 * آE�
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0truediv/y:output:0*
T0*
_output_shapes
: K
divergence_kernelIdentitytruediv:z:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp_^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReadVariableOp�^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� : : : : : 2�
^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReadVariableOp^IndependentDeterministic_CONSTRUCTED_AT_dense_tfp_2/sample/Deterministic/sample/ReadVariableOp2�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2�
�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp�KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_tfp_2/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

: 
�
�
,__inference_sequential_layer_call_fn_3133701

inputs
unknown:	� 
	unknown_0:	� 
	unknown_1: 
	unknown_2
	unknown_3
	unknown_4: 
	unknown_5: 
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:���������: : : *+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_3133294o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������: : : : :	� : : : : : : : : : :22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:

_output_shapes
: :%!

_output_shapes
:	� :	

_output_shapes
: :$
 

_output_shapes

: :

_output_shapes
: :$ 

_output_shapes

:
�
�
G__inference_sequential_layer_call_and_return_conditional_losses_3133294

inputs&
dense_tfp_1_3132972:	� &
dense_tfp_1_3132974:	� !
dense_tfp_1_3132976: 
dense_tfp_1_3132978
dense_tfp_1_3132980%
dense_tfp_2_3133125: %
dense_tfp_2_3133127: !
dense_tfp_2_3133129:
dense_tfp_2_3133131
dense_tfp_2_3133133 
output_3133278: 
output_3133280:
output_3133282:
output_3133284
output_3133286
identity

identity_1

identity_2

identity_3��#dense_tfp_1/StatefulPartitionedCall�#dense_tfp_2/StatefulPartitionedCall�output/StatefulPartitionedCall�
#dense_tfp_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_tfp_1_3132972dense_tfp_1_3132974dense_tfp_1_3132976dense_tfp_1_3132978dense_tfp_1_3132980*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:��������� : *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_tfp_1_layer_call_and_return_conditional_losses_3132971�
#dense_tfp_2/StatefulPartitionedCallStatefulPartitionedCall,dense_tfp_1/StatefulPartitionedCall:output:0dense_tfp_2_3133125dense_tfp_2_3133127dense_tfp_2_3133129dense_tfp_2_3133131dense_tfp_2_3133133*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_tfp_2_layer_call_and_return_conditional_losses_3133124�
output/StatefulPartitionedCallStatefulPartitionedCall,dense_tfp_2/StatefulPartitionedCall:output:0output_3133278output_3133280output_3133282output_3133284output_3133286*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_3133277v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������l

Identity_1Identity,dense_tfp_1/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: l

Identity_2Identity,dense_tfp_2/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: g

Identity_3Identity'output/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: �
NoOpNoOp$^dense_tfp_1/StatefulPartitionedCall$^dense_tfp_2/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������: : : : :	� : : : : : : : : : :2J
#dense_tfp_1/StatefulPartitionedCall#dense_tfp_1/StatefulPartitionedCall2J
#dense_tfp_2/StatefulPartitionedCall#dense_tfp_2/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:

_output_shapes
: :%!

_output_shapes
:	� :	

_output_shapes
: :$
 

_output_shapes

: :

_output_shapes
: :$ 

_output_shapes

:
�
�
G__inference_sequential_layer_call_and_return_conditional_losses_3133464

inputs&
dense_tfp_1_3133424:	� &
dense_tfp_1_3133426:	� !
dense_tfp_1_3133428: 
dense_tfp_1_3133430
dense_tfp_1_3133432%
dense_tfp_2_3133436: %
dense_tfp_2_3133438: !
dense_tfp_2_3133440:
dense_tfp_2_3133442
dense_tfp_2_3133444 
output_3133448: 
output_3133450:
output_3133452:
output_3133454
output_3133456
identity

identity_1

identity_2

identity_3��#dense_tfp_1/StatefulPartitionedCall�#dense_tfp_2/StatefulPartitionedCall�output/StatefulPartitionedCall�
#dense_tfp_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_tfp_1_3133424dense_tfp_1_3133426dense_tfp_1_3133428dense_tfp_1_3133430dense_tfp_1_3133432*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:��������� : *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_tfp_1_layer_call_and_return_conditional_losses_3132971�
#dense_tfp_2/StatefulPartitionedCallStatefulPartitionedCall,dense_tfp_1/StatefulPartitionedCall:output:0dense_tfp_2_3133436dense_tfp_2_3133438dense_tfp_2_3133440dense_tfp_2_3133442dense_tfp_2_3133444*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_tfp_2_layer_call_and_return_conditional_losses_3133124�
output/StatefulPartitionedCallStatefulPartitionedCall,dense_tfp_2/StatefulPartitionedCall:output:0output_3133448output_3133450output_3133452output_3133454output_3133456*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_3133277v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������l

Identity_1Identity,dense_tfp_1/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: l

Identity_2Identity,dense_tfp_2/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: g

Identity_3Identity'output/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: �
NoOpNoOp$^dense_tfp_1/StatefulPartitionedCall$^dense_tfp_2/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������: : : : :	� : : : : : : : : : :2J
#dense_tfp_1/StatefulPartitionedCall#dense_tfp_1/StatefulPartitionedCall2J
#dense_tfp_2/StatefulPartitionedCall#dense_tfp_2/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:

_output_shapes
: :%!

_output_shapes
:	� :	

_output_shapes
: :$
 

_output_shapes

: :

_output_shapes
: :$ 

_output_shapes

:"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
8
input/
serving_default_input:0����������:
output0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
kernel_posterior_loc
($kernel_posterior_untransformed_scale
kernel_posterior
kernel_prior
bias_posterior_loc
bias_posterior
kernel_posterior_affine"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 kernel_posterior_loc
(!$kernel_posterior_untransformed_scale
"kernel_posterior
#kernel_prior
$bias_posterior_loc
%bias_posterior
&kernel_posterior_affine"
_tf_keras_layer
�
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-kernel_posterior_loc
(.$kernel_posterior_untransformed_scale
/kernel_posterior
0kernel_prior
1bias_posterior_loc
2bias_posterior
3kernel_posterior_affine"
_tf_keras_layer
_
0
1
2
 3
!4
$5
-6
.7
18"
trackable_list_wrapper
_
0
1
2
 3
!4
$5
-6
.7
18"
trackable_list_wrapper
 "
trackable_list_wrapper
�
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
�
9trace_0
:trace_1
;trace_2
<trace_32�
,__inference_sequential_layer_call_fn_3133330
,__inference_sequential_layer_call_fn_3133701
,__inference_sequential_layer_call_fn_3133739
,__inference_sequential_layer_call_fn_3133538�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z9trace_0z:trace_1z;trace_2z<trace_3
�
=trace_0
>trace_1
?trace_2
@trace_32�
G__inference_sequential_layer_call_and_return_conditional_losses_3134153
G__inference_sequential_layer_call_and_return_conditional_losses_3134567
G__inference_sequential_layer_call_and_return_conditional_losses_3133581
G__inference_sequential_layer_call_and_return_conditional_losses_3133624�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z=trace_0z>trace_1z?trace_2z@trace_3
�
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14B�
"__inference__wrapped_model_3132822input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zA	capture_3zB	capture_4zC	capture_8zD	capture_9zE
capture_13zF
capture_14
�
G
_variables
H_iterations
I_learning_rate
J_index_dict
K
_momentums
L_velocities
M_update_step_xla"
experimentalOptimizer
,
Nserving_default"
signature_map
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ttrace_02�
-__inference_dense_tfp_1_layer_call_fn_3134583�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zTtrace_0
�
Utrace_02�
H__inference_dense_tfp_1_layer_call_and_return_conditional_losses_3134725�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zUtrace_0
3:1	� 2 dense_tfp_1/kernel_posterior_loc
C:A	� 20dense_tfp_1/kernel_posterior_untransformed_scale
E
V_distribution
W_graph_parents"
_generic_user_object
E
X_distribution
Y_graph_parents"
_generic_user_object
,:* 2dense_tfp_1/bias_posterior_loc
E
Z_distribution
[_graph_parents"
_generic_user_object
>

\_scale
]_graph_parents"
_generic_user_object
5
 0
!1
$2"
trackable_list_wrapper
5
 0
!1
$2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ctrace_02�
-__inference_dense_tfp_2_layer_call_fn_3134741�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zctrace_0
�
dtrace_02�
H__inference_dense_tfp_2_layer_call_and_return_conditional_losses_3134881�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zdtrace_0
2:0 2 dense_tfp_2/kernel_posterior_loc
B:@ 20dense_tfp_2/kernel_posterior_untransformed_scale
E
e_distribution
f_graph_parents"
_generic_user_object
E
g_distribution
h_graph_parents"
_generic_user_object
,:*2dense_tfp_2/bias_posterior_loc
E
i_distribution
j_graph_parents"
_generic_user_object
>

k_scale
l_graph_parents"
_generic_user_object
5
-0
.1
12"
trackable_list_wrapper
5
-0
.1
12"
trackable_list_wrapper
 "
trackable_list_wrapper
�
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
�
rtrace_02�
(__inference_output_layer_call_fn_3134897�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zrtrace_0
�
strace_02�
C__inference_output_layer_call_and_return_conditional_losses_3135037�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zstrace_0
-:+2output/kernel_posterior_loc
=:;2+output/kernel_posterior_untransformed_scale
E
t_distribution
u_graph_parents"
_generic_user_object
E
v_distribution
w_graph_parents"
_generic_user_object
':%2output/bias_posterior_loc
E
x_distribution
y_graph_parents"
_generic_user_object
>

z_scale
{_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14B�
,__inference_sequential_layer_call_fn_3133330input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zA	capture_3zB	capture_4zC	capture_8zD	capture_9zE
capture_13zF
capture_14
�
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14B�
,__inference_sequential_layer_call_fn_3133701inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zA	capture_3zB	capture_4zC	capture_8zD	capture_9zE
capture_13zF
capture_14
�
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14B�
,__inference_sequential_layer_call_fn_3133739inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zA	capture_3zB	capture_4zC	capture_8zD	capture_9zE
capture_13zF
capture_14
�
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14B�
,__inference_sequential_layer_call_fn_3133538input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zA	capture_3zB	capture_4zC	capture_8zD	capture_9zE
capture_13zF
capture_14
�
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14B�
G__inference_sequential_layer_call_and_return_conditional_losses_3134153inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zA	capture_3zB	capture_4zC	capture_8zD	capture_9zE
capture_13zF
capture_14
�
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14B�
G__inference_sequential_layer_call_and_return_conditional_losses_3134567inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zA	capture_3zB	capture_4zC	capture_8zD	capture_9zE
capture_13zF
capture_14
�
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14B�
G__inference_sequential_layer_call_and_return_conditional_losses_3133581input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zA	capture_3zB	capture_4zC	capture_8zD	capture_9zE
capture_13zF
capture_14
�
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14B�
G__inference_sequential_layer_call_and_return_conditional_losses_3133624input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zA	capture_3zB	capture_4zC	capture_8zD	capture_9zE
capture_13zF
capture_14
!J	
Const_5jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
!J	
Const_3jtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
J
Constjtf.TrackableConstant
�
H0
~1
2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
g
~0
�1
�2
�3
�4
�5
�6
�7
�8"
trackable_list_wrapper
g
0
�1
�2
�3
�4
�5
�6
�7
�8"
trackable_list_wrapper
�2��
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�
A	capture_3
B	capture_4
C	capture_8
D	capture_9
E
capture_13
F
capture_14B�
%__inference_signature_wrapper_3133663input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zA	capture_3zB	capture_4zC	capture_8zD	capture_9zE
capture_13zF
capture_14
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
�
A	capture_3
B	capture_4B�
-__inference_dense_tfp_1_layer_call_fn_3134583inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zA	capture_3zB	capture_4
�
A	capture_3
B	capture_4B�
H__inference_dense_tfp_1_layer_call_and_return_conditional_losses_3134725inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zA	capture_3zB	capture_4
I
_loc

\_scale
�_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
3
�_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
=
_loc
�_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
9
_pretransformed_input"
_generic_user_object
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
�
C	capture_3
D	capture_4B�
-__inference_dense_tfp_2_layer_call_fn_3134741inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zC	capture_3zD	capture_4
�
C	capture_3
D	capture_4B�
H__inference_dense_tfp_2_layer_call_and_return_conditional_losses_3134881inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zC	capture_3zD	capture_4
I
 _loc

k_scale
�_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
3
�_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
=
$_loc
�_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
9
!_pretransformed_input"
_generic_user_object
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
�
E	capture_3
F	capture_4B�
(__inference_output_layer_call_fn_3134897inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zE	capture_3zF	capture_4
�
E	capture_3
F	capture_4B�
C__inference_output_layer_call_and_return_conditional_losses_3135037inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zE	capture_3zF	capture_4
I
-_loc

z_scale
�_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
3
�_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
=
1_loc
�_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
9
._pretransformed_input"
_generic_user_object
 "
trackable_list_wrapper
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
8:6	� 2'Adam/m/dense_tfp_1/kernel_posterior_loc
8:6	� 2'Adam/v/dense_tfp_1/kernel_posterior_loc
H:F	� 27Adam/m/dense_tfp_1/kernel_posterior_untransformed_scale
H:F	� 27Adam/v/dense_tfp_1/kernel_posterior_untransformed_scale
1:/ 2%Adam/m/dense_tfp_1/bias_posterior_loc
1:/ 2%Adam/v/dense_tfp_1/bias_posterior_loc
7:5 2'Adam/m/dense_tfp_2/kernel_posterior_loc
7:5 2'Adam/v/dense_tfp_2/kernel_posterior_loc
G:E 27Adam/m/dense_tfp_2/kernel_posterior_untransformed_scale
G:E 27Adam/v/dense_tfp_2/kernel_posterior_untransformed_scale
1:/2%Adam/m/dense_tfp_2/bias_posterior_loc
1:/2%Adam/v/dense_tfp_2/bias_posterior_loc
2:02"Adam/m/output/kernel_posterior_loc
2:02"Adam/v/output/kernel_posterior_loc
B:@22Adam/m/output/kernel_posterior_untransformed_scale
B:@22Adam/v/output/kernel_posterior_untransformed_scale
,:*2 Adam/m/output/bias_posterior_loc
,:*2 Adam/v/output/bias_posterior_loc
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
"__inference__wrapped_model_3132822sAB! $CD.-1EF/�,
%�"
 �
input����������
� "/�,
*
output �
output����������
H__inference_dense_tfp_1_layer_call_and_return_conditional_losses_3134725|AB0�-
&�#
!�
inputs����������
� "A�>
"�
tensor_0��������� 
�
�

tensor_1_0 �
-__inference_dense_tfp_1_layer_call_fn_3134583\AB0�-
&�#
!�
inputs����������
� "!�
unknown��������� �
H__inference_dense_tfp_2_layer_call_and_return_conditional_losses_3134881{! $CD/�,
%�"
 �
inputs��������� 
� "A�>
"�
tensor_0���������
�
�

tensor_1_0 �
-__inference_dense_tfp_2_layer_call_fn_3134741[! $CD/�,
%�"
 �
inputs��������� 
� "!�
unknown����������
C__inference_output_layer_call_and_return_conditional_losses_3135037{.-1EF/�,
%�"
 �
inputs���������
� "A�>
"�
tensor_0���������
�
�

tensor_1_0 �
(__inference_output_layer_call_fn_3134897[.-1EF/�,
%�"
 �
inputs���������
� "!�
unknown����������
G__inference_sequential_layer_call_and_return_conditional_losses_3133581�AB! $CD.-1EF7�4
-�*
 �
input����������
p 

 
� "k�h
"�
tensor_0���������
B�?
�

tensor_1_0 
�

tensor_1_1 
�

tensor_1_2 �
G__inference_sequential_layer_call_and_return_conditional_losses_3133624�AB! $CD.-1EF7�4
-�*
 �
input����������
p

 
� "k�h
"�
tensor_0���������
B�?
�

tensor_1_0 
�

tensor_1_1 
�

tensor_1_2 �
G__inference_sequential_layer_call_and_return_conditional_losses_3134153�AB! $CD.-1EF8�5
.�+
!�
inputs����������
p 

 
� "k�h
"�
tensor_0���������
B�?
�

tensor_1_0 
�

tensor_1_1 
�

tensor_1_2 �
G__inference_sequential_layer_call_and_return_conditional_losses_3134567�AB! $CD.-1EF8�5
.�+
!�
inputs����������
p

 
� "k�h
"�
tensor_0���������
B�?
�

tensor_1_0 
�

tensor_1_1 
�

tensor_1_2 �
,__inference_sequential_layer_call_fn_3133330mAB! $CD.-1EF7�4
-�*
 �
input����������
p 

 
� "!�
unknown����������
,__inference_sequential_layer_call_fn_3133538mAB! $CD.-1EF7�4
-�*
 �
input����������
p

 
� "!�
unknown����������
,__inference_sequential_layer_call_fn_3133701nAB! $CD.-1EF8�5
.�+
!�
inputs����������
p 

 
� "!�
unknown����������
,__inference_sequential_layer_call_fn_3133739nAB! $CD.-1EF8�5
.�+
!�
inputs����������
p

 
� "!�
unknown����������
%__inference_signature_wrapper_3133663|AB! $CD.-1EF8�5
� 
.�+
)
input �
input����������"/�,
*
output �
output���������