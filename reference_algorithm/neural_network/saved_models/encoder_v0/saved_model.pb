��
��
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
�
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.12v2.10.0-76-gfdfc646704c8��
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
%cond_1/Adam/depthwise_conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%cond_1/Adam/depthwise_conv2d_3/bias/v
�
9cond_1/Adam/depthwise_conv2d_3/bias/v/Read/ReadVariableOpReadVariableOp%cond_1/Adam/depthwise_conv2d_3/bias/v*
_output_shapes
: *
dtype0
�
1cond_1/Adam/depthwise_conv2d_3/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31cond_1/Adam/depthwise_conv2d_3/depthwise_kernel/v
�
Econd_1/Adam/depthwise_conv2d_3/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp1cond_1/Adam/depthwise_conv2d_3/depthwise_kernel/v*&
_output_shapes
: *
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
shape:  *.
shared_namecond_1/Adam/conv2d_5/kernel/v
�
1cond_1/Adam/conv2d_5/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_5/kernel/v*&
_output_shapes
:  *
dtype0
�
cond_1/Adam/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namecond_1/Adam/conv2d_4/bias/v
�
/cond_1/Adam/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_4/bias/v*
_output_shapes
: *
dtype0
�
cond_1/Adam/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *.
shared_namecond_1/Adam/conv2d_4/kernel/v
�
1cond_1/Adam/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_4/kernel/v*&
_output_shapes
:@ *
dtype0
�
%cond_1/Adam/depthwise_conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%cond_1/Adam/depthwise_conv2d_2/bias/v
�
9cond_1/Adam/depthwise_conv2d_2/bias/v/Read/ReadVariableOpReadVariableOp%cond_1/Adam/depthwise_conv2d_2/bias/v*
_output_shapes
:@*
dtype0
�
1cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*B
shared_name31cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/v
�
Econd_1/Adam/depthwise_conv2d_2/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp1cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/v*&
_output_shapes
:@*
dtype0
�
cond_1/Adam/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namecond_1/Adam/conv2d_3/bias/v
�
/cond_1/Adam/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_3/bias/v*
_output_shapes
:@*
dtype0
�
cond_1/Adam/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*.
shared_namecond_1/Adam/conv2d_3/kernel/v
�
1cond_1/Adam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_3/kernel/v*&
_output_shapes
:@@*
dtype0
�
 cond_1/Adam/decoder_input/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" cond_1/Adam/decoder_input/bias/v
�
4cond_1/Adam/decoder_input/bias/v/Read/ReadVariableOpReadVariableOp cond_1/Adam/decoder_input/bias/v*
_output_shapes
:@*
dtype0
�
"cond_1/Adam/decoder_input/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"cond_1/Adam/decoder_input/kernel/v
�
6cond_1/Adam/decoder_input/kernel/v/Read/ReadVariableOpReadVariableOp"cond_1/Adam/decoder_input/kernel/v*&
_output_shapes
:@*
dtype0
�
!cond_1/Adam/encoder_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!cond_1/Adam/encoder_output/bias/v
�
5cond_1/Adam/encoder_output/bias/v/Read/ReadVariableOpReadVariableOp!cond_1/Adam/encoder_output/bias/v*
_output_shapes
:*
dtype0
�
#cond_1/Adam/encoder_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#cond_1/Adam/encoder_output/kernel/v
�
7cond_1/Adam/encoder_output/kernel/v/Read/ReadVariableOpReadVariableOp#cond_1/Adam/encoder_output/kernel/v*&
_output_shapes
:@*
dtype0
�
cond_1/Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namecond_1/Adam/conv2d_2/bias/v
�
/cond_1/Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_2/bias/v*
_output_shapes
:@*
dtype0
�
cond_1/Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*.
shared_namecond_1/Adam/conv2d_2/kernel/v
�
1cond_1/Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_2/kernel/v*&
_output_shapes
:@@*
dtype0
�
cond_1/Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namecond_1/Adam/conv2d_1/bias/v
�
/cond_1/Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_1/bias/v*
_output_shapes
:@*
dtype0
�
cond_1/Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*.
shared_namecond_1/Adam/conv2d_1/kernel/v
�
1cond_1/Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_1/kernel/v*&
_output_shapes
:@@*
dtype0
�
%cond_1/Adam/depthwise_conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%cond_1/Adam/depthwise_conv2d_1/bias/v
�
9cond_1/Adam/depthwise_conv2d_1/bias/v/Read/ReadVariableOpReadVariableOp%cond_1/Adam/depthwise_conv2d_1/bias/v*
_output_shapes
:@*
dtype0
�
1cond_1/Adam/depthwise_conv2d_1/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31cond_1/Adam/depthwise_conv2d_1/depthwise_kernel/v
�
Econd_1/Adam/depthwise_conv2d_1/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp1cond_1/Adam/depthwise_conv2d_1/depthwise_kernel/v*&
_output_shapes
: *
dtype0
�
cond_1/Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namecond_1/Adam/conv2d/bias/v
�
-cond_1/Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d/bias/v*
_output_shapes
: *
dtype0
�
cond_1/Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namecond_1/Adam/conv2d/kernel/v
�
/cond_1/Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d/kernel/v*&
_output_shapes
: *
dtype0
�
#cond_1/Adam/depthwise_conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#cond_1/Adam/depthwise_conv2d/bias/v
�
7cond_1/Adam/depthwise_conv2d/bias/v/Read/ReadVariableOpReadVariableOp#cond_1/Adam/depthwise_conv2d/bias/v*
_output_shapes
:*
dtype0
�
/cond_1/Adam/depthwise_conv2d/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/cond_1/Adam/depthwise_conv2d/depthwise_kernel/v
�
Ccond_1/Adam/depthwise_conv2d/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp/cond_1/Adam/depthwise_conv2d/depthwise_kernel/v*&
_output_shapes
:*
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
%cond_1/Adam/depthwise_conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%cond_1/Adam/depthwise_conv2d_3/bias/m
�
9cond_1/Adam/depthwise_conv2d_3/bias/m/Read/ReadVariableOpReadVariableOp%cond_1/Adam/depthwise_conv2d_3/bias/m*
_output_shapes
: *
dtype0
�
1cond_1/Adam/depthwise_conv2d_3/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31cond_1/Adam/depthwise_conv2d_3/depthwise_kernel/m
�
Econd_1/Adam/depthwise_conv2d_3/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp1cond_1/Adam/depthwise_conv2d_3/depthwise_kernel/m*&
_output_shapes
: *
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
shape:  *.
shared_namecond_1/Adam/conv2d_5/kernel/m
�
1cond_1/Adam/conv2d_5/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_5/kernel/m*&
_output_shapes
:  *
dtype0
�
cond_1/Adam/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namecond_1/Adam/conv2d_4/bias/m
�
/cond_1/Adam/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_4/bias/m*
_output_shapes
: *
dtype0
�
cond_1/Adam/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *.
shared_namecond_1/Adam/conv2d_4/kernel/m
�
1cond_1/Adam/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_4/kernel/m*&
_output_shapes
:@ *
dtype0
�
%cond_1/Adam/depthwise_conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%cond_1/Adam/depthwise_conv2d_2/bias/m
�
9cond_1/Adam/depthwise_conv2d_2/bias/m/Read/ReadVariableOpReadVariableOp%cond_1/Adam/depthwise_conv2d_2/bias/m*
_output_shapes
:@*
dtype0
�
1cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*B
shared_name31cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/m
�
Econd_1/Adam/depthwise_conv2d_2/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp1cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/m*&
_output_shapes
:@*
dtype0
�
cond_1/Adam/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namecond_1/Adam/conv2d_3/bias/m
�
/cond_1/Adam/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_3/bias/m*
_output_shapes
:@*
dtype0
�
cond_1/Adam/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*.
shared_namecond_1/Adam/conv2d_3/kernel/m
�
1cond_1/Adam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_3/kernel/m*&
_output_shapes
:@@*
dtype0
�
 cond_1/Adam/decoder_input/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" cond_1/Adam/decoder_input/bias/m
�
4cond_1/Adam/decoder_input/bias/m/Read/ReadVariableOpReadVariableOp cond_1/Adam/decoder_input/bias/m*
_output_shapes
:@*
dtype0
�
"cond_1/Adam/decoder_input/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"cond_1/Adam/decoder_input/kernel/m
�
6cond_1/Adam/decoder_input/kernel/m/Read/ReadVariableOpReadVariableOp"cond_1/Adam/decoder_input/kernel/m*&
_output_shapes
:@*
dtype0
�
!cond_1/Adam/encoder_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!cond_1/Adam/encoder_output/bias/m
�
5cond_1/Adam/encoder_output/bias/m/Read/ReadVariableOpReadVariableOp!cond_1/Adam/encoder_output/bias/m*
_output_shapes
:*
dtype0
�
#cond_1/Adam/encoder_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#cond_1/Adam/encoder_output/kernel/m
�
7cond_1/Adam/encoder_output/kernel/m/Read/ReadVariableOpReadVariableOp#cond_1/Adam/encoder_output/kernel/m*&
_output_shapes
:@*
dtype0
�
cond_1/Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namecond_1/Adam/conv2d_2/bias/m
�
/cond_1/Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_2/bias/m*
_output_shapes
:@*
dtype0
�
cond_1/Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*.
shared_namecond_1/Adam/conv2d_2/kernel/m
�
1cond_1/Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_2/kernel/m*&
_output_shapes
:@@*
dtype0
�
cond_1/Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namecond_1/Adam/conv2d_1/bias/m
�
/cond_1/Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_1/bias/m*
_output_shapes
:@*
dtype0
�
cond_1/Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*.
shared_namecond_1/Adam/conv2d_1/kernel/m
�
1cond_1/Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d_1/kernel/m*&
_output_shapes
:@@*
dtype0
�
%cond_1/Adam/depthwise_conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%cond_1/Adam/depthwise_conv2d_1/bias/m
�
9cond_1/Adam/depthwise_conv2d_1/bias/m/Read/ReadVariableOpReadVariableOp%cond_1/Adam/depthwise_conv2d_1/bias/m*
_output_shapes
:@*
dtype0
�
1cond_1/Adam/depthwise_conv2d_1/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31cond_1/Adam/depthwise_conv2d_1/depthwise_kernel/m
�
Econd_1/Adam/depthwise_conv2d_1/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp1cond_1/Adam/depthwise_conv2d_1/depthwise_kernel/m*&
_output_shapes
: *
dtype0
�
cond_1/Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namecond_1/Adam/conv2d/bias/m
�
-cond_1/Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d/bias/m*
_output_shapes
: *
dtype0
�
cond_1/Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namecond_1/Adam/conv2d/kernel/m
�
/cond_1/Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/conv2d/kernel/m*&
_output_shapes
: *
dtype0
�
#cond_1/Adam/depthwise_conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#cond_1/Adam/depthwise_conv2d/bias/m
�
7cond_1/Adam/depthwise_conv2d/bias/m/Read/ReadVariableOpReadVariableOp#cond_1/Adam/depthwise_conv2d/bias/m*
_output_shapes
:*
dtype0
�
/cond_1/Adam/depthwise_conv2d/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/cond_1/Adam/depthwise_conv2d/depthwise_kernel/m
�
Ccond_1/Adam/depthwise_conv2d/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp/cond_1/Adam/depthwise_conv2d/depthwise_kernel/m*&
_output_shapes
:*
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
�
cond_1/Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namecond_1/Adam/learning_rate

-cond_1/Adam/learning_rate/Read/ReadVariableOpReadVariableOpcond_1/Adam/learning_rate*
_output_shapes
: *
dtype0
v
cond_1/Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_namecond_1/Adam/decay
o
%cond_1/Adam/decay/Read/ReadVariableOpReadVariableOpcond_1/Adam/decay*
_output_shapes
: *
dtype0
x
cond_1/Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namecond_1/Adam/beta_2
q
&cond_1/Adam/beta_2/Read/ReadVariableOpReadVariableOpcond_1/Adam/beta_2*
_output_shapes
: *
dtype0
x
cond_1/Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namecond_1/Adam/beta_1
q
&cond_1/Adam/beta_1/Read/ReadVariableOpReadVariableOpcond_1/Adam/beta_1*
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
�
depthwise_conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_namedepthwise_conv2d_3/bias

+depthwise_conv2d_3/bias/Read/ReadVariableOpReadVariableOpdepthwise_conv2d_3/bias*
_output_shapes
: *
dtype0
�
#depthwise_conv2d_3/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#depthwise_conv2d_3/depthwise_kernel
�
7depthwise_conv2d_3/depthwise_kernel/Read/ReadVariableOpReadVariableOp#depthwise_conv2d_3/depthwise_kernel*&
_output_shapes
: *
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
shape:  * 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
: *
dtype0
�
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ * 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:@ *
dtype0
�
depthwise_conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_namedepthwise_conv2d_2/bias

+depthwise_conv2d_2/bias/Read/ReadVariableOpReadVariableOpdepthwise_conv2d_2/bias*
_output_shapes
:@*
dtype0
�
#depthwise_conv2d_2/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#depthwise_conv2d_2/depthwise_kernel
�
7depthwise_conv2d_2/depthwise_kernel/Read/ReadVariableOpReadVariableOp#depthwise_conv2d_2/depthwise_kernel*&
_output_shapes
:@*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:@*
dtype0
�
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:@@*
dtype0
|
decoder_input/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_namedecoder_input/bias
u
&decoder_input/bias/Read/ReadVariableOpReadVariableOpdecoder_input/bias*
_output_shapes
:@*
dtype0
�
decoder_input/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namedecoder_input/kernel
�
(decoder_input/kernel/Read/ReadVariableOpReadVariableOpdecoder_input/kernel*&
_output_shapes
:@*
dtype0
~
encoder_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameencoder_output/bias
w
'encoder_output/bias/Read/ReadVariableOpReadVariableOpencoder_output/bias*
_output_shapes
:*
dtype0
�
encoder_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameencoder_output/kernel
�
)encoder_output/kernel/Read/ReadVariableOpReadVariableOpencoder_output/kernel*&
_output_shapes
:@*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@*
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:@@*
dtype0
�
depthwise_conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_namedepthwise_conv2d_1/bias

+depthwise_conv2d_1/bias/Read/ReadVariableOpReadVariableOpdepthwise_conv2d_1/bias*
_output_shapes
:@*
dtype0
�
#depthwise_conv2d_1/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#depthwise_conv2d_1/depthwise_kernel
�
7depthwise_conv2d_1/depthwise_kernel/Read/ReadVariableOpReadVariableOp#depthwise_conv2d_1/depthwise_kernel*&
_output_shapes
: *
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0
�
depthwise_conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namedepthwise_conv2d/bias
{
)depthwise_conv2d/bias/Read/ReadVariableOpReadVariableOpdepthwise_conv2d/bias*
_output_shapes
:*
dtype0
�
!depthwise_conv2d/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!depthwise_conv2d/depthwise_kernel
�
5depthwise_conv2d/depthwise_kernel/Read/ReadVariableOpReadVariableOp!depthwise_conv2d/depthwise_kernel*&
_output_shapes
:*
dtype0
�
serving_default_input_layerPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_layer!depthwise_conv2d/depthwise_kerneldepthwise_conv2d/biasconv2d/kernelconv2d/bias#depthwise_conv2d_1/depthwise_kerneldepthwise_conv2d_1/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasencoder_output/kernelencoder_output/biasdecoder_input/kerneldecoder_input/biasconv2d_3/kernelconv2d_3/bias#depthwise_conv2d_2/depthwise_kerneldepthwise_conv2d_2/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/bias#depthwise_conv2d_3/depthwise_kerneldepthwise_conv2d_3/biasdecoder_output/kerneldecoder_output/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_signature_wrapper_56203

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"depthwise_kernel
#bias
 $_jit_compiled_convolution_op*
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

+kernel
,bias
 -_jit_compiled_convolution_op*
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses* 
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:depthwise_kernel
;bias
 <_jit_compiled_convolution_op*
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

Ckernel
Dbias
 E_jit_compiled_convolution_op*
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses* 
�
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses

Rkernel
Sbias
 T_jit_compiled_convolution_op*
�
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

[kernel
\bias
 ]_jit_compiled_convolution_op*
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses

dkernel
ebias
 f_jit_compiled_convolution_op*
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

mkernel
nbias
 o_jit_compiled_convolution_op*
�
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses* 
�
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses
|depthwise_kernel
}bias
 ~_jit_compiled_convolution_op*
�
	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
"0
#1
+2
,3
:4
;5
C6
D7
R8
S9
[10
\11
d12
e13
m14
n15
|16
}17
�18
�19
�20
�21
�22
�23
�24
�25*
�
"0
#1
+2
,3
:4
;5
C6
D7
R8
S9
[10
\11
d12
e13
m14
n15
|16
}17
�18
�19
�20
�21
�22
�23
�24
�25*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
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
�
�
loss_scale
�base_optimizer
	�iter
�beta_1
�beta_2

�decay
�learning_rate"m�#m�+m�,m�:m�;m�Cm�Dm�Rm�Sm�[m�\m�dm�em�mm�nm�|m�}m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�"v�#v�+v�,v�:v�;v�Cv�Dv�Rv�Sv�[v�\v�dv�ev�mv�nv�|v�}v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�*

�serving_default* 

"0
#1*

"0
#1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
{u
VARIABLE_VALUE!depthwise_conv2d/depthwise_kernel@layer_with_weights-0/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEdepthwise_conv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

+0
,1*

+0
,1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

:0
;1*

:0
;1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
}w
VARIABLE_VALUE#depthwise_conv2d_1/depthwise_kernel@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEdepthwise_conv2d_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

C0
D1*

C0
D1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

R0
S1*

R0
S1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

[0
\1*

[0
\1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
e_
VARIABLE_VALUEencoder_output/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEencoder_output/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

d0
e1*

d0
e1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
d^
VARIABLE_VALUEdecoder_input/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEdecoder_input/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

m0
n1*

m0
n1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

|0
}1*

|0
}1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
}w
VARIABLE_VALUE#depthwise_conv2d_2/depthwise_kernel@layer_with_weights-8/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEdepthwise_conv2d_2/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_5/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_5/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
~x
VARIABLE_VALUE#depthwise_conv2d_3/depthwise_kernelAlayer_with_weights-11/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEdepthwise_conv2d_3/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
f`
VARIABLE_VALUEdecoder_output/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEdecoder_output/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
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
13
14
15
16
17*

�0*
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
�current_loss_scale
�
good_steps*
* 
SM
VARIABLE_VALUEcond_1/Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEcond_1/Adam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEcond_1/Adam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcond_1/Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEcond_1/Adam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
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
�	variables
�	keras_api

�total

�count*
nh
VARIABLE_VALUEcurrent_loss_scaleBoptimizer/loss_scale/current_loss_scale/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
good_steps:optimizer/loss_scale/good_steps/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE/cond_1/Adam/depthwise_conv2d/depthwise_kernel/m\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#cond_1/Adam/depthwise_conv2d/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEcond_1/Adam/conv2d/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE1cond_1/Adam/depthwise_conv2d_1/depthwise_kernel/m\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%cond_1/Adam/depthwise_conv2d_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEcond_1/Adam/conv2d_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEcond_1/Adam/conv2d_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#cond_1/Adam/encoder_output/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!cond_1/Adam/encoder_output/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"cond_1/Adam/decoder_input/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE cond_1/Adam/decoder_input/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_3/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEcond_1/Adam/conv2d_3/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE1cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/m\layer_with_weights-8/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%cond_1/Adam/depthwise_conv2d_2/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_4/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEcond_1/Adam/conv2d_4/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_5/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_5/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE1cond_1/Adam/depthwise_conv2d_3/depthwise_kernel/m]layer_with_weights-11/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%cond_1/Adam/depthwise_conv2d_3/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#cond_1/Adam/decoder_output/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!cond_1/Adam/decoder_output/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE/cond_1/Adam/depthwise_conv2d/depthwise_kernel/v\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#cond_1/Adam/depthwise_conv2d/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEcond_1/Adam/conv2d/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE1cond_1/Adam/depthwise_conv2d_1/depthwise_kernel/v\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%cond_1/Adam/depthwise_conv2d_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEcond_1/Adam/conv2d_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEcond_1/Adam/conv2d_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#cond_1/Adam/encoder_output/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!cond_1/Adam/encoder_output/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"cond_1/Adam/decoder_input/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE cond_1/Adam/decoder_input/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_3/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEcond_1/Adam/conv2d_3/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE1cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/v\layer_with_weights-8/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%cond_1/Adam/depthwise_conv2d_2/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_4/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEcond_1/Adam/conv2d_4/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_5/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEcond_1/Adam/conv2d_5/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE1cond_1/Adam/depthwise_conv2d_3/depthwise_kernel/v]layer_with_weights-11/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%cond_1/Adam/depthwise_conv2d_3/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#cond_1/Adam/decoder_output/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!cond_1/Adam/decoder_output/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�$
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename5depthwise_conv2d/depthwise_kernel/Read/ReadVariableOp)depthwise_conv2d/bias/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp7depthwise_conv2d_1/depthwise_kernel/Read/ReadVariableOp+depthwise_conv2d_1/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp)encoder_output/kernel/Read/ReadVariableOp'encoder_output/bias/Read/ReadVariableOp(decoder_input/kernel/Read/ReadVariableOp&decoder_input/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp7depthwise_conv2d_2/depthwise_kernel/Read/ReadVariableOp+depthwise_conv2d_2/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp7depthwise_conv2d_3/depthwise_kernel/Read/ReadVariableOp+depthwise_conv2d_3/bias/Read/ReadVariableOp)decoder_output/kernel/Read/ReadVariableOp'decoder_output/bias/Read/ReadVariableOp$cond_1/Adam/iter/Read/ReadVariableOp&cond_1/Adam/beta_1/Read/ReadVariableOp&cond_1/Adam/beta_2/Read/ReadVariableOp%cond_1/Adam/decay/Read/ReadVariableOp-cond_1/Adam/learning_rate/Read/ReadVariableOp&current_loss_scale/Read/ReadVariableOpgood_steps/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpCcond_1/Adam/depthwise_conv2d/depthwise_kernel/m/Read/ReadVariableOp7cond_1/Adam/depthwise_conv2d/bias/m/Read/ReadVariableOp/cond_1/Adam/conv2d/kernel/m/Read/ReadVariableOp-cond_1/Adam/conv2d/bias/m/Read/ReadVariableOpEcond_1/Adam/depthwise_conv2d_1/depthwise_kernel/m/Read/ReadVariableOp9cond_1/Adam/depthwise_conv2d_1/bias/m/Read/ReadVariableOp1cond_1/Adam/conv2d_1/kernel/m/Read/ReadVariableOp/cond_1/Adam/conv2d_1/bias/m/Read/ReadVariableOp1cond_1/Adam/conv2d_2/kernel/m/Read/ReadVariableOp/cond_1/Adam/conv2d_2/bias/m/Read/ReadVariableOp7cond_1/Adam/encoder_output/kernel/m/Read/ReadVariableOp5cond_1/Adam/encoder_output/bias/m/Read/ReadVariableOp6cond_1/Adam/decoder_input/kernel/m/Read/ReadVariableOp4cond_1/Adam/decoder_input/bias/m/Read/ReadVariableOp1cond_1/Adam/conv2d_3/kernel/m/Read/ReadVariableOp/cond_1/Adam/conv2d_3/bias/m/Read/ReadVariableOpEcond_1/Adam/depthwise_conv2d_2/depthwise_kernel/m/Read/ReadVariableOp9cond_1/Adam/depthwise_conv2d_2/bias/m/Read/ReadVariableOp1cond_1/Adam/conv2d_4/kernel/m/Read/ReadVariableOp/cond_1/Adam/conv2d_4/bias/m/Read/ReadVariableOp1cond_1/Adam/conv2d_5/kernel/m/Read/ReadVariableOp/cond_1/Adam/conv2d_5/bias/m/Read/ReadVariableOpEcond_1/Adam/depthwise_conv2d_3/depthwise_kernel/m/Read/ReadVariableOp9cond_1/Adam/depthwise_conv2d_3/bias/m/Read/ReadVariableOp7cond_1/Adam/decoder_output/kernel/m/Read/ReadVariableOp5cond_1/Adam/decoder_output/bias/m/Read/ReadVariableOpCcond_1/Adam/depthwise_conv2d/depthwise_kernel/v/Read/ReadVariableOp7cond_1/Adam/depthwise_conv2d/bias/v/Read/ReadVariableOp/cond_1/Adam/conv2d/kernel/v/Read/ReadVariableOp-cond_1/Adam/conv2d/bias/v/Read/ReadVariableOpEcond_1/Adam/depthwise_conv2d_1/depthwise_kernel/v/Read/ReadVariableOp9cond_1/Adam/depthwise_conv2d_1/bias/v/Read/ReadVariableOp1cond_1/Adam/conv2d_1/kernel/v/Read/ReadVariableOp/cond_1/Adam/conv2d_1/bias/v/Read/ReadVariableOp1cond_1/Adam/conv2d_2/kernel/v/Read/ReadVariableOp/cond_1/Adam/conv2d_2/bias/v/Read/ReadVariableOp7cond_1/Adam/encoder_output/kernel/v/Read/ReadVariableOp5cond_1/Adam/encoder_output/bias/v/Read/ReadVariableOp6cond_1/Adam/decoder_input/kernel/v/Read/ReadVariableOp4cond_1/Adam/decoder_input/bias/v/Read/ReadVariableOp1cond_1/Adam/conv2d_3/kernel/v/Read/ReadVariableOp/cond_1/Adam/conv2d_3/bias/v/Read/ReadVariableOpEcond_1/Adam/depthwise_conv2d_2/depthwise_kernel/v/Read/ReadVariableOp9cond_1/Adam/depthwise_conv2d_2/bias/v/Read/ReadVariableOp1cond_1/Adam/conv2d_4/kernel/v/Read/ReadVariableOp/cond_1/Adam/conv2d_4/bias/v/Read/ReadVariableOp1cond_1/Adam/conv2d_5/kernel/v/Read/ReadVariableOp/cond_1/Adam/conv2d_5/bias/v/Read/ReadVariableOpEcond_1/Adam/depthwise_conv2d_3/depthwise_kernel/v/Read/ReadVariableOp9cond_1/Adam/depthwise_conv2d_3/bias/v/Read/ReadVariableOp7cond_1/Adam/decoder_output/kernel/v/Read/ReadVariableOp5cond_1/Adam/decoder_output/bias/v/Read/ReadVariableOpConst*d
Tin]
[2Y		*
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
GPU2*0J 8� *'
f"R 
__inference__traced_save_57214
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename!depthwise_conv2d/depthwise_kerneldepthwise_conv2d/biasconv2d/kernelconv2d/bias#depthwise_conv2d_1/depthwise_kerneldepthwise_conv2d_1/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasencoder_output/kernelencoder_output/biasdecoder_input/kerneldecoder_input/biasconv2d_3/kernelconv2d_3/bias#depthwise_conv2d_2/depthwise_kerneldepthwise_conv2d_2/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/bias#depthwise_conv2d_3/depthwise_kerneldepthwise_conv2d_3/biasdecoder_output/kerneldecoder_output/biascond_1/Adam/itercond_1/Adam/beta_1cond_1/Adam/beta_2cond_1/Adam/decaycond_1/Adam/learning_ratecurrent_loss_scale
good_stepstotalcount/cond_1/Adam/depthwise_conv2d/depthwise_kernel/m#cond_1/Adam/depthwise_conv2d/bias/mcond_1/Adam/conv2d/kernel/mcond_1/Adam/conv2d/bias/m1cond_1/Adam/depthwise_conv2d_1/depthwise_kernel/m%cond_1/Adam/depthwise_conv2d_1/bias/mcond_1/Adam/conv2d_1/kernel/mcond_1/Adam/conv2d_1/bias/mcond_1/Adam/conv2d_2/kernel/mcond_1/Adam/conv2d_2/bias/m#cond_1/Adam/encoder_output/kernel/m!cond_1/Adam/encoder_output/bias/m"cond_1/Adam/decoder_input/kernel/m cond_1/Adam/decoder_input/bias/mcond_1/Adam/conv2d_3/kernel/mcond_1/Adam/conv2d_3/bias/m1cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/m%cond_1/Adam/depthwise_conv2d_2/bias/mcond_1/Adam/conv2d_4/kernel/mcond_1/Adam/conv2d_4/bias/mcond_1/Adam/conv2d_5/kernel/mcond_1/Adam/conv2d_5/bias/m1cond_1/Adam/depthwise_conv2d_3/depthwise_kernel/m%cond_1/Adam/depthwise_conv2d_3/bias/m#cond_1/Adam/decoder_output/kernel/m!cond_1/Adam/decoder_output/bias/m/cond_1/Adam/depthwise_conv2d/depthwise_kernel/v#cond_1/Adam/depthwise_conv2d/bias/vcond_1/Adam/conv2d/kernel/vcond_1/Adam/conv2d/bias/v1cond_1/Adam/depthwise_conv2d_1/depthwise_kernel/v%cond_1/Adam/depthwise_conv2d_1/bias/vcond_1/Adam/conv2d_1/kernel/vcond_1/Adam/conv2d_1/bias/vcond_1/Adam/conv2d_2/kernel/vcond_1/Adam/conv2d_2/bias/v#cond_1/Adam/encoder_output/kernel/v!cond_1/Adam/encoder_output/bias/v"cond_1/Adam/decoder_input/kernel/v cond_1/Adam/decoder_input/bias/vcond_1/Adam/conv2d_3/kernel/vcond_1/Adam/conv2d_3/bias/v1cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/v%cond_1/Adam/depthwise_conv2d_2/bias/vcond_1/Adam/conv2d_4/kernel/vcond_1/Adam/conv2d_4/bias/vcond_1/Adam/conv2d_5/kernel/vcond_1/Adam/conv2d_5/bias/v1cond_1/Adam/depthwise_conv2d_3/depthwise_kernel/v%cond_1/Adam/depthwise_conv2d_3/bias/v#cond_1/Adam/decoder_output/kernel/v!cond_1/Adam/decoder_output/bias/v*c
Tin\
Z2X*
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
GPU2*0J 8� **
f%R#
!__inference__traced_restore_57485��
�
�
-__inference_decoder_input_layer_call_fn_56749

inputs!
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_decoder_input_layer_call_and_return_conditional_losses_55435w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
2__inference_depthwise_conv2d_1_layer_call_fn_56651

inputs!
unknown: 
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_depthwise_conv2d_1_layer_call_and_return_conditional_losses_55359y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
�
I__inference_decoder_output_layer_call_and_return_conditional_losses_56930

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
�
f
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_56863

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
.__inference_decoder_output_layer_call_fn_56917

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
GPU2*0J 8� *R
fMRK
I__inference_decoder_output_layer_call_and_return_conditional_losses_55553�
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
(__inference_conv2d_1_layer_call_fn_56674

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_55378y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_56697

inputs
identity�
MaxPoolMaxPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
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
I__inference_decoder_output_layer_call_and_return_conditional_losses_55553

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
�
�
#__inference_signature_wrapper_56203
input_layer!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@

unknown_10:$

unknown_11:@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@

unknown_16:@$

unknown_17:@ 

unknown_18: $

unknown_19:  

unknown_20: $

unknown_21: 

unknown_22: $

unknown_23: 

unknown_24:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__wrapped_model_55235y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_nameinput_layer
�
�
2__inference_depthwise_conv2d_3_layer_call_fn_56894

inputs!
unknown: 
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
GPU2*0J 8� *V
fQRO
M__inference_depthwise_conv2d_3_layer_call_and_return_conditional_losses_55534�
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
�
K
/__inference_max_pooling2d_1_layer_call_fn_56692

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
GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_55256�
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
��
�=
!__inference__traced_restore_57485
file_prefixL
2assignvariableop_depthwise_conv2d_depthwise_kernel:6
(assignvariableop_1_depthwise_conv2d_bias::
 assignvariableop_2_conv2d_kernel: ,
assignvariableop_3_conv2d_bias: P
6assignvariableop_4_depthwise_conv2d_1_depthwise_kernel: 8
*assignvariableop_5_depthwise_conv2d_1_bias:@<
"assignvariableop_6_conv2d_1_kernel:@@.
 assignvariableop_7_conv2d_1_bias:@<
"assignvariableop_8_conv2d_2_kernel:@@.
 assignvariableop_9_conv2d_2_bias:@C
)assignvariableop_10_encoder_output_kernel:@5
'assignvariableop_11_encoder_output_bias:B
(assignvariableop_12_decoder_input_kernel:@4
&assignvariableop_13_decoder_input_bias:@=
#assignvariableop_14_conv2d_3_kernel:@@/
!assignvariableop_15_conv2d_3_bias:@Q
7assignvariableop_16_depthwise_conv2d_2_depthwise_kernel:@9
+assignvariableop_17_depthwise_conv2d_2_bias:@=
#assignvariableop_18_conv2d_4_kernel:@ /
!assignvariableop_19_conv2d_4_bias: =
#assignvariableop_20_conv2d_5_kernel:  /
!assignvariableop_21_conv2d_5_bias: Q
7assignvariableop_22_depthwise_conv2d_3_depthwise_kernel: 9
+assignvariableop_23_depthwise_conv2d_3_bias: C
)assignvariableop_24_decoder_output_kernel: 5
'assignvariableop_25_decoder_output_bias:.
$assignvariableop_26_cond_1_adam_iter:	 0
&assignvariableop_27_cond_1_adam_beta_1: 0
&assignvariableop_28_cond_1_adam_beta_2: /
%assignvariableop_29_cond_1_adam_decay: 7
-assignvariableop_30_cond_1_adam_learning_rate: 0
&assignvariableop_31_current_loss_scale: (
assignvariableop_32_good_steps:	 #
assignvariableop_33_total: #
assignvariableop_34_count: ]
Cassignvariableop_35_cond_1_adam_depthwise_conv2d_depthwise_kernel_m:E
7assignvariableop_36_cond_1_adam_depthwise_conv2d_bias_m:I
/assignvariableop_37_cond_1_adam_conv2d_kernel_m: ;
-assignvariableop_38_cond_1_adam_conv2d_bias_m: _
Eassignvariableop_39_cond_1_adam_depthwise_conv2d_1_depthwise_kernel_m: G
9assignvariableop_40_cond_1_adam_depthwise_conv2d_1_bias_m:@K
1assignvariableop_41_cond_1_adam_conv2d_1_kernel_m:@@=
/assignvariableop_42_cond_1_adam_conv2d_1_bias_m:@K
1assignvariableop_43_cond_1_adam_conv2d_2_kernel_m:@@=
/assignvariableop_44_cond_1_adam_conv2d_2_bias_m:@Q
7assignvariableop_45_cond_1_adam_encoder_output_kernel_m:@C
5assignvariableop_46_cond_1_adam_encoder_output_bias_m:P
6assignvariableop_47_cond_1_adam_decoder_input_kernel_m:@B
4assignvariableop_48_cond_1_adam_decoder_input_bias_m:@K
1assignvariableop_49_cond_1_adam_conv2d_3_kernel_m:@@=
/assignvariableop_50_cond_1_adam_conv2d_3_bias_m:@_
Eassignvariableop_51_cond_1_adam_depthwise_conv2d_2_depthwise_kernel_m:@G
9assignvariableop_52_cond_1_adam_depthwise_conv2d_2_bias_m:@K
1assignvariableop_53_cond_1_adam_conv2d_4_kernel_m:@ =
/assignvariableop_54_cond_1_adam_conv2d_4_bias_m: K
1assignvariableop_55_cond_1_adam_conv2d_5_kernel_m:  =
/assignvariableop_56_cond_1_adam_conv2d_5_bias_m: _
Eassignvariableop_57_cond_1_adam_depthwise_conv2d_3_depthwise_kernel_m: G
9assignvariableop_58_cond_1_adam_depthwise_conv2d_3_bias_m: Q
7assignvariableop_59_cond_1_adam_decoder_output_kernel_m: C
5assignvariableop_60_cond_1_adam_decoder_output_bias_m:]
Cassignvariableop_61_cond_1_adam_depthwise_conv2d_depthwise_kernel_v:E
7assignvariableop_62_cond_1_adam_depthwise_conv2d_bias_v:I
/assignvariableop_63_cond_1_adam_conv2d_kernel_v: ;
-assignvariableop_64_cond_1_adam_conv2d_bias_v: _
Eassignvariableop_65_cond_1_adam_depthwise_conv2d_1_depthwise_kernel_v: G
9assignvariableop_66_cond_1_adam_depthwise_conv2d_1_bias_v:@K
1assignvariableop_67_cond_1_adam_conv2d_1_kernel_v:@@=
/assignvariableop_68_cond_1_adam_conv2d_1_bias_v:@K
1assignvariableop_69_cond_1_adam_conv2d_2_kernel_v:@@=
/assignvariableop_70_cond_1_adam_conv2d_2_bias_v:@Q
7assignvariableop_71_cond_1_adam_encoder_output_kernel_v:@C
5assignvariableop_72_cond_1_adam_encoder_output_bias_v:P
6assignvariableop_73_cond_1_adam_decoder_input_kernel_v:@B
4assignvariableop_74_cond_1_adam_decoder_input_bias_v:@K
1assignvariableop_75_cond_1_adam_conv2d_3_kernel_v:@@=
/assignvariableop_76_cond_1_adam_conv2d_3_bias_v:@_
Eassignvariableop_77_cond_1_adam_depthwise_conv2d_2_depthwise_kernel_v:@G
9assignvariableop_78_cond_1_adam_depthwise_conv2d_2_bias_v:@K
1assignvariableop_79_cond_1_adam_conv2d_4_kernel_v:@ =
/assignvariableop_80_cond_1_adam_conv2d_4_bias_v: K
1assignvariableop_81_cond_1_adam_conv2d_5_kernel_v:  =
/assignvariableop_82_cond_1_adam_conv2d_5_bias_v: _
Eassignvariableop_83_cond_1_adam_depthwise_conv2d_3_depthwise_kernel_v: G
9assignvariableop_84_cond_1_adam_depthwise_conv2d_3_bias_v: Q
7assignvariableop_85_cond_1_adam_decoder_output_kernel_v: C
5assignvariableop_86_cond_1_adam_decoder_output_bias_v:
identity_88��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_9�2
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:X*
dtype0*�2
value�1B�1XB@layer_with_weights-0/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-8/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-11/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBoptimizer/loss_scale/current_loss_scale/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/loss_scale/good_steps/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-8/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-11/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-8/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-11/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:X*
dtype0*�
value�B�XB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*f
dtypes\
Z2X		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp2assignvariableop_depthwise_conv2d_depthwise_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp(assignvariableop_1_depthwise_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp assignvariableop_2_conv2d_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_conv2d_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp6assignvariableop_4_depthwise_conv2d_1_depthwise_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp*assignvariableop_5_depthwise_conv2d_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp)assignvariableop_10_encoder_output_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp'assignvariableop_11_encoder_output_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp(assignvariableop_12_decoder_input_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp&assignvariableop_13_decoder_input_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp#assignvariableop_14_conv2d_3_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp!assignvariableop_15_conv2d_3_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp7assignvariableop_16_depthwise_conv2d_2_depthwise_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp+assignvariableop_17_depthwise_conv2d_2_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp#assignvariableop_18_conv2d_4_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp!assignvariableop_19_conv2d_4_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp#assignvariableop_20_conv2d_5_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp!assignvariableop_21_conv2d_5_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp7assignvariableop_22_depthwise_conv2d_3_depthwise_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp+assignvariableop_23_depthwise_conv2d_3_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp)assignvariableop_24_decoder_output_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp'assignvariableop_25_decoder_output_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp$assignvariableop_26_cond_1_adam_iterIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp&assignvariableop_27_cond_1_adam_beta_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp&assignvariableop_28_cond_1_adam_beta_2Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp%assignvariableop_29_cond_1_adam_decayIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp-assignvariableop_30_cond_1_adam_learning_rateIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp&assignvariableop_31_current_loss_scaleIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_good_stepsIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpassignvariableop_33_totalIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_countIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpCassignvariableop_35_cond_1_adam_depthwise_conv2d_depthwise_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp7assignvariableop_36_cond_1_adam_depthwise_conv2d_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp/assignvariableop_37_cond_1_adam_conv2d_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp-assignvariableop_38_cond_1_adam_conv2d_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpEassignvariableop_39_cond_1_adam_depthwise_conv2d_1_depthwise_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp9assignvariableop_40_cond_1_adam_depthwise_conv2d_1_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp1assignvariableop_41_cond_1_adam_conv2d_1_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp/assignvariableop_42_cond_1_adam_conv2d_1_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp1assignvariableop_43_cond_1_adam_conv2d_2_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp/assignvariableop_44_cond_1_adam_conv2d_2_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp7assignvariableop_45_cond_1_adam_encoder_output_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp5assignvariableop_46_cond_1_adam_encoder_output_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp6assignvariableop_47_cond_1_adam_decoder_input_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp4assignvariableop_48_cond_1_adam_decoder_input_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp1assignvariableop_49_cond_1_adam_conv2d_3_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp/assignvariableop_50_cond_1_adam_conv2d_3_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOpEassignvariableop_51_cond_1_adam_depthwise_conv2d_2_depthwise_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp9assignvariableop_52_cond_1_adam_depthwise_conv2d_2_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp1assignvariableop_53_cond_1_adam_conv2d_4_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp/assignvariableop_54_cond_1_adam_conv2d_4_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp1assignvariableop_55_cond_1_adam_conv2d_5_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp/assignvariableop_56_cond_1_adam_conv2d_5_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOpEassignvariableop_57_cond_1_adam_depthwise_conv2d_3_depthwise_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp9assignvariableop_58_cond_1_adam_depthwise_conv2d_3_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp7assignvariableop_59_cond_1_adam_decoder_output_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp5assignvariableop_60_cond_1_adam_decoder_output_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOpCassignvariableop_61_cond_1_adam_depthwise_conv2d_depthwise_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp7assignvariableop_62_cond_1_adam_depthwise_conv2d_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp/assignvariableop_63_cond_1_adam_conv2d_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp-assignvariableop_64_cond_1_adam_conv2d_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOpEassignvariableop_65_cond_1_adam_depthwise_conv2d_1_depthwise_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp9assignvariableop_66_cond_1_adam_depthwise_conv2d_1_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp1assignvariableop_67_cond_1_adam_conv2d_1_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp/assignvariableop_68_cond_1_adam_conv2d_1_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp1assignvariableop_69_cond_1_adam_conv2d_2_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp/assignvariableop_70_cond_1_adam_conv2d_2_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp7assignvariableop_71_cond_1_adam_encoder_output_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp5assignvariableop_72_cond_1_adam_encoder_output_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp6assignvariableop_73_cond_1_adam_decoder_input_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp4assignvariableop_74_cond_1_adam_decoder_input_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp1assignvariableop_75_cond_1_adam_conv2d_3_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp/assignvariableop_76_cond_1_adam_conv2d_3_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOpEassignvariableop_77_cond_1_adam_depthwise_conv2d_2_depthwise_kernel_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp9assignvariableop_78_cond_1_adam_depthwise_conv2d_2_bias_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp1assignvariableop_79_cond_1_adam_conv2d_4_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp/assignvariableop_80_cond_1_adam_conv2d_4_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp1assignvariableop_81_cond_1_adam_conv2d_5_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp/assignvariableop_82_cond_1_adam_conv2d_5_bias_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOpEassignvariableop_83_cond_1_adam_depthwise_conv2d_3_depthwise_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp9assignvariableop_84_cond_1_adam_depthwise_conv2d_3_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp7assignvariableop_85_cond_1_adam_decoder_output_kernel_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOp5assignvariableop_86_cond_1_adam_decoder_output_bias_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_87Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_88IdentityIdentity_87:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_88Identity_88:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
M__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_55475

inputs;
!depthwise_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�depthwise/ReadVariableOp�
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:@*
dtype0x
depthwise/CastCast depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
	depthwiseDepthwiseConv2dNativeinputsdepthwise/Cast:y:0*
T0*A
_output_shapes/
-:+���������������������������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
BiasAddBiasAdddepthwise:output:0BiasAdd/Cast:y:0*
T0*A
_output_shapes/
-:+���������������������������@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@z
NoOpNoOp^BiasAdd/ReadVariableOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
��
�
@__inference_model_layer_call_and_return_conditional_losses_56587

inputsL
2depthwise_conv2d_depthwise_readvariableop_resource:>
0depthwise_conv2d_biasadd_readvariableop_resource:?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: N
4depthwise_conv2d_1_depthwise_readvariableop_resource: @
2depthwise_conv2d_1_biasadd_readvariableop_resource:@A
'conv2d_1_conv2d_readvariableop_resource:@@6
(conv2d_1_biasadd_readvariableop_resource:@A
'conv2d_2_conv2d_readvariableop_resource:@@6
(conv2d_2_biasadd_readvariableop_resource:@G
-encoder_output_conv2d_readvariableop_resource:@<
.encoder_output_biasadd_readvariableop_resource:F
,decoder_input_conv2d_readvariableop_resource:@;
-decoder_input_biasadd_readvariableop_resource:@A
'conv2d_3_conv2d_readvariableop_resource:@@6
(conv2d_3_biasadd_readvariableop_resource:@N
4depthwise_conv2d_2_depthwise_readvariableop_resource:@@
2depthwise_conv2d_2_biasadd_readvariableop_resource:@A
'conv2d_4_conv2d_readvariableop_resource:@ 6
(conv2d_4_biasadd_readvariableop_resource: A
'conv2d_5_conv2d_readvariableop_resource:  6
(conv2d_5_biasadd_readvariableop_resource: N
4depthwise_conv2d_3_depthwise_readvariableop_resource: @
2depthwise_conv2d_3_biasadd_readvariableop_resource: G
-decoder_output_conv2d_readvariableop_resource: <
.decoder_output_biasadd_readvariableop_resource:
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�conv2d_5/BiasAdd/ReadVariableOp�conv2d_5/Conv2D/ReadVariableOp�$decoder_input/BiasAdd/ReadVariableOp�#decoder_input/Conv2D/ReadVariableOp�%decoder_output/BiasAdd/ReadVariableOp�$decoder_output/Conv2D/ReadVariableOp�'depthwise_conv2d/BiasAdd/ReadVariableOp�)depthwise_conv2d/depthwise/ReadVariableOp�)depthwise_conv2d_1/BiasAdd/ReadVariableOp�+depthwise_conv2d_1/depthwise/ReadVariableOp�)depthwise_conv2d_2/BiasAdd/ReadVariableOp�+depthwise_conv2d_2/depthwise/ReadVariableOp�)depthwise_conv2d_3/BiasAdd/ReadVariableOp�+depthwise_conv2d_3/depthwise/ReadVariableOp�%encoder_output/BiasAdd/ReadVariableOp�$encoder_output/Conv2D/ReadVariableOpp
depthwise_conv2d/CastCastinputs*

DstT0*

SrcT0*1
_output_shapes
:������������
)depthwise_conv2d/depthwise/ReadVariableOpReadVariableOp2depthwise_conv2d_depthwise_readvariableop_resource*&
_output_shapes
:*
dtype0�
depthwise_conv2d/depthwise/CastCast1depthwise_conv2d/depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:y
 depthwise_conv2d/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            y
(depthwise_conv2d/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
depthwise_conv2d/depthwiseDepthwiseConv2dNativedepthwise_conv2d/Cast:y:0#depthwise_conv2d/depthwise/Cast:y:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
'depthwise_conv2d/BiasAdd/ReadVariableOpReadVariableOp0depthwise_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
depthwise_conv2d/BiasAdd/CastCast/depthwise_conv2d/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
depthwise_conv2d/BiasAddBiasAdd#depthwise_conv2d/depthwise:output:0!depthwise_conv2d/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:������������
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d/Conv2D/CastCast$conv2d/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: �
conv2d/Conv2DConv2D!depthwise_conv2d/BiasAdd:output:0conv2d/Conv2D/Cast:y:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
conv2d/BiasAdd/CastCast%conv2d/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0conv2d/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:����������� h
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*
T0*1
_output_shapes
:����������� *
ksize
*
paddingVALID*
strides
�
+depthwise_conv2d_1/depthwise/ReadVariableOpReadVariableOp4depthwise_conv2d_1_depthwise_readvariableop_resource*&
_output_shapes
: *
dtype0�
!depthwise_conv2d_1/depthwise/CastCast3depthwise_conv2d_1/depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: {
"depthwise_conv2d_1/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             {
*depthwise_conv2d_1/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
depthwise_conv2d_1/depthwiseDepthwiseConv2dNativemax_pooling2d/MaxPool:output:0%depthwise_conv2d_1/depthwise/Cast:y:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
)depthwise_conv2d_1/BiasAdd/ReadVariableOpReadVariableOp2depthwise_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
depthwise_conv2d_1/BiasAdd/CastCast1depthwise_conv2d_1/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
depthwise_conv2d_1/BiasAddBiasAdd%depthwise_conv2d_1/depthwise:output:0#depthwise_conv2d_1/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:�����������@�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_1/Conv2D/CastCast&conv2d_1/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@@�
conv2d_1/Conv2DConv2D#depthwise_conv2d_1/BiasAdd:output:0conv2d_1/Conv2D/Cast:y:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0z
conv2d_1/BiasAdd/CastCast'conv2d_1/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0conv2d_1/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:�����������@l
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*
T0*/
_output_shapes
:���������@@@*
ksize
*
paddingVALID*
strides
�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_2/Conv2D/CastCast&conv2d_2/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@@�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0conv2d_2/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0z
conv2d_2/BiasAdd/CastCast'conv2d_2/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0conv2d_2/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@@j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@@�
$encoder_output/Conv2D/ReadVariableOpReadVariableOp-encoder_output_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
encoder_output/Conv2D/CastCast,encoder_output/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@�
encoder_output/Conv2DConv2Dconv2d_2/Relu:activations:0encoder_output/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@*
paddingVALID*
strides
�
%encoder_output/BiasAdd/ReadVariableOpReadVariableOp.encoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
encoder_output/BiasAdd/CastCast-encoder_output/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
encoder_output/BiasAddBiasAddencoder_output/Conv2D:output:0encoder_output/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@�
#decoder_input/Conv2D/ReadVariableOpReadVariableOp,decoder_input_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
decoder_input/Conv2D/CastCast+decoder_input/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@�
decoder_input/Conv2DConv2Dencoder_output/BiasAdd:output:0decoder_input/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@@*
paddingVALID*
strides
�
$decoder_input/BiasAdd/ReadVariableOpReadVariableOp-decoder_input_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
decoder_input/BiasAdd/CastCast,decoder_input/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
decoder_input/BiasAddBiasAdddecoder_input/Conv2D:output:0decoder_input/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@@t
decoder_input/ReluReludecoder_input/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@@�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_3/Conv2D/CastCast&conv2d_3/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@@�
conv2d_3/Conv2DConv2D decoder_input/Relu:activations:0conv2d_3/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0z
conv2d_3/BiasAdd/CastCast'conv2d_3/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0conv2d_3/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@@j
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@@d
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   f
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      {
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:�
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_3/Relu:activations:0up_sampling2d/mul:z:0*
T0*1
_output_shapes
:�����������@*
half_pixel_centers(�
+depthwise_conv2d_2/depthwise/ReadVariableOpReadVariableOp4depthwise_conv2d_2_depthwise_readvariableop_resource*&
_output_shapes
:@*
dtype0�
!depthwise_conv2d_2/depthwise/CastCast3depthwise_conv2d_2/depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@{
"depthwise_conv2d_2/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      {
*depthwise_conv2d_2/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
depthwise_conv2d_2/depthwiseDepthwiseConv2dNative;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0%depthwise_conv2d_2/depthwise/Cast:y:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
)depthwise_conv2d_2/BiasAdd/ReadVariableOpReadVariableOp2depthwise_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
depthwise_conv2d_2/BiasAdd/CastCast1depthwise_conv2d_2/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
depthwise_conv2d_2/BiasAddBiasAdd%depthwise_conv2d_2/depthwise:output:0#depthwise_conv2d_2/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:�����������@�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
conv2d_4/Conv2D/CastCast&conv2d_4/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@ �
conv2d_4/Conv2DConv2D#depthwise_conv2d_2/BiasAdd:output:0conv2d_4/Conv2D/Cast:y:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0z
conv2d_4/BiasAdd/CastCast'conv2d_4/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0conv2d_4/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:����������� l
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*1
_output_shapes
:����������� f
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"�   �   h
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:�
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_4/Relu:activations:0up_sampling2d_1/mul:z:0*
T0*1
_output_shapes
:����������� *
half_pixel_centers(�
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
conv2d_5/Conv2D/CastCast&conv2d_5/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
conv2d_5/Conv2DConv2D=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0conv2d_5/Conv2D/Cast:y:0*
T0*1
_output_shapes
:����������� *
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
T0*1
_output_shapes
:����������� l
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
+depthwise_conv2d_3/depthwise/ReadVariableOpReadVariableOp4depthwise_conv2d_3_depthwise_readvariableop_resource*&
_output_shapes
: *
dtype0�
!depthwise_conv2d_3/depthwise/CastCast3depthwise_conv2d_3/depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: {
"depthwise_conv2d_3/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             {
*depthwise_conv2d_3/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
depthwise_conv2d_3/depthwiseDepthwiseConv2dNativeconv2d_5/Relu:activations:0%depthwise_conv2d_3/depthwise/Cast:y:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
)depthwise_conv2d_3/BiasAdd/ReadVariableOpReadVariableOp2depthwise_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
depthwise_conv2d_3/BiasAdd/CastCast1depthwise_conv2d_3/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
depthwise_conv2d_3/BiasAddBiasAdd%depthwise_conv2d_3/depthwise:output:0#depthwise_conv2d_3/BiasAdd/Cast:y:0*
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
decoder_output/Conv2DConv2D#depthwise_conv2d_3/BiasAdd:output:0decoder_output/Conv2D/Cast:y:0*
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
:������������
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp%^decoder_input/BiasAdd/ReadVariableOp$^decoder_input/Conv2D/ReadVariableOp&^decoder_output/BiasAdd/ReadVariableOp%^decoder_output/Conv2D/ReadVariableOp(^depthwise_conv2d/BiasAdd/ReadVariableOp*^depthwise_conv2d/depthwise/ReadVariableOp*^depthwise_conv2d_1/BiasAdd/ReadVariableOp,^depthwise_conv2d_1/depthwise/ReadVariableOp*^depthwise_conv2d_2/BiasAdd/ReadVariableOp,^depthwise_conv2d_2/depthwise/ReadVariableOp*^depthwise_conv2d_3/BiasAdd/ReadVariableOp,^depthwise_conv2d_3/depthwise/ReadVariableOp&^encoder_output/BiasAdd/ReadVariableOp%^encoder_output/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2L
$decoder_input/BiasAdd/ReadVariableOp$decoder_input/BiasAdd/ReadVariableOp2J
#decoder_input/Conv2D/ReadVariableOp#decoder_input/Conv2D/ReadVariableOp2N
%decoder_output/BiasAdd/ReadVariableOp%decoder_output/BiasAdd/ReadVariableOp2L
$decoder_output/Conv2D/ReadVariableOp$decoder_output/Conv2D/ReadVariableOp2R
'depthwise_conv2d/BiasAdd/ReadVariableOp'depthwise_conv2d/BiasAdd/ReadVariableOp2V
)depthwise_conv2d/depthwise/ReadVariableOp)depthwise_conv2d/depthwise/ReadVariableOp2V
)depthwise_conv2d_1/BiasAdd/ReadVariableOp)depthwise_conv2d_1/BiasAdd/ReadVariableOp2Z
+depthwise_conv2d_1/depthwise/ReadVariableOp+depthwise_conv2d_1/depthwise/ReadVariableOp2V
)depthwise_conv2d_2/BiasAdd/ReadVariableOp)depthwise_conv2d_2/BiasAdd/ReadVariableOp2Z
+depthwise_conv2d_2/depthwise/ReadVariableOp+depthwise_conv2d_2/depthwise/ReadVariableOp2V
)depthwise_conv2d_3/BiasAdd/ReadVariableOp)depthwise_conv2d_3/BiasAdd/ReadVariableOp2Z
+depthwise_conv2d_3/depthwise/ReadVariableOp+depthwise_conv2d_3/depthwise/ReadVariableOp2N
%encoder_output/BiasAdd/ReadVariableOp%encoder_output/BiasAdd/ReadVariableOp2L
$encoder_output/Conv2D/ReadVariableOp$encoder_output/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_55454

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@@�
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@o
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�
�
(__inference_conv2d_3_layer_call_fn_56771

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_55454w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_55244

inputs
identity�
MaxPoolMaxPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
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
�
M__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_56824

inputs;
!depthwise_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�depthwise/ReadVariableOp�
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:@*
dtype0x
depthwise/CastCast depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
	depthwiseDepthwiseConv2dNativeinputsdepthwise/Cast:y:0*
T0*A
_output_shapes/
-:+���������������������������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
BiasAddBiasAdddepthwise:output:0BiasAdd/Cast:y:0*
T0*A
_output_shapes/
-:+���������������������������@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@z
NoOpNoOp^BiasAdd/ReadVariableOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
I
-__inference_up_sampling2d_layer_call_fn_56789

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
GPU2*0J 8� *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_55275�
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
d
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_55275

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
�
A__inference_conv2d_layer_call_and_return_conditional_losses_55338

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: �
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*1
_output_shapes
:����������� *
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
: q
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
0__inference_depthwise_conv2d_layer_call_fn_56596

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_depthwise_conv2d_layer_call_and_return_conditional_losses_55319y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
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
�
�
H__inference_decoder_input_layer_call_and_return_conditional_losses_55435

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@�
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@o
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_55398

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@@�
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@o
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�
�
2__inference_depthwise_conv2d_2_layer_call_fn_56810

inputs!
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_55475�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
I__inference_encoder_output_layer_call_and_return_conditional_losses_56740

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@�
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:o
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�
�
C__inference_conv2d_5_layer_call_and_return_conditional_losses_55514

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
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
ֻ
�
 __inference__wrapped_model_55235
input_layerR
8model_depthwise_conv2d_depthwise_readvariableop_resource:D
6model_depthwise_conv2d_biasadd_readvariableop_resource:E
+model_conv2d_conv2d_readvariableop_resource: :
,model_conv2d_biasadd_readvariableop_resource: T
:model_depthwise_conv2d_1_depthwise_readvariableop_resource: F
8model_depthwise_conv2d_1_biasadd_readvariableop_resource:@G
-model_conv2d_1_conv2d_readvariableop_resource:@@<
.model_conv2d_1_biasadd_readvariableop_resource:@G
-model_conv2d_2_conv2d_readvariableop_resource:@@<
.model_conv2d_2_biasadd_readvariableop_resource:@M
3model_encoder_output_conv2d_readvariableop_resource:@B
4model_encoder_output_biasadd_readvariableop_resource:L
2model_decoder_input_conv2d_readvariableop_resource:@A
3model_decoder_input_biasadd_readvariableop_resource:@G
-model_conv2d_3_conv2d_readvariableop_resource:@@<
.model_conv2d_3_biasadd_readvariableop_resource:@T
:model_depthwise_conv2d_2_depthwise_readvariableop_resource:@F
8model_depthwise_conv2d_2_biasadd_readvariableop_resource:@G
-model_conv2d_4_conv2d_readvariableop_resource:@ <
.model_conv2d_4_biasadd_readvariableop_resource: G
-model_conv2d_5_conv2d_readvariableop_resource:  <
.model_conv2d_5_biasadd_readvariableop_resource: T
:model_depthwise_conv2d_3_depthwise_readvariableop_resource: F
8model_depthwise_conv2d_3_biasadd_readvariableop_resource: M
3model_decoder_output_conv2d_readvariableop_resource: B
4model_decoder_output_biasadd_readvariableop_resource:
identity��#model/conv2d/BiasAdd/ReadVariableOp�"model/conv2d/Conv2D/ReadVariableOp�%model/conv2d_1/BiasAdd/ReadVariableOp�$model/conv2d_1/Conv2D/ReadVariableOp�%model/conv2d_2/BiasAdd/ReadVariableOp�$model/conv2d_2/Conv2D/ReadVariableOp�%model/conv2d_3/BiasAdd/ReadVariableOp�$model/conv2d_3/Conv2D/ReadVariableOp�%model/conv2d_4/BiasAdd/ReadVariableOp�$model/conv2d_4/Conv2D/ReadVariableOp�%model/conv2d_5/BiasAdd/ReadVariableOp�$model/conv2d_5/Conv2D/ReadVariableOp�*model/decoder_input/BiasAdd/ReadVariableOp�)model/decoder_input/Conv2D/ReadVariableOp�+model/decoder_output/BiasAdd/ReadVariableOp�*model/decoder_output/Conv2D/ReadVariableOp�-model/depthwise_conv2d/BiasAdd/ReadVariableOp�/model/depthwise_conv2d/depthwise/ReadVariableOp�/model/depthwise_conv2d_1/BiasAdd/ReadVariableOp�1model/depthwise_conv2d_1/depthwise/ReadVariableOp�/model/depthwise_conv2d_2/BiasAdd/ReadVariableOp�1model/depthwise_conv2d_2/depthwise/ReadVariableOp�/model/depthwise_conv2d_3/BiasAdd/ReadVariableOp�1model/depthwise_conv2d_3/depthwise/ReadVariableOp�+model/encoder_output/BiasAdd/ReadVariableOp�*model/encoder_output/Conv2D/ReadVariableOp{
model/depthwise_conv2d/CastCastinput_layer*

DstT0*

SrcT0*1
_output_shapes
:������������
/model/depthwise_conv2d/depthwise/ReadVariableOpReadVariableOp8model_depthwise_conv2d_depthwise_readvariableop_resource*&
_output_shapes
:*
dtype0�
%model/depthwise_conv2d/depthwise/CastCast7model/depthwise_conv2d/depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:
&model/depthwise_conv2d/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            
.model/depthwise_conv2d/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
 model/depthwise_conv2d/depthwiseDepthwiseConv2dNativemodel/depthwise_conv2d/Cast:y:0)model/depthwise_conv2d/depthwise/Cast:y:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
-model/depthwise_conv2d/BiasAdd/ReadVariableOpReadVariableOp6model_depthwise_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
#model/depthwise_conv2d/BiasAdd/CastCast5model/depthwise_conv2d/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
model/depthwise_conv2d/BiasAddBiasAdd)model/depthwise_conv2d/depthwise:output:0'model/depthwise_conv2d/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:������������
"model/conv2d/Conv2D/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
model/conv2d/Conv2D/CastCast*model/conv2d/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: �
model/conv2d/Conv2DConv2D'model/depthwise_conv2d/BiasAdd:output:0model/conv2d/Conv2D/Cast:y:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
#model/conv2d/BiasAdd/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model/conv2d/BiasAdd/CastCast+model/conv2d/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
model/conv2d/BiasAddBiasAddmodel/conv2d/Conv2D:output:0model/conv2d/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:����������� t
model/conv2d/ReluRelumodel/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
model/max_pooling2d/MaxPoolMaxPoolmodel/conv2d/Relu:activations:0*
T0*1
_output_shapes
:����������� *
ksize
*
paddingVALID*
strides
�
1model/depthwise_conv2d_1/depthwise/ReadVariableOpReadVariableOp:model_depthwise_conv2d_1_depthwise_readvariableop_resource*&
_output_shapes
: *
dtype0�
'model/depthwise_conv2d_1/depthwise/CastCast9model/depthwise_conv2d_1/depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: �
(model/depthwise_conv2d_1/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/depthwise_conv2d_1/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
"model/depthwise_conv2d_1/depthwiseDepthwiseConv2dNative$model/max_pooling2d/MaxPool:output:0+model/depthwise_conv2d_1/depthwise/Cast:y:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
/model/depthwise_conv2d_1/BiasAdd/ReadVariableOpReadVariableOp8model_depthwise_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
%model/depthwise_conv2d_1/BiasAdd/CastCast7model/depthwise_conv2d_1/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
 model/depthwise_conv2d_1/BiasAddBiasAdd+model/depthwise_conv2d_1/depthwise:output:0)model/depthwise_conv2d_1/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:�����������@�
$model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
model/conv2d_1/Conv2D/CastCast,model/conv2d_1/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@@�
model/conv2d_1/Conv2DConv2D)model/depthwise_conv2d_1/BiasAdd:output:0model/conv2d_1/Conv2D/Cast:y:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
%model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model/conv2d_1/BiasAdd/CastCast-model/conv2d_1/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
model/conv2d_1/BiasAddBiasAddmodel/conv2d_1/Conv2D:output:0model/conv2d_1/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:�����������@x
model/conv2d_1/ReluRelumodel/conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@�
model/max_pooling2d_1/MaxPoolMaxPool!model/conv2d_1/Relu:activations:0*
T0*/
_output_shapes
:���������@@@*
ksize
*
paddingVALID*
strides
�
$model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
model/conv2d_2/Conv2D/CastCast,model/conv2d_2/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@@�
model/conv2d_2/Conv2DConv2D&model/max_pooling2d_1/MaxPool:output:0model/conv2d_2/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
%model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model/conv2d_2/BiasAdd/CastCast-model/conv2d_2/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
model/conv2d_2/BiasAddBiasAddmodel/conv2d_2/Conv2D:output:0model/conv2d_2/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@@v
model/conv2d_2/ReluRelumodel/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@@�
*model/encoder_output/Conv2D/ReadVariableOpReadVariableOp3model_encoder_output_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
 model/encoder_output/Conv2D/CastCast2model/encoder_output/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@�
model/encoder_output/Conv2DConv2D!model/conv2d_2/Relu:activations:0$model/encoder_output/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@*
paddingVALID*
strides
�
+model/encoder_output/BiasAdd/ReadVariableOpReadVariableOp4model_encoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!model/encoder_output/BiasAdd/CastCast3model/encoder_output/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
model/encoder_output/BiasAddBiasAdd$model/encoder_output/Conv2D:output:0%model/encoder_output/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@�
)model/decoder_input/Conv2D/ReadVariableOpReadVariableOp2model_decoder_input_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
model/decoder_input/Conv2D/CastCast1model/decoder_input/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@�
model/decoder_input/Conv2DConv2D%model/encoder_output/BiasAdd:output:0#model/decoder_input/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@@*
paddingVALID*
strides
�
*model/decoder_input/BiasAdd/ReadVariableOpReadVariableOp3model_decoder_input_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
 model/decoder_input/BiasAdd/CastCast2model/decoder_input/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
model/decoder_input/BiasAddBiasAdd#model/decoder_input/Conv2D:output:0$model/decoder_input/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@@�
model/decoder_input/ReluRelu$model/decoder_input/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@@�
$model/conv2d_3/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
model/conv2d_3/Conv2D/CastCast,model/conv2d_3/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@@�
model/conv2d_3/Conv2DConv2D&model/decoder_input/Relu:activations:0model/conv2d_3/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
%model/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model/conv2d_3/BiasAdd/CastCast-model/conv2d_3/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
model/conv2d_3/BiasAddBiasAddmodel/conv2d_3/Conv2D:output:0model/conv2d_3/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@@v
model/conv2d_3/ReluRelumodel/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@@j
model/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   l
model/up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
model/up_sampling2d/mulMul"model/up_sampling2d/Const:output:0$model/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:�
0model/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor!model/conv2d_3/Relu:activations:0model/up_sampling2d/mul:z:0*
T0*1
_output_shapes
:�����������@*
half_pixel_centers(�
1model/depthwise_conv2d_2/depthwise/ReadVariableOpReadVariableOp:model_depthwise_conv2d_2_depthwise_readvariableop_resource*&
_output_shapes
:@*
dtype0�
'model/depthwise_conv2d_2/depthwise/CastCast9model/depthwise_conv2d_2/depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@�
(model/depthwise_conv2d_2/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      �
0model/depthwise_conv2d_2/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
"model/depthwise_conv2d_2/depthwiseDepthwiseConv2dNativeAmodel/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0+model/depthwise_conv2d_2/depthwise/Cast:y:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
/model/depthwise_conv2d_2/BiasAdd/ReadVariableOpReadVariableOp8model_depthwise_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
%model/depthwise_conv2d_2/BiasAdd/CastCast7model/depthwise_conv2d_2/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
 model/depthwise_conv2d_2/BiasAddBiasAdd+model/depthwise_conv2d_2/depthwise:output:0)model/depthwise_conv2d_2/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:�����������@�
$model/conv2d_4/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
model/conv2d_4/Conv2D/CastCast,model/conv2d_4/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@ �
model/conv2d_4/Conv2DConv2D)model/depthwise_conv2d_2/BiasAdd:output:0model/conv2d_4/Conv2D/Cast:y:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
%model/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model/conv2d_4/BiasAdd/CastCast-model/conv2d_4/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
model/conv2d_4/BiasAddBiasAddmodel/conv2d_4/Conv2D:output:0model/conv2d_4/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:����������� x
model/conv2d_4/ReluRelumodel/conv2d_4/BiasAdd:output:0*
T0*1
_output_shapes
:����������� l
model/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"�   �   n
model/up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
model/up_sampling2d_1/mulMul$model/up_sampling2d_1/Const:output:0&model/up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:�
2model/up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor!model/conv2d_4/Relu:activations:0model/up_sampling2d_1/mul:z:0*
T0*1
_output_shapes
:����������� *
half_pixel_centers(�
$model/conv2d_5/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
model/conv2d_5/Conv2D/CastCast,model/conv2d_5/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
model/conv2d_5/Conv2DConv2DCmodel/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0model/conv2d_5/Conv2D/Cast:y:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
%model/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model/conv2d_5/BiasAdd/CastCast-model/conv2d_5/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
model/conv2d_5/BiasAddBiasAddmodel/conv2d_5/Conv2D:output:0model/conv2d_5/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:����������� x
model/conv2d_5/ReluRelumodel/conv2d_5/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
1model/depthwise_conv2d_3/depthwise/ReadVariableOpReadVariableOp:model_depthwise_conv2d_3_depthwise_readvariableop_resource*&
_output_shapes
: *
dtype0�
'model/depthwise_conv2d_3/depthwise/CastCast9model/depthwise_conv2d_3/depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: �
(model/depthwise_conv2d_3/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/depthwise_conv2d_3/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
"model/depthwise_conv2d_3/depthwiseDepthwiseConv2dNative!model/conv2d_5/Relu:activations:0+model/depthwise_conv2d_3/depthwise/Cast:y:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
/model/depthwise_conv2d_3/BiasAdd/ReadVariableOpReadVariableOp8model_depthwise_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
%model/depthwise_conv2d_3/BiasAdd/CastCast7model/depthwise_conv2d_3/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
 model/depthwise_conv2d_3/BiasAddBiasAdd+model/depthwise_conv2d_3/depthwise:output:0)model/depthwise_conv2d_3/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:����������� �
*model/decoder_output/Conv2D/ReadVariableOpReadVariableOp3model_decoder_output_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
 model/decoder_output/Conv2D/CastCast2model/decoder_output/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: �
model/decoder_output/Conv2DConv2D)model/depthwise_conv2d_3/BiasAdd:output:0$model/decoder_output/Conv2D/Cast:y:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
+model/decoder_output/BiasAdd/ReadVariableOpReadVariableOp4model_decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!model/decoder_output/BiasAdd/CastCast3model/decoder_output/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
model/decoder_output/BiasAddBiasAdd$model/decoder_output/Conv2D:output:0%model/decoder_output/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:������������
model/decoder_output/SigmoidSigmoid%model/decoder_output/BiasAdd:output:0*
T0*1
_output_shapes
:�����������y
IdentityIdentity model/decoder_output/Sigmoid:y:0^NoOp*
T0*1
_output_shapes
:������������	
NoOpNoOp$^model/conv2d/BiasAdd/ReadVariableOp#^model/conv2d/Conv2D/ReadVariableOp&^model/conv2d_1/BiasAdd/ReadVariableOp%^model/conv2d_1/Conv2D/ReadVariableOp&^model/conv2d_2/BiasAdd/ReadVariableOp%^model/conv2d_2/Conv2D/ReadVariableOp&^model/conv2d_3/BiasAdd/ReadVariableOp%^model/conv2d_3/Conv2D/ReadVariableOp&^model/conv2d_4/BiasAdd/ReadVariableOp%^model/conv2d_4/Conv2D/ReadVariableOp&^model/conv2d_5/BiasAdd/ReadVariableOp%^model/conv2d_5/Conv2D/ReadVariableOp+^model/decoder_input/BiasAdd/ReadVariableOp*^model/decoder_input/Conv2D/ReadVariableOp,^model/decoder_output/BiasAdd/ReadVariableOp+^model/decoder_output/Conv2D/ReadVariableOp.^model/depthwise_conv2d/BiasAdd/ReadVariableOp0^model/depthwise_conv2d/depthwise/ReadVariableOp0^model/depthwise_conv2d_1/BiasAdd/ReadVariableOp2^model/depthwise_conv2d_1/depthwise/ReadVariableOp0^model/depthwise_conv2d_2/BiasAdd/ReadVariableOp2^model/depthwise_conv2d_2/depthwise/ReadVariableOp0^model/depthwise_conv2d_3/BiasAdd/ReadVariableOp2^model/depthwise_conv2d_3/depthwise/ReadVariableOp,^model/encoder_output/BiasAdd/ReadVariableOp+^model/encoder_output/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#model/conv2d/BiasAdd/ReadVariableOp#model/conv2d/BiasAdd/ReadVariableOp2H
"model/conv2d/Conv2D/ReadVariableOp"model/conv2d/Conv2D/ReadVariableOp2N
%model/conv2d_1/BiasAdd/ReadVariableOp%model/conv2d_1/BiasAdd/ReadVariableOp2L
$model/conv2d_1/Conv2D/ReadVariableOp$model/conv2d_1/Conv2D/ReadVariableOp2N
%model/conv2d_2/BiasAdd/ReadVariableOp%model/conv2d_2/BiasAdd/ReadVariableOp2L
$model/conv2d_2/Conv2D/ReadVariableOp$model/conv2d_2/Conv2D/ReadVariableOp2N
%model/conv2d_3/BiasAdd/ReadVariableOp%model/conv2d_3/BiasAdd/ReadVariableOp2L
$model/conv2d_3/Conv2D/ReadVariableOp$model/conv2d_3/Conv2D/ReadVariableOp2N
%model/conv2d_4/BiasAdd/ReadVariableOp%model/conv2d_4/BiasAdd/ReadVariableOp2L
$model/conv2d_4/Conv2D/ReadVariableOp$model/conv2d_4/Conv2D/ReadVariableOp2N
%model/conv2d_5/BiasAdd/ReadVariableOp%model/conv2d_5/BiasAdd/ReadVariableOp2L
$model/conv2d_5/Conv2D/ReadVariableOp$model/conv2d_5/Conv2D/ReadVariableOp2X
*model/decoder_input/BiasAdd/ReadVariableOp*model/decoder_input/BiasAdd/ReadVariableOp2V
)model/decoder_input/Conv2D/ReadVariableOp)model/decoder_input/Conv2D/ReadVariableOp2Z
+model/decoder_output/BiasAdd/ReadVariableOp+model/decoder_output/BiasAdd/ReadVariableOp2X
*model/decoder_output/Conv2D/ReadVariableOp*model/decoder_output/Conv2D/ReadVariableOp2^
-model/depthwise_conv2d/BiasAdd/ReadVariableOp-model/depthwise_conv2d/BiasAdd/ReadVariableOp2b
/model/depthwise_conv2d/depthwise/ReadVariableOp/model/depthwise_conv2d/depthwise/ReadVariableOp2b
/model/depthwise_conv2d_1/BiasAdd/ReadVariableOp/model/depthwise_conv2d_1/BiasAdd/ReadVariableOp2f
1model/depthwise_conv2d_1/depthwise/ReadVariableOp1model/depthwise_conv2d_1/depthwise/ReadVariableOp2b
/model/depthwise_conv2d_2/BiasAdd/ReadVariableOp/model/depthwise_conv2d_2/BiasAdd/ReadVariableOp2f
1model/depthwise_conv2d_2/depthwise/ReadVariableOp1model/depthwise_conv2d_2/depthwise/ReadVariableOp2b
/model/depthwise_conv2d_3/BiasAdd/ReadVariableOp/model/depthwise_conv2d_3/BiasAdd/ReadVariableOp2f
1model/depthwise_conv2d_3/depthwise/ReadVariableOp1model/depthwise_conv2d_3/depthwise/ReadVariableOp2Z
+model/encoder_output/BiasAdd/ReadVariableOp+model/encoder_output/BiasAdd/ReadVariableOp2X
*model/encoder_output/Conv2D/ReadVariableOp*model/encoder_output/Conv2D/ReadVariableOp:^ Z
1
_output_shapes
:�����������
%
_user_specified_nameinput_layer
�
�
&__inference_conv2d_layer_call_fn_56619

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_55338y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:����������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_56719

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@@�
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@o
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�V
�
@__inference_model_layer_call_and_return_conditional_losses_56064
input_layer0
depthwise_conv2d_55994:$
depthwise_conv2d_55996:&
conv2d_55999: 
conv2d_56001: 2
depthwise_conv2d_1_56005: &
depthwise_conv2d_1_56007:@(
conv2d_1_56010:@@
conv2d_1_56012:@(
conv2d_2_56016:@@
conv2d_2_56018:@.
encoder_output_56021:@"
encoder_output_56023:-
decoder_input_56026:@!
decoder_input_56028:@(
conv2d_3_56031:@@
conv2d_3_56033:@2
depthwise_conv2d_2_56037:@&
depthwise_conv2d_2_56039:@(
conv2d_4_56042:@ 
conv2d_4_56044: (
conv2d_5_56048:  
conv2d_5_56050: 2
depthwise_conv2d_3_56053: &
depthwise_conv2d_3_56055: .
decoder_output_56058: "
decoder_output_56060:
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall�%decoder_input/StatefulPartitionedCall�&decoder_output/StatefulPartitionedCall�(depthwise_conv2d/StatefulPartitionedCall�*depthwise_conv2d_1/StatefulPartitionedCall�*depthwise_conv2d_2/StatefulPartitionedCall�*depthwise_conv2d_3/StatefulPartitionedCall�&encoder_output/StatefulPartitionedCallu
depthwise_conv2d/CastCastinput_layer*

DstT0*

SrcT0*1
_output_shapes
:������������
(depthwise_conv2d/StatefulPartitionedCallStatefulPartitionedCalldepthwise_conv2d/Cast:y:0depthwise_conv2d_55994depthwise_conv2d_55996*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_depthwise_conv2d_layer_call_and_return_conditional_losses_55319�
conv2d/StatefulPartitionedCallStatefulPartitionedCall1depthwise_conv2d/StatefulPartitionedCall:output:0conv2d_55999conv2d_56001*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_55338�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_55244�
*depthwise_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0depthwise_conv2d_1_56005depthwise_conv2d_1_56007*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_depthwise_conv2d_1_layer_call_and_return_conditional_losses_55359�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall3depthwise_conv2d_1/StatefulPartitionedCall:output:0conv2d_1_56010conv2d_1_56012*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_55378�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_55256�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_56016conv2d_2_56018*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_55398�
&encoder_output/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0encoder_output_56021encoder_output_56023*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_encoder_output_layer_call_and_return_conditional_losses_55416�
%decoder_input/StatefulPartitionedCallStatefulPartitionedCall/encoder_output/StatefulPartitionedCall:output:0decoder_input_56026decoder_input_56028*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_decoder_input_layer_call_and_return_conditional_losses_55435�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall.decoder_input/StatefulPartitionedCall:output:0conv2d_3_56031conv2d_3_56033*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_55454�
up_sampling2d/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_55275�
*depthwise_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0depthwise_conv2d_2_56037depthwise_conv2d_2_56039*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_55475�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall3depthwise_conv2d_2/StatefulPartitionedCall:output:0conv2d_4_56042conv2d_4_56044*
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
GPU2*0J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_55494�
up_sampling2d_1/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_55294�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_5_56048conv2d_5_56050*
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
GPU2*0J 8� *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_55514�
*depthwise_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0depthwise_conv2d_3_56053depthwise_conv2d_3_56055*
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
GPU2*0J 8� *V
fQRO
M__inference_depthwise_conv2d_3_layer_call_and_return_conditional_losses_55534�
&decoder_output/StatefulPartitionedCallStatefulPartitionedCall3depthwise_conv2d_3/StatefulPartitionedCall:output:0decoder_output_56058decoder_output_56060*
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
GPU2*0J 8� *R
fMRK
I__inference_decoder_output_layer_call_and_return_conditional_losses_55553�
IdentityIdentity/decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall&^decoder_input/StatefulPartitionedCall'^decoder_output/StatefulPartitionedCall)^depthwise_conv2d/StatefulPartitionedCall+^depthwise_conv2d_1/StatefulPartitionedCall+^depthwise_conv2d_2/StatefulPartitionedCall+^depthwise_conv2d_3/StatefulPartitionedCall'^encoder_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2N
%decoder_input/StatefulPartitionedCall%decoder_input/StatefulPartitionedCall2P
&decoder_output/StatefulPartitionedCall&decoder_output/StatefulPartitionedCall2T
(depthwise_conv2d/StatefulPartitionedCall(depthwise_conv2d/StatefulPartitionedCall2X
*depthwise_conv2d_1/StatefulPartitionedCall*depthwise_conv2d_1/StatefulPartitionedCall2X
*depthwise_conv2d_2/StatefulPartitionedCall*depthwise_conv2d_2/StatefulPartitionedCall2X
*depthwise_conv2d_3/StatefulPartitionedCall*depthwise_conv2d_3/StatefulPartitionedCall2P
&encoder_output/StatefulPartitionedCall&encoder_output/StatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_nameinput_layer
�
�
(__inference_conv2d_4_layer_call_fn_56833

inputs!
unknown:@ 
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
GPU2*0J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_55494�
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
1:+���������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
I__inference_encoder_output_layer_call_and_return_conditional_losses_55416

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@�
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:o
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�
�
(__inference_conv2d_2_layer_call_fn_56706

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_55398w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�V
�
@__inference_model_layer_call_and_return_conditional_losses_56138
input_layer0
depthwise_conv2d_56068:$
depthwise_conv2d_56070:&
conv2d_56073: 
conv2d_56075: 2
depthwise_conv2d_1_56079: &
depthwise_conv2d_1_56081:@(
conv2d_1_56084:@@
conv2d_1_56086:@(
conv2d_2_56090:@@
conv2d_2_56092:@.
encoder_output_56095:@"
encoder_output_56097:-
decoder_input_56100:@!
decoder_input_56102:@(
conv2d_3_56105:@@
conv2d_3_56107:@2
depthwise_conv2d_2_56111:@&
depthwise_conv2d_2_56113:@(
conv2d_4_56116:@ 
conv2d_4_56118: (
conv2d_5_56122:  
conv2d_5_56124: 2
depthwise_conv2d_3_56127: &
depthwise_conv2d_3_56129: .
decoder_output_56132: "
decoder_output_56134:
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall�%decoder_input/StatefulPartitionedCall�&decoder_output/StatefulPartitionedCall�(depthwise_conv2d/StatefulPartitionedCall�*depthwise_conv2d_1/StatefulPartitionedCall�*depthwise_conv2d_2/StatefulPartitionedCall�*depthwise_conv2d_3/StatefulPartitionedCall�&encoder_output/StatefulPartitionedCallu
depthwise_conv2d/CastCastinput_layer*

DstT0*

SrcT0*1
_output_shapes
:������������
(depthwise_conv2d/StatefulPartitionedCallStatefulPartitionedCalldepthwise_conv2d/Cast:y:0depthwise_conv2d_56068depthwise_conv2d_56070*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_depthwise_conv2d_layer_call_and_return_conditional_losses_55319�
conv2d/StatefulPartitionedCallStatefulPartitionedCall1depthwise_conv2d/StatefulPartitionedCall:output:0conv2d_56073conv2d_56075*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_55338�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_55244�
*depthwise_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0depthwise_conv2d_1_56079depthwise_conv2d_1_56081*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_depthwise_conv2d_1_layer_call_and_return_conditional_losses_55359�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall3depthwise_conv2d_1/StatefulPartitionedCall:output:0conv2d_1_56084conv2d_1_56086*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_55378�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_55256�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_56090conv2d_2_56092*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_55398�
&encoder_output/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0encoder_output_56095encoder_output_56097*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_encoder_output_layer_call_and_return_conditional_losses_55416�
%decoder_input/StatefulPartitionedCallStatefulPartitionedCall/encoder_output/StatefulPartitionedCall:output:0decoder_input_56100decoder_input_56102*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_decoder_input_layer_call_and_return_conditional_losses_55435�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall.decoder_input/StatefulPartitionedCall:output:0conv2d_3_56105conv2d_3_56107*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_55454�
up_sampling2d/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_55275�
*depthwise_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0depthwise_conv2d_2_56111depthwise_conv2d_2_56113*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_55475�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall3depthwise_conv2d_2/StatefulPartitionedCall:output:0conv2d_4_56116conv2d_4_56118*
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
GPU2*0J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_55494�
up_sampling2d_1/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_55294�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_5_56122conv2d_5_56124*
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
GPU2*0J 8� *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_55514�
*depthwise_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0depthwise_conv2d_3_56127depthwise_conv2d_3_56129*
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
GPU2*0J 8� *V
fQRO
M__inference_depthwise_conv2d_3_layer_call_and_return_conditional_losses_55534�
&decoder_output/StatefulPartitionedCallStatefulPartitionedCall3depthwise_conv2d_3/StatefulPartitionedCall:output:0decoder_output_56132decoder_output_56134*
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
GPU2*0J 8� *R
fMRK
I__inference_decoder_output_layer_call_and_return_conditional_losses_55553�
IdentityIdentity/decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall&^decoder_input/StatefulPartitionedCall'^decoder_output/StatefulPartitionedCall)^depthwise_conv2d/StatefulPartitionedCall+^depthwise_conv2d_1/StatefulPartitionedCall+^depthwise_conv2d_2/StatefulPartitionedCall+^depthwise_conv2d_3/StatefulPartitionedCall'^encoder_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2N
%decoder_input/StatefulPartitionedCall%decoder_input/StatefulPartitionedCall2P
&decoder_output/StatefulPartitionedCall&decoder_output/StatefulPartitionedCall2T
(depthwise_conv2d/StatefulPartitionedCall(depthwise_conv2d/StatefulPartitionedCall2X
*depthwise_conv2d_1/StatefulPartitionedCall*depthwise_conv2d_1/StatefulPartitionedCall2X
*depthwise_conv2d_2/StatefulPartitionedCall*depthwise_conv2d_2/StatefulPartitionedCall2X
*depthwise_conv2d_3/StatefulPartitionedCall*depthwise_conv2d_3/StatefulPartitionedCall2P
&encoder_output/StatefulPartitionedCall&encoder_output/StatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_nameinput_layer
�
�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_56784

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@@�
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@o
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�V
�
@__inference_model_layer_call_and_return_conditional_losses_55878

inputs0
depthwise_conv2d_55808:$
depthwise_conv2d_55810:&
conv2d_55813: 
conv2d_55815: 2
depthwise_conv2d_1_55819: &
depthwise_conv2d_1_55821:@(
conv2d_1_55824:@@
conv2d_1_55826:@(
conv2d_2_55830:@@
conv2d_2_55832:@.
encoder_output_55835:@"
encoder_output_55837:-
decoder_input_55840:@!
decoder_input_55842:@(
conv2d_3_55845:@@
conv2d_3_55847:@2
depthwise_conv2d_2_55851:@&
depthwise_conv2d_2_55853:@(
conv2d_4_55856:@ 
conv2d_4_55858: (
conv2d_5_55862:  
conv2d_5_55864: 2
depthwise_conv2d_3_55867: &
depthwise_conv2d_3_55869: .
decoder_output_55872: "
decoder_output_55874:
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall�%decoder_input/StatefulPartitionedCall�&decoder_output/StatefulPartitionedCall�(depthwise_conv2d/StatefulPartitionedCall�*depthwise_conv2d_1/StatefulPartitionedCall�*depthwise_conv2d_2/StatefulPartitionedCall�*depthwise_conv2d_3/StatefulPartitionedCall�&encoder_output/StatefulPartitionedCallp
depthwise_conv2d/CastCastinputs*

DstT0*

SrcT0*1
_output_shapes
:������������
(depthwise_conv2d/StatefulPartitionedCallStatefulPartitionedCalldepthwise_conv2d/Cast:y:0depthwise_conv2d_55808depthwise_conv2d_55810*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_depthwise_conv2d_layer_call_and_return_conditional_losses_55319�
conv2d/StatefulPartitionedCallStatefulPartitionedCall1depthwise_conv2d/StatefulPartitionedCall:output:0conv2d_55813conv2d_55815*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_55338�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_55244�
*depthwise_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0depthwise_conv2d_1_55819depthwise_conv2d_1_55821*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_depthwise_conv2d_1_layer_call_and_return_conditional_losses_55359�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall3depthwise_conv2d_1/StatefulPartitionedCall:output:0conv2d_1_55824conv2d_1_55826*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_55378�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_55256�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_55830conv2d_2_55832*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_55398�
&encoder_output/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0encoder_output_55835encoder_output_55837*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_encoder_output_layer_call_and_return_conditional_losses_55416�
%decoder_input/StatefulPartitionedCallStatefulPartitionedCall/encoder_output/StatefulPartitionedCall:output:0decoder_input_55840decoder_input_55842*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_decoder_input_layer_call_and_return_conditional_losses_55435�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall.decoder_input/StatefulPartitionedCall:output:0conv2d_3_55845conv2d_3_55847*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_55454�
up_sampling2d/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_55275�
*depthwise_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0depthwise_conv2d_2_55851depthwise_conv2d_2_55853*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_55475�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall3depthwise_conv2d_2/StatefulPartitionedCall:output:0conv2d_4_55856conv2d_4_55858*
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
GPU2*0J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_55494�
up_sampling2d_1/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_55294�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_5_55862conv2d_5_55864*
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
GPU2*0J 8� *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_55514�
*depthwise_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0depthwise_conv2d_3_55867depthwise_conv2d_3_55869*
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
GPU2*0J 8� *V
fQRO
M__inference_depthwise_conv2d_3_layer_call_and_return_conditional_losses_55534�
&decoder_output/StatefulPartitionedCallStatefulPartitionedCall3depthwise_conv2d_3/StatefulPartitionedCall:output:0decoder_output_55872decoder_output_55874*
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
GPU2*0J 8� *R
fMRK
I__inference_decoder_output_layer_call_and_return_conditional_losses_55553�
IdentityIdentity/decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall&^decoder_input/StatefulPartitionedCall'^decoder_output/StatefulPartitionedCall)^depthwise_conv2d/StatefulPartitionedCall+^depthwise_conv2d_1/StatefulPartitionedCall+^depthwise_conv2d_2/StatefulPartitionedCall+^depthwise_conv2d_3/StatefulPartitionedCall'^encoder_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2N
%decoder_input/StatefulPartitionedCall%decoder_input/StatefulPartitionedCall2P
&decoder_output/StatefulPartitionedCall&decoder_output/StatefulPartitionedCall2T
(depthwise_conv2d/StatefulPartitionedCall(depthwise_conv2d/StatefulPartitionedCall2X
*depthwise_conv2d_1/StatefulPartitionedCall*depthwise_conv2d_1/StatefulPartitionedCall2X
*depthwise_conv2d_2/StatefulPartitionedCall*depthwise_conv2d_2/StatefulPartitionedCall2X
*depthwise_conv2d_3/StatefulPartitionedCall*depthwise_conv2d_3/StatefulPartitionedCall2P
&encoder_output/StatefulPartitionedCall&encoder_output/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
M__inference_depthwise_conv2d_1_layer_call_and_return_conditional_losses_56665

inputs;
!depthwise_readvariableop_resource: -
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�depthwise/ReadVariableOp�
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
: *
dtype0x
depthwise/CastCast depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
	depthwiseDepthwiseConv2dNativeinputsdepthwise/Cast:y:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@t
BiasAddBiasAdddepthwise:output:0BiasAdd/Cast:y:0*
T0*1
_output_shapes
:�����������@i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:�����������@z
NoOpNoOp^BiasAdd/ReadVariableOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
�
%__inference_model_layer_call_fn_55615
input_layer!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@

unknown_10:$

unknown_11:@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@

unknown_16:@$

unknown_17:@ 

unknown_18: $

unknown_19:  

unknown_20: $

unknown_21: 

unknown_22: $

unknown_23: 

unknown_24:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_55560�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_nameinput_layer
�
�
M__inference_depthwise_conv2d_3_layer_call_and_return_conditional_losses_56908

inputs;
!depthwise_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�depthwise/ReadVariableOp�
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
: *
dtype0x
depthwise/CastCast depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
	depthwiseDepthwiseConv2dNativeinputsdepthwise/Cast:y:0*
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
BiasAddBiasAdddepthwise:output:0BiasAdd/Cast:y:0*
T0*A
_output_shapes/
-:+��������������������������� y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� z
NoOpNoOp^BiasAdd/ReadVariableOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
H__inference_decoder_input_layer_call_and_return_conditional_losses_56762

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@�
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@o
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
%__inference_model_layer_call_fn_55990
input_layer!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@

unknown_10:$

unknown_11:@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@

unknown_16:@$

unknown_17:@ 

unknown_18: $

unknown_19:  

unknown_20: $

unknown_21: 

unknown_22: $

unknown_23: 

unknown_24:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_55878�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_nameinput_layer
�
�
K__inference_depthwise_conv2d_layer_call_and_return_conditional_losses_55319

inputs;
!depthwise_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�depthwise/ReadVariableOp�
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:*
dtype0x
depthwise/CastCast depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
	depthwiseDepthwiseConv2dNativeinputsdepthwise/Cast:y:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:t
BiasAddBiasAdddepthwise:output:0BiasAdd/Cast:y:0*
T0*1
_output_shapes
:�����������i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:�����������z
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
d
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_56801

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
�
�
K__inference_depthwise_conv2d_layer_call_and_return_conditional_losses_56610

inputs;
!depthwise_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�depthwise/ReadVariableOp�
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:*
dtype0x
depthwise/CastCast depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
	depthwiseDepthwiseConv2dNativeinputsdepthwise/Cast:y:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:t
BiasAddBiasAdddepthwise:output:0BiasAdd/Cast:y:0*
T0*1
_output_shapes
:�����������i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:�����������z
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
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_56642

inputs
identity�
MaxPoolMaxPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
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
A__inference_conv2d_layer_call_and_return_conditional_losses_56632

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: �
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*1
_output_shapes
:����������� *
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
: q
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_5_layer_call_and_return_conditional_losses_56885

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
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
C__inference_conv2d_1_layer_call_and_return_conditional_losses_55378

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@@�
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@q
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*1
_output_shapes
:�����������@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
��
�
@__inference_model_layer_call_and_return_conditional_losses_56452

inputsL
2depthwise_conv2d_depthwise_readvariableop_resource:>
0depthwise_conv2d_biasadd_readvariableop_resource:?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: N
4depthwise_conv2d_1_depthwise_readvariableop_resource: @
2depthwise_conv2d_1_biasadd_readvariableop_resource:@A
'conv2d_1_conv2d_readvariableop_resource:@@6
(conv2d_1_biasadd_readvariableop_resource:@A
'conv2d_2_conv2d_readvariableop_resource:@@6
(conv2d_2_biasadd_readvariableop_resource:@G
-encoder_output_conv2d_readvariableop_resource:@<
.encoder_output_biasadd_readvariableop_resource:F
,decoder_input_conv2d_readvariableop_resource:@;
-decoder_input_biasadd_readvariableop_resource:@A
'conv2d_3_conv2d_readvariableop_resource:@@6
(conv2d_3_biasadd_readvariableop_resource:@N
4depthwise_conv2d_2_depthwise_readvariableop_resource:@@
2depthwise_conv2d_2_biasadd_readvariableop_resource:@A
'conv2d_4_conv2d_readvariableop_resource:@ 6
(conv2d_4_biasadd_readvariableop_resource: A
'conv2d_5_conv2d_readvariableop_resource:  6
(conv2d_5_biasadd_readvariableop_resource: N
4depthwise_conv2d_3_depthwise_readvariableop_resource: @
2depthwise_conv2d_3_biasadd_readvariableop_resource: G
-decoder_output_conv2d_readvariableop_resource: <
.decoder_output_biasadd_readvariableop_resource:
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�conv2d_5/BiasAdd/ReadVariableOp�conv2d_5/Conv2D/ReadVariableOp�$decoder_input/BiasAdd/ReadVariableOp�#decoder_input/Conv2D/ReadVariableOp�%decoder_output/BiasAdd/ReadVariableOp�$decoder_output/Conv2D/ReadVariableOp�'depthwise_conv2d/BiasAdd/ReadVariableOp�)depthwise_conv2d/depthwise/ReadVariableOp�)depthwise_conv2d_1/BiasAdd/ReadVariableOp�+depthwise_conv2d_1/depthwise/ReadVariableOp�)depthwise_conv2d_2/BiasAdd/ReadVariableOp�+depthwise_conv2d_2/depthwise/ReadVariableOp�)depthwise_conv2d_3/BiasAdd/ReadVariableOp�+depthwise_conv2d_3/depthwise/ReadVariableOp�%encoder_output/BiasAdd/ReadVariableOp�$encoder_output/Conv2D/ReadVariableOpp
depthwise_conv2d/CastCastinputs*

DstT0*

SrcT0*1
_output_shapes
:������������
)depthwise_conv2d/depthwise/ReadVariableOpReadVariableOp2depthwise_conv2d_depthwise_readvariableop_resource*&
_output_shapes
:*
dtype0�
depthwise_conv2d/depthwise/CastCast1depthwise_conv2d/depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:y
 depthwise_conv2d/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            y
(depthwise_conv2d/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
depthwise_conv2d/depthwiseDepthwiseConv2dNativedepthwise_conv2d/Cast:y:0#depthwise_conv2d/depthwise/Cast:y:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
'depthwise_conv2d/BiasAdd/ReadVariableOpReadVariableOp0depthwise_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
depthwise_conv2d/BiasAdd/CastCast/depthwise_conv2d/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
depthwise_conv2d/BiasAddBiasAdd#depthwise_conv2d/depthwise:output:0!depthwise_conv2d/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:������������
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d/Conv2D/CastCast$conv2d/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: �
conv2d/Conv2DConv2D!depthwise_conv2d/BiasAdd:output:0conv2d/Conv2D/Cast:y:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
conv2d/BiasAdd/CastCast%conv2d/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0conv2d/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:����������� h
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*
T0*1
_output_shapes
:����������� *
ksize
*
paddingVALID*
strides
�
+depthwise_conv2d_1/depthwise/ReadVariableOpReadVariableOp4depthwise_conv2d_1_depthwise_readvariableop_resource*&
_output_shapes
: *
dtype0�
!depthwise_conv2d_1/depthwise/CastCast3depthwise_conv2d_1/depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: {
"depthwise_conv2d_1/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             {
*depthwise_conv2d_1/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
depthwise_conv2d_1/depthwiseDepthwiseConv2dNativemax_pooling2d/MaxPool:output:0%depthwise_conv2d_1/depthwise/Cast:y:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
)depthwise_conv2d_1/BiasAdd/ReadVariableOpReadVariableOp2depthwise_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
depthwise_conv2d_1/BiasAdd/CastCast1depthwise_conv2d_1/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
depthwise_conv2d_1/BiasAddBiasAdd%depthwise_conv2d_1/depthwise:output:0#depthwise_conv2d_1/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:�����������@�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_1/Conv2D/CastCast&conv2d_1/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@@�
conv2d_1/Conv2DConv2D#depthwise_conv2d_1/BiasAdd:output:0conv2d_1/Conv2D/Cast:y:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0z
conv2d_1/BiasAdd/CastCast'conv2d_1/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0conv2d_1/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:�����������@l
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*
T0*/
_output_shapes
:���������@@@*
ksize
*
paddingVALID*
strides
�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_2/Conv2D/CastCast&conv2d_2/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@@�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0conv2d_2/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0z
conv2d_2/BiasAdd/CastCast'conv2d_2/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0conv2d_2/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@@j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@@�
$encoder_output/Conv2D/ReadVariableOpReadVariableOp-encoder_output_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
encoder_output/Conv2D/CastCast,encoder_output/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@�
encoder_output/Conv2DConv2Dconv2d_2/Relu:activations:0encoder_output/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@*
paddingVALID*
strides
�
%encoder_output/BiasAdd/ReadVariableOpReadVariableOp.encoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
encoder_output/BiasAdd/CastCast-encoder_output/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:�
encoder_output/BiasAddBiasAddencoder_output/Conv2D:output:0encoder_output/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@�
#decoder_input/Conv2D/ReadVariableOpReadVariableOp,decoder_input_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
decoder_input/Conv2D/CastCast+decoder_input/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@�
decoder_input/Conv2DConv2Dencoder_output/BiasAdd:output:0decoder_input/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@@*
paddingVALID*
strides
�
$decoder_input/BiasAdd/ReadVariableOpReadVariableOp-decoder_input_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
decoder_input/BiasAdd/CastCast,decoder_input/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
decoder_input/BiasAddBiasAdddecoder_input/Conv2D:output:0decoder_input/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@@t
decoder_input/ReluReludecoder_input/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@@�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_3/Conv2D/CastCast&conv2d_3/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@@�
conv2d_3/Conv2DConv2D decoder_input/Relu:activations:0conv2d_3/Conv2D/Cast:y:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0z
conv2d_3/BiasAdd/CastCast'conv2d_3/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0conv2d_3/BiasAdd/Cast:y:0*
T0*/
_output_shapes
:���������@@@j
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@@d
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   f
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      {
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:�
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_3/Relu:activations:0up_sampling2d/mul:z:0*
T0*1
_output_shapes
:�����������@*
half_pixel_centers(�
+depthwise_conv2d_2/depthwise/ReadVariableOpReadVariableOp4depthwise_conv2d_2_depthwise_readvariableop_resource*&
_output_shapes
:@*
dtype0�
!depthwise_conv2d_2/depthwise/CastCast3depthwise_conv2d_2/depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@{
"depthwise_conv2d_2/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      {
*depthwise_conv2d_2/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
depthwise_conv2d_2/depthwiseDepthwiseConv2dNative;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0%depthwise_conv2d_2/depthwise/Cast:y:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
)depthwise_conv2d_2/BiasAdd/ReadVariableOpReadVariableOp2depthwise_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
depthwise_conv2d_2/BiasAdd/CastCast1depthwise_conv2d_2/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@�
depthwise_conv2d_2/BiasAddBiasAdd%depthwise_conv2d_2/depthwise:output:0#depthwise_conv2d_2/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:�����������@�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
conv2d_4/Conv2D/CastCast&conv2d_4/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@ �
conv2d_4/Conv2DConv2D#depthwise_conv2d_2/BiasAdd:output:0conv2d_4/Conv2D/Cast:y:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0z
conv2d_4/BiasAdd/CastCast'conv2d_4/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0conv2d_4/BiasAdd/Cast:y:0*
T0*1
_output_shapes
:����������� l
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*1
_output_shapes
:����������� f
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"�   �   h
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:�
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_4/Relu:activations:0up_sampling2d_1/mul:z:0*
T0*1
_output_shapes
:����������� *
half_pixel_centers(�
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
conv2d_5/Conv2D/CastCast&conv2d_5/Conv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:  �
conv2d_5/Conv2DConv2D=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0conv2d_5/Conv2D/Cast:y:0*
T0*1
_output_shapes
:����������� *
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
T0*1
_output_shapes
:����������� l
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
+depthwise_conv2d_3/depthwise/ReadVariableOpReadVariableOp4depthwise_conv2d_3_depthwise_readvariableop_resource*&
_output_shapes
: *
dtype0�
!depthwise_conv2d_3/depthwise/CastCast3depthwise_conv2d_3/depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: {
"depthwise_conv2d_3/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             {
*depthwise_conv2d_3/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
depthwise_conv2d_3/depthwiseDepthwiseConv2dNativeconv2d_5/Relu:activations:0%depthwise_conv2d_3/depthwise/Cast:y:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
)depthwise_conv2d_3/BiasAdd/ReadVariableOpReadVariableOp2depthwise_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
depthwise_conv2d_3/BiasAdd/CastCast1depthwise_conv2d_3/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: �
depthwise_conv2d_3/BiasAddBiasAdd%depthwise_conv2d_3/depthwise:output:0#depthwise_conv2d_3/BiasAdd/Cast:y:0*
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
decoder_output/Conv2DConv2D#depthwise_conv2d_3/BiasAdd:output:0decoder_output/Conv2D/Cast:y:0*
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
:������������
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp%^decoder_input/BiasAdd/ReadVariableOp$^decoder_input/Conv2D/ReadVariableOp&^decoder_output/BiasAdd/ReadVariableOp%^decoder_output/Conv2D/ReadVariableOp(^depthwise_conv2d/BiasAdd/ReadVariableOp*^depthwise_conv2d/depthwise/ReadVariableOp*^depthwise_conv2d_1/BiasAdd/ReadVariableOp,^depthwise_conv2d_1/depthwise/ReadVariableOp*^depthwise_conv2d_2/BiasAdd/ReadVariableOp,^depthwise_conv2d_2/depthwise/ReadVariableOp*^depthwise_conv2d_3/BiasAdd/ReadVariableOp,^depthwise_conv2d_3/depthwise/ReadVariableOp&^encoder_output/BiasAdd/ReadVariableOp%^encoder_output/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2L
$decoder_input/BiasAdd/ReadVariableOp$decoder_input/BiasAdd/ReadVariableOp2J
#decoder_input/Conv2D/ReadVariableOp#decoder_input/Conv2D/ReadVariableOp2N
%decoder_output/BiasAdd/ReadVariableOp%decoder_output/BiasAdd/ReadVariableOp2L
$decoder_output/Conv2D/ReadVariableOp$decoder_output/Conv2D/ReadVariableOp2R
'depthwise_conv2d/BiasAdd/ReadVariableOp'depthwise_conv2d/BiasAdd/ReadVariableOp2V
)depthwise_conv2d/depthwise/ReadVariableOp)depthwise_conv2d/depthwise/ReadVariableOp2V
)depthwise_conv2d_1/BiasAdd/ReadVariableOp)depthwise_conv2d_1/BiasAdd/ReadVariableOp2Z
+depthwise_conv2d_1/depthwise/ReadVariableOp+depthwise_conv2d_1/depthwise/ReadVariableOp2V
)depthwise_conv2d_2/BiasAdd/ReadVariableOp)depthwise_conv2d_2/BiasAdd/ReadVariableOp2Z
+depthwise_conv2d_2/depthwise/ReadVariableOp+depthwise_conv2d_2/depthwise/ReadVariableOp2V
)depthwise_conv2d_3/BiasAdd/ReadVariableOp)depthwise_conv2d_3/BiasAdd/ReadVariableOp2Z
+depthwise_conv2d_3/depthwise/ReadVariableOp+depthwise_conv2d_3/depthwise/ReadVariableOp2N
%encoder_output/BiasAdd/ReadVariableOp%encoder_output/BiasAdd/ReadVariableOp2L
$encoder_output/Conv2D/ReadVariableOp$encoder_output/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_56687

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@@�
Conv2DConv2DinputsConv2D/Cast:y:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@q
BiasAddBiasAddConv2D:output:0BiasAdd/Cast:y:0*
T0*1
_output_shapes
:�����������@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
�
M__inference_depthwise_conv2d_1_layer_call_and_return_conditional_losses_55359

inputs;
!depthwise_readvariableop_resource: -
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�depthwise/ReadVariableOp�
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
: *
dtype0x
depthwise/CastCast depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
	depthwiseDepthwiseConv2dNativeinputsdepthwise/Cast:y:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0h
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@t
BiasAddBiasAdddepthwise:output:0BiasAdd/Cast:y:0*
T0*1
_output_shapes
:�����������@i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:�����������@z
NoOpNoOp^BiasAdd/ReadVariableOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
I
-__inference_max_pooling2d_layer_call_fn_56637

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
GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_55244�
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
C__inference_conv2d_4_layer_call_and_return_conditional_losses_55494

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@ �
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
1:+���������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
M__inference_depthwise_conv2d_3_layer_call_and_return_conditional_losses_55534

inputs;
!depthwise_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�depthwise/ReadVariableOp�
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
: *
dtype0x
depthwise/CastCast depthwise/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
: h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
	depthwiseDepthwiseConv2dNativeinputsdepthwise/Cast:y:0*
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
BiasAddBiasAdddepthwise:output:0BiasAdd/Cast:y:0*
T0*A
_output_shapes/
-:+��������������������������� y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� z
NoOpNoOp^BiasAdd/ReadVariableOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
K
/__inference_up_sampling2d_1_layer_call_fn_56851

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
GPU2*0J 8� *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_55294�
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
�V
�
@__inference_model_layer_call_and_return_conditional_losses_55560

inputs0
depthwise_conv2d_55320:$
depthwise_conv2d_55322:&
conv2d_55339: 
conv2d_55341: 2
depthwise_conv2d_1_55360: &
depthwise_conv2d_1_55362:@(
conv2d_1_55379:@@
conv2d_1_55381:@(
conv2d_2_55399:@@
conv2d_2_55401:@.
encoder_output_55417:@"
encoder_output_55419:-
decoder_input_55436:@!
decoder_input_55438:@(
conv2d_3_55455:@@
conv2d_3_55457:@2
depthwise_conv2d_2_55476:@&
depthwise_conv2d_2_55478:@(
conv2d_4_55495:@ 
conv2d_4_55497: (
conv2d_5_55515:  
conv2d_5_55517: 2
depthwise_conv2d_3_55535: &
depthwise_conv2d_3_55537: .
decoder_output_55554: "
decoder_output_55556:
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall�%decoder_input/StatefulPartitionedCall�&decoder_output/StatefulPartitionedCall�(depthwise_conv2d/StatefulPartitionedCall�*depthwise_conv2d_1/StatefulPartitionedCall�*depthwise_conv2d_2/StatefulPartitionedCall�*depthwise_conv2d_3/StatefulPartitionedCall�&encoder_output/StatefulPartitionedCallp
depthwise_conv2d/CastCastinputs*

DstT0*

SrcT0*1
_output_shapes
:������������
(depthwise_conv2d/StatefulPartitionedCallStatefulPartitionedCalldepthwise_conv2d/Cast:y:0depthwise_conv2d_55320depthwise_conv2d_55322*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_depthwise_conv2d_layer_call_and_return_conditional_losses_55319�
conv2d/StatefulPartitionedCallStatefulPartitionedCall1depthwise_conv2d/StatefulPartitionedCall:output:0conv2d_55339conv2d_55341*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_55338�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_55244�
*depthwise_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0depthwise_conv2d_1_55360depthwise_conv2d_1_55362*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_depthwise_conv2d_1_layer_call_and_return_conditional_losses_55359�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall3depthwise_conv2d_1/StatefulPartitionedCall:output:0conv2d_1_55379conv2d_1_55381*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_55378�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_55256�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_55399conv2d_2_55401*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_55398�
&encoder_output/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0encoder_output_55417encoder_output_55419*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_encoder_output_layer_call_and_return_conditional_losses_55416�
%decoder_input/StatefulPartitionedCallStatefulPartitionedCall/encoder_output/StatefulPartitionedCall:output:0decoder_input_55436decoder_input_55438*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_decoder_input_layer_call_and_return_conditional_losses_55435�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall.decoder_input/StatefulPartitionedCall:output:0conv2d_3_55455conv2d_3_55457*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_55454�
up_sampling2d/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_55275�
*depthwise_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0depthwise_conv2d_2_55476depthwise_conv2d_2_55478*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_55475�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall3depthwise_conv2d_2/StatefulPartitionedCall:output:0conv2d_4_55495conv2d_4_55497*
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
GPU2*0J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_55494�
up_sampling2d_1/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_55294�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_5_55515conv2d_5_55517*
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
GPU2*0J 8� *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_55514�
*depthwise_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0depthwise_conv2d_3_55535depthwise_conv2d_3_55537*
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
GPU2*0J 8� *V
fQRO
M__inference_depthwise_conv2d_3_layer_call_and_return_conditional_losses_55534�
&decoder_output/StatefulPartitionedCallStatefulPartitionedCall3depthwise_conv2d_3/StatefulPartitionedCall:output:0decoder_output_55554decoder_output_55556*
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
GPU2*0J 8� *R
fMRK
I__inference_decoder_output_layer_call_and_return_conditional_losses_55553�
IdentityIdentity/decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall&^decoder_input/StatefulPartitionedCall'^decoder_output/StatefulPartitionedCall)^depthwise_conv2d/StatefulPartitionedCall+^depthwise_conv2d_1/StatefulPartitionedCall+^depthwise_conv2d_2/StatefulPartitionedCall+^depthwise_conv2d_3/StatefulPartitionedCall'^encoder_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2N
%decoder_input/StatefulPartitionedCall%decoder_input/StatefulPartitionedCall2P
&decoder_output/StatefulPartitionedCall&decoder_output/StatefulPartitionedCall2T
(depthwise_conv2d/StatefulPartitionedCall(depthwise_conv2d/StatefulPartitionedCall2X
*depthwise_conv2d_1/StatefulPartitionedCall*depthwise_conv2d_1/StatefulPartitionedCall2X
*depthwise_conv2d_2/StatefulPartitionedCall*depthwise_conv2d_2/StatefulPartitionedCall2X
*depthwise_conv2d_3/StatefulPartitionedCall*depthwise_conv2d_3/StatefulPartitionedCall2P
&encoder_output/StatefulPartitionedCall&encoder_output/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_56846

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0r
Conv2D/CastCastConv2D/ReadVariableOp:value:0*

DstT0*

SrcT0*&
_output_shapes
:@ �
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
1:+���������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
(__inference_conv2d_5_layer_call_fn_56872

inputs!
unknown:  
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
GPU2*0J 8� *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_55514�
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
�
�
%__inference_model_layer_call_fn_56317

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@

unknown_10:$

unknown_11:@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@

unknown_16:@$

unknown_17:@ 

unknown_18: $

unknown_19:  

unknown_20: $

unknown_21: 

unknown_22: $

unknown_23: 

unknown_24:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_55878�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
f
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_55294

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
��
�)
__inference__traced_save_57214
file_prefix@
<savev2_depthwise_conv2d_depthwise_kernel_read_readvariableop4
0savev2_depthwise_conv2d_bias_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableopB
>savev2_depthwise_conv2d_1_depthwise_kernel_read_readvariableop6
2savev2_depthwise_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop4
0savev2_encoder_output_kernel_read_readvariableop2
.savev2_encoder_output_bias_read_readvariableop3
/savev2_decoder_input_kernel_read_readvariableop1
-savev2_decoder_input_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableopB
>savev2_depthwise_conv2d_2_depthwise_kernel_read_readvariableop6
2savev2_depthwise_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableopB
>savev2_depthwise_conv2d_3_depthwise_kernel_read_readvariableop6
2savev2_depthwise_conv2d_3_bias_read_readvariableop4
0savev2_decoder_output_kernel_read_readvariableop2
.savev2_decoder_output_bias_read_readvariableop/
+savev2_cond_1_adam_iter_read_readvariableop	1
-savev2_cond_1_adam_beta_1_read_readvariableop1
-savev2_cond_1_adam_beta_2_read_readvariableop0
,savev2_cond_1_adam_decay_read_readvariableop8
4savev2_cond_1_adam_learning_rate_read_readvariableop1
-savev2_current_loss_scale_read_readvariableop)
%savev2_good_steps_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopN
Jsavev2_cond_1_adam_depthwise_conv2d_depthwise_kernel_m_read_readvariableopB
>savev2_cond_1_adam_depthwise_conv2d_bias_m_read_readvariableop:
6savev2_cond_1_adam_conv2d_kernel_m_read_readvariableop8
4savev2_cond_1_adam_conv2d_bias_m_read_readvariableopP
Lsavev2_cond_1_adam_depthwise_conv2d_1_depthwise_kernel_m_read_readvariableopD
@savev2_cond_1_adam_depthwise_conv2d_1_bias_m_read_readvariableop<
8savev2_cond_1_adam_conv2d_1_kernel_m_read_readvariableop:
6savev2_cond_1_adam_conv2d_1_bias_m_read_readvariableop<
8savev2_cond_1_adam_conv2d_2_kernel_m_read_readvariableop:
6savev2_cond_1_adam_conv2d_2_bias_m_read_readvariableopB
>savev2_cond_1_adam_encoder_output_kernel_m_read_readvariableop@
<savev2_cond_1_adam_encoder_output_bias_m_read_readvariableopA
=savev2_cond_1_adam_decoder_input_kernel_m_read_readvariableop?
;savev2_cond_1_adam_decoder_input_bias_m_read_readvariableop<
8savev2_cond_1_adam_conv2d_3_kernel_m_read_readvariableop:
6savev2_cond_1_adam_conv2d_3_bias_m_read_readvariableopP
Lsavev2_cond_1_adam_depthwise_conv2d_2_depthwise_kernel_m_read_readvariableopD
@savev2_cond_1_adam_depthwise_conv2d_2_bias_m_read_readvariableop<
8savev2_cond_1_adam_conv2d_4_kernel_m_read_readvariableop:
6savev2_cond_1_adam_conv2d_4_bias_m_read_readvariableop<
8savev2_cond_1_adam_conv2d_5_kernel_m_read_readvariableop:
6savev2_cond_1_adam_conv2d_5_bias_m_read_readvariableopP
Lsavev2_cond_1_adam_depthwise_conv2d_3_depthwise_kernel_m_read_readvariableopD
@savev2_cond_1_adam_depthwise_conv2d_3_bias_m_read_readvariableopB
>savev2_cond_1_adam_decoder_output_kernel_m_read_readvariableop@
<savev2_cond_1_adam_decoder_output_bias_m_read_readvariableopN
Jsavev2_cond_1_adam_depthwise_conv2d_depthwise_kernel_v_read_readvariableopB
>savev2_cond_1_adam_depthwise_conv2d_bias_v_read_readvariableop:
6savev2_cond_1_adam_conv2d_kernel_v_read_readvariableop8
4savev2_cond_1_adam_conv2d_bias_v_read_readvariableopP
Lsavev2_cond_1_adam_depthwise_conv2d_1_depthwise_kernel_v_read_readvariableopD
@savev2_cond_1_adam_depthwise_conv2d_1_bias_v_read_readvariableop<
8savev2_cond_1_adam_conv2d_1_kernel_v_read_readvariableop:
6savev2_cond_1_adam_conv2d_1_bias_v_read_readvariableop<
8savev2_cond_1_adam_conv2d_2_kernel_v_read_readvariableop:
6savev2_cond_1_adam_conv2d_2_bias_v_read_readvariableopB
>savev2_cond_1_adam_encoder_output_kernel_v_read_readvariableop@
<savev2_cond_1_adam_encoder_output_bias_v_read_readvariableopA
=savev2_cond_1_adam_decoder_input_kernel_v_read_readvariableop?
;savev2_cond_1_adam_decoder_input_bias_v_read_readvariableop<
8savev2_cond_1_adam_conv2d_3_kernel_v_read_readvariableop:
6savev2_cond_1_adam_conv2d_3_bias_v_read_readvariableopP
Lsavev2_cond_1_adam_depthwise_conv2d_2_depthwise_kernel_v_read_readvariableopD
@savev2_cond_1_adam_depthwise_conv2d_2_bias_v_read_readvariableop<
8savev2_cond_1_adam_conv2d_4_kernel_v_read_readvariableop:
6savev2_cond_1_adam_conv2d_4_bias_v_read_readvariableop<
8savev2_cond_1_adam_conv2d_5_kernel_v_read_readvariableop:
6savev2_cond_1_adam_conv2d_5_bias_v_read_readvariableopP
Lsavev2_cond_1_adam_depthwise_conv2d_3_depthwise_kernel_v_read_readvariableopD
@savev2_cond_1_adam_depthwise_conv2d_3_bias_v_read_readvariableopB
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
: �2
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:X*
dtype0*�2
value�1B�1XB@layer_with_weights-0/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-8/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-11/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBoptimizer/loss_scale/current_loss_scale/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/loss_scale/good_steps/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-8/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-11/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-8/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-11/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:X*
dtype0*�
value�B�XB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �(
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0<savev2_depthwise_conv2d_depthwise_kernel_read_readvariableop0savev2_depthwise_conv2d_bias_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop>savev2_depthwise_conv2d_1_depthwise_kernel_read_readvariableop2savev2_depthwise_conv2d_1_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop0savev2_encoder_output_kernel_read_readvariableop.savev2_encoder_output_bias_read_readvariableop/savev2_decoder_input_kernel_read_readvariableop-savev2_decoder_input_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop>savev2_depthwise_conv2d_2_depthwise_kernel_read_readvariableop2savev2_depthwise_conv2d_2_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop>savev2_depthwise_conv2d_3_depthwise_kernel_read_readvariableop2savev2_depthwise_conv2d_3_bias_read_readvariableop0savev2_decoder_output_kernel_read_readvariableop.savev2_decoder_output_bias_read_readvariableop+savev2_cond_1_adam_iter_read_readvariableop-savev2_cond_1_adam_beta_1_read_readvariableop-savev2_cond_1_adam_beta_2_read_readvariableop,savev2_cond_1_adam_decay_read_readvariableop4savev2_cond_1_adam_learning_rate_read_readvariableop-savev2_current_loss_scale_read_readvariableop%savev2_good_steps_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopJsavev2_cond_1_adam_depthwise_conv2d_depthwise_kernel_m_read_readvariableop>savev2_cond_1_adam_depthwise_conv2d_bias_m_read_readvariableop6savev2_cond_1_adam_conv2d_kernel_m_read_readvariableop4savev2_cond_1_adam_conv2d_bias_m_read_readvariableopLsavev2_cond_1_adam_depthwise_conv2d_1_depthwise_kernel_m_read_readvariableop@savev2_cond_1_adam_depthwise_conv2d_1_bias_m_read_readvariableop8savev2_cond_1_adam_conv2d_1_kernel_m_read_readvariableop6savev2_cond_1_adam_conv2d_1_bias_m_read_readvariableop8savev2_cond_1_adam_conv2d_2_kernel_m_read_readvariableop6savev2_cond_1_adam_conv2d_2_bias_m_read_readvariableop>savev2_cond_1_adam_encoder_output_kernel_m_read_readvariableop<savev2_cond_1_adam_encoder_output_bias_m_read_readvariableop=savev2_cond_1_adam_decoder_input_kernel_m_read_readvariableop;savev2_cond_1_adam_decoder_input_bias_m_read_readvariableop8savev2_cond_1_adam_conv2d_3_kernel_m_read_readvariableop6savev2_cond_1_adam_conv2d_3_bias_m_read_readvariableopLsavev2_cond_1_adam_depthwise_conv2d_2_depthwise_kernel_m_read_readvariableop@savev2_cond_1_adam_depthwise_conv2d_2_bias_m_read_readvariableop8savev2_cond_1_adam_conv2d_4_kernel_m_read_readvariableop6savev2_cond_1_adam_conv2d_4_bias_m_read_readvariableop8savev2_cond_1_adam_conv2d_5_kernel_m_read_readvariableop6savev2_cond_1_adam_conv2d_5_bias_m_read_readvariableopLsavev2_cond_1_adam_depthwise_conv2d_3_depthwise_kernel_m_read_readvariableop@savev2_cond_1_adam_depthwise_conv2d_3_bias_m_read_readvariableop>savev2_cond_1_adam_decoder_output_kernel_m_read_readvariableop<savev2_cond_1_adam_decoder_output_bias_m_read_readvariableopJsavev2_cond_1_adam_depthwise_conv2d_depthwise_kernel_v_read_readvariableop>savev2_cond_1_adam_depthwise_conv2d_bias_v_read_readvariableop6savev2_cond_1_adam_conv2d_kernel_v_read_readvariableop4savev2_cond_1_adam_conv2d_bias_v_read_readvariableopLsavev2_cond_1_adam_depthwise_conv2d_1_depthwise_kernel_v_read_readvariableop@savev2_cond_1_adam_depthwise_conv2d_1_bias_v_read_readvariableop8savev2_cond_1_adam_conv2d_1_kernel_v_read_readvariableop6savev2_cond_1_adam_conv2d_1_bias_v_read_readvariableop8savev2_cond_1_adam_conv2d_2_kernel_v_read_readvariableop6savev2_cond_1_adam_conv2d_2_bias_v_read_readvariableop>savev2_cond_1_adam_encoder_output_kernel_v_read_readvariableop<savev2_cond_1_adam_encoder_output_bias_v_read_readvariableop=savev2_cond_1_adam_decoder_input_kernel_v_read_readvariableop;savev2_cond_1_adam_decoder_input_bias_v_read_readvariableop8savev2_cond_1_adam_conv2d_3_kernel_v_read_readvariableop6savev2_cond_1_adam_conv2d_3_bias_v_read_readvariableopLsavev2_cond_1_adam_depthwise_conv2d_2_depthwise_kernel_v_read_readvariableop@savev2_cond_1_adam_depthwise_conv2d_2_bias_v_read_readvariableop8savev2_cond_1_adam_conv2d_4_kernel_v_read_readvariableop6savev2_cond_1_adam_conv2d_4_bias_v_read_readvariableop8savev2_cond_1_adam_conv2d_5_kernel_v_read_readvariableop6savev2_cond_1_adam_conv2d_5_bias_v_read_readvariableopLsavev2_cond_1_adam_depthwise_conv2d_3_depthwise_kernel_v_read_readvariableop@savev2_cond_1_adam_depthwise_conv2d_3_bias_v_read_readvariableop>savev2_cond_1_adam_decoder_output_kernel_v_read_readvariableop<savev2_cond_1_adam_decoder_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *f
dtypes\
Z2X		�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: ::: : : :@:@@:@:@@:@:@::@:@:@@:@:@:@:@ : :  : : : : :: : : : : : : : : ::: : : :@:@@:@:@@:@:@::@:@:@@:@:@:@:@ : :  : : : : :::: : : :@:@@:@:@@:@:@::@:@:@@:@:@:@:@ : :  : : : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,	(
&
_output_shapes
:@@: 


_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :#

_output_shapes
: :,$(
&
_output_shapes
:: %

_output_shapes
::,&(
&
_output_shapes
: : '

_output_shapes
: :,((
&
_output_shapes
: : )

_output_shapes
:@:,*(
&
_output_shapes
:@@: +

_output_shapes
:@:,,(
&
_output_shapes
:@@: -

_output_shapes
:@:,.(
&
_output_shapes
:@: /

_output_shapes
::,0(
&
_output_shapes
:@: 1

_output_shapes
:@:,2(
&
_output_shapes
:@@: 3

_output_shapes
:@:,4(
&
_output_shapes
:@: 5

_output_shapes
:@:,6(
&
_output_shapes
:@ : 7

_output_shapes
: :,8(
&
_output_shapes
:  : 9

_output_shapes
: :,:(
&
_output_shapes
: : ;

_output_shapes
: :,<(
&
_output_shapes
: : =

_output_shapes
::,>(
&
_output_shapes
:: ?

_output_shapes
::,@(
&
_output_shapes
: : A

_output_shapes
: :,B(
&
_output_shapes
: : C

_output_shapes
:@:,D(
&
_output_shapes
:@@: E

_output_shapes
:@:,F(
&
_output_shapes
:@@: G

_output_shapes
:@:,H(
&
_output_shapes
:@: I

_output_shapes
::,J(
&
_output_shapes
:@: K

_output_shapes
:@:,L(
&
_output_shapes
:@@: M

_output_shapes
:@:,N(
&
_output_shapes
:@: O

_output_shapes
:@:,P(
&
_output_shapes
:@ : Q

_output_shapes
: :,R(
&
_output_shapes
:  : S

_output_shapes
: :,T(
&
_output_shapes
: : U

_output_shapes
: :,V(
&
_output_shapes
: : W

_output_shapes
::X

_output_shapes
: 
�
�
%__inference_model_layer_call_fn_56260

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@

unknown_10:$

unknown_11:@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@

unknown_16:@$

unknown_17:@ 

unknown_18: $

unknown_19:  

unknown_20: $

unknown_21: 

unknown_22: $

unknown_23: 

unknown_24:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_55560�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
.__inference_encoder_output_layer_call_fn_56728

inputs!
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_encoder_output_layer_call_and_return_conditional_losses_55416w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_55256

inputs
identity�
MaxPoolMaxPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
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
StatefulPartitionedCall:0�����������tensorflow/serving/predict:�
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"depthwise_kernel
#bias
 $_jit_compiled_convolution_op"
_tf_keras_layer
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

+kernel
,bias
 -_jit_compiled_convolution_op"
_tf_keras_layer
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:depthwise_kernel
;bias
 <_jit_compiled_convolution_op"
_tf_keras_layer
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

Ckernel
Dbias
 E_jit_compiled_convolution_op"
_tf_keras_layer
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses"
_tf_keras_layer
�
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses

Rkernel
Sbias
 T_jit_compiled_convolution_op"
_tf_keras_layer
�
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

[kernel
\bias
 ]_jit_compiled_convolution_op"
_tf_keras_layer
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses

dkernel
ebias
 f_jit_compiled_convolution_op"
_tf_keras_layer
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

mkernel
nbias
 o_jit_compiled_convolution_op"
_tf_keras_layer
�
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses"
_tf_keras_layer
�
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses
|depthwise_kernel
}bias
 ~_jit_compiled_convolution_op"
_tf_keras_layer
�
	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
"0
#1
+2
,3
:4
;5
C6
D7
R8
S9
[10
\11
d12
e13
m14
n15
|16
}17
�18
�19
�20
�21
�22
�23
�24
�25"
trackable_list_wrapper
�
"0
#1
+2
,3
:4
;5
C6
D7
R8
S9
[10
\11
d12
e13
m14
n15
|16
}17
�18
�19
�20
�21
�22
�23
�24
�25"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
%__inference_model_layer_call_fn_55615
%__inference_model_layer_call_fn_56260
%__inference_model_layer_call_fn_56317
%__inference_model_layer_call_fn_55990�
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
@__inference_model_layer_call_and_return_conditional_losses_56452
@__inference_model_layer_call_and_return_conditional_losses_56587
@__inference_model_layer_call_and_return_conditional_losses_56064
@__inference_model_layer_call_and_return_conditional_losses_56138�
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
 __inference__wrapped_model_55235input_layer"�
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
�
�
loss_scale
�base_optimizer
	�iter
�beta_1
�beta_2

�decay
�learning_rate"m�#m�+m�,m�:m�;m�Cm�Dm�Rm�Sm�[m�\m�dm�em�mm�nm�|m�}m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�"v�#v�+v�,v�:v�;v�Cv�Dv�Rv�Sv�[v�\v�dv�ev�mv�nv�|v�}v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�"
	optimizer
-
�serving_default"
signature_map
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_depthwise_conv2d_layer_call_fn_56596�
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
K__inference_depthwise_conv2d_layer_call_and_return_conditional_losses_56610�
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
;:92!depthwise_conv2d/depthwise_kernel
#:!2depthwise_conv2d/bias
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
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_conv2d_layer_call_fn_56619�
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
A__inference_conv2d_layer_call_and_return_conditional_losses_56632�
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
':% 2conv2d/kernel
: 2conv2d/bias
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
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_max_pooling2d_layer_call_fn_56637�
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
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_56642�
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
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_depthwise_conv2d_1_layer_call_fn_56651�
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
M__inference_depthwise_conv2d_1_layer_call_and_return_conditional_losses_56665�
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
=:; 2#depthwise_conv2d_1/depthwise_kernel
%:#@2depthwise_conv2d_1/bias
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
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_1_layer_call_fn_56674�
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
C__inference_conv2d_1_layer_call_and_return_conditional_losses_56687�
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
):'@@2conv2d_1/kernel
:@2conv2d_1/bias
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
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_max_pooling2d_1_layer_call_fn_56692�
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
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_56697�
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
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_2_layer_call_fn_56706�
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
C__inference_conv2d_2_layer_call_and_return_conditional_losses_56719�
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
):'@@2conv2d_2/kernel
:@2conv2d_2/bias
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
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_encoder_output_layer_call_fn_56728�
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
I__inference_encoder_output_layer_call_and_return_conditional_losses_56740�
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
/:-@2encoder_output/kernel
!:2encoder_output/bias
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
d0
e1"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_decoder_input_layer_call_fn_56749�
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
H__inference_decoder_input_layer_call_and_return_conditional_losses_56762�
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
.:,@2decoder_input/kernel
 :@2decoder_input/bias
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
m0
n1"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_3_layer_call_fn_56771�
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
 z�trace_0
�
�trace_02�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_56784�
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
 z�trace_0
):'@@2conv2d_3/kernel
:@2conv2d_3/bias
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_up_sampling2d_layer_call_fn_56789�
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
 z�trace_0
�
�trace_02�
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_56801�
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
 z�trace_0
.
|0
}1"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_depthwise_conv2d_2_layer_call_fn_56810�
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
 z�trace_0
�
�trace_02�
M__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_56824�
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
 z�trace_0
=:;@2#depthwise_conv2d_2/depthwise_kernel
%:#@2depthwise_conv2d_2/bias
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
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_4_layer_call_fn_56833�
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
 z�trace_0
�
�trace_02�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_56846�
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
 z�trace_0
):'@ 2conv2d_4/kernel
: 2conv2d_4/bias
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_up_sampling2d_1_layer_call_fn_56851�
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
 z�trace_0
�
�trace_02�
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_56863�
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
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_5_layer_call_fn_56872�
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
 z�trace_0
�
�trace_02�
C__inference_conv2d_5_layer_call_and_return_conditional_losses_56885�
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
 z�trace_0
):'  2conv2d_5/kernel
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
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_depthwise_conv2d_3_layer_call_fn_56894�
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
 z�trace_0
�
�trace_02�
M__inference_depthwise_conv2d_3_layer_call_and_return_conditional_losses_56908�
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
 z�trace_0
=:; 2#depthwise_conv2d_3/depthwise_kernel
%:# 2depthwise_conv2d_3/bias
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
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_decoder_output_layer_call_fn_56917�
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
 z�trace_0
�
�trace_02�
I__inference_decoder_output_layer_call_and_return_conditional_losses_56930�
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
 z�trace_0
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
13
14
15
16
17"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_model_layer_call_fn_55615input_layer"�
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
%__inference_model_layer_call_fn_56260inputs"�
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
%__inference_model_layer_call_fn_56317inputs"�
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
%__inference_model_layer_call_fn_55990input_layer"�
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
@__inference_model_layer_call_and_return_conditional_losses_56452inputs"�
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
@__inference_model_layer_call_and_return_conditional_losses_56587inputs"�
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
@__inference_model_layer_call_and_return_conditional_losses_56064input_layer"�
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
@__inference_model_layer_call_and_return_conditional_losses_56138input_layer"�
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
�current_loss_scale
�
good_steps"
_generic_user_object
"
_generic_user_object
:	 (2cond_1/Adam/iter
: (2cond_1/Adam/beta_1
: (2cond_1/Adam/beta_2
: (2cond_1/Adam/decay
#:! (2cond_1/Adam/learning_rate
�B�
#__inference_signature_wrapper_56203input_layer"�
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
0__inference_depthwise_conv2d_layer_call_fn_56596inputs"�
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
K__inference_depthwise_conv2d_layer_call_and_return_conditional_losses_56610inputs"�
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
&__inference_conv2d_layer_call_fn_56619inputs"�
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
A__inference_conv2d_layer_call_and_return_conditional_losses_56632inputs"�
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
-__inference_max_pooling2d_layer_call_fn_56637inputs"�
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
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_56642inputs"�
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
2__inference_depthwise_conv2d_1_layer_call_fn_56651inputs"�
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
M__inference_depthwise_conv2d_1_layer_call_and_return_conditional_losses_56665inputs"�
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
(__inference_conv2d_1_layer_call_fn_56674inputs"�
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
C__inference_conv2d_1_layer_call_and_return_conditional_losses_56687inputs"�
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
/__inference_max_pooling2d_1_layer_call_fn_56692inputs"�
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
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_56697inputs"�
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
(__inference_conv2d_2_layer_call_fn_56706inputs"�
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
C__inference_conv2d_2_layer_call_and_return_conditional_losses_56719inputs"�
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
.__inference_encoder_output_layer_call_fn_56728inputs"�
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
I__inference_encoder_output_layer_call_and_return_conditional_losses_56740inputs"�
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
-__inference_decoder_input_layer_call_fn_56749inputs"�
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
H__inference_decoder_input_layer_call_and_return_conditional_losses_56762inputs"�
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
(__inference_conv2d_3_layer_call_fn_56771inputs"�
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
C__inference_conv2d_3_layer_call_and_return_conditional_losses_56784inputs"�
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
-__inference_up_sampling2d_layer_call_fn_56789inputs"�
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
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_56801inputs"�
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
2__inference_depthwise_conv2d_2_layer_call_fn_56810inputs"�
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
M__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_56824inputs"�
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
(__inference_conv2d_4_layer_call_fn_56833inputs"�
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
C__inference_conv2d_4_layer_call_and_return_conditional_losses_56846inputs"�
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
/__inference_up_sampling2d_1_layer_call_fn_56851inputs"�
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
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_56863inputs"�
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
(__inference_conv2d_5_layer_call_fn_56872inputs"�
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
C__inference_conv2d_5_layer_call_and_return_conditional_losses_56885inputs"�
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
2__inference_depthwise_conv2d_3_layer_call_fn_56894inputs"�
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
M__inference_depthwise_conv2d_3_layer_call_and_return_conditional_losses_56908inputs"�
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
.__inference_decoder_output_layer_call_fn_56917inputs"�
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
I__inference_decoder_output_layer_call_and_return_conditional_losses_56930inputs"�
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
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
: 2current_loss_scale
:	 2
good_steps
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
G:E2/cond_1/Adam/depthwise_conv2d/depthwise_kernel/m
/:-2#cond_1/Adam/depthwise_conv2d/bias/m
3:1 2cond_1/Adam/conv2d/kernel/m
%:# 2cond_1/Adam/conv2d/bias/m
I:G 21cond_1/Adam/depthwise_conv2d_1/depthwise_kernel/m
1:/@2%cond_1/Adam/depthwise_conv2d_1/bias/m
5:3@@2cond_1/Adam/conv2d_1/kernel/m
':%@2cond_1/Adam/conv2d_1/bias/m
5:3@@2cond_1/Adam/conv2d_2/kernel/m
':%@2cond_1/Adam/conv2d_2/bias/m
;:9@2#cond_1/Adam/encoder_output/kernel/m
-:+2!cond_1/Adam/encoder_output/bias/m
::8@2"cond_1/Adam/decoder_input/kernel/m
,:*@2 cond_1/Adam/decoder_input/bias/m
5:3@@2cond_1/Adam/conv2d_3/kernel/m
':%@2cond_1/Adam/conv2d_3/bias/m
I:G@21cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/m
1:/@2%cond_1/Adam/depthwise_conv2d_2/bias/m
5:3@ 2cond_1/Adam/conv2d_4/kernel/m
':% 2cond_1/Adam/conv2d_4/bias/m
5:3  2cond_1/Adam/conv2d_5/kernel/m
':% 2cond_1/Adam/conv2d_5/bias/m
I:G 21cond_1/Adam/depthwise_conv2d_3/depthwise_kernel/m
1:/ 2%cond_1/Adam/depthwise_conv2d_3/bias/m
;:9 2#cond_1/Adam/decoder_output/kernel/m
-:+2!cond_1/Adam/decoder_output/bias/m
G:E2/cond_1/Adam/depthwise_conv2d/depthwise_kernel/v
/:-2#cond_1/Adam/depthwise_conv2d/bias/v
3:1 2cond_1/Adam/conv2d/kernel/v
%:# 2cond_1/Adam/conv2d/bias/v
I:G 21cond_1/Adam/depthwise_conv2d_1/depthwise_kernel/v
1:/@2%cond_1/Adam/depthwise_conv2d_1/bias/v
5:3@@2cond_1/Adam/conv2d_1/kernel/v
':%@2cond_1/Adam/conv2d_1/bias/v
5:3@@2cond_1/Adam/conv2d_2/kernel/v
':%@2cond_1/Adam/conv2d_2/bias/v
;:9@2#cond_1/Adam/encoder_output/kernel/v
-:+2!cond_1/Adam/encoder_output/bias/v
::8@2"cond_1/Adam/decoder_input/kernel/v
,:*@2 cond_1/Adam/decoder_input/bias/v
5:3@@2cond_1/Adam/conv2d_3/kernel/v
':%@2cond_1/Adam/conv2d_3/bias/v
I:G@21cond_1/Adam/depthwise_conv2d_2/depthwise_kernel/v
1:/@2%cond_1/Adam/depthwise_conv2d_2/bias/v
5:3@ 2cond_1/Adam/conv2d_4/kernel/v
':% 2cond_1/Adam/conv2d_4/bias/v
5:3  2cond_1/Adam/conv2d_5/kernel/v
':% 2cond_1/Adam/conv2d_5/bias/v
I:G 21cond_1/Adam/depthwise_conv2d_3/depthwise_kernel/v
1:/ 2%cond_1/Adam/depthwise_conv2d_3/bias/v
;:9 2#cond_1/Adam/decoder_output/kernel/v
-:+2!cond_1/Adam/decoder_output/bias/v�
 __inference__wrapped_model_55235�""#+,:;CDRS[\demn|}��������>�;
4�1
/�,
input_layer�����������
� "I�F
D
decoder_output2�/
decoder_output������������
C__inference_conv2d_1_layer_call_and_return_conditional_losses_56687pCD9�6
/�,
*�'
inputs�����������@
� "/�,
%�"
0�����������@
� �
(__inference_conv2d_1_layer_call_fn_56674cCD9�6
/�,
*�'
inputs�����������@
� ""������������@�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_56719lRS7�4
-�*
(�%
inputs���������@@@
� "-�*
#� 
0���������@@@
� �
(__inference_conv2d_2_layer_call_fn_56706_RS7�4
-�*
(�%
inputs���������@@@
� " ����������@@@�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_56784lmn7�4
-�*
(�%
inputs���������@@@
� "-�*
#� 
0���������@@@
� �
(__inference_conv2d_3_layer_call_fn_56771_mn7�4
-�*
(�%
inputs���������@@@
� " ����������@@@�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_56846���I�F
?�<
:�7
inputs+���������������������������@
� "?�<
5�2
0+��������������������������� 
� �
(__inference_conv2d_4_layer_call_fn_56833���I�F
?�<
:�7
inputs+���������������������������@
� "2�/+��������������������������� �
C__inference_conv2d_5_layer_call_and_return_conditional_losses_56885���I�F
?�<
:�7
inputs+��������������������������� 
� "?�<
5�2
0+��������������������������� 
� �
(__inference_conv2d_5_layer_call_fn_56872���I�F
?�<
:�7
inputs+��������������������������� 
� "2�/+��������������������������� �
A__inference_conv2d_layer_call_and_return_conditional_losses_56632p+,9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0����������� 
� �
&__inference_conv2d_layer_call_fn_56619c+,9�6
/�,
*�'
inputs�����������
� ""������������ �
H__inference_decoder_input_layer_call_and_return_conditional_losses_56762lde7�4
-�*
(�%
inputs���������@@
� "-�*
#� 
0���������@@@
� �
-__inference_decoder_input_layer_call_fn_56749_de7�4
-�*
(�%
inputs���������@@
� " ����������@@@�
I__inference_decoder_output_layer_call_and_return_conditional_losses_56930���I�F
?�<
:�7
inputs+��������������������������� 
� "?�<
5�2
0+���������������������������
� �
.__inference_decoder_output_layer_call_fn_56917���I�F
?�<
:�7
inputs+��������������������������� 
� "2�/+����������������������������
M__inference_depthwise_conv2d_1_layer_call_and_return_conditional_losses_56665p:;9�6
/�,
*�'
inputs����������� 
� "/�,
%�"
0�����������@
� �
2__inference_depthwise_conv2d_1_layer_call_fn_56651c:;9�6
/�,
*�'
inputs����������� 
� ""������������@�
M__inference_depthwise_conv2d_2_layer_call_and_return_conditional_losses_56824�|}I�F
?�<
:�7
inputs+���������������������������@
� "?�<
5�2
0+���������������������������@
� �
2__inference_depthwise_conv2d_2_layer_call_fn_56810�|}I�F
?�<
:�7
inputs+���������������������������@
� "2�/+���������������������������@�
M__inference_depthwise_conv2d_3_layer_call_and_return_conditional_losses_56908���I�F
?�<
:�7
inputs+��������������������������� 
� "?�<
5�2
0+��������������������������� 
� �
2__inference_depthwise_conv2d_3_layer_call_fn_56894���I�F
?�<
:�7
inputs+��������������������������� 
� "2�/+��������������������������� �
K__inference_depthwise_conv2d_layer_call_and_return_conditional_losses_56610p"#9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
0__inference_depthwise_conv2d_layer_call_fn_56596c"#9�6
/�,
*�'
inputs�����������
� ""�������������
I__inference_encoder_output_layer_call_and_return_conditional_losses_56740l[\7�4
-�*
(�%
inputs���������@@@
� "-�*
#� 
0���������@@
� �
.__inference_encoder_output_layer_call_fn_56728_[\7�4
-�*
(�%
inputs���������@@@
� " ����������@@�
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_56697�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
/__inference_max_pooling2d_1_layer_call_fn_56692�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_56642�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
-__inference_max_pooling2d_layer_call_fn_56637�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
@__inference_model_layer_call_and_return_conditional_losses_56064�""#+,:;CDRS[\demn|}��������F�C
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
@__inference_model_layer_call_and_return_conditional_losses_56138�""#+,:;CDRS[\demn|}��������F�C
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
@__inference_model_layer_call_and_return_conditional_losses_56452�""#+,:;CDRS[\demn|}��������A�>
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
@__inference_model_layer_call_and_return_conditional_losses_56587�""#+,:;CDRS[\demn|}��������A�>
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
%__inference_model_layer_call_fn_55615�""#+,:;CDRS[\demn|}��������F�C
<�9
/�,
input_layer�����������
p 

 
� "2�/+����������������������������
%__inference_model_layer_call_fn_55990�""#+,:;CDRS[\demn|}��������F�C
<�9
/�,
input_layer�����������
p

 
� "2�/+����������������������������
%__inference_model_layer_call_fn_56260�""#+,:;CDRS[\demn|}��������A�>
7�4
*�'
inputs�����������
p 

 
� "2�/+����������������������������
%__inference_model_layer_call_fn_56317�""#+,:;CDRS[\demn|}��������A�>
7�4
*�'
inputs�����������
p

 
� "2�/+����������������������������
#__inference_signature_wrapper_56203�""#+,:;CDRS[\demn|}��������M�J
� 
C�@
>
input_layer/�,
input_layer�����������"I�F
D
decoder_output2�/
decoder_output������������
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_56863�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
/__inference_up_sampling2d_1_layer_call_fn_56851�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_56801�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
-__inference_up_sampling2d_layer_call_fn_56789�R�O
H�E
C�@
inputs4������������������������������������
� ";�84������������������������������������