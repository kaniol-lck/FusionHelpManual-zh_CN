#### GLViewer

###### 类 GLViewer

父类：`Object`

2D和3D查看器的父类。

2D图像查看器是`GLImageViewer`子类的实例，并且具有其他方法来设置和显示DoD、RoI或LUT。

请注意，大多数设置方法都需要紧随`Redraw()`调用。

- <b>Python用法</b>：

  ```python
  # 使用左侧GLViewer
  left = comp.GetPreviewList()["Left"]["View"]
  left_viewer = left.CurrentViewer
  if left_viewer != None:
  	left_viewer.SetChannel(0)
  	left_viewer.Redraw()
  ```

- <b>Lua用法</b>：

  ```lua
  -- 使用左侧GLViewer
  left = comp:GetPreviewList().Left.View
  left_viewer = left.CurrentViewer
  if left_viewer ~= nil then
  	left_viewer:SetChannel(0)
  	left_viewer:Redraw()
  end
  ```


##### 方法

###### GLViewer.AreControlsShown()

如果控件正在视图中显示，则返回`true`。

- <b>返回</b>：enabled
- <b>返回类型</b>：布尔

###### GLViewer.AreGuidesShown()

如果在视图上显示图像参考线，则返回`true`。

- <b>返回</b>：enabled
- <b>返回类型</b>：布尔

###### GLViewer.GetAlphaOverlayColor()

返回正在使用的Alpha叠加层。

- <b>返回</b>：color
- <b>返回类型</b>：数值

###### GLViewer.GetAspectCorrection()

如果查看者正在校正图像的宽高比，则返回`true`。

- <b>返回</b>：enabled
- <b>返回类型</b>：布尔

###### GLViewer.GetChannel()

返回显示哪个通道。

- <b>返回</b>：channel
- <b>返回类型</b>：数值

###### GLViewer.GetPos()

获取查看器的位置。

在Python中使用`GetPosTable`。

- <b>返回</b>：x
- <b>返回类型</b>：数值

###### GLViewer.GetPosTable()

以表的形式获取查看器的位置。

- <b>返回</b>：pos
- <b>返回类型</b>：表

###### GLViewer.GetRot()

获取视图的旋转角度。

在Python中使用`GetPosTable`。

- <b>返回</b>：x
- <b>返回类型</b>：数值

###### GLViewer.GetRotTable()

以表的形式获取视图的旋转角度。

- <b>返回</b>：rot
- <b>返回类型</b>：表

###### GLViewer.GetScale()

获取视图的比例（缩放）。

- <b>返回</b>：scale
- <b>返回类型</b>：数值

###### GLViewer.LoadFile(*filename*)

加载并显示文件的内容。

- <b>参数</b>：

  `filename` （***字符串***） – filename

###### GLViewer.Redraw()

刷新查看器。

###### GLViewer.ResetView()

将显示重置为默认位置等。

###### GLViewer.SaveFile(*filename*)

保存当前显示的参数。

- <b>参数</b>：

  `filename` （***字符串***） – filename

###### GLViewer.SetAlphaOverlayColor(*color*)

选择要使用的Alpha叠加层。

- <b>参数</b>：

  `color` （*数值*） – color

###### GLViewer.SetAspectCorrection(*enable*)

启用或禁用宽高比校正。

- <b>参数</b>：

  `enable ` （*布尔*） – enable 

###### GLViewer.SetChannel(*channel*, *toggle*)

选择要显示的通道。

- <b>参数</b>：

  `channel` （*数值*） – channel
  `toggle` （*布尔*） – toggle

###### GLViewer.SetPos(*x*, *y*[, *z*])

设置查看器的位置。

- <b>参数</b>：
  `x` （*数值*） – x
  `y` （*数值*） – y
  `z` （*数值*） – z
- <b>返回</b>：success
- <b>返回类型</b>：布尔

###### GLViewer.SetRot(*x*, *y*, *z*)

设置视图的旋转。

- <b>参数</b>：
  `x` （*数值*） – x
  `y` （*数值*） – y
  `z` （*数值*） – z

###### GLViewer.SetScale(*scale*)

设置视图的比例（缩放）。

- <b>参数</b>：

  `scale` （*数值*） – scale

###### GLViewer.ShowControls(*enable*)

显示或隐藏视图上的控件。

- <b>参数</b>：

  `enable ` （*布尔*） – enable 

###### GLViewer.ShowGuides(*enable*)

在视图上显示或隐藏参考线。

- <b>参数</b>：

  `scale` （*数值*） – scale