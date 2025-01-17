��
��
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
�
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
�
DepthwiseConv2dNative

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)",
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
�
ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
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
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.12v2.10.0-76-gfdfc646704c8��
�
!cond_1/Adam/decoder_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!cond_1/Adam/decoder_output/bias/v
�
5cond_1/Adam/decoder_output/bias/v/Read/ReadVariableOpReadVariableOp!cond_1/Adam/decoder_output/bias/v*
_output_shapes
:*
dtype0
�
#cond_1/Adam/decoder_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#cond_1/Adam/decoder_output/kernel/v
�
7cond_1/Adam/decoder_output/kernel/v/Read/ReadVariableOpReadVariableOp#cond_1/Adam/decoder_output/kernel/v*&
_output_shapes
: *
dtype0
�
cond_1/Adam/conv2d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namecond_1/Adam/conv2d_8/bias/v
�
/cond_1/Adam/conv2d_8/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_8/bias/v*
_output_shapes
: *
dtype0
�
cond_1/Adam/conv2d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *.
shared_namecond_1/Adam/conv2d_8/kernel/v
�
1cond_1/Adam/conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_8/kernel/v*&
_output_shapes
:  *
dtype0
�
cond_1/Adam/conv2d_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namecond_1/Adam/conv2d_7/bias/v
�
/cond_1/Adam/conv2d_7/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_7/bias/v*
_output_shapes
: *
dtype0
�
cond_1/Adam/conv2d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *.
shared_namecond_1/Adam/conv2d_7/kernel/v
�
1cond_1/Adam/conv2d_7/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_7/kernel/v*&
_output_shapes
:  *
dtype0
�
cond_1/Adam/conv2d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namecond_1/Adam/conv2d_6/bias/v
�
/cond_1/Adam/conv2d_6/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_6/bias/v*
_output_shapes
: *
dtype0
�
cond_1/Adam/conv2d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *.
shared_namecond_1/Adam/conv2d_6/kernel/v
�
1cond_1/Adam/conv2d_6/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_6/kernel/v*&
_output_shapes
:  *
dtype0
�
cond_1/Adam/conv2d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namecond_1/Adam/conv2d_5/bias/v
�
/cond_1/Adam/conv2d_5/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_5/bias/v*
_output_shapes
: *
dtype0
�
cond_1/Adam/conv2d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namecond_1/Adam/conv2d_5/kernel/v
�
1cond_1/Adam/conv2d_5/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_5/kernel/v*&
_output_shapes
: *
dtype0
�
 cond_1/Adam/decoder_input/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" cond_1/Adam/decoder_input/bias/v
�
4cond_1/Adam/decoder_input/bias/v/Read/ReadVariableOpReadVariableOp cond_1/Adam/decoder_input/bias/v*
_output_shapes
:*
dtype0
�
"cond_1/Adam/decoder_input/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"cond_1/Adam/decoder_input/kernel/v
�
6cond_1/Adam/decoder_input/kernel/v/Read/ReadVariableOpReadVariableOp"cond_1/Adam/decoder_input/kernel/v*&
_output_shapes
:*
dtype0
�
!cond_1/Adam/encoder_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!cond_1/Adam/encoder_output/bias/v
�
5cond_1/Adam/encoder_output/bias/v/Read/ReadVariableOpReadVariableOp!cond_1/Adam/encoder_output/bias/v*
_output_shapes
:*
dtype0
�
#cond_1/Adam/encoder_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#cond_1/Adam/encoder_output/kernel/v
�
7cond_1/Adam/encoder_output/kernel/v/Read/ReadVariableOpReadVariableOp#cond_1/Adam/encoder_output/kernel/v*&
_output_shapes
:*
dtype0
�
cond_1/Adam/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namecond_1/Adam/conv2d_4/bias/v
�
/cond_1/Adam/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_4/bias/v*
_output_shapes
:*
dtype0
�
cond_1/Adam/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namecond_1/Adam/conv2d_4/kernel/v
�
1cond_1/Adam/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_4/kernel/v*&
_output_shapes
:*
dtype0
�
%cond_1/Adam/depthwise_conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%cond_1/Adam/depthwise_conv2d_2/bias/v
�
9cond_1/Adam/depthwise_conv2d_2/bias/v/Read/ReadVariableOpReadVariableOp%cond_1/Adam/depthwise_conv2d_2/bias/v*
_output_shapes
:*
dtype0
�
1cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/v
�
Econd_1/Adam/depthwise_conv2d_2/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp1cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/v*&
_output_shapes
:*
dtype0
�
!cond_1/Adam/decoder_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!cond_1/Adam/decoder_output/bias/m
�
5cond_1/Adam/decoder_output/bias/m/Read/ReadVariableOpReadVariableOp!cond_1/Adam/decoder_output/bias/m*
_output_shapes
:*
dtype0
�
#cond_1/Adam/decoder_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#cond_1/Adam/decoder_output/kernel/m
�
7cond_1/Adam/decoder_output/kernel/m/Read/ReadVariableOpReadVariableOp#cond_1/Adam/decoder_output/kernel/m*&
_output_shapes
: *
dtype0
�
cond_1/Adam/conv2d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namecond_1/Adam/conv2d_8/bias/m
�
/cond_1/Adam/conv2d_8/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_8/bias/m*
_output_shapes
: *
dtype0
�
cond_1/Adam/conv2d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *.
shared_namecond_1/Adam/conv2d_8/kernel/m
�
1cond_1/Adam/conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_8/kernel/m*&
_output_shapes
:  *
dtype0
�
cond_1/Adam/conv2d_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namecond_1/Adam/conv2d_7/bias/m
�
/cond_1/Adam/conv2d_7/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_7/bias/m*
_output_shapes
: *
dtype0
�
cond_1/Adam/conv2d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *.
shared_namecond_1/Adam/conv2d_7/kernel/m
�
1cond_1/Adam/conv2d_7/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_7/kernel/m*&
_output_shapes
:  *
dtype0
�
cond_1/Adam/conv2d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namecond_1/Adam/conv2d_6/bias/m
�
/cond_1/Adam/conv2d_6/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_6/bias/m*
_output_shapes
: *
dtype0
�
cond_1/Adam/conv2d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *.
shared_namecond_1/Adam/conv2d_6/kernel/m
�
1cond_1/Adam/conv2d_6/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_6/kernel/m*&
_output_shapes
:  *
dtype0
�
cond_1/Adam/conv2d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namecond_1/Adam/conv2d_5/bias/m
�
/cond_1/Adam/conv2d_5/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_5/bias/m*
_output_shapes
: *
dtype0
�
cond_1/Adam/conv2d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namecond_1/Adam/conv2d_5/kernel/m
�
1cond_1/Adam/conv2d_5/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_5/kernel/m*&
_output_shapes
: *
dtype0
�
 cond_1/Adam/decoder_input/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" cond_1/Adam/decoder_input/bias/m
�
4cond_1/Adam/decoder_input/bias/m/Read/ReadVariableOpReadVariableOp cond_1/Adam/decoder_input/bias/m*
_output_shapes
:*
dtype0
�
"cond_1/Adam/decoder_input/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"cond_1/Adam/decoder_input/kernel/m
�
6cond_1/Adam/decoder_input/kernel/m/Read/ReadVariableOpReadVariableOp"cond_1/Adam/decoder_input/kernel/m*&
_output_shapes
:*
dtype0
�
!cond_1/Adam/encoder_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!cond_1/Adam/encoder_output/bias/m
�
5cond_1/Adam/encoder_output/bias/m/Read/ReadVariableOpReadVariableOp!cond_1/Adam/encoder_output/bias/m*
_output_shapes
:*
dtype0
�
#cond_1/Adam/encoder_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#cond_1/Adam/encoder_output/kernel/m
�
7cond_1/Adam/encoder_output/kernel/m/Read/ReadVariableOpReadVariableOp#cond_1/Adam/encoder_output/kernel/m*&
_output_shapes
:*
dtype0
�
cond_1/Adam/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namecond_1/Adam/conv2d_4/bias/m
�
/cond_1/Adam/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_4/bias/m*
_output_shapes
:*
dtype0
�
cond_1/Adam/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namecond_1/Adam/conv2d_4/kernel/m
�
1cond_1/Adam/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_4/kernel/m*&
_output_shapes
:*
dtype0
�
%cond_1/Adam/depthwise_conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%cond_1/Adam/depthwise_conv2d_2/bias/m
�
9cond_1/Adam/depthwise_conv2d_2/bias/m/Read/ReadVariableOpReadVariableOp%cond_1/Adam/depthwise_conv2d_2/bias/m*
_output_shapes
:*
dtype0
�
1cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/m
�
Econd_1/Adam/depthwise_conv2d_2/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp1cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/m*&
_output_shapes
:*
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
h

good_stepsVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
good_steps
a
good_steps/Read/ReadVariableOpReadVariableOp
good_steps*
_output_shapes
: *
dtype0	
x
current_loss_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namecurrent_loss_scale
q
&current_loss_scale/Read/ReadVariableOpReadVariableOpcurrent_loss_scale*
_output_shapes
: *
dtype0
t
cond_1/Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *!
shared_namecond_1/Adam/iter
m
$cond_1/Adam/iter/Read/ReadVariableOpReadVariableOpcond_1/Adam/iter*
_output_shapes
: *
dtype0	
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
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
~
decoder_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namedecoder_output/bias
w
'decoder_output/bias/Read/ReadVariableOpReadVariableOpdecoder_output/bias*
_output_shapes
:*
dtype0
�
decoder_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_namedecoder_output/kernel
�
)decoder_output/kernel/Read/ReadVariableOpReadVariableOpdecoder_output/kernel*&
_output_shapes
: *
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
: *
dtype0
�
conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
: *
dtype0
�
conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
: *
dtype0
�
conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
: *
dtype0
�
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
: *
dtype0
|
decoder_input/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namedecoder_input/bias
u
&decoder_input/bias/Read/ReadVariableOpReadVariableOpdecoder_input/bias*
_output_shapes
:*
dtype0
�
decoder_input/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_namedecoder_input/kernel
�
(decoder_input/kernel/Read/ReadVariableOpReadVariableOpdecoder_input/kernel*&
_output_shapes
:*
dtype0
~
encoder_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameencoder_output/bias
w
'encoder_output/bias/Read/ReadVariableOpReadVariableOpencoder_output/bias*
_output_shapes
:*
dtype0
�
encoder_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameencoder_output/kernel
�
)encoder_output/kernel/Read/ReadVariableOpReadVariableOpencoder_output/kernel*&
_output_shapes
:*
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:*
dtype0
�
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:*
dtype0
�
depthwise_conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namedepthwise_conv2d_2/bias

+depthwise_conv2d_2/bias/Read/ReadVariableOpReadVariableOpdepthwise_conv2d_2/bias*
_output_shapes
:*
dtype0
�
#depthwise_conv2d_2/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#depthwise_conv2d_2/depthwise_kernel
�
7depthwise_conv2d_2/depthwise_kernel/Read/ReadVariableOpReadVariableOp#depthwise_conv2d_2/depthwise_kernel*&
_output_shapes
:*
dtype0
�
serving_default_input_layerPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_layer#depthwise_conv2d_2/depthwise_kerneldepthwise_conv2d_2/biasconv2d_4/kernelconv2d_4/biasencoder_output/kernelencoder_output/biasdecoder_input/kerneldecoder_input/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasdecoder_output/kerneldecoder_output/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference_signature_wrapper_8328

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer-11
layer_with_weights-7
layer-12
layer_with_weights-8
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
depthwise_kernel
bias
  _jit_compiled_convolution_op*
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
 )_jit_compiled_convolution_op*
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
 2_jit_compiled_convolution_op*
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias
 ;_jit_compiled_convolution_op*
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses* 
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias
 J_jit_compiled_convolution_op*
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses* 
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

Wkernel
Xbias
 Y_jit_compiled_convolution_op*
�
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses* 
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses

fkernel
gbias
 h_jit_compiled_convolution_op*
�
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses* 
�
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses

ukernel
vbias
 w_jit_compiled_convolution_op*
�
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias
!�_jit_compiled_convolution_op*
�
0
1
'2
(3
04
15
96
:7
H8
I9
W10
X11
f12
g13
u14
v15
~16
17*
�
0
1
'2
(3
04
15
96
:7
H8
I9
W10
X11
f12
g13
u14
v15
~16
17*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
�
loss_scale
�base_optimizer
�beta_1
�beta_2

�decay
�learning_rate
	�iterm�m�'m�(m�0m�1m�9m�:m�Hm�Im�Wm�Xm�fm�gm�um�vm�~m�m�v�v�'v�(v�0v�1v�9v�:v�Hv�Iv�Wv�Xv�fv�gv�uv�vv�~v�v�*

�serving_default* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
}w
VARIABLE_VALUE#depthwise_conv2d_2/depthwise_kernel@layer_with_weights-0/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEdepthwise_conv2d_2/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

'0
(1*

'0
(1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

00
11*

00
11*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
e_
VARIABLE_VALUEencoder_output/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEencoder_output/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

90
:1*

90
:1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
d^
VARIABLE_VALUEdecoder_input/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEdecoder_input/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

H0
I1*

H0
I1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

W0
X1*

W0
X1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

f0
g1*

f0
g1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

u0
v1*

u0
v1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

~0
1*

~0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
e_
VARIABLE_VALUEdecoder_output/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEdecoder_output/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
j
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
13*

�0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
.
�current_loss_scale
�
good_steps*
* 
KE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcond_1/Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
nh
VARIABLE_VALUEcurrent_loss_scaleBoptimizer/loss_scale/current_loss_scale/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
good_steps:optimizer/loss_scale/good_steps/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE1cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/m\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%cond_1/Adam/depthwise_conv2d_2/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_4/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEcond_1/Adam/conv2d_4/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#cond_1/Adam/encoder_output/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!cond_1/Adam/encoder_output/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"cond_1/Adam/decoder_input/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE cond_1/Adam/decoder_input/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_5/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEcond_1/Adam/conv2d_5/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_6/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEcond_1/Adam/conv2d_6/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_7/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEcond_1/Adam/conv2d_7/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_8/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEcond_1/Adam/conv2d_8/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#cond_1/Adam/decoder_output/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!cond_1/Adam/decoder_output/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE1cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/v\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%cond_1/Adam/depthwise_conv2d_2/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_4/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEcond_1/Adam/conv2d_4/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#cond_1/Adam/encoder_output/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!cond_1/Adam/encoder_output/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"cond_1/Adam/decoder_input/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE cond_1/Adam/decoder_input/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_5/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEcond_1/Adam/conv2d_5/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_6/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEcond_1/Adam/conv2d_6/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_7/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEcond_1/Adam/conv2d_7/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_8/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEcond_1/Adam/conv2d_8/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#cond_1/Adam/decoder_output/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!cond_1/Adam/decoder_output/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename7depthwise_conv2d_2/depthwise_kernel/Read/ReadVariableOp+depthwise_conv2d_2/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp)encoder_output/kernel/Read/ReadVariableOp'encoder_output/bias/Read/ReadVariableOp(decoder_input/kernel/Read/ReadVariableOp&decoder_input/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp)decoder_output/kernel/Read/ReadVariableOp'decoder_output/bias/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp$cond_1/Adam/iter/Read/ReadVariableOp&current_loss_scale/Read/ReadVariableOpgood_steps/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpEcond_1/Adam/depthwise_conv2d_2/depthwise_kernel/m/Read/ReadVariableOp9cond_1/Adam/depthwise_conv2d_2/bias/m/Read/ReadVariableOp1cond_1/Adam/conv2d_4/kernel/m/Read/ReadVariableOp/cond_1/Adam/conv2d_4/bias/m/Read/ReadVariableOp7cond_1/Adam/encoder_output/kernel/m/Read/ReadVariableOp5cond_1/Adam/encoder_output/bias/m/Read/ReadVariableOp6cond_1/Adam/decoder_input/kernel/m/Read/ReadVariableOp4cond_1/Adam/decoder_input/bias/m/Read/ReadVariableOp1cond_1/Adam/conv2d_5/kernel/m/Read/ReadVariableOp/cond_1/Adam/conv2d_5/bias/m/Read/ReadVariableOp1cond_1/Adam/conv2d_6/kernel/m/Read/ReadVariableOp/cond_1/Adam/conv2d_6/bias/m/Read/ReadVariableOp1cond_1/Adam/conv2d_7/kernel/m/Read/ReadVariableOp/cond_1/Adam/conv2d_7/bias/m/Read/ReadVariableOp1cond_1/Adam/conv2d_8/kernel/m/Read/ReadVariableOp/cond_1/Adam/conv2d_8/bias/m/Read/ReadVariableOp7cond_1/Adam/decoder_output/kernel/m/Read/ReadVariableOp5cond_1/Adam/decoder_output/bias/m/Read/ReadVariableOpEcond_1/Adam/depthwise_conv2d_2/depthwise_kernel/v/Read/ReadVariableOp9cond_1/Adam/depthwise_conv2d_2/bias/v/Read/ReadVariableOp1cond_1/Adam/conv2d_4/kernel/v/Read/ReadVariableOp/cond_1/Adam/conv2d_4/bias/v/Read/ReadVariableOp7cond_1/Adam/encoder_output/kernel/v/Read/ReadVariableOp5cond_1/Adam/encoder_output/bias/v/Read/ReadVariableOp6cond_1/Adam/decoder_input/kernel/v/Read/ReadVariableOp4cond_1/Adam/decoder_input/bias/v/Read/ReadVariableOp1cond_1/Adam/conv2d_5/kernel/v/Read/ReadVariableOp/cond_1/Adam/conv2d_5/bias/v/Read/ReadVariableOp1cond_1/Adam/conv2d_6/kernel/v/Read/ReadVariableOp/cond_1/Adam/conv2d_6/bias/v/Read/ReadVariableOp1cond_1/Adam/conv2d_7/kernel/v/Read/ReadVariableOp/cond_1/Adam/conv2d_7/bias/v/Read/ReadVariableOp1cond_1/Adam/conv2d_8/kernel/v/Read/ReadVariableOp/cond_1/Adam/conv2d_8/bias/v/Read/ReadVariableOp7cond_1/Adam/decoder_output/kernel/v/Read/ReadVariableOp5cond_1/Adam/decoder_output/bias/v/Read/ReadVariableOpConst*L
TinE
C2A		*
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
GPU2*0J 8� *&
f!R
__inference__traced_save_9092
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename#depthwise_conv2d_2/depthwise_kerneldepthwise_conv2d_2/biasconv2d_4/kernelconv2d_4/biasencoder_output/kernelencoder_output/biasdecoder_input/kerneldecoder_input/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasdecoder_output/kerneldecoder_output/biasbeta_1beta_2decaylearning_ratecond_1/Adam/itercurrent_loss_scale
good_stepstotalcount1cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/m%cond_1/Adam/depthwise_conv2d_2/bias/mcond_1/Adam/conv2d_4/kernel/mcond_1/Adam/conv2d_4/bias/m#cond_1/Adam/encoder_output/kernel/m!cond_1/Adam/encoder_output/bias/m"cond_1/Adam/decoder_input/kernel/m cond_1/Adam/decoder_input/bias/mcond_1/Adam/conv2d_5/kernel/mcond_1/Adam/conv2d_5/bias/mcond_1/Adam/conv2d_6/kernel/mcond_1/Adam/conv2d_6/bias/mcond_1/Adam/conv2d_7/kernel/mcond_1/Adam/conv2d_7/bias/mcond_1/Adam/conv2d_8/kernel/mcond_1/Adam/conv2d_8/bias/m#cond_1/Adam/decoder_output/kernel/m!cond_1/Adam/decoder_output/bias/m1cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/v%cond_1/Adam/depthwise_conv2d_2/bias/vcond_1/Adam/conv2d_4/kernel/vcond_1/Adam/conv2d_4/bias/v#cond_1/Adam/encoder_output/kernel/v!cond_1/Adam/encoder_output/bias/v"cond_1/Adam/decoder_input/kernel/v cond_1/Adam/decoder_input/bias/vcond_1/Adam/conv2d_5/kernel/vcond_1/Adam/conv2d_5/bias/vcond_1/Adam/conv2d_6/kernel/vcond_1/Adam/conv2d_6/bias/vcond_1/Adam/conv2d_7/kernel/vcond_1/Adam/conv2d_7/bias/vcond_1/Adam/conv2d_8/kernel/vcond_1/Adam/conv2d_8/bias/v#cond_1/Adam/decoder_output/kernel/v!cond_1/Adam/decoder_output/bias/v*K
TinD
B2@*
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
GPU2*0J 8� *)
f$R"
 __inference__traced_restore_9291��
�|
�
A__inference_model_1_layer_call_and_return_conditional_losses_8614

inputsN
4depthwise_conv2d_2_depthwise_readvariableop_resource:@
2depthwise_conv2d_2_biasadd_readvariableop_resource:A
'conv2d_4_conv2d_readvariableop_resource:6
(conv2d_4_biasadd_readvariableop_resource:G
-encoder_output_conv2d_readvariableop_resource:<
.encoder_output_biasadd_readvariableop_resource:F
,decoder_input_conv2d_readvariableop_resource:;
-decoder_input_biasadd_readvariableop_resource:A
'conv2d_5_conv2d_readvariableop_resource: 6
(conv2d_5_biasadd_readvariableop_resource: A
'conv2d_6_conv2d_readvariableop_resource:  6
(conv2d_6_biasadd_readvariableop_resource: A
'conv2d_7_conv2d_readvariableop_resource:  6
(conv2d_7_biasadd_readvariableop_resource: A
'conv2d_8_conv2d_readvariableop_resource:  6
(conv2d_8_biasadd_readvariableop_resource: G
-decoder_output_conv2d_readvariableop_resource: <
.decoder_output_biasadd_readvariableop_resource:
identity��conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�conv2d_5/BiasAdd/ReadVariableOp�conv2d_5/Conv2D/ReadVariableOp�conv2d_6/BiasAdd/ReadVariableOp�conv2d_6/Conv2D/ReadVariableOp�conv2d_7/BiasAdd/ReadVariableOp�conv2d_7/Conv2D/ReadVariableOp�conv2d_8/BiasAdd/ReadVariableOp�conv2d_8/Conv2D/ReadVariableOp�$decoder_input/BiasAdd/ReadVariableOp�#decoder_input/Conv2D/ReadVariableOp�%decoder_output/BiasAdd/ReadVariableOp�$decoder_output/Conv2D/ReadVariableOp�)depthwise_conv2d_2/BiasAdd/ReadVariableOp�+depthwise_conv2d_2/depthwise/ReadVariableOp�%encoder_output/BiasAdd/ReadVariableOp�$encoder_output/Conv2D/ReadVariableOpr
depthwise_conv2d_2/CastCastinputs*

DstT0*

SrcT0*1
_output_shapes
:������������
+depthwise_conv2d_2/depthwise/ReadVariableOpReadVariableOp4depthwise_conv2d_2_depthwise_readvariableop_resource*&
_output_shapes
:*
dtype0�
!depthwise_conv2d_2/depthwise/CastCast3depthwise_conv2d_2/depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:{
"depthwise_conv2d_2/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            {
*depthwise_conv2d_2/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
depthwise_conv2d_2/depthwiseDepthwiseConv2dNativedepthwise_conv2d_2/Cast:y:0%depthwise_conv2d_2/depthwise/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
)depthwise_conv2d_2/BiasAdd/ReadVariableOpReadVariableOp2depthwise_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
depthwise_conv2d_2/BiasAdd/CastCast1depthwise_conv2d_2/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
depthwise_conv2d_2/BiasAddBiasAdd%depthwise_conv2d_2/depthwise:output:0#depthwise_conv2d_2/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:����������
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_4/Conv2D/CastCast&conv2d_4/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:�
conv2d_4/Conv2DConv2D#depthwise_conv2d_2/BiasAdd:output:0conv2d_4/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0z
conv2d_4/BiasAdd/CastCast'conv2d_4/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0conv2d_4/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������j
conv2d_4/TanhTanhconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:����������
$encoder_output/Conv2D/ReadVariableOpReadVariableOp-encoder_output_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
encoder_output/Conv2D/CastCast,encoder_output/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:�
encoder_output/Conv2DConv2Dconv2d_4/Tanh:y:0encoder_output/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
%encoder_output/BiasAdd/ReadVariableOpReadVariableOp.encoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
encoder_output/BiasAdd/CastCast-encoder_output/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
encoder_output/BiasAddBiasAddencoder_output/Conv2D:output:0encoder_output/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:����������
#decoder_input/Conv2D/ReadVariableOpReadVariableOp,decoder_input_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
decoder_input/Conv2D/CastCast+decoder_input/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:�
decoder_input/Conv2DConv2Dencoder_output/BiasAdd:output:0decoder_input/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
$decoder_input/BiasAdd/ReadVariableOpReadVariableOp-decoder_input_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
decoder_input/BiasAdd/CastCast,decoder_input/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
decoder_input/BiasAddBiasAdddecoder_input/Conv2D:output:0decoder_input/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������t
decoder_input/TanhTanhdecoder_input/BiasAdd:output:0*
T0*/
_output_shapes
:���������f
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:�
,up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighbordecoder_input/Tanh:y:0up_sampling2d_3/mul:z:0*
T0*/
_output_shapes
:���������  *
half_pixel_centers(�
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_5/Conv2D/CastCast&conv2d_5/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: �
conv2d_5/Conv2DConv2D=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0conv2d_5/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0z
conv2d_5/BiasAdd/CastCast'conv2d_5/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0conv2d_5/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������   j
conv2d_5/TanhTanhconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:���������   f
up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"        h
up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_4/mulMulup_sampling2d_4/Const:output:0 up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:�
,up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_5/Tanh:y:0up_sampling2d_4/mul:z:0*
T0*/
_output_shapes
:���������@@ *
half_pixel_centers(�
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
conv2d_6/Conv2D/CastCast&conv2d_6/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
conv2d_6/Conv2DConv2D=up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0conv2d_6/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0z
conv2d_6/BiasAdd/CastCast'conv2d_6/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0conv2d_6/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@ j
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@ f
up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   h
up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_5/mulMulup_sampling2d_5/Const:output:0 up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:�
,up_sampling2d_5/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_6/Relu:activations:0up_sampling2d_5/mul:z:0*
T0*1
_output_shapes
:����������� *
half_pixel_centers(�
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
conv2d_7/Conv2D/CastCast&conv2d_7/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
conv2d_7/Conv2DConv2D=up_sampling2d_5/resize/ResizeNearestNeighbor:resized_images:0conv2d_7/Conv2D/Cast:y:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0z
conv2d_7/BiasAdd/CastCast'conv2d_7/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0conv2d_7/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:����������� l
conv2d_7/TanhTanhconv2d_7/BiasAdd:output:0*
T0*1
_output_shapes
:����������� f
up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"�   �   h
up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_6/mulMulup_sampling2d_6/Const:output:0 up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:�
,up_sampling2d_6/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_7/Tanh:y:0up_sampling2d_6/mul:z:0*
T0*1
_output_shapes
:����������� *
half_pixel_centers(�
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
conv2d_8/Conv2D/CastCast&conv2d_8/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
conv2d_8/Conv2DConv2D=up_sampling2d_6/resize/ResizeNearestNeighbor:resized_images:0conv2d_8/Conv2D/Cast:y:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0z
conv2d_8/BiasAdd/CastCast'conv2d_8/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0conv2d_8/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:����������� l
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
$decoder_output/Conv2D/ReadVariableOpReadVariableOp-decoder_output_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
decoder_output/Conv2D/CastCast,decoder_output/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: �
decoder_output/Conv2DConv2Dconv2d_8/Relu:activations:0decoder_output/Conv2D/Cast:y:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
%decoder_output/BiasAdd/ReadVariableOpReadVariableOp.decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
decoder_output/BiasAdd/CastCast-decoder_output/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
decoder_output/BiasAddBiasAdddecoder_output/Conv2D:output:0decoder_output/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:�����������~
decoder_output/SigmoidSigmoiddecoder_output/BiasAdd:output:0*
T0*1
_output_shapes
:�����������s
IdentityIdentitydecoder_output/Sigmoid:y:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp%^decoder_input/BiasAdd/ReadVariableOp$^decoder_input/Conv2D/ReadVariableOp&^decoder_output/BiasAdd/ReadVariableOp%^decoder_output/Conv2D/ReadVariableOp*^depthwise_conv2d_2/BiasAdd/ReadVariableOp,^depthwise_conv2d_2/depthwise/ReadVariableOp&^encoder_output/BiasAdd/ReadVariableOp%^encoder_output/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2L
$decoder_input/BiasAdd/ReadVariableOp$decoder_input/BiasAdd/ReadVariableOp2J
#decoder_input/Conv2D/ReadVariableOp#decoder_input/Conv2D/ReadVariableOp2N
%decoder_output/BiasAdd/ReadVariableOp%decoder_output/BiasAdd/ReadVariableOp2L
$decoder_output/Conv2D/ReadVariableOp$decoder_output/Conv2D/ReadVariableOp2V
)depthwise_conv2d_2/BiasAdd/ReadVariableOp)depthwise_conv2d_2/BiasAdd/ReadVariableOp2Z
+depthwise_conv2d_2/depthwise/ReadVariableOp+depthwise_conv2d_2/depthwise/ReadVariableOp2N
%encoder_output/BiasAdd/ReadVariableOp%encoder_output/BiasAdd/ReadVariableOp2L
$encoder_output/Conv2D/ReadVariableOp$encoder_output/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
B__inference_conv2d_8_layer_call_and_return_conditional_losses_8858

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*A
_output_shapes/
-:+��������������������������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*A
_output_shapes/
-:+��������������������������� j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+��������������������������� {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�|
�
A__inference_model_1_layer_call_and_return_conditional_losses_8512

inputsN
4depthwise_conv2d_2_depthwise_readvariableop_resource:@
2depthwise_conv2d_2_biasadd_readvariableop_resource:A
'conv2d_4_conv2d_readvariableop_resource:6
(conv2d_4_biasadd_readvariableop_resource:G
-encoder_output_conv2d_readvariableop_resource:<
.encoder_output_biasadd_readvariableop_resource:F
,decoder_input_conv2d_readvariableop_resource:;
-decoder_input_biasadd_readvariableop_resource:A
'conv2d_5_conv2d_readvariableop_resource: 6
(conv2d_5_biasadd_readvariableop_resource: A
'conv2d_6_conv2d_readvariableop_resource:  6
(conv2d_6_biasadd_readvariableop_resource: A
'conv2d_7_conv2d_readvariableop_resource:  6
(conv2d_7_biasadd_readvariableop_resource: A
'conv2d_8_conv2d_readvariableop_resource:  6
(conv2d_8_biasadd_readvariableop_resource: G
-decoder_output_conv2d_readvariableop_resource: <
.decoder_output_biasadd_readvariableop_resource:
identity��conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�conv2d_5/BiasAdd/ReadVariableOp�conv2d_5/Conv2D/ReadVariableOp�conv2d_6/BiasAdd/ReadVariableOp�conv2d_6/Conv2D/ReadVariableOp�conv2d_7/BiasAdd/ReadVariableOp�conv2d_7/Conv2D/ReadVariableOp�conv2d_8/BiasAdd/ReadVariableOp�conv2d_8/Conv2D/ReadVariableOp�$decoder_input/BiasAdd/ReadVariableOp�#decoder_input/Conv2D/ReadVariableOp�%decoder_output/BiasAdd/ReadVariableOp�$decoder_output/Conv2D/ReadVariableOp�)depthwise_conv2d_2/BiasAdd/ReadVariableOp�+depthwise_conv2d_2/depthwise/ReadVariableOp�%encoder_output/BiasAdd/ReadVariableOp�$encoder_output/Conv2D/ReadVariableOpr
depthwise_conv2d_2/CastCastinputs*

DstT0*

SrcT0*1
_output_shapes
:������������
+depthwise_conv2d_2/depthwise/ReadVariableOpReadVariableOp4depthwise_conv2d_2_depthwise_readvariableop_resource*&
_output_shapes
:*
dtype0�
!depthwise_conv2d_2/depthwise/CastCast3depthwise_conv2d_2/depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:{
"depthwise_conv2d_2/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            {
*depthwise_conv2d_2/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
depthwise_conv2d_2/depthwiseDepthwiseConv2dNativedepthwise_conv2d_2/Cast:y:0%depthwise_conv2d_2/depthwise/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
)depthwise_conv2d_2/BiasAdd/ReadVariableOpReadVariableOp2depthwise_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
depthwise_conv2d_2/BiasAdd/CastCast1depthwise_conv2d_2/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
depthwise_conv2d_2/BiasAddBiasAdd%depthwise_conv2d_2/depthwise:output:0#depthwise_conv2d_2/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:����������
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_4/Conv2D/CastCast&conv2d_4/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:�
conv2d_4/Conv2DConv2D#depthwise_conv2d_2/BiasAdd:output:0conv2d_4/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0z
conv2d_4/BiasAdd/CastCast'conv2d_4/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0conv2d_4/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������j
conv2d_4/TanhTanhconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:����������
$encoder_output/Conv2D/ReadVariableOpReadVariableOp-encoder_output_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
encoder_output/Conv2D/CastCast,encoder_output/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:�
encoder_output/Conv2DConv2Dconv2d_4/Tanh:y:0encoder_output/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
%encoder_output/BiasAdd/ReadVariableOpReadVariableOp.encoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
encoder_output/BiasAdd/CastCast-encoder_output/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
encoder_output/BiasAddBiasAddencoder_output/Conv2D:output:0encoder_output/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:����������
#decoder_input/Conv2D/ReadVariableOpReadVariableOp,decoder_input_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
decoder_input/Conv2D/CastCast+decoder_input/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:�
decoder_input/Conv2DConv2Dencoder_output/BiasAdd:output:0decoder_input/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
$decoder_input/BiasAdd/ReadVariableOpReadVariableOp-decoder_input_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
decoder_input/BiasAdd/CastCast,decoder_input/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
decoder_input/BiasAddBiasAdddecoder_input/Conv2D:output:0decoder_input/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������t
decoder_input/TanhTanhdecoder_input/BiasAdd:output:0*
T0*/
_output_shapes
:���������f
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:�
,up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighbordecoder_input/Tanh:y:0up_sampling2d_3/mul:z:0*
T0*/
_output_shapes
:���������  *
half_pixel_centers(�
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_5/Conv2D/CastCast&conv2d_5/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: �
conv2d_5/Conv2DConv2D=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0conv2d_5/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0z
conv2d_5/BiasAdd/CastCast'conv2d_5/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0conv2d_5/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������   j
conv2d_5/TanhTanhconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:���������   f
up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"        h
up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_4/mulMulup_sampling2d_4/Const:output:0 up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:�
,up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_5/Tanh:y:0up_sampling2d_4/mul:z:0*
T0*/
_output_shapes
:���������@@ *
half_pixel_centers(�
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
conv2d_6/Conv2D/CastCast&conv2d_6/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
conv2d_6/Conv2DConv2D=up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0conv2d_6/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0z
conv2d_6/BiasAdd/CastCast'conv2d_6/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0conv2d_6/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@ j
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@ f
up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   h
up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_5/mulMulup_sampling2d_5/Const:output:0 up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:�
,up_sampling2d_5/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_6/Relu:activations:0up_sampling2d_5/mul:z:0*
T0*1
_output_shapes
:����������� *
half_pixel_centers(�
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
conv2d_7/Conv2D/CastCast&conv2d_7/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
conv2d_7/Conv2DConv2D=up_sampling2d_5/resize/ResizeNearestNeighbor:resized_images:0conv2d_7/Conv2D/Cast:y:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0z
conv2d_7/BiasAdd/CastCast'conv2d_7/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0conv2d_7/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:����������� l
conv2d_7/TanhTanhconv2d_7/BiasAdd:output:0*
T0*1
_output_shapes
:����������� f
up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"�   �   h
up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_6/mulMulup_sampling2d_6/Const:output:0 up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:�
,up_sampling2d_6/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_7/Tanh:y:0up_sampling2d_6/mul:z:0*
T0*1
_output_shapes
:����������� *
half_pixel_centers(�
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
conv2d_8/Conv2D/CastCast&conv2d_8/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
conv2d_8/Conv2DConv2D=up_sampling2d_6/resize/ResizeNearestNeighbor:resized_images:0conv2d_8/Conv2D/Cast:y:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0z
conv2d_8/BiasAdd/CastCast'conv2d_8/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0conv2d_8/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:����������� l
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
$decoder_output/Conv2D/ReadVariableOpReadVariableOp-decoder_output_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
decoder_output/Conv2D/CastCast,decoder_output/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: �
decoder_output/Conv2DConv2Dconv2d_8/Relu:activations:0decoder_output/Conv2D/Cast:y:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
%decoder_output/BiasAdd/ReadVariableOpReadVariableOp.decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
decoder_output/BiasAdd/CastCast-decoder_output/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
decoder_output/BiasAddBiasAdddecoder_output/Conv2D:output:0decoder_output/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:�����������~
decoder_output/SigmoidSigmoiddecoder_output/BiasAdd:output:0*
T0*1
_output_shapes
:�����������s
IdentityIdentitydecoder_output/Sigmoid:y:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp%^decoder_input/BiasAdd/ReadVariableOp$^decoder_input/Conv2D/ReadVariableOp&^decoder_output/BiasAdd/ReadVariableOp%^decoder_output/Conv2D/ReadVariableOp*^depthwise_conv2d_2/BiasAdd/ReadVariableOp,^depthwise_conv2d_2/depthwise/ReadVariableOp&^encoder_output/BiasAdd/ReadVariableOp%^encoder_output/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2L
$decoder_input/BiasAdd/ReadVariableOp$decoder_input/BiasAdd/ReadVariableOp2J
#decoder_input/Conv2D/ReadVariableOp#decoder_input/Conv2D/ReadVariableOp2N
%decoder_output/BiasAdd/ReadVariableOp%decoder_output/BiasAdd/ReadVariableOp2L
$decoder_output/Conv2D/ReadVariableOp$decoder_output/Conv2D/ReadVariableOp2V
)depthwise_conv2d_2/BiasAdd/ReadVariableOp)depthwise_conv2d_2/BiasAdd/ReadVariableOp2Z
+depthwise_conv2d_2/depthwise/ReadVariableOp+depthwise_conv2d_2/depthwise/ReadVariableOp2N
%encoder_output/BiasAdd/ReadVariableOp%encoder_output/BiasAdd/ReadVariableOp2L
$encoder_output/Conv2D/ReadVariableOp$encoder_output/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�@
�
A__inference_model_1_layer_call_and_return_conditional_losses_8091

inputs1
depthwise_conv2d_2_8041:%
depthwise_conv2d_2_8043:'
conv2d_4_8046:
conv2d_4_8048:-
encoder_output_8051:!
encoder_output_8053:,
decoder_input_8056: 
decoder_input_8058:'
conv2d_5_8062: 
conv2d_5_8064: '
conv2d_6_8068:  
conv2d_6_8070: '
conv2d_7_8074:  
conv2d_7_8076: '
conv2d_8_8080:  
conv2d_8_8082: -
decoder_output_8085: !
decoder_output_8087:
identity�� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall�%decoder_input/StatefulPartitionedCall�&decoder_output/StatefulPartitionedCall�*depthwise_conv2d_2/StatefulPartitionedCall�&encoder_output/StatefulPartitionedCallr
depthwise_conv2d_2/CastCastinputs*

DstT0*

SrcT0*1
_output_shapes
:������������
*depthwise_conv2d_2/StatefulPartitionedCallStatefulPartitionedCalldepthwise_conv2d_2/Cast:y:0depthwise_conv2d_2_8041depthwise_conv2d_2_8043*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_7703�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall3depthwise_conv2d_2/StatefulPartitionedCall:output:0conv2d_4_8046conv2d_4_8048*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_7722�
&encoder_output/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0encoder_output_8051encoder_output_8053*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_encoder_output_layer_call_and_return_conditional_losses_7740�
%decoder_input/StatefulPartitionedCallStatefulPartitionedCall/encoder_output/StatefulPartitionedCall:output:0decoder_input_8056decoder_input_8058*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_decoder_input_layer_call_and_return_conditional_losses_7759�
up_sampling2d_3/PartitionedCallPartitionedCall.decoder_input/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_7621�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0conv2d_5_8062conv2d_5_8064*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_7779�
up_sampling2d_4/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_7640�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_4/PartitionedCall:output:0conv2d_6_8068conv2d_6_8070*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7799�
up_sampling2d_5/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_7659�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_5/PartitionedCall:output:0conv2d_7_8074conv2d_7_8076*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_7819�
up_sampling2d_6/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_7678�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_6/PartitionedCall:output:0conv2d_8_8080conv2d_8_8082*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_7839�
&decoder_output/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0decoder_output_8085decoder_output_8087*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_decoder_output_layer_call_and_return_conditional_losses_7858�
IdentityIdentity/decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall&^decoder_input/StatefulPartitionedCall'^decoder_output/StatefulPartitionedCall+^depthwise_conv2d_2/StatefulPartitionedCall'^encoder_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2N
%decoder_input/StatefulPartitionedCall%decoder_input/StatefulPartitionedCall2P
&decoder_output/StatefulPartitionedCall&decoder_output/StatefulPartitionedCall2X
*depthwise_conv2d_2/StatefulPartitionedCall*depthwise_conv2d_2/StatefulPartitionedCall2P
&encoder_output/StatefulPartitionedCall&encoder_output/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
H__inference_decoder_output_layer_call_and_return_conditional_losses_7858

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: �
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*A
_output_shapes/
-:+���������������������������p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
J
.__inference_up_sampling2d_4_layer_call_fn_8746

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_7640�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
&__inference_model_1_layer_call_fn_8171
input_layer!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7: 
	unknown_8: #
	unknown_9:  

unknown_10: $

unknown_11:  

unknown_12: $

unknown_13:  

unknown_14: $

unknown_15: 

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_8091�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_nameinput_layer
�
�
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7799

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*A
_output_shapes/
-:+��������������������������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*A
_output_shapes/
-:+��������������������������� j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+��������������������������� {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
��
�
__inference__wrapped_model_7605
input_layerV
<model_1_depthwise_conv2d_2_depthwise_readvariableop_resource:H
:model_1_depthwise_conv2d_2_biasadd_readvariableop_resource:I
/model_1_conv2d_4_conv2d_readvariableop_resource:>
0model_1_conv2d_4_biasadd_readvariableop_resource:O
5model_1_encoder_output_conv2d_readvariableop_resource:D
6model_1_encoder_output_biasadd_readvariableop_resource:N
4model_1_decoder_input_conv2d_readvariableop_resource:C
5model_1_decoder_input_biasadd_readvariableop_resource:I
/model_1_conv2d_5_conv2d_readvariableop_resource: >
0model_1_conv2d_5_biasadd_readvariableop_resource: I
/model_1_conv2d_6_conv2d_readvariableop_resource:  >
0model_1_conv2d_6_biasadd_readvariableop_resource: I
/model_1_conv2d_7_conv2d_readvariableop_resource:  >
0model_1_conv2d_7_biasadd_readvariableop_resource: I
/model_1_conv2d_8_conv2d_readvariableop_resource:  >
0model_1_conv2d_8_biasadd_readvariableop_resource: O
5model_1_decoder_output_conv2d_readvariableop_resource: D
6model_1_decoder_output_biasadd_readvariableop_resource:
identity��'model_1/conv2d_4/BiasAdd/ReadVariableOp�&model_1/conv2d_4/Conv2D/ReadVariableOp�'model_1/conv2d_5/BiasAdd/ReadVariableOp�&model_1/conv2d_5/Conv2D/ReadVariableOp�'model_1/conv2d_6/BiasAdd/ReadVariableOp�&model_1/conv2d_6/Conv2D/ReadVariableOp�'model_1/conv2d_7/BiasAdd/ReadVariableOp�&model_1/conv2d_7/Conv2D/ReadVariableOp�'model_1/conv2d_8/BiasAdd/ReadVariableOp�&model_1/conv2d_8/Conv2D/ReadVariableOp�,model_1/decoder_input/BiasAdd/ReadVariableOp�+model_1/decoder_input/Conv2D/ReadVariableOp�-model_1/decoder_output/BiasAdd/ReadVariableOp�,model_1/decoder_output/Conv2D/ReadVariableOp�1model_1/depthwise_conv2d_2/BiasAdd/ReadVariableOp�3model_1/depthwise_conv2d_2/depthwise/ReadVariableOp�-model_1/encoder_output/BiasAdd/ReadVariableOp�,model_1/encoder_output/Conv2D/ReadVariableOp
model_1/depthwise_conv2d_2/CastCastinput_layer*

DstT0*

SrcT0*1
_output_shapes
:������������
3model_1/depthwise_conv2d_2/depthwise/ReadVariableOpReadVariableOp<model_1_depthwise_conv2d_2_depthwise_readvariableop_resource*&
_output_shapes
:*
dtype0�
)model_1/depthwise_conv2d_2/depthwise/CastCast;model_1/depthwise_conv2d_2/depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:�
*model_1/depthwise_conv2d_2/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
2model_1/depthwise_conv2d_2/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
$model_1/depthwise_conv2d_2/depthwiseDepthwiseConv2dNative#model_1/depthwise_conv2d_2/Cast:y:0-model_1/depthwise_conv2d_2/depthwise/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
1model_1/depthwise_conv2d_2/BiasAdd/ReadVariableOpReadVariableOp:model_1_depthwise_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
'model_1/depthwise_conv2d_2/BiasAdd/CastCast9model_1/depthwise_conv2d_2/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
"model_1/depthwise_conv2d_2/BiasAddBiasAdd-model_1/depthwise_conv2d_2/depthwise:output:0+model_1/depthwise_conv2d_2/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:����������
&model_1/conv2d_4/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_1/conv2d_4/Conv2D/CastCast.model_1/conv2d_4/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:�
model_1/conv2d_4/Conv2DConv2D+model_1/depthwise_conv2d_2/BiasAdd:output:0 model_1/conv2d_4/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
'model_1/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/conv2d_4/BiasAdd/CastCast/model_1/conv2d_4/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
model_1/conv2d_4/BiasAddBiasAdd model_1/conv2d_4/Conv2D:output:0!model_1/conv2d_4/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������z
model_1/conv2d_4/TanhTanh!model_1/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:����������
,model_1/encoder_output/Conv2D/ReadVariableOpReadVariableOp5model_1_encoder_output_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
"model_1/encoder_output/Conv2D/CastCast4model_1/encoder_output/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:�
model_1/encoder_output/Conv2DConv2Dmodel_1/conv2d_4/Tanh:y:0&model_1/encoder_output/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
-model_1/encoder_output/BiasAdd/ReadVariableOpReadVariableOp6model_1_encoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
#model_1/encoder_output/BiasAdd/CastCast5model_1/encoder_output/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
model_1/encoder_output/BiasAddBiasAdd&model_1/encoder_output/Conv2D:output:0'model_1/encoder_output/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:����������
+model_1/decoder_input/Conv2D/ReadVariableOpReadVariableOp4model_1_decoder_input_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
!model_1/decoder_input/Conv2D/CastCast3model_1/decoder_input/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:�
model_1/decoder_input/Conv2DConv2D'model_1/encoder_output/BiasAdd:output:0%model_1/decoder_input/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
,model_1/decoder_input/BiasAdd/ReadVariableOpReadVariableOp5model_1_decoder_input_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
"model_1/decoder_input/BiasAdd/CastCast4model_1/decoder_input/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
model_1/decoder_input/BiasAddBiasAdd%model_1/decoder_input/Conv2D:output:0&model_1/decoder_input/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:����������
model_1/decoder_input/TanhTanh&model_1/decoder_input/BiasAdd:output:0*
T0*/
_output_shapes
:���������n
model_1/up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"      p
model_1/up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
model_1/up_sampling2d_3/mulMul&model_1/up_sampling2d_3/Const:output:0(model_1/up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:�
4model_1/up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighbormodel_1/decoder_input/Tanh:y:0model_1/up_sampling2d_3/mul:z:0*
T0*/
_output_shapes
:���������  *
half_pixel_centers(�
&model_1/conv2d_5/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
model_1/conv2d_5/Conv2D/CastCast.model_1/conv2d_5/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: �
model_1/conv2d_5/Conv2DConv2DEmodel_1/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0 model_1/conv2d_5/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
'model_1/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_1/conv2d_5/BiasAdd/CastCast/model_1/conv2d_5/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
model_1/conv2d_5/BiasAddBiasAdd model_1/conv2d_5/Conv2D:output:0!model_1/conv2d_5/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������   z
model_1/conv2d_5/TanhTanh!model_1/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:���������   n
model_1/up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"        p
model_1/up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
model_1/up_sampling2d_4/mulMul&model_1/up_sampling2d_4/Const:output:0(model_1/up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:�
4model_1/up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighbormodel_1/conv2d_5/Tanh:y:0model_1/up_sampling2d_4/mul:z:0*
T0*/
_output_shapes
:���������@@ *
half_pixel_centers(�
&model_1/conv2d_6/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
model_1/conv2d_6/Conv2D/CastCast.model_1/conv2d_6/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
model_1/conv2d_6/Conv2DConv2DEmodel_1/up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0 model_1/conv2d_6/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
'model_1/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_1/conv2d_6/BiasAdd/CastCast/model_1/conv2d_6/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
model_1/conv2d_6/BiasAddBiasAdd model_1/conv2d_6/Conv2D:output:0!model_1/conv2d_6/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@ z
model_1/conv2d_6/ReluRelu!model_1/conv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@ n
model_1/up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   p
model_1/up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
model_1/up_sampling2d_5/mulMul&model_1/up_sampling2d_5/Const:output:0(model_1/up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:�
4model_1/up_sampling2d_5/resize/ResizeNearestNeighborResizeNearestNeighbor#model_1/conv2d_6/Relu:activations:0model_1/up_sampling2d_5/mul:z:0*
T0*1
_output_shapes
:����������� *
half_pixel_centers(�
&model_1/conv2d_7/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
model_1/conv2d_7/Conv2D/CastCast.model_1/conv2d_7/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
model_1/conv2d_7/Conv2DConv2DEmodel_1/up_sampling2d_5/resize/ResizeNearestNeighbor:resized_images:0 model_1/conv2d_7/Conv2D/Cast:y:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
'model_1/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_1/conv2d_7/BiasAdd/CastCast/model_1/conv2d_7/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
model_1/conv2d_7/BiasAddBiasAdd model_1/conv2d_7/Conv2D:output:0!model_1/conv2d_7/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:����������� |
model_1/conv2d_7/TanhTanh!model_1/conv2d_7/BiasAdd:output:0*
T0*1
_output_shapes
:����������� n
model_1/up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"�   �   p
model_1/up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
model_1/up_sampling2d_6/mulMul&model_1/up_sampling2d_6/Const:output:0(model_1/up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:�
4model_1/up_sampling2d_6/resize/ResizeNearestNeighborResizeNearestNeighbormodel_1/conv2d_7/Tanh:y:0model_1/up_sampling2d_6/mul:z:0*
T0*1
_output_shapes
:����������� *
half_pixel_centers(�
&model_1/conv2d_8/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
model_1/conv2d_8/Conv2D/CastCast.model_1/conv2d_8/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
model_1/conv2d_8/Conv2DConv2DEmodel_1/up_sampling2d_6/resize/ResizeNearestNeighbor:resized_images:0 model_1/conv2d_8/Conv2D/Cast:y:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
'model_1/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_1/conv2d_8/BiasAdd/CastCast/model_1/conv2d_8/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
model_1/conv2d_8/BiasAddBiasAdd model_1/conv2d_8/Conv2D:output:0!model_1/conv2d_8/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:����������� |
model_1/conv2d_8/ReluRelu!model_1/conv2d_8/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
,model_1/decoder_output/Conv2D/ReadVariableOpReadVariableOp5model_1_decoder_output_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
"model_1/decoder_output/Conv2D/CastCast4model_1/decoder_output/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: �
model_1/decoder_output/Conv2DConv2D#model_1/conv2d_8/Relu:activations:0&model_1/decoder_output/Conv2D/Cast:y:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
-model_1/decoder_output/BiasAdd/ReadVariableOpReadVariableOp6model_1_decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
#model_1/decoder_output/BiasAdd/CastCast5model_1/decoder_output/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
model_1/decoder_output/BiasAddBiasAdd&model_1/decoder_output/Conv2D:output:0'model_1/decoder_output/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:������������
model_1/decoder_output/SigmoidSigmoid'model_1/decoder_output/BiasAdd:output:0*
T0*1
_output_shapes
:�����������{
IdentityIdentity"model_1/decoder_output/Sigmoid:y:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp(^model_1/conv2d_4/BiasAdd/ReadVariableOp'^model_1/conv2d_4/Conv2D/ReadVariableOp(^model_1/conv2d_5/BiasAdd/ReadVariableOp'^model_1/conv2d_5/Conv2D/ReadVariableOp(^model_1/conv2d_6/BiasAdd/ReadVariableOp'^model_1/conv2d_6/Conv2D/ReadVariableOp(^model_1/conv2d_7/BiasAdd/ReadVariableOp'^model_1/conv2d_7/Conv2D/ReadVariableOp(^model_1/conv2d_8/BiasAdd/ReadVariableOp'^model_1/conv2d_8/Conv2D/ReadVariableOp-^model_1/decoder_input/BiasAdd/ReadVariableOp,^model_1/decoder_input/Conv2D/ReadVariableOp.^model_1/decoder_output/BiasAdd/ReadVariableOp-^model_1/decoder_output/Conv2D/ReadVariableOp2^model_1/depthwise_conv2d_2/BiasAdd/ReadVariableOp4^model_1/depthwise_conv2d_2/depthwise/ReadVariableOp.^model_1/encoder_output/BiasAdd/ReadVariableOp-^model_1/encoder_output/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2R
'model_1/conv2d_4/BiasAdd/ReadVariableOp'model_1/conv2d_4/BiasAdd/ReadVariableOp2P
&model_1/conv2d_4/Conv2D/ReadVariableOp&model_1/conv2d_4/Conv2D/ReadVariableOp2R
'model_1/conv2d_5/BiasAdd/ReadVariableOp'model_1/conv2d_5/BiasAdd/ReadVariableOp2P
&model_1/conv2d_5/Conv2D/ReadVariableOp&model_1/conv2d_5/Conv2D/ReadVariableOp2R
'model_1/conv2d_6/BiasAdd/ReadVariableOp'model_1/conv2d_6/BiasAdd/ReadVariableOp2P
&model_1/conv2d_6/Conv2D/ReadVariableOp&model_1/conv2d_6/Conv2D/ReadVariableOp2R
'model_1/conv2d_7/BiasAdd/ReadVariableOp'model_1/conv2d_7/BiasAdd/ReadVariableOp2P
&model_1/conv2d_7/Conv2D/ReadVariableOp&model_1/conv2d_7/Conv2D/ReadVariableOp2R
'model_1/conv2d_8/BiasAdd/ReadVariableOp'model_1/conv2d_8/BiasAdd/ReadVariableOp2P
&model_1/conv2d_8/Conv2D/ReadVariableOp&model_1/conv2d_8/Conv2D/ReadVariableOp2\
,model_1/decoder_input/BiasAdd/ReadVariableOp,model_1/decoder_input/BiasAdd/ReadVariableOp2Z
+model_1/decoder_input/Conv2D/ReadVariableOp+model_1/decoder_input/Conv2D/ReadVariableOp2^
-model_1/decoder_output/BiasAdd/ReadVariableOp-model_1/decoder_output/BiasAdd/ReadVariableOp2\
,model_1/decoder_output/Conv2D/ReadVariableOp,model_1/decoder_output/Conv2D/ReadVariableOp2f
1model_1/depthwise_conv2d_2/BiasAdd/ReadVariableOp1model_1/depthwise_conv2d_2/BiasAdd/ReadVariableOp2j
3model_1/depthwise_conv2d_2/depthwise/ReadVariableOp3model_1/depthwise_conv2d_2/depthwise/ReadVariableOp2^
-model_1/encoder_output/BiasAdd/ReadVariableOp-model_1/encoder_output/BiasAdd/ReadVariableOp2\
,model_1/encoder_output/Conv2D/ReadVariableOp,model_1/encoder_output/Conv2D/ReadVariableOp:^ Z
1
_output_shapes
:�����������
%
_user_specified_nameinput_layer
�
e
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_8719

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
e
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_7621

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
J
.__inference_up_sampling2d_5_layer_call_fn_8785

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_7659�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
H__inference_decoder_output_layer_call_and_return_conditional_losses_8880

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: �
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*A
_output_shapes/
-:+���������������������������p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
'__inference_conv2d_8_layer_call_fn_8845

inputs!
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_7839�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
e
I__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_7678

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�@
�
A__inference_model_1_layer_call_and_return_conditional_losses_8225
input_layer1
depthwise_conv2d_2_8175:%
depthwise_conv2d_2_8177:'
conv2d_4_8180:
conv2d_4_8182:-
encoder_output_8185:!
encoder_output_8187:,
decoder_input_8190: 
decoder_input_8192:'
conv2d_5_8196: 
conv2d_5_8198: '
conv2d_6_8202:  
conv2d_6_8204: '
conv2d_7_8208:  
conv2d_7_8210: '
conv2d_8_8214:  
conv2d_8_8216: -
decoder_output_8219: !
decoder_output_8221:
identity�� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall�%decoder_input/StatefulPartitionedCall�&decoder_output/StatefulPartitionedCall�*depthwise_conv2d_2/StatefulPartitionedCall�&encoder_output/StatefulPartitionedCallw
depthwise_conv2d_2/CastCastinput_layer*

DstT0*

SrcT0*1
_output_shapes
:������������
*depthwise_conv2d_2/StatefulPartitionedCallStatefulPartitionedCalldepthwise_conv2d_2/Cast:y:0depthwise_conv2d_2_8175depthwise_conv2d_2_8177*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_7703�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall3depthwise_conv2d_2/StatefulPartitionedCall:output:0conv2d_4_8180conv2d_4_8182*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_7722�
&encoder_output/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0encoder_output_8185encoder_output_8187*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_encoder_output_layer_call_and_return_conditional_losses_7740�
%decoder_input/StatefulPartitionedCallStatefulPartitionedCall/encoder_output/StatefulPartitionedCall:output:0decoder_input_8190decoder_input_8192*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_decoder_input_layer_call_and_return_conditional_losses_7759�
up_sampling2d_3/PartitionedCallPartitionedCall.decoder_input/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_7621�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0conv2d_5_8196conv2d_5_8198*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_7779�
up_sampling2d_4/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_7640�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_4/PartitionedCall:output:0conv2d_6_8202conv2d_6_8204*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7799�
up_sampling2d_5/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_7659�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_5/PartitionedCall:output:0conv2d_7_8208conv2d_7_8210*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_7819�
up_sampling2d_6/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_7678�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_6/PartitionedCall:output:0conv2d_8_8214conv2d_8_8216*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_7839�
&decoder_output/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0decoder_output_8219decoder_output_8221*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_decoder_output_layer_call_and_return_conditional_losses_7858�
IdentityIdentity/decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall&^decoder_input/StatefulPartitionedCall'^decoder_output/StatefulPartitionedCall+^depthwise_conv2d_2/StatefulPartitionedCall'^encoder_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2N
%decoder_input/StatefulPartitionedCall%decoder_input/StatefulPartitionedCall2P
&decoder_output/StatefulPartitionedCall&decoder_output/StatefulPartitionedCall2X
*depthwise_conv2d_2/StatefulPartitionedCall*depthwise_conv2d_2/StatefulPartitionedCall2P
&encoder_output/StatefulPartitionedCall&encoder_output/StatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_nameinput_layer
�
e
I__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_8797

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
'__inference_conv2d_7_layer_call_fn_8806

inputs!
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_7819�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
'__inference_conv2d_4_layer_call_fn_8646

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_7722w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
H__inference_encoder_output_layer_call_and_return_conditional_losses_7740

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:�
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:o
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
L__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_7703

inputs;
!depthwise_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�depthwise/ReadVariableOp�
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:*
dtype0x
depthwise/CastCast depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
	depthwiseDepthwiseConv2dNativeinputsdepthwise/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:r
BiasAddBiasAdddepthwise:output:0BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������z
NoOpNoOp^BiasAdd/ReadVariableOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
H__inference_encoder_output_layer_call_and_return_conditional_losses_8680

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:�
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:o
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�@
�
A__inference_model_1_layer_call_and_return_conditional_losses_7865

inputs1
depthwise_conv2d_2_7704:%
depthwise_conv2d_2_7706:'
conv2d_4_7723:
conv2d_4_7725:-
encoder_output_7741:!
encoder_output_7743:,
decoder_input_7760: 
decoder_input_7762:'
conv2d_5_7780: 
conv2d_5_7782: '
conv2d_6_7800:  
conv2d_6_7802: '
conv2d_7_7820:  
conv2d_7_7822: '
conv2d_8_7840:  
conv2d_8_7842: -
decoder_output_7859: !
decoder_output_7861:
identity�� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall�%decoder_input/StatefulPartitionedCall�&decoder_output/StatefulPartitionedCall�*depthwise_conv2d_2/StatefulPartitionedCall�&encoder_output/StatefulPartitionedCallr
depthwise_conv2d_2/CastCastinputs*

DstT0*

SrcT0*1
_output_shapes
:������������
*depthwise_conv2d_2/StatefulPartitionedCallStatefulPartitionedCalldepthwise_conv2d_2/Cast:y:0depthwise_conv2d_2_7704depthwise_conv2d_2_7706*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_7703�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall3depthwise_conv2d_2/StatefulPartitionedCall:output:0conv2d_4_7723conv2d_4_7725*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_7722�
&encoder_output/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0encoder_output_7741encoder_output_7743*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_encoder_output_layer_call_and_return_conditional_losses_7740�
%decoder_input/StatefulPartitionedCallStatefulPartitionedCall/encoder_output/StatefulPartitionedCall:output:0decoder_input_7760decoder_input_7762*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_decoder_input_layer_call_and_return_conditional_losses_7759�
up_sampling2d_3/PartitionedCallPartitionedCall.decoder_input/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_7621�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0conv2d_5_7780conv2d_5_7782*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_7779�
up_sampling2d_4/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_7640�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_4/PartitionedCall:output:0conv2d_6_7800conv2d_6_7802*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7799�
up_sampling2d_5/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_7659�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_5/PartitionedCall:output:0conv2d_7_7820conv2d_7_7822*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_7819�
up_sampling2d_6/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_7678�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_6/PartitionedCall:output:0conv2d_8_7840conv2d_8_7842*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_7839�
&decoder_output/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0decoder_output_7859decoder_output_7861*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_decoder_output_layer_call_and_return_conditional_losses_7858�
IdentityIdentity/decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall&^decoder_input/StatefulPartitionedCall'^decoder_output/StatefulPartitionedCall+^depthwise_conv2d_2/StatefulPartitionedCall'^encoder_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2N
%decoder_input/StatefulPartitionedCall%decoder_input/StatefulPartitionedCall2P
&decoder_output/StatefulPartitionedCall&decoder_output/StatefulPartitionedCall2X
*depthwise_conv2d_2/StatefulPartitionedCall*depthwise_conv2d_2/StatefulPartitionedCall2P
&encoder_output/StatefulPartitionedCall&encoder_output/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�@
�
A__inference_model_1_layer_call_and_return_conditional_losses_8279
input_layer1
depthwise_conv2d_2_8229:%
depthwise_conv2d_2_8231:'
conv2d_4_8234:
conv2d_4_8236:-
encoder_output_8239:!
encoder_output_8241:,
decoder_input_8244: 
decoder_input_8246:'
conv2d_5_8250: 
conv2d_5_8252: '
conv2d_6_8256:  
conv2d_6_8258: '
conv2d_7_8262:  
conv2d_7_8264: '
conv2d_8_8268:  
conv2d_8_8270: -
decoder_output_8273: !
decoder_output_8275:
identity�� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall�%decoder_input/StatefulPartitionedCall�&decoder_output/StatefulPartitionedCall�*depthwise_conv2d_2/StatefulPartitionedCall�&encoder_output/StatefulPartitionedCallw
depthwise_conv2d_2/CastCastinput_layer*

DstT0*

SrcT0*1
_output_shapes
:������������
*depthwise_conv2d_2/StatefulPartitionedCallStatefulPartitionedCalldepthwise_conv2d_2/Cast:y:0depthwise_conv2d_2_8229depthwise_conv2d_2_8231*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_7703�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall3depthwise_conv2d_2/StatefulPartitionedCall:output:0conv2d_4_8234conv2d_4_8236*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_7722�
&encoder_output/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0encoder_output_8239encoder_output_8241*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_encoder_output_layer_call_and_return_conditional_losses_7740�
%decoder_input/StatefulPartitionedCallStatefulPartitionedCall/encoder_output/StatefulPartitionedCall:output:0decoder_input_8244decoder_input_8246*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_decoder_input_layer_call_and_return_conditional_losses_7759�
up_sampling2d_3/PartitionedCallPartitionedCall.decoder_input/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_7621�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0conv2d_5_8250conv2d_5_8252*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_7779�
up_sampling2d_4/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_7640�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_4/PartitionedCall:output:0conv2d_6_8256conv2d_6_8258*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7799�
up_sampling2d_5/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_7659�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_5/PartitionedCall:output:0conv2d_7_8262conv2d_7_8264*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_7819�
up_sampling2d_6/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_7678�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_6/PartitionedCall:output:0conv2d_8_8268conv2d_8_8270*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_7839�
&decoder_output/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0decoder_output_8273decoder_output_8275*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_decoder_output_layer_call_and_return_conditional_losses_7858�
IdentityIdentity/decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall&^decoder_input/StatefulPartitionedCall'^decoder_output/StatefulPartitionedCall+^depthwise_conv2d_2/StatefulPartitionedCall'^encoder_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2N
%decoder_input/StatefulPartitionedCall%decoder_input/StatefulPartitionedCall2P
&decoder_output/StatefulPartitionedCall&decoder_output/StatefulPartitionedCall2X
*depthwise_conv2d_2/StatefulPartitionedCall*depthwise_conv2d_2/StatefulPartitionedCall2P
&encoder_output/StatefulPartitionedCall&encoder_output/StatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_nameinput_layer
�
�
B__inference_conv2d_5_layer_call_and_return_conditional_losses_7779

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: �
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*A
_output_shapes/
-:+��������������������������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*A
_output_shapes/
-:+��������������������������� j
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+��������������������������� q
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
��
�
__inference__traced_save_9092
file_prefixB
>savev2_depthwise_conv2d_2_depthwise_kernel_read_readvariableop6
2savev2_depthwise_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop4
0savev2_encoder_output_kernel_read_readvariableop2
.savev2_encoder_output_bias_read_readvariableop3
/savev2_decoder_input_kernel_read_readvariableop1
-savev2_decoder_input_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop.
*savev2_conv2d_7_kernel_read_readvariableop,
(savev2_conv2d_7_bias_read_readvariableop.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop4
0savev2_decoder_output_kernel_read_readvariableop2
.savev2_decoder_output_bias_read_readvariableop%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop/
+savev2_cond_1_adam_iter_read_readvariableop	1
-savev2_current_loss_scale_read_readvariableop)
%savev2_good_steps_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopP
Lsavev2_cond_1_adam_depthwise_conv2d_2_depthwise_kernel_m_read_readvariableopD
@savev2_cond_1_adam_depthwise_conv2d_2_bias_m_read_readvariableop<
8savev2_cond_1_adam_conv2d_4_kernel_m_read_readvariableop:
6savev2_cond_1_adam_conv2d_4_bias_m_read_readvariableopB
>savev2_cond_1_adam_encoder_output_kernel_m_read_readvariableop@
<savev2_cond_1_adam_encoder_output_bias_m_read_readvariableopA
=savev2_cond_1_adam_decoder_input_kernel_m_read_readvariableop?
;savev2_cond_1_adam_decoder_input_bias_m_read_readvariableop<
8savev2_cond_1_adam_conv2d_5_kernel_m_read_readvariableop:
6savev2_cond_1_adam_conv2d_5_bias_m_read_readvariableop<
8savev2_cond_1_adam_conv2d_6_kernel_m_read_readvariableop:
6savev2_cond_1_adam_conv2d_6_bias_m_read_readvariableop<
8savev2_cond_1_adam_conv2d_7_kernel_m_read_readvariableop:
6savev2_cond_1_adam_conv2d_7_bias_m_read_readvariableop<
8savev2_cond_1_adam_conv2d_8_kernel_m_read_readvariableop:
6savev2_cond_1_adam_conv2d_8_bias_m_read_readvariableopB
>savev2_cond_1_adam_decoder_output_kernel_m_read_readvariableop@
<savev2_cond_1_adam_decoder_output_bias_m_read_readvariableopP
Lsavev2_cond_1_adam_depthwise_conv2d_2_depthwise_kernel_v_read_readvariableopD
@savev2_cond_1_adam_depthwise_conv2d_2_bias_v_read_readvariableop<
8savev2_cond_1_adam_conv2d_4_kernel_v_read_readvariableop:
6savev2_cond_1_adam_conv2d_4_bias_v_read_readvariableopB
>savev2_cond_1_adam_encoder_output_kernel_v_read_readvariableop@
<savev2_cond_1_adam_encoder_output_bias_v_read_readvariableopA
=savev2_cond_1_adam_decoder_input_kernel_v_read_readvariableop?
;savev2_cond_1_adam_decoder_input_bias_v_read_readvariableop<
8savev2_cond_1_adam_conv2d_5_kernel_v_read_readvariableop:
6savev2_cond_1_adam_conv2d_5_bias_v_read_readvariableop<
8savev2_cond_1_adam_conv2d_6_kernel_v_read_readvariableop:
6savev2_cond_1_adam_conv2d_6_bias_v_read_readvariableop<
8savev2_cond_1_adam_conv2d_7_kernel_v_read_readvariableop:
6savev2_cond_1_adam_conv2d_7_bias_v_read_readvariableop<
8savev2_cond_1_adam_conv2d_8_kernel_v_read_readvariableop:
6savev2_cond_1_adam_conv2d_8_bias_v_read_readvariableopB
>savev2_cond_1_adam_decoder_output_kernel_v_read_readvariableop@
<savev2_cond_1_adam_decoder_output_bias_v_read_readvariableop
savev2_const

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
: �$
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*�#
value�#B�#@B@layer_with_weights-0/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEBBoptimizer/loss_scale/current_loss_scale/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/loss_scale/good_steps/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*�
value�B�@B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0>savev2_depthwise_conv2d_2_depthwise_kernel_read_readvariableop2savev2_depthwise_conv2d_2_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop0savev2_encoder_output_kernel_read_readvariableop.savev2_encoder_output_bias_read_readvariableop/savev2_decoder_input_kernel_read_readvariableop-savev2_decoder_input_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop(savev2_conv2d_7_bias_read_readvariableop*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop0savev2_decoder_output_kernel_read_readvariableop.savev2_decoder_output_bias_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop+savev2_cond_1_adam_iter_read_readvariableop-savev2_current_loss_scale_read_readvariableop%savev2_good_steps_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopLsavev2_cond_1_adam_depthwise_conv2d_2_depthwise_kernel_m_read_readvariableop@savev2_cond_1_adam_depthwise_conv2d_2_bias_m_read_readvariableop8savev2_cond_1_adam_conv2d_4_kernel_m_read_readvariableop6savev2_cond_1_adam_conv2d_4_bias_m_read_readvariableop>savev2_cond_1_adam_encoder_output_kernel_m_read_readvariableop<savev2_cond_1_adam_encoder_output_bias_m_read_readvariableop=savev2_cond_1_adam_decoder_input_kernel_m_read_readvariableop;savev2_cond_1_adam_decoder_input_bias_m_read_readvariableop8savev2_cond_1_adam_conv2d_5_kernel_m_read_readvariableop6savev2_cond_1_adam_conv2d_5_bias_m_read_readvariableop8savev2_cond_1_adam_conv2d_6_kernel_m_read_readvariableop6savev2_cond_1_adam_conv2d_6_bias_m_read_readvariableop8savev2_cond_1_adam_conv2d_7_kernel_m_read_readvariableop6savev2_cond_1_adam_conv2d_7_bias_m_read_readvariableop8savev2_cond_1_adam_conv2d_8_kernel_m_read_readvariableop6savev2_cond_1_adam_conv2d_8_bias_m_read_readvariableop>savev2_cond_1_adam_decoder_output_kernel_m_read_readvariableop<savev2_cond_1_adam_decoder_output_bias_m_read_readvariableopLsavev2_cond_1_adam_depthwise_conv2d_2_depthwise_kernel_v_read_readvariableop@savev2_cond_1_adam_depthwise_conv2d_2_bias_v_read_readvariableop8savev2_cond_1_adam_conv2d_4_kernel_v_read_readvariableop6savev2_cond_1_adam_conv2d_4_bias_v_read_readvariableop>savev2_cond_1_adam_encoder_output_kernel_v_read_readvariableop<savev2_cond_1_adam_encoder_output_bias_v_read_readvariableop=savev2_cond_1_adam_decoder_input_kernel_v_read_readvariableop;savev2_cond_1_adam_decoder_input_bias_v_read_readvariableop8savev2_cond_1_adam_conv2d_5_kernel_v_read_readvariableop6savev2_cond_1_adam_conv2d_5_bias_v_read_readvariableop8savev2_cond_1_adam_conv2d_6_kernel_v_read_readvariableop6savev2_cond_1_adam_conv2d_6_bias_v_read_readvariableop8savev2_cond_1_adam_conv2d_7_kernel_v_read_readvariableop6savev2_cond_1_adam_conv2d_7_bias_v_read_readvariableop8savev2_cond_1_adam_conv2d_8_kernel_v_read_readvariableop6savev2_cond_1_adam_conv2d_8_bias_v_read_readvariableop>savev2_cond_1_adam_decoder_output_kernel_v_read_readvariableop<savev2_cond_1_adam_decoder_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *N
dtypesD
B2@		�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
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

identity_1Identity_1:output:0*�
_input_shapes�
�: ::::::::: : :  : :  : :  : : :: : : : : : : : : ::::::::: : :  : :  : :  : : :::::::::: : :  : :  : :  : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,	(
&
_output_shapes
: : 


_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
: : 
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
:: !

_output_shapes
::,"(
&
_output_shapes
:: #

_output_shapes
::,$(
&
_output_shapes
: : %

_output_shapes
: :,&(
&
_output_shapes
:  : '

_output_shapes
: :,((
&
_output_shapes
:  : )

_output_shapes
: :,*(
&
_output_shapes
:  : +

_output_shapes
: :,,(
&
_output_shapes
: : -

_output_shapes
::,.(
&
_output_shapes
:: /

_output_shapes
::,0(
&
_output_shapes
:: 1

_output_shapes
::,2(
&
_output_shapes
:: 3

_output_shapes
::,4(
&
_output_shapes
:: 5

_output_shapes
::,6(
&
_output_shapes
: : 7

_output_shapes
: :,8(
&
_output_shapes
:  : 9

_output_shapes
: :,:(
&
_output_shapes
:  : ;

_output_shapes
: :,<(
&
_output_shapes
:  : =

_output_shapes
: :,>(
&
_output_shapes
: : ?

_output_shapes
::@

_output_shapes
: 
�
�
&__inference_model_1_layer_call_fn_8369

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7: 
	unknown_8: #
	unknown_9:  

unknown_10: $

unknown_11:  

unknown_12: $

unknown_13:  

unknown_14: $

unknown_15: 

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_7865�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
e
I__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_8836

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
G__inference_decoder_input_layer_call_and_return_conditional_losses_8702

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:�
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:o
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������X
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:���������_
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
B__inference_conv2d_7_layer_call_and_return_conditional_losses_7819

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*A
_output_shapes/
-:+��������������������������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*A
_output_shapes/
-:+��������������������������� j
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+��������������������������� q
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
B__inference_conv2d_4_layer_call_and_return_conditional_losses_7722

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:�
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:o
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������X
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:���������_
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
1__inference_depthwise_conv2d_2_layer_call_fn_8623

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_7703w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
.__inference_up_sampling2d_6_layer_call_fn_8824

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_7678�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
-__inference_decoder_output_layer_call_fn_8867

inputs!
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_decoder_output_layer_call_and_return_conditional_losses_7858�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
-__inference_encoder_output_layer_call_fn_8668

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_encoder_output_layer_call_and_return_conditional_losses_7740w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
B__inference_conv2d_4_layer_call_and_return_conditional_losses_8659

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:�
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:o
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������X
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:���������_
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_model_1_layer_call_fn_7904
input_layer!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7: 
	unknown_8: #
	unknown_9:  

unknown_10: $

unknown_11:  

unknown_12: $

unknown_13:  

unknown_14: $

unknown_15: 

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_7865�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_nameinput_layer
�
�
,__inference_decoder_input_layer_call_fn_8689

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_decoder_input_layer_call_and_return_conditional_losses_7759w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_decoder_input_layer_call_and_return_conditional_losses_7759

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:�
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:o
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������X
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:���������_
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
"__inference_signature_wrapper_8328
input_layer!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7: 
	unknown_8: #
	unknown_9:  

unknown_10: $

unknown_11:  

unknown_12: $

unknown_13:  

unknown_14: $

unknown_15: 

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__wrapped_model_7605y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_nameinput_layer
�
�
&__inference_model_1_layer_call_fn_8410

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7: 
	unknown_8: #
	unknown_9:  

unknown_10: $

unknown_11:  

unknown_12: $

unknown_13:  

unknown_14: $

unknown_15: 

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_8091�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
B__inference_conv2d_8_layer_call_and_return_conditional_losses_7839

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*A
_output_shapes/
-:+��������������������������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*A
_output_shapes/
-:+��������������������������� j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+��������������������������� {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
J
.__inference_up_sampling2d_3_layer_call_fn_8707

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_7621�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
B__inference_conv2d_6_layer_call_and_return_conditional_losses_8780

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*A
_output_shapes/
-:+��������������������������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*A
_output_shapes/
-:+��������������������������� j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+��������������������������� {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
B__inference_conv2d_7_layer_call_and_return_conditional_losses_8819

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*A
_output_shapes/
-:+��������������������������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*A
_output_shapes/
-:+��������������������������� j
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+��������������������������� q
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
e
I__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_7659

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
'__inference_conv2d_6_layer_call_fn_8767

inputs!
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7799�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
B__inference_conv2d_5_layer_call_and_return_conditional_losses_8741

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: �
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*A
_output_shapes/
-:+��������������������������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*A
_output_shapes/
-:+��������������������������� j
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+��������������������������� q
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
ǂ
�+
 __inference__traced_restore_9291
file_prefixN
4assignvariableop_depthwise_conv2d_2_depthwise_kernel:8
*assignvariableop_1_depthwise_conv2d_2_bias:<
"assignvariableop_2_conv2d_4_kernel:.
 assignvariableop_3_conv2d_4_bias:B
(assignvariableop_4_encoder_output_kernel:4
&assignvariableop_5_encoder_output_bias:A
'assignvariableop_6_decoder_input_kernel:3
%assignvariableop_7_decoder_input_bias:<
"assignvariableop_8_conv2d_5_kernel: .
 assignvariableop_9_conv2d_5_bias: =
#assignvariableop_10_conv2d_6_kernel:  /
!assignvariableop_11_conv2d_6_bias: =
#assignvariableop_12_conv2d_7_kernel:  /
!assignvariableop_13_conv2d_7_bias: =
#assignvariableop_14_conv2d_8_kernel:  /
!assignvariableop_15_conv2d_8_bias: C
)assignvariableop_16_decoder_output_kernel: 5
'assignvariableop_17_decoder_output_bias:$
assignvariableop_18_beta_1: $
assignvariableop_19_beta_2: #
assignvariableop_20_decay: +
!assignvariableop_21_learning_rate: .
$assignvariableop_22_cond_1_adam_iter:	 0
&assignvariableop_23_current_loss_scale: (
assignvariableop_24_good_steps:	 #
assignvariableop_25_total: #
assignvariableop_26_count: _
Eassignvariableop_27_cond_1_adam_depthwise_conv2d_2_depthwise_kernel_m:G
9assignvariableop_28_cond_1_adam_depthwise_conv2d_2_bias_m:K
1assignvariableop_29_cond_1_adam_conv2d_4_kernel_m:=
/assignvariableop_30_cond_1_adam_conv2d_4_bias_m:Q
7assignvariableop_31_cond_1_adam_encoder_output_kernel_m:C
5assignvariableop_32_cond_1_adam_encoder_output_bias_m:P
6assignvariableop_33_cond_1_adam_decoder_input_kernel_m:B
4assignvariableop_34_cond_1_adam_decoder_input_bias_m:K
1assignvariableop_35_cond_1_adam_conv2d_5_kernel_m: =
/assignvariableop_36_cond_1_adam_conv2d_5_bias_m: K
1assignvariableop_37_cond_1_adam_conv2d_6_kernel_m:  =
/assignvariableop_38_cond_1_adam_conv2d_6_bias_m: K
1assignvariableop_39_cond_1_adam_conv2d_7_kernel_m:  =
/assignvariableop_40_cond_1_adam_conv2d_7_bias_m: K
1assignvariableop_41_cond_1_adam_conv2d_8_kernel_m:  =
/assignvariableop_42_cond_1_adam_conv2d_8_bias_m: Q
7assignvariableop_43_cond_1_adam_decoder_output_kernel_m: C
5assignvariableop_44_cond_1_adam_decoder_output_bias_m:_
Eassignvariableop_45_cond_1_adam_depthwise_conv2d_2_depthwise_kernel_v:G
9assignvariableop_46_cond_1_adam_depthwise_conv2d_2_bias_v:K
1assignvariableop_47_cond_1_adam_conv2d_4_kernel_v:=
/assignvariableop_48_cond_1_adam_conv2d_4_bias_v:Q
7assignvariableop_49_cond_1_adam_encoder_output_kernel_v:C
5assignvariableop_50_cond_1_adam_encoder_output_bias_v:P
6assignvariableop_51_cond_1_adam_decoder_input_kernel_v:B
4assignvariableop_52_cond_1_adam_decoder_input_bias_v:K
1assignvariableop_53_cond_1_adam_conv2d_5_kernel_v: =
/assignvariableop_54_cond_1_adam_conv2d_5_bias_v: K
1assignvariableop_55_cond_1_adam_conv2d_6_kernel_v:  =
/assignvariableop_56_cond_1_adam_conv2d_6_bias_v: K
1assignvariableop_57_cond_1_adam_conv2d_7_kernel_v:  =
/assignvariableop_58_cond_1_adam_conv2d_7_bias_v: K
1assignvariableop_59_cond_1_adam_conv2d_8_kernel_v:  =
/assignvariableop_60_cond_1_adam_conv2d_8_bias_v: Q
7assignvariableop_61_cond_1_adam_decoder_output_kernel_v: C
5assignvariableop_62_cond_1_adam_decoder_output_bias_v:
identity_64��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�$
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*�#
value�#B�#@B@layer_with_weights-0/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEBBoptimizer/loss_scale/current_loss_scale/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/loss_scale/good_steps/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*�
value�B�@B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*N
dtypesD
B2@		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp4assignvariableop_depthwise_conv2d_2_depthwise_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp*assignvariableop_1_depthwise_conv2d_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp(assignvariableop_4_encoder_output_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp&assignvariableop_5_encoder_output_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp'assignvariableop_6_decoder_input_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp%assignvariableop_7_decoder_input_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_5_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_5_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp#assignvariableop_10_conv2d_6_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp!assignvariableop_11_conv2d_6_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv2d_7_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv2d_7_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp#assignvariableop_14_conv2d_8_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp!assignvariableop_15_conv2d_8_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp)assignvariableop_16_decoder_output_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp'assignvariableop_17_decoder_output_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_beta_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_beta_2Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_decayIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp!assignvariableop_21_learning_rateIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp$assignvariableop_22_cond_1_adam_iterIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp&assignvariableop_23_current_loss_scaleIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_good_stepsIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_totalIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_countIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpEassignvariableop_27_cond_1_adam_depthwise_conv2d_2_depthwise_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp9assignvariableop_28_cond_1_adam_depthwise_conv2d_2_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp1assignvariableop_29_cond_1_adam_conv2d_4_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp/assignvariableop_30_cond_1_adam_conv2d_4_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp7assignvariableop_31_cond_1_adam_encoder_output_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp5assignvariableop_32_cond_1_adam_encoder_output_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp6assignvariableop_33_cond_1_adam_decoder_input_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp4assignvariableop_34_cond_1_adam_decoder_input_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp1assignvariableop_35_cond_1_adam_conv2d_5_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp/assignvariableop_36_cond_1_adam_conv2d_5_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp1assignvariableop_37_cond_1_adam_conv2d_6_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp/assignvariableop_38_cond_1_adam_conv2d_6_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp1assignvariableop_39_cond_1_adam_conv2d_7_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp/assignvariableop_40_cond_1_adam_conv2d_7_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp1assignvariableop_41_cond_1_adam_conv2d_8_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp/assignvariableop_42_cond_1_adam_conv2d_8_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp7assignvariableop_43_cond_1_adam_decoder_output_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp5assignvariableop_44_cond_1_adam_decoder_output_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpEassignvariableop_45_cond_1_adam_depthwise_conv2d_2_depthwise_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp9assignvariableop_46_cond_1_adam_depthwise_conv2d_2_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp1assignvariableop_47_cond_1_adam_conv2d_4_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp/assignvariableop_48_cond_1_adam_conv2d_4_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp7assignvariableop_49_cond_1_adam_encoder_output_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp5assignvariableop_50_cond_1_adam_encoder_output_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp6assignvariableop_51_cond_1_adam_decoder_input_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp4assignvariableop_52_cond_1_adam_decoder_input_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp1assignvariableop_53_cond_1_adam_conv2d_5_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp/assignvariableop_54_cond_1_adam_conv2d_5_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp1assignvariableop_55_cond_1_adam_conv2d_6_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp/assignvariableop_56_cond_1_adam_conv2d_6_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp1assignvariableop_57_cond_1_adam_conv2d_7_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp/assignvariableop_58_cond_1_adam_conv2d_7_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp1assignvariableop_59_cond_1_adam_conv2d_8_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp/assignvariableop_60_cond_1_adam_conv2d_8_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp7assignvariableop_61_cond_1_adam_decoder_output_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp5assignvariableop_62_cond_1_adam_decoder_output_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_63Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_64IdentityIdentity_63:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_64Identity_64:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
e
I__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_7640

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
e
I__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_8758

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
L__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_8637

inputs;
!depthwise_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�depthwise/ReadVariableOp�
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:*
dtype0x
depthwise/CastCast depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
	depthwiseDepthwiseConv2dNativeinputsdepthwise/Cast:y:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:r
BiasAddBiasAdddepthwise:output:0BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������z
NoOpNoOp^BiasAdd/ReadVariableOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
'__inference_conv2d_5_layer_call_fn_8728

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_7779�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
M
input_layer>
serving_default_input_layer:0�����������L
decoder_output:
StatefulPartitionedCall:0�����������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer-11
layer_with_weights-7
layer-12
layer_with_weights-8
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
depthwise_kernel
bias
  _jit_compiled_convolution_op"
_tf_keras_layer
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
 )_jit_compiled_convolution_op"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
 2_jit_compiled_convolution_op"
_tf_keras_layer
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias
 ;_jit_compiled_convolution_op"
_tf_keras_layer
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias
 J_jit_compiled_convolution_op"
_tf_keras_layer
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

Wkernel
Xbias
 Y_jit_compiled_convolution_op"
_tf_keras_layer
�
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_layer
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses

fkernel
gbias
 h_jit_compiled_convolution_op"
_tf_keras_layer
�
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
�
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses

ukernel
vbias
 w_jit_compiled_convolution_op"
_tf_keras_layer
�
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
0
1
'2
(3
04
15
96
:7
H8
I9
W10
X11
f12
g13
u14
v15
~16
17"
trackable_list_wrapper
�
0
1
'2
(3
04
15
96
:7
H8
I9
W10
X11
f12
g13
u14
v15
~16
17"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
&__inference_model_1_layer_call_fn_7904
&__inference_model_1_layer_call_fn_8369
&__inference_model_1_layer_call_fn_8410
&__inference_model_1_layer_call_fn_8171�
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
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
A__inference_model_1_layer_call_and_return_conditional_losses_8512
A__inference_model_1_layer_call_and_return_conditional_losses_8614
A__inference_model_1_layer_call_and_return_conditional_losses_8225
A__inference_model_1_layer_call_and_return_conditional_losses_8279�
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
 z�trace_0z�trace_1z�trace_2z�trace_3
�B�
__inference__wrapped_model_7605input_layer"�
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
 
�
�
loss_scale
�base_optimizer
�beta_1
�beta_2

�decay
�learning_rate
	�iterm�m�'m�(m�0m�1m�9m�:m�Hm�Im�Wm�Xm�fm�gm�um�vm�~m�m�v�v�'v�(v�0v�1v�9v�:v�Hv�Iv�Wv�Xv�fv�gv�uv�vv�~v�v�"
	optimizer
-
�serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_depthwise_conv2d_2_layer_call_fn_8623�
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
 z�trace_0
�
�trace_02�
L__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_8637�
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
 z�trace_0
=:;2#depthwise_conv2d_2/depthwise_kernel
%:#2depthwise_conv2d_2/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_conv2d_4_layer_call_fn_8646�
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
 z�trace_0
�
�trace_02�
B__inference_conv2d_4_layer_call_and_return_conditional_losses_8659�
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
 z�trace_0
):'2conv2d_4/kernel
:2conv2d_4/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_encoder_output_layer_call_fn_8668�
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
 z�trace_0
�
�trace_02�
H__inference_encoder_output_layer_call_and_return_conditional_losses_8680�
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
 z�trace_0
/:-2encoder_output/kernel
!:2encoder_output/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_decoder_input_layer_call_fn_8689�
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
 z�trace_0
�
�trace_02�
G__inference_decoder_input_layer_call_and_return_conditional_losses_8702�
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
 z�trace_0
.:,2decoder_input/kernel
 :2decoder_input/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_up_sampling2d_3_layer_call_fn_8707�
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
 z�trace_0
�
�trace_02�
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_8719�
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
 z�trace_0
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_conv2d_5_layer_call_fn_8728�
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
 z�trace_0
�
�trace_02�
B__inference_conv2d_5_layer_call_and_return_conditional_losses_8741�
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
 z�trace_0
):' 2conv2d_5/kernel
: 2conv2d_5/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_up_sampling2d_4_layer_call_fn_8746�
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
 z�trace_0
�
�trace_02�
I__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_8758�
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
 z�trace_0
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_conv2d_6_layer_call_fn_8767�
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
 z�trace_0
�
�trace_02�
B__inference_conv2d_6_layer_call_and_return_conditional_losses_8780�
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
 z�trace_0
):'  2conv2d_6/kernel
: 2conv2d_6/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_up_sampling2d_5_layer_call_fn_8785�
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
 z�trace_0
�
�trace_02�
I__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_8797�
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
 z�trace_0
.
f0
g1"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_conv2d_7_layer_call_fn_8806�
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
 z�trace_0
�
�trace_02�
B__inference_conv2d_7_layer_call_and_return_conditional_losses_8819�
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
 z�trace_0
):'  2conv2d_7/kernel
: 2conv2d_7/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_up_sampling2d_6_layer_call_fn_8824�
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
 z�trace_0
�
�trace_02�
I__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_8836�
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
 z�trace_0
.
u0
v1"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_conv2d_8_layer_call_fn_8845�
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
 z�trace_0
�
�trace_02�
B__inference_conv2d_8_layer_call_and_return_conditional_losses_8858�
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
 z�trace_0
):'  2conv2d_8/kernel
: 2conv2d_8/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_decoder_output_layer_call_fn_8867�
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
 z�trace_0
�
�trace_02�
H__inference_decoder_output_layer_call_and_return_conditional_losses_8880�
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
 z�trace_0
/:- 2decoder_output/kernel
!:2decoder_output/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 "
trackable_list_wrapper
�
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
13"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_model_1_layer_call_fn_7904input_layer"�
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
 
�B�
&__inference_model_1_layer_call_fn_8369inputs"�
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
 
�B�
&__inference_model_1_layer_call_fn_8410inputs"�
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
 
�B�
&__inference_model_1_layer_call_fn_8171input_layer"�
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
 
�B�
A__inference_model_1_layer_call_and_return_conditional_losses_8512inputs"�
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
 
�B�
A__inference_model_1_layer_call_and_return_conditional_losses_8614inputs"�
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
 
�B�
A__inference_model_1_layer_call_and_return_conditional_losses_8225input_layer"�
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
 
�B�
A__inference_model_1_layer_call_and_return_conditional_losses_8279input_layer"�
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
 
H
�current_loss_scale
�
good_steps"
_generic_user_object
"
_generic_user_object
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
:	 (2cond_1/Adam/iter
�B�
"__inference_signature_wrapper_8328input_layer"�
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
 
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
�B�
1__inference_depthwise_conv2d_2_layer_call_fn_8623inputs"�
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
 
�B�
L__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_8637inputs"�
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
 
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
�B�
'__inference_conv2d_4_layer_call_fn_8646inputs"�
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
 
�B�
B__inference_conv2d_4_layer_call_and_return_conditional_losses_8659inputs"�
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
 
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
�B�
-__inference_encoder_output_layer_call_fn_8668inputs"�
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
 
�B�
H__inference_encoder_output_layer_call_and_return_conditional_losses_8680inputs"�
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
 
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
�B�
,__inference_decoder_input_layer_call_fn_8689inputs"�
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
 
�B�
G__inference_decoder_input_layer_call_and_return_conditional_losses_8702inputs"�
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
 
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
�B�
.__inference_up_sampling2d_3_layer_call_fn_8707inputs"�
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
 
�B�
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_8719inputs"�
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
 
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
�B�
'__inference_conv2d_5_layer_call_fn_8728inputs"�
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
 
�B�
B__inference_conv2d_5_layer_call_and_return_conditional_losses_8741inputs"�
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
 
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
�B�
.__inference_up_sampling2d_4_layer_call_fn_8746inputs"�
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
 
�B�
I__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_8758inputs"�
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
 
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
�B�
'__inference_conv2d_6_layer_call_fn_8767inputs"�
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
 
�B�
B__inference_conv2d_6_layer_call_and_return_conditional_losses_8780inputs"�
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
 
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
�B�
.__inference_up_sampling2d_5_layer_call_fn_8785inputs"�
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
 
�B�
I__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_8797inputs"�
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
 
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
�B�
'__inference_conv2d_7_layer_call_fn_8806inputs"�
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
 
�B�
B__inference_conv2d_7_layer_call_and_return_conditional_losses_8819inputs"�
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
 
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
�B�
.__inference_up_sampling2d_6_layer_call_fn_8824inputs"�
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
 
�B�
I__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_8836inputs"�
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
 
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
�B�
'__inference_conv2d_8_layer_call_fn_8845inputs"�
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
 
�B�
B__inference_conv2d_8_layer_call_and_return_conditional_losses_8858inputs"�
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
 
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
�B�
-__inference_decoder_output_layer_call_fn_8867inputs"�
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
 
�B�
H__inference_decoder_output_layer_call_and_return_conditional_losses_8880inputs"�
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
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
: 2current_loss_scale
:	 2
good_steps
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
I:G21cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/m
1:/2%cond_1/Adam/depthwise_conv2d_2/bias/m
5:32cond_1/Adam/conv2d_4/kernel/m
':%2cond_1/Adam/conv2d_4/bias/m
;:92#cond_1/Adam/encoder_output/kernel/m
-:+2!cond_1/Adam/encoder_output/bias/m
::82"cond_1/Adam/decoder_input/kernel/m
,:*2 cond_1/Adam/decoder_input/bias/m
5:3 2cond_1/Adam/conv2d_5/kernel/m
':% 2cond_1/Adam/conv2d_5/bias/m
5:3  2cond_1/Adam/conv2d_6/kernel/m
':% 2cond_1/Adam/conv2d_6/bias/m
5:3  2cond_1/Adam/conv2d_7/kernel/m
':% 2cond_1/Adam/conv2d_7/bias/m
5:3  2cond_1/Adam/conv2d_8/kernel/m
':% 2cond_1/Adam/conv2d_8/bias/m
;:9 2#cond_1/Adam/decoder_output/kernel/m
-:+2!cond_1/Adam/decoder_output/bias/m
I:G21cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/v
1:/2%cond_1/Adam/depthwise_conv2d_2/bias/v
5:32cond_1/Adam/conv2d_4/kernel/v
':%2cond_1/Adam/conv2d_4/bias/v
;:92#cond_1/Adam/encoder_output/kernel/v
-:+2!cond_1/Adam/encoder_output/bias/v
::82"cond_1/Adam/decoder_input/kernel/v
,:*2 cond_1/Adam/decoder_input/bias/v
5:3 2cond_1/Adam/conv2d_5/kernel/v
':% 2cond_1/Adam/conv2d_5/bias/v
5:3  2cond_1/Adam/conv2d_6/kernel/v
':% 2cond_1/Adam/conv2d_6/bias/v
5:3  2cond_1/Adam/conv2d_7/kernel/v
':% 2cond_1/Adam/conv2d_7/bias/v
5:3  2cond_1/Adam/conv2d_8/kernel/v
':% 2cond_1/Adam/conv2d_8/bias/v
;:9 2#cond_1/Adam/decoder_output/kernel/v
-:+2!cond_1/Adam/decoder_output/bias/v�
__inference__wrapped_model_7605�'(019:HIWXfguv~>�;
4�1
/�,
input_layer�����������
� "I�F
D
decoder_output2�/
decoder_output������������
B__inference_conv2d_4_layer_call_and_return_conditional_losses_8659l'(7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
'__inference_conv2d_4_layer_call_fn_8646_'(7�4
-�*
(�%
inputs���������
� " �����������
B__inference_conv2d_5_layer_call_and_return_conditional_losses_8741�HII�F
?�<
:�7
inputs+���������������������������
� "?�<
5�2
0+��������������������������� 
� �
'__inference_conv2d_5_layer_call_fn_8728�HII�F
?�<
:�7
inputs+���������������������������
� "2�/+��������������������������� �
B__inference_conv2d_6_layer_call_and_return_conditional_losses_8780�WXI�F
?�<
:�7
inputs+��������������������������� 
� "?�<
5�2
0+��������������������������� 
� �
'__inference_conv2d_6_layer_call_fn_8767�WXI�F
?�<
:�7
inputs+��������������������������� 
� "2�/+��������������������������� �
B__inference_conv2d_7_layer_call_and_return_conditional_losses_8819�fgI�F
?�<
:�7
inputs+��������������������������� 
� "?�<
5�2
0+��������������������������� 
� �
'__inference_conv2d_7_layer_call_fn_8806�fgI�F
?�<
:�7
inputs+��������������������������� 
� "2�/+��������������������������� �
B__inference_conv2d_8_layer_call_and_return_conditional_losses_8858�uvI�F
?�<
:�7
inputs+��������������������������� 
� "?�<
5�2
0+��������������������������� 
� �
'__inference_conv2d_8_layer_call_fn_8845�uvI�F
?�<
:�7
inputs+��������������������������� 
� "2�/+��������������������������� �
G__inference_decoder_input_layer_call_and_return_conditional_losses_8702l9:7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
,__inference_decoder_input_layer_call_fn_8689_9:7�4
-�*
(�%
inputs���������
� " �����������
H__inference_decoder_output_layer_call_and_return_conditional_losses_8880�~I�F
?�<
:�7
inputs+��������������������������� 
� "?�<
5�2
0+���������������������������
� �
-__inference_decoder_output_layer_call_fn_8867�~I�F
?�<
:�7
inputs+��������������������������� 
� "2�/+����������������������������
L__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_8637n9�6
/�,
*�'
inputs�����������
� "-�*
#� 
0���������
� �
1__inference_depthwise_conv2d_2_layer_call_fn_8623a9�6
/�,
*�'
inputs�����������
� " �����������
H__inference_encoder_output_layer_call_and_return_conditional_losses_8680l017�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
-__inference_encoder_output_layer_call_fn_8668_017�4
-�*
(�%
inputs���������
� " �����������
A__inference_model_1_layer_call_and_return_conditional_losses_8225�'(019:HIWXfguv~F�C
<�9
/�,
input_layer�����������
p 

 
� "?�<
5�2
0+���������������������������
� �
A__inference_model_1_layer_call_and_return_conditional_losses_8279�'(019:HIWXfguv~F�C
<�9
/�,
input_layer�����������
p

 
� "?�<
5�2
0+���������������������������
� �
A__inference_model_1_layer_call_and_return_conditional_losses_8512�'(019:HIWXfguv~A�>
7�4
*�'
inputs�����������
p 

 
� "/�,
%�"
0�����������
� �
A__inference_model_1_layer_call_and_return_conditional_losses_8614�'(019:HIWXfguv~A�>
7�4
*�'
inputs�����������
p

 
� "/�,
%�"
0�����������
� �
&__inference_model_1_layer_call_fn_7904�'(019:HIWXfguv~F�C
<�9
/�,
input_layer�����������
p 

 
� "2�/+����������������������������
&__inference_model_1_layer_call_fn_8171�'(019:HIWXfguv~F�C
<�9
/�,
input_layer�����������
p

 
� "2�/+����������������������������
&__inference_model_1_layer_call_fn_8369�'(019:HIWXfguv~A�>
7�4
*�'
inputs�����������
p 

 
� "2�/+����������������������������
&__inference_model_1_layer_call_fn_8410�'(019:HIWXfguv~A�>
7�4
*�'
inputs�����������
p

 
� "2�/+����������������������������
"__inference_signature_wrapper_8328�'(019:HIWXfguv~M�J
� 
C�@
>
input_layer/�,
input_layer�����������"I�F
D
decoder_output2�/
decoder_output������������
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_8719�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
.__inference_up_sampling2d_3_layer_call_fn_8707�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
I__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_8758�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
.__inference_up_sampling2d_4_layer_call_fn_8746�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
I__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_8797�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
.__inference_up_sampling2d_5_layer_call_fn_8785�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
I__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_8836�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
.__inference_up_sampling2d_6_layer_call_fn_8824�R�O
H�E
C�@
inputs4������������������������������������
� ";�84������������������������������������