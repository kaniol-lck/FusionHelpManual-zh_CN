### Background [BG]

Background工具可用于生成从简单的彩色背景到复杂的可循环渐变的任何内容。

#### Color Tab 色彩选项卡

![BG_ColorTab](images\BG_ColorTab.jpg)

##### Mode 模式

此控件用于选择生成图像时背景工具使用的模式。它有四种选择。

- **Solid Color 实心颜色：**此默认值创建单色图像。
- **Horizontal 水平：**这会创建一个双色水平渐变。
- **Vertical 竖直：**这会创建一个双色垂直渐变。
- **Four Corner 四角：**这会创建一个四色角渐变。

##### Gradient 渐变

这将从自定义渐变创建背景。

![BG_Gradient](images\BG_Gradient.jpg)

##### Color 颜色

这些控件用于选择背景工具的颜色。根据所选模式，将显示一到四个颜色控件以创建线性颜色渐变背景。选择一个并从预设菜单中选择一种颜色或创建它们。或者，通过单击值框并键入值，通过键盘输入RGB值。每种颜色都有自己的Alpha值滑块，用于调整每种颜色的透明度。

##### Custom Gradient Controls 自定义渐变控件

显示的自定义渐变控件在本手册的工具控件（Tool Controls）一章中有详细介绍。有关设置自定义渐变来在Background工具中使用的详细信息，请参阅这

#### Image Tab 图像选项卡

此选项卡中的控件用于设置工具生成的图像的分辨率，颜色深度和像素宽高比。

![BG_ImageTab](images\BG_ImageTab.png)

##### Process Mode 处理模式

使用此菜单控件选择Fusion用于渲染图像更改的字段处理模式。默认选项由Frame Format偏好设置中的Has Fields复选框控件确定。有关字段处理的更多信息，请参阅帧格式（Frame Format）一章。

##### Global In and Out 全局入和出

使用此控件指定此工具在项目中的位置。使用Global In指定片段开始的帧和Global Out指定此片段在项目的全局范围内结束（包括）的帧。

该工具不会在此范围之外的帧上生成图像。

##### Use Frame Format Settings 使用帧格式设置

选中此复选框后，工具创建的图像的宽度，高度和像素方面将锁定为合成的Frame Format首选项中定义的值。如果更改了Frame Format偏好设置，则将更改工具生成的图像的分辨率来匹配。禁用此选项有利于以不同于最终渲染的最终目标分辨率的分辨率构建合成。

##### Width/Height 宽度/高度

这对控件用于设置工具创建的图像的宽度和高度尺寸。

##### Pixel Aspect 像素宽高比

此控件用于指定所创建图像的像素宽高比。宽高比为1:1将产生两边具有相同尺寸的正方形像素（如计算机显示监视器），而0.9:1的宽高比将产生略微矩形的像素（如NTSC监视器）。

##### Depth 深度

Depth按钮组用于设置Creator工具创建的图像的像素颜色深度。32位像素需要8倍像素的4倍内存，但色彩精度要高得多。浮点像素允许高于正常0..1范围的高动态范围值，用于表示比白色更亮或比黑色更暗的颜色。有关详细信息，请参阅帧格式（Frame Format）一章。

右键单击Width、Height或Pixel Aspect控件来显示列出偏好设置Frame Format选项卡中定义的文件格式的菜单。选择任何列出的选项将相应地将宽度、高度和像素宽高比设置为该格式的值。