### Shadow [Sh]

Shadow是一种多用途工具，可用于创建基于图像的Alpha通道信息的阴影。也可以使用其他图像来控制阴影的表面深度。

Shadow工具被设计来投射简单的2D阴影。使用Spotlight工具和Image Plane工具进行完整3D阴影投射。

#### Controls 控件

![SH_Controls](images\SH_Controls.png)

##### Shadow Offset 阴影偏移

此控件设置阴影对象与背景之间的视距。调整阴影偏移十字准线在视图中的位置是创建简单阴影的最快方法。

##### Softness 柔度

Softness控制阴影边缘的模糊程度。背景离物体越远，它变得越模糊。

##### Shadow Color 阴影颜色

使用此控件选择阴影的颜色。最逼真的阴影通常是不完全黑色和锋利的阴影。

##### Light Position 光源位置

此控件设置灯光相对于阴影投射对象的位置。仅当Light Distance滑块未设置为无穷大（1.0）时，才考虑Light Position。

##### Light Distance 光源距离

此滑块将改变无穷大（1.0）和与阴影投射对象的零距离之间的表面距离。设置Light Distance的好处是，生成的阴影看起来更逼真，阴影的其他部分比附近的部分更长。

##### Minimum Depth Map Light Distance 最小深度贴图光距离

此控件当图像连接到阴影的Depth Map输入时处于活动状态。滑块用于控制深度图对光距离的贡献量。深度贴图的黑暗区域使阴影更深。白色区域使其更接近相机。

##### Z Map Channel Z贴图通道

此菜单用于选择连接到该工具的Z Map输入的图像的哪个颜色通道来创建阴影深度图。可以在RGB和A、Luminance和Z缓冲通道中选择。

##### Output 输出

输出图像可以包含已应用阴影的图像，也可以仅包含阴影。

更改输出下拉列表中的设置可控制将使用哪种模式。当需要将色彩校正、透视或其他效果应用到生成的阴影与对象合并回之前，此方法会有帮助。

例如，使用Shadow Alpha控制阴影的透明度。