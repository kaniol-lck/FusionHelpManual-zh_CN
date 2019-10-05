### Trails [Trls]

Trails工具用于创建图像中重影般的尾迹。当它应用在带有alpha通道的运动图像时，这会产生有趣的效果。与Directional Blur不同，只有图像之前的运动才会显示为效果的一部分。

#### Controls 控件

![Trls_Controls](images\Trls_Controls.png)

##### Restart 重新开始

此控件清除图像缓冲区并显示干净的帧，不含任何重影效果。

##### Preroll 预滚

这将使Trails工具根据滑块上的帧数预渲染效果。这将使Trails工具根据滑块上的帧数预渲染效果。

##### Reset/Pre-Roll on Render 渲染时重新开始/预滚

启用此复选框后，Trails工具将在启动预览或最终渲染时重置自身。它将预滚指定的帧数。

##### This Time Only 仅当前时间

选中此复选框将使预滚仅使用当前帧，而不使用先前帧。

##### Number of Pre-roll Frames 预滚帧数

这确定了要预滚动的帧数。

##### Lock RGBA 锁定RGBA

如果取消选中此复选框，则可以独立控制颜色通道的Gain。这样就可以给Trails效果上色。

##### Lock Scale X/Y 锁定缩放X/Y

如果取消选中此复选框，则可以为每个轴分别操纵图像缓冲区的X轴和Y轴缩放比例。

##### Lock Blur X/Y 锁定模糊X/Y

如果取消选中此复选框，则可以为每个轴分别控制图像缓冲区的模糊。

##### Gain 增益

Gain控件会影响缓冲区中图像的整体强度和亮度。此参数的较低值将创建更短、更暗淡的轨迹，而较高的值将创建更长、更实心的轨迹。

##### Rotate 旋转

在当前帧合并到效果之前，Rotate控件会旋转缓冲区中的图像。

##### Offset X/Y 偏移X/Y

在当前帧合并到效果之前，这些控件会偏移缓冲区中的图像。它们分别对每个轴进行控制。

##### Scale 缩放

在将当前帧合并到效果之前，Scale控件将调整缓冲区中图像的大小。

##### Blur Size 模糊尺寸

在将当前帧合并到效果之前，Blur Size控件将模糊应用于缓冲区中的图像。

##### Apply Mode 应用模式

此菜单用于确定将一个样本合并到另一个样本时Trails工具使用的方法。本菜单中合成工具（Composite Tools）一章Merge工具的文档中更完整地介绍了此菜单中的方法。

##### Operator Mode 运算器模式

此菜单用于选择确定前景和背景如何组合以产生结果。菜单仅在工具的Apply模式设置为Normal时会显示。

有关Operation模式的基础数学的精彩描述，请参阅《合成数字图像》（*Compositing Digital Images*），Porter, T和T. Duff，SIGGRAPH 84 proceedings，第253-259页。 基本上，数学上会如下所述。请注意，通过交换前景和背景输入（使用Command-T或Ctrl-T）并选择相应的模式，可以轻松获得运算器下拉列表中未列出的某些模式（Under、In、Held In、Below）。 

用于组合合并中的像素总是`fg * x + bg * y`。不同的操作确定`x`和`y`是什么，如每种模式的描述中所示。

- **Over：**Over模式通过将FG的alpha通道大于1的位置中的像素替换为BG中的像素，将FG图层添加到BG图层。

  `x = 1, y = 1-[foreground alpha]`
  
- **In：**  In模式将BG输入的alpha通道与FG中的像素相乘。FG输入的颜色通道将被忽略。在最终输出中只能看到来自FG的像素。这实质上是使用BG中的遮罩剪裁FG。

  `x = [background alpha], y = 0`

- **Held Out：**Held Out基本上与In操作相反。FG图像中的像素与BG图像的反转α通道相乘。使用In操作和Matte Control工具完成相同的结果，以反转BG图像的遮罩通道。

  `x = 1-[background alpha], y = 0`

- **ATop：**ATop仅在BG具有遮罩的情况下将FG放置在BG上。

  `x = [background alpha], y = 1-[foreground alpha]`

- **XOr：**当FG或BG有遮罩时，XOr将FG与BG结合在一起，但不会两者都没有遮罩。

  `x = 1-[background alpha], y = 1-[foreground alpha]`

##### Subtractive/Additive, Alpha Gain, Burn In 减性/加性、Alpha增益和烧入

有关这些控件及其效果的详细信息，请参阅合成工具（Composite Tools）一章中Merge工具的文档。

##### Merge Under 合并下方

这会将当前图像合并到生成的拖影下，而不是通常的上方操作。