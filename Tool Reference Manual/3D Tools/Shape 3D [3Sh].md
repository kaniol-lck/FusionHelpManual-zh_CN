### Shape 3D [3Sh] 形状3D

Shape 3D工具用于生成几种基本的基础三维物体，包括平面、立方体、球体和圆柱体。

#### External Inputs 外部输入

 ![3Sh_tile](images/3Sh_tile.jpg)

**Shape3d.SceneInput 场景输入** 

[橙色，必需的]这个输入需要一个3D场景。

**Shape3d.MaterialInput 材质输入** 

[绿色，可选的]此输入将接受2D图像或3D材质。如果提供2D图像，它将作为一个漫反射(diffuse)纹理映射，用于工具内建的基本材质。如果连接了3D材质，则基本材质将被禁用。

#### Controls 控件

![3Sh_Controls](images/3Sh_Controls.png)

##### Shape 形状

选择这些选项之一，以确定形状3D工具将生成哪些几何基础物体。下面的控件将更改为匹配所选形状。

- **Lock Width/Height/Depth 锁定宽度/高度/深度：**[plane, cube]如果勾选此复选框，宽度、高度和深度控件将作为一个单一大小的滑块锁定在一起。否则，将提供沿每个轴对形状大小的单独控制。
- **Size Width/Height/Depth 大小宽度/高度/深度：**[plane, cube]用于控制形状的大小。

##### Cube Mapping 立方体映射

[Cube]使用立方体映射来应用Shape工具的纹理(连接到纹理输入的2D图像)。

##### Radius 半径

[Sphere, Cylinder, Cone, Torus]设置所选形状的半径。

##### Top Radius 顶部半径

[Cone]此控件用于定义圆锥顶部的半径，使创建截短圆锥成为可能。

##### Start/End Angle 起始/结束角度

[Sphere, Cylinder, Cone, Torus]此范围控制决定绘制形状的扫描范围。180度的起始角和360度的结束角只能画出一半的形状。

##### Start/End Latitude 起始/结束纬度

[Sphere, Torus]此范围控制用于通过定义对象的纬向子部分对对象进行切片。

##### Bottom/Top Cap 底/顶封皮

[Cylinder, Cone]仅用于圆柱体和锥体形状，底盖和顶盖复选框用于确定是否创建了这些形状的端盖，或形状是否保持打开状态。

##### Section 截面

[Torus]只用于环面，Section控制组成环面管的厚度。

##### Subdivision Level/Base/Height 细分等级/基部/高度

[All shapes]用于所有形状，细分控件用于确定构成对象的mesh的镶嵌。细分越高，每个形状的顶点就越多。

##### Wireframe 线框

勾选此复选框将导致mesh只渲染对象的线框。目前，只有OpenGL渲染器支持线框渲染。

##### Visibility 可见性

- **Visible 可见：**如果Visibility复选框未被勾选，那么该对象在查看器中将不可见，也不会被Renderer 3D工具渲染到输出图像中。不可见的物体不会投射阴影。
- **Unseen by Cameras 摄像机不可视：**如果选择了Unseen by Cameras复选框，则对象将在查看器中可见(除非没有勾选Visible复选框)，而通过摄像机查看时不可见。对象不会被Renderer 3D工具渲染到输出图像中。当Software渲染器渲染时，未被看到的物体所投射的阴影仍然是可见的，而OpenGL渲染器不能。
- **Cull Front Face/Back Face 剔除前/后面：**使用这些选项在几何物体中剔除(消除)某些多边形的渲染和显示。如果勾选了Cull Back Face，那么所有远离摄像机的多边形将不会被渲染，也不会投射阴影。如果勾选了Cull Front Face，所有朝向摄像机的多边形都将同样被删除。勾选啊两个复选框与取消勾选Visible复选框具有相同的效果。
- **Ignore Transparent Pixels in Aux Channels 忽略辅助通道的透明像素：**在以前的Fusion版本中，透明像素被Software/GL渲染器拒绝。更具体地说，软件渲染器拒绝了带有R=G=B=A=0的像素，而GL渲染器拒绝了带有=0的像素。这是可选的。您可能希望这样做的原因是为透明区域获取aux通道(例如，Normals, Z, UVs)。例如，假设在后期，您想要替换一个3D元素上的纹理，该元素在某些区域是透明的，纹理在不同的区域是透明的，那么有透明区域设置辅助通道(特别是UVs)是很有用的。作为另一个例子，假设您正在做后期的DoF。您可能不希望Z通道设置在透明区域上，因为这会给您一个错误的深度。此外，请记住，这种拒绝是基于最终的像素颜色，包括灯光，如果它是开着的。如果你在透明的玻璃材料上有高光，这个复选框不会影响到它。

##### Lighting 光照

- **Affected by Lights 受光照影响：**如果这个复选框未被勾选，场景中的灯光将不会影响到对象，它将不会接收或投射阴影，它将显示在其颜色、纹理或材质的全亮度。
- **Shadow Caster 阴影投射者：**如果这个复选框未被勾选，该对象将不会在场景中的其他对象上投射阴影。
- **Shadow Receiver 阴影接受者：**如果此复选框未被勾选，则该对象将不会接收场景中其他对象投射的阴影。

##### Matte Matte

启用Is Matte选项将对该对象应用一个特殊的纹理，使该对象不仅对摄像机不可见，而且还使直接出现在摄像机后面的所有东西也不可见。此选项将覆盖所有纹理。有关更多信息，请参见3D章节的Matte Objects部分。

- **Is Matte 作为Matte：**当被激活时，像素在Z中的后于matte对象像素的对象不会被渲染。
- **Opaque Alpha 不透明alpha：**将matte对象的alpha值设置为1。此复选框仅在勾选is Matte选项时可见。
- **Infinite Z 无限Z：**将Z通道中的值设置为无穷大。此复选框仅在勾选is Matte选项时可见。

##### Blend Mode 混合模式

Blend Mode指定Renderer在将该对象与场景的其余部分组合时将使用哪种方法。混合模式与2D Merge工具中列出的模式基本相同。有关每种模式的详细解释，请参阅那个工具的部分。

混合模式最初设计用于2D图像。在光照的3D环境中使用它们会产生不希望的结果。为了获得最佳效果，请在软件中渲染的无光照3D场景中使用Apply模式。

- **OpenGL Blend Mode OpenGL混合模式：**使用此菜单来选择将在OpenGL渲染器处理几何物体时使用的混合模式。这也是在查看器中查看对象时使用的模式。目前OpenGL渲染器支持三种混合模式。
- **Software Blend Mode Software 混合模式：**使用此菜单选择在Software渲染器处理几何物体时使用的混合模式。目前，Software渲染器支持Merge工具文档中描述的所有模式，除了Dissolve模式。

#### Material Tab 材质选项卡

出现在此选项卡中的选项决定此工具创建的几何物体的外观。由于这些控件在生成几何物体的所有工具上都是相同的，因此在本文档的Common 3D控件一节中对这些控件进行了充分的描述。

如果外部3D材质连接到工具块的材质输入，那么这个选项卡中的控件将被Using External Material（使用外部材质）标签所取代。

![3Sh_Materials](images/3Sh_Materials.png)

#### 变换选项卡

此选项卡中出现的选项决定了此工具创建的几何物体的位置。由于这些控件在生成几何物体的所有工具上都是相同的，因此在本文档的Common 3D Controls部分中对这些控件进行了全面描述。

![3Sh_Transform](images/3Sh_Transform.png)

#### Sphere Map vs. Connecting the Texture to a Sphere Directly Sphere Map与直接将纹理连接到Sphere

您可以直接将经纬(球面投影)纹理映射连接到一个球体，而不是首先通过连线将其连接到Sphere Map工具。如果您将起始/结束角和纬度设置为小于360°/180°，则会导致不同的渲染。在第一种情况下，纹理将被压扁。当使用Sphere Map工具时，纹理将被裁剪。
比较：

![3Sh_Compare](images/3Sh_Compare.jpg)

> **注意：** 如果你直接将纹理导入球体，它也会被水平镜像。您可以首先使用Transform工具来“修复”这个问题。

