### Highlight [Hil]

Highlight滤镜在图像的明亮区域中创建星形高光，类似于镜头星形滤镜效果。

#### Settings Tab 设置选项卡

![Hil_SettingsTab](images\Hil_SettingsTab.png)

##### Low and High 低和高

此范围控件指定图像中会产生高光的亮度值范围。小于Low值的值将不会高光显示。高于High值的值将获得完整的高光显示效果。

##### Curve 曲线

曲线值会更改高光显示长度上的下降。较高的值将使耀斑的亮度在高光中心附近下降，而较低的值将从中心进一步下降。

##### Length 长度

这指定的高光发出耀斑的长度。

##### Number of Points 点的数量

这确定了从高光发出耀斑的数量。

##### Angle 角度

使用此控件旋转高光。

##### Merge Over 合并

选中此复选框后，它将在原始图像上叠加效果。取消选中此复选框，输出有高光。这对于高光的下游颜色校正有帮助。

#### Color Scale Tab 颜色缩放选项卡

![Hil_ColorScaleTab](images\Hil_ColorScaleTab.png)

##### Red, Green and Blue Scale Red、Green和Blue缩放

向下移动一个或所有这些通道的滑块将改变高光的衰减颜色。

##### Alpha Scale Alpha缩放

向下移动Alpha滑块将使高光衰减更透明。

##### Highlight Masks 高光遮罩

Highlight工具提供了额外的遮罩输入，称为高光遮罩。这是一个预遮罩，用于确定在应用高光之前可以受高光影响的像素。与常规遮罩不同，当高光超出遮罩边缘时，它将不会从源像素中裁剪掉高光。