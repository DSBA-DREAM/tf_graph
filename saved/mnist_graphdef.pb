
F
PlaceholderPlaceholder*
dtype0*
shape:����������
J
Reshape/shapeConst*
dtype0*%
valueB"����         
E
ReshapeReshapePlaceholderReshape/shape*
Tshape0*
T0
G
Placeholder_1Placeholder*
dtype0*
shape:���������

P
random_normal/shapeConst*
dtype0*%
valueB"             
?
random_normal/meanConst*
dtype0*
valueB
 *    
A
random_normal/stddevConst*
dtype0*
valueB
 *
�#<

"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape*
dtype0*
seed�*
seed2*
T0
[
random_normal/mulMul"random_normal/RandomStandardNormalrandom_normal/stddev*
T0
D
random_normalAddrandom_normal/mulrandom_normal/mean*
T0
d
Variable
VariableV2*
	container *
dtype0*
shape: *
shared_name 
�
Variable/AssignAssignVariablerandom_normal*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable
I
Variable/readIdentityVariable*
T0*
_class
loc:@Variable
�
Conv2DConv2DReshapeVariable/read*
strides
*
use_cudnn_on_gpu(*
T0*
data_formatNHWC*
paddingSAME

ReluReluConv2D*
T0
s
MaxPoolMaxPoolRelu*
ksize
*
T0*
strides
*
data_formatNHWC*
paddingSAME
R
random_normal_1/shapeConst*
dtype0*%
valueB"          @   
A
random_normal_1/meanConst*
dtype0*
valueB
 *    
C
random_normal_1/stddevConst*
dtype0*
valueB
 *
�#<
�
$random_normal_1/RandomStandardNormalRandomStandardNormalrandom_normal_1/shape*
dtype0*
seed�*
seed2*
T0
a
random_normal_1/mulMul$random_normal_1/RandomStandardNormalrandom_normal_1/stddev*
T0
J
random_normal_1Addrandom_normal_1/mulrandom_normal_1/mean*
T0
f

Variable_1
VariableV2*
	container *
dtype0*
shape: @*
shared_name 
�
Variable_1/AssignAssign
Variable_1random_normal_1*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_1
O
Variable_1/readIdentity
Variable_1*
T0*
_class
loc:@Variable_1
�
Conv2D_1Conv2DMaxPoolVariable_1/read*
strides
*
use_cudnn_on_gpu(*
T0*
data_formatNHWC*
paddingSAME
!
Relu_1ReluConv2D_1*
T0
w
	MaxPool_1MaxPoolRelu_1*
ksize
*
T0*
strides
*
data_formatNHWC*
paddingSAME
D
Reshape_1/shapeConst*
dtype0*
valueB"����@  
G
	Reshape_1Reshape	MaxPool_1Reshape_1/shape*
Tshape0*
T0
o
#W3/Initializer/random_uniform/shapeConst*
dtype0*
valueB"@  
   *
_class
	loc:@W3
e
!W3/Initializer/random_uniform/minConst*
dtype0*
valueB
 *��2�*
_class
	loc:@W3
e
!W3/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *��2=*
_class
	loc:@W3
�
+W3/Initializer/random_uniform/RandomUniformRandomUniform#W3/Initializer/random_uniform/shape*
dtype0*
_class
	loc:@W3*
seed�*
T0*
seed2!
�
!W3/Initializer/random_uniform/subSub!W3/Initializer/random_uniform/max!W3/Initializer/random_uniform/min*
T0*
_class
	loc:@W3
�
!W3/Initializer/random_uniform/mulMul+W3/Initializer/random_uniform/RandomUniform!W3/Initializer/random_uniform/sub*
T0*
_class
	loc:@W3
�
W3/Initializer/random_uniformAdd!W3/Initializer/random_uniform/mul!W3/Initializer/random_uniform/min*
T0*
_class
	loc:@W3
n
W3
VariableV2*
	container *
dtype0*
_class
	loc:@W3*
shape:	�
*
shared_name 

	W3/AssignAssignW3W3/Initializer/random_uniform*
validate_shape(*
use_locking(*
T0*
_class
	loc:@W3
7
W3/readIdentityW3*
T0*
_class
	loc:@W3
C
random_normal_2/shapeConst*
dtype0*
valueB:

A
random_normal_2/meanConst*
dtype0*
valueB
 *    
C
random_normal_2/stddevConst*
dtype0*
valueB
 *  �?
�
$random_normal_2/RandomStandardNormalRandomStandardNormalrandom_normal_2/shape*
dtype0*
seed�*
seed2+*
T0
a
random_normal_2/mulMul$random_normal_2/RandomStandardNormalrandom_normal_2/stddev*
T0
J
random_normal_2Addrandom_normal_2/mulrandom_normal_2/mean*
T0
Z

Variable_2
VariableV2*
	container *
dtype0*
shape:
*
shared_name 
�
Variable_2/AssignAssign
Variable_2random_normal_2*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_2
O
Variable_2/readIdentity
Variable_2*
T0*
_class
loc:@Variable_2
S
MatMulMatMul	Reshape_1W3/read*
transpose_a( *
transpose_b( *
T0
,
addAddMatMulVariable_2/read*
T0
.
RankConst*
dtype0*
value	B :
,
ShapeShapeadd*
T0*
out_type0
0
Rank_1Const*
dtype0*
value	B :
.
Shape_1Shapeadd*
T0*
out_type0
/
Sub/yConst*
dtype0*
value	B :
"
SubSubRank_1Sub/y*
T0
6
Slice/beginPackSub*

axis *
N*
T0
8

Slice/sizeConst*
dtype0*
valueB:
F
SliceSliceShape_1Slice/begin
Slice/size*
T0*
Index0
F
concat/values_0Const*
dtype0*
valueB:
���������
5
concat/axisConst*
dtype0*
value	B : 
U
concatConcatV2concat/values_0Sliceconcat/axis*
N*

Tidx0*
T0
8
	Reshape_2Reshapeaddconcat*
Tshape0*
T0
0
Rank_2Const*
dtype0*
value	B :
8
Shape_2ShapePlaceholder_1*
T0*
out_type0
1
Sub_1/yConst*
dtype0*
value	B :
&
Sub_1SubRank_2Sub_1/y*
T0
:
Slice_1/beginPackSub_1*

axis *
N*
T0
:
Slice_1/sizeConst*
dtype0*
valueB:
L
Slice_1SliceShape_2Slice_1/beginSlice_1/size*
T0*
Index0
H
concat_1/values_0Const*
dtype0*
valueB:
���������
7
concat_1/axisConst*
dtype0*
value	B : 
]
concat_1ConcatV2concat_1/values_0Slice_1concat_1/axis*
N*

Tidx0*
T0
D
	Reshape_3ReshapePlaceholder_1concat_1*
Tshape0*
T0
]
SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogits	Reshape_2	Reshape_3*
T0
1
Sub_2/yConst*
dtype0*
value	B :
$
Sub_2SubRankSub_2/y*
T0
;
Slice_2/beginConst*
dtype0*
valueB: 
9
Slice_2/sizePackSub_2*

axis *
N*
T0
J
Slice_2SliceShapeSlice_2/beginSlice_2/size*
T0*
Index0
S
	Reshape_4ReshapeSoftmaxCrossEntropyWithLogitsSlice_2*
Tshape0*
T0
3
ConstConst*
dtype0*
valueB: 
D
MeanMean	Reshape_4Const*
T0*

Tidx0*
	keep_dims( 
8
gradients/ShapeConst*
dtype0*
valueB 
<
gradients/ConstConst*
dtype0*
valueB
 *  �?
A
gradients/FillFillgradients/Shapegradients/Const*
T0
O
!gradients/Mean_grad/Reshape/shapeConst*
dtype0*
valueB:
p
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
Tshape0*
T0
F
gradients/Mean_grad/ShapeShape	Reshape_4*
T0*
out_type0
s
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*

Tmultiples0
H
gradients/Mean_grad/Shape_1Shape	Reshape_4*
T0*
out_type0
D
gradients/Mean_grad/Shape_2Const*
dtype0*
valueB 
w
gradients/Mean_grad/ConstConst*
dtype0*
valueB: *.
_class$
" loc:@gradients/Mean_grad/Shape_1
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
y
gradients/Mean_grad/Const_1Const*
dtype0*
valueB: *.
_class$
" loc:@gradients/Mean_grad/Shape_1
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
w
gradients/Mean_grad/Maximum/yConst*
dtype0*
value	B :*.
_class$
" loc:@gradients/Mean_grad/Shape_1
�
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
�
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
V
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*

SrcT0
c
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0
_
gradients/Reshape_4_grad/ShapeShapeSoftmaxCrossEntropyWithLogits*
T0*
out_type0

 gradients/Reshape_4_grad/ReshapeReshapegradients/Mean_grad/truedivgradients/Reshape_4_grad/Shape*
Tshape0*
T0
K
gradients/zeros_like	ZerosLikeSoftmaxCrossEntropyWithLogits:1*
T0
n
;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
valueB :
���������
�
7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims gradients/Reshape_4_grad/Reshape;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0
�
0gradients/SoftmaxCrossEntropyWithLogits_grad/mulMul7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDimsSoftmaxCrossEntropyWithLogits:1*
T0
E
gradients/Reshape_2_grad/ShapeShapeadd*
T0*
out_type0
�
 gradients/Reshape_2_grad/ReshapeReshape0gradients/SoftmaxCrossEntropyWithLogits_grad/mulgradients/Reshape_2_grad/Shape*
Tshape0*
T0
B
gradients/add_grad/ShapeShapeMatMul*
T0*
out_type0
H
gradients/add_grad/Shape_1Const*
dtype0*
valueB:

�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0
�
gradients/add_grad/SumSum gradients/Reshape_2_grad/Reshape(gradients/add_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
n
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
Tshape0*
T0
�
gradients/add_grad/Sum_1Sum gradients/Reshape_2_grad/Reshape*gradients/add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
t
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
Tshape0*
T0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
�
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape
�
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1
�
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyW3/read*
transpose_a( *
transpose_b(*
T0
�
gradients/MatMul_grad/MatMul_1MatMul	Reshape_1+gradients/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
�
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
�
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
K
gradients/Reshape_1_grad/ShapeShape	MaxPool_1*
T0*
out_type0
�
 gradients/Reshape_1_grad/ReshapeReshape.gradients/MatMul_grad/tuple/control_dependencygradients/Reshape_1_grad/Shape*
Tshape0*
T0
�
$gradients/MaxPool_1_grad/MaxPoolGradMaxPoolGradRelu_1	MaxPool_1 gradients/Reshape_1_grad/Reshape*
paddingSAME*
ksize
*
strides
*
data_formatNHWC*
T0
a
gradients/Relu_1_grad/ReluGradReluGrad$gradients/MaxPool_1_grad/MaxPoolGradRelu_1*
T0
d
gradients/Conv2D_1_grad/ShapeNShapeNMaxPoolVariable_1/read*
N*
out_type0*
T0
�
+gradients/Conv2D_1_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_1_grad/ShapeNVariable_1/readgradients/Relu_1_grad/ReluGrad*
strides
*
use_cudnn_on_gpu(*
T0*
data_formatNHWC*
paddingSAME
�
,gradients/Conv2D_1_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool gradients/Conv2D_1_grad/ShapeN:1gradients/Relu_1_grad/ReluGrad*
strides
*
use_cudnn_on_gpu(*
T0*
data_formatNHWC*
paddingSAME
�
(gradients/Conv2D_1_grad/tuple/group_depsNoOp,^gradients/Conv2D_1_grad/Conv2DBackpropInput-^gradients/Conv2D_1_grad/Conv2DBackpropFilter
�
0gradients/Conv2D_1_grad/tuple/control_dependencyIdentity+gradients/Conv2D_1_grad/Conv2DBackpropInput)^gradients/Conv2D_1_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Conv2D_1_grad/Conv2DBackpropInput
�
2gradients/Conv2D_1_grad/tuple/control_dependency_1Identity,gradients/Conv2D_1_grad/Conv2DBackpropFilter)^gradients/Conv2D_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/Conv2D_1_grad/Conv2DBackpropFilter
�
"gradients/MaxPool_grad/MaxPoolGradMaxPoolGradReluMaxPool0gradients/Conv2D_1_grad/tuple/control_dependency*
paddingSAME*
ksize
*
strides
*
data_formatNHWC*
T0
[
gradients/Relu_grad/ReluGradReluGrad"gradients/MaxPool_grad/MaxPoolGradRelu*
T0
`
gradients/Conv2D_grad/ShapeNShapeNReshapeVariable/read*
N*
out_type0*
T0
�
)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/ShapeNVariable/readgradients/Relu_grad/ReluGrad*
strides
*
use_cudnn_on_gpu(*
T0*
data_formatNHWC*
paddingSAME
�
*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterReshapegradients/Conv2D_grad/ShapeN:1gradients/Relu_grad/ReluGrad*
strides
*
use_cudnn_on_gpu(*
T0*
data_formatNHWC*
paddingSAME
�
&gradients/Conv2D_grad/tuple/group_depsNoOp*^gradients/Conv2D_grad/Conv2DBackpropInput+^gradients/Conv2D_grad/Conv2DBackpropFilter
�
.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/Conv2D_grad/Conv2DBackpropInput
�
0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/Conv2D_grad/Conv2DBackpropFilter
c
beta1_power/initial_valueConst*
dtype0*
valueB
 *fff?*
_class
loc:@Variable
t
beta1_power
VariableV2*
	container *
dtype0*
shared_name *
shape: *
_class
loc:@Variable
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable
O
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@Variable
c
beta2_power/initial_valueConst*
dtype0*
valueB
 *w�?*
_class
loc:@Variable
t
beta2_power
VariableV2*
	container *
dtype0*
shared_name *
shape: *
_class
loc:@Variable
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable
O
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@Variable
y
Variable/Adam/Initializer/zerosConst*
dtype0*%
valueB *    *
_class
loc:@Variable
�
Variable/Adam
VariableV2*
	container *
dtype0*
_class
loc:@Variable*
shape: *
shared_name 
�
Variable/Adam/AssignAssignVariable/AdamVariable/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable
S
Variable/Adam/readIdentityVariable/Adam*
T0*
_class
loc:@Variable
{
!Variable/Adam_1/Initializer/zerosConst*
dtype0*%
valueB *    *
_class
loc:@Variable
�
Variable/Adam_1
VariableV2*
	container *
dtype0*
_class
loc:@Variable*
shape: *
shared_name 
�
Variable/Adam_1/AssignAssignVariable/Adam_1!Variable/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable
W
Variable/Adam_1/readIdentityVariable/Adam_1*
T0*
_class
loc:@Variable
}
!Variable_1/Adam/Initializer/zerosConst*
dtype0*%
valueB @*    *
_class
loc:@Variable_1
�
Variable_1/Adam
VariableV2*
	container *
dtype0*
_class
loc:@Variable_1*
shape: @*
shared_name 
�
Variable_1/Adam/AssignAssignVariable_1/Adam!Variable_1/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_1
Y
Variable_1/Adam/readIdentityVariable_1/Adam*
T0*
_class
loc:@Variable_1

#Variable_1/Adam_1/Initializer/zerosConst*
dtype0*%
valueB @*    *
_class
loc:@Variable_1
�
Variable_1/Adam_1
VariableV2*
	container *
dtype0*
_class
loc:@Variable_1*
shape: @*
shared_name 
�
Variable_1/Adam_1/AssignAssignVariable_1/Adam_1#Variable_1/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_1
]
Variable_1/Adam_1/readIdentityVariable_1/Adam_1*
T0*
_class
loc:@Variable_1
f
W3/Adam/Initializer/zerosConst*
dtype0*
valueB	�
*    *
_class
	loc:@W3
s
W3/Adam
VariableV2*
	container *
dtype0*
_class
	loc:@W3*
shape:	�
*
shared_name 
�
W3/Adam/AssignAssignW3/AdamW3/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
	loc:@W3
A
W3/Adam/readIdentityW3/Adam*
T0*
_class
	loc:@W3
h
W3/Adam_1/Initializer/zerosConst*
dtype0*
valueB	�
*    *
_class
	loc:@W3
u
	W3/Adam_1
VariableV2*
	container *
dtype0*
_class
	loc:@W3*
shape:	�
*
shared_name 
�
W3/Adam_1/AssignAssign	W3/Adam_1W3/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
	loc:@W3
E
W3/Adam_1/readIdentity	W3/Adam_1*
T0*
_class
	loc:@W3
q
!Variable_2/Adam/Initializer/zerosConst*
dtype0*
valueB
*    *
_class
loc:@Variable_2
~
Variable_2/Adam
VariableV2*
	container *
dtype0*
_class
loc:@Variable_2*
shape:
*
shared_name 
�
Variable_2/Adam/AssignAssignVariable_2/Adam!Variable_2/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_2
Y
Variable_2/Adam/readIdentityVariable_2/Adam*
T0*
_class
loc:@Variable_2
s
#Variable_2/Adam_1/Initializer/zerosConst*
dtype0*
valueB
*    *
_class
loc:@Variable_2
�
Variable_2/Adam_1
VariableV2*
	container *
dtype0*
_class
loc:@Variable_2*
shape:
*
shared_name 
�
Variable_2/Adam_1/AssignAssignVariable_2/Adam_1#Variable_2/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_2
]
Variable_2/Adam_1/readIdentityVariable_2/Adam_1*
T0*
_class
loc:@Variable_2
?
Adam/learning_rateConst*
dtype0*
valueB
 *o�:
7

Adam/beta1Const*
dtype0*
valueB
 *fff?
7

Adam/beta2Const*
dtype0*
valueB
 *w�?
9
Adam/epsilonConst*
dtype0*
valueB
 *w�+2
�
Adam/update_Variable/ApplyAdam	ApplyAdamVariableVariable/AdamVariable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/Conv2D_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*
_class
loc:@Variable
�
 Adam/update_Variable_1/ApplyAdam	ApplyAdam
Variable_1Variable_1/AdamVariable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/Conv2D_1_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*
_class
loc:@Variable_1
�
Adam/update_W3/ApplyAdam	ApplyAdamW3W3/Adam	W3/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*
_class
	loc:@W3
�
 Adam/update_Variable_2/ApplyAdam	ApplyAdam
Variable_2Variable_2/AdamVariable_2/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon-gradients/add_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*
_class
loc:@Variable_2
�
Adam/mulMulbeta1_power/read
Adam/beta1^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam^Adam/update_W3/ApplyAdam!^Adam/update_Variable_2/ApplyAdam*
T0*
_class
loc:@Variable
{
Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
use_locking( *
T0*
_class
loc:@Variable
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam^Adam/update_W3/ApplyAdam!^Adam/update_Variable_2/ApplyAdam*
T0*
_class
loc:@Variable

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
validate_shape(*
use_locking( *
T0*
_class
loc:@Variable
�
AdamNoOp^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam^Adam/update_W3/ApplyAdam!^Adam/update_Variable_2/ApplyAdam^Adam/Assign^Adam/Assign_1
�
initNoOp^Variable/Assign^Variable_1/Assign
^W3/Assign^Variable_2/Assign^beta1_power/Assign^beta2_power/Assign^Variable/Adam/Assign^Variable/Adam_1/Assign^Variable_1/Adam/Assign^Variable_1/Adam_1/Assign^W3/Adam/Assign^W3/Adam_1/Assign^Variable_2/Adam/Assign^Variable_2/Adam_1/Assign
:
ArgMax/dimensionConst*
dtype0*
value	B :
O
ArgMaxArgMaxaddArgMax/dimension*
output_type0	*
T0*

Tidx0
<
ArgMax_1/dimensionConst*
dtype0*
value	B :
]
ArgMax_1ArgMaxPlaceholder_1ArgMax_1/dimension*
output_type0	*
T0*

Tidx0
)
EqualEqualArgMaxArgMax_1*
T0	
-
Cast_1CastEqual*

DstT0*

SrcT0

5
Const_1Const*
dtype0*
valueB: 
E
Mean_1MeanCast_1Const_1*
T0*

Tidx0*
	keep_dims( 
�
ArgMax_2/inputConst*
dtype0*i
value`B^
"P                                                      �?                        
<
ArgMax_2/dimensionConst*
dtype0*
value	B :
^
ArgMax_2ArgMaxArgMax_2/inputArgMax_2/dimension*
output_type0	*
T0*

Tidx0
<
ArgMax_3/dimensionConst*
dtype0*
value	B :
S
ArgMax_3ArgMaxaddArgMax_3/dimension*
output_type0	*
T0*

Tidx0"