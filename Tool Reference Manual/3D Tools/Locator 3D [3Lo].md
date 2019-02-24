### Locator 3D [3Lo]

Locator 3D工具的目的是将3D空间中的一个点转换为2D坐标，其他工具可以将其用作表达式或修饰器的一部分。

当Locator带有相机和输出图像的尺寸时，它将把3D控件的坐标转换为2D屏幕空间。2D位置成为一个数字输出，可以连接到或从其他工具。例如，要将椭圆的中心连接到Locator的2D位置，请右键单击Mask center控件，并选择Connect To > Locator 3D > Position。

提供给Locator输入的场景必须包含投影坐标的摄像机。因此，最佳的实现是在将摄像机引入场景的merge之后放置Locater。

如果一个物体连接到Locator工具的第二个输入，那么Locator将定位在对象的中心，而Transformation选项卡的Offset XYZ滑块将应用在对象的本地坐标空间而不是全局场景空间中。这对于跟踪一个对象的位置非常有用，而不考虑后续的任何其他转换。

#### 外部输入

 ![3Lo_tile](images\3Lo_tile.jpg)

*Locator3D.SceneInput*

[橙色，必需的]这个输入需要一个3D场景。

*Locator3D.Target*

[绿色，可选的]这个输入需要一个3D场景。当提供时，场景的转换中心用于设置定位器的位置。定位器的Transform控件从这个位置变为偏移量。

#### Controls

![3Lo_Controls](images\3Lo_Controls.png)

##### Size

size滑块用于设置Locater在屏幕上的十字准线的大小。

##### Color

基本的Color控件是用来设置Locater在屏幕上的十字准线的颜色。

##### Matte

启用Is Matte选项将对该对象应用一个特殊的纹理，使该对象不仅对摄像机不可见，而且还使直接出现在摄像机后面的所有东西也不可见。此选项将覆盖所有纹理。有关更多信息，请参见3D章节的Matte Objects部分。

- *Is Matte:* 当被激活时，像素在Z中的后于matte对象像素的对象不会被渲染。
- *Opaque Alpha:* 将matte对象的alpha值设置为1。此复选框仅在启用is Matte选项时可见。
- *Infinite Z:* 将Z通道中的值设置为无穷大。此复选框仅在启用is Matte选项时可见。

##### Sub ID

Sub ID滑块可用于选择特定物体的单个子元素，如由Text 3D工具生成的单个字符，或由Duplicate 3D工具创建的特定副本。

##### Make Renderable

定义OpenGL渲染器是否将Locator呈现为可见对象。Software渲染器目前不能渲染线条，因此会忽略这个选项。

##### Unseen by Camera

当选中Make Renderable选项时，将出现这个复选框控件。如果选中了Unseen by Camera复选框，那么Locater将在查看器中可见，但不会被Renderer 3D工具渲染成输出图像。

##### Camera Settings

- *Camera:* 这个下拉控件用于在场景中选择相机，该场景定义用于3D到2D坐标转换的屏幕空间。
- *Use Frame Format Settings:* 选择这个复选框，以覆盖宽度、高度和像素纵横比的控件，并强制它们使用composition的Frame Format首选项中定义的值替代。
- *Width, Height and Pixel Aspect:* 为了让Locater生成正确的2D转换，它必须知道图像的尺寸和比例。这些控件应该设置为与上面指定的相机关联的渲染器生成的图像相同的尺寸。右键单击这些控件将显示包含在composition首选项中配置的Frame Format的上下文菜单。

