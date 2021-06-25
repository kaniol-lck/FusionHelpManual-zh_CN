#### GLView

###### 类 GLView

父类：`FuView`

- <b>Python用法</b>：

  ```python
  # 使用Fusion示例的左侧GLView
  left = comp.GetPreviewList()["Left"]["View"]
  left.SetBuffer(0)
  ```

- <b>Lua用法</b>：

  ```lua
  -- 使用Fusion示例的左侧GLView
  left = comp:GetPreviewList().Left.View
  left:SetBuffer(0)
  ```

##### 成员

###### GLView.CurrentViewer

返回当前查看器。

- <b>获取</b>：
  
  ```lua
  viewer = GLView.CurrentViewer -- (GLViewer)
  ```

##### 方法

###### GLView.DisableCurrentTools()

透过当前选择的工具。

###### GLView.DisableSelectedTools()

透过选中的工具。

###### GLView.EnableLUT(*enable*)

启用或禁用当前的Monitor LUT。

- <b>参数</b>：

  `enable` （*布尔*） – enable

###### GLView.EnableStereo(*enable*)

启用或禁用3D立体显示。

- <b>参数</b>：

  `enable` （*布尔*） – enable

###### GLView.GetBuffer()

返回显示哪个缓冲区。

- <b>返回</b>：buffer 缓冲区
- <b>返回类型</b>：数值

###### GLView.GetLocked()

如果显示被锁定，则返回`true`。

- <b>返回</b>：enabled 启用
- <b>返回类型</b>：布尔

###### GLView.GetPos()

返回显示的位置。

在Python中使用GetPosTable。

- <b>返回</b>：x
- <b>返回类型</b>：数值

###### GLView.GetPosTable()

以表的形式返回显示的位置。

- <b>返回</b>：pos 位置
- <b>返回类型</b>：表

###### GLView.GetPrefs()

检索此视图的偏好设置表。

- <b>返回</b>：prefs 偏好设置
- <b>返回类型</b>：表

###### GLView.GetPreview([*buffer*])

返回缓冲区的预览。

- <b>参数</b>：

  `buffer` （*数值*） – buffer

###### GLView.GetRot()

返回显示器的x、y、z旋转角度（以度为单位）。

在Python中使用`GetRotTable`。

- <b>返回</b>：x
- <b>返回类型</b>：数值

###### GLView.GetRotTable()

以表格的形式返回显示的x、y、z旋转度。

- <b>返回</b>：rot 旋转
- <b>返回类型</b>：表

###### GLView.GetScale()

返回显示的比例。

- <b>返回</b>：scale 比例
- <b>返回类型</b>：数值

###### GLView.GetSplit()

获取视图的拆分位置。

在Python中使用`GetSplitTable`。

- <b>返回</b>：x
- <b>返回类型</b>：数值

###### GLView.GetSplitTable()

以表的形式获取视图的拆分位置。

- <b>返回</b>：split 拆分
- <b>返回类型</b>：表

###### GLView.GetStereoMethod()

返回用于立体声显示的方法和选项。

- <b>返回</b>：method 方法
- <b>返回类型</b>：字符串

###### GLView.GetStereoSource()

返回用于立体声显示的源。

- <b>返回</b>：ABsource AB源
- <b>返回类型</b>：布尔

###### GLView.GetViewerList()

返回可用查看器的列表。

- <b>返回</b>：viewers 查看器
- <b>返回类型</b>：表

###### GLView.IsLUTEnabled()

如果启用了当前的Monitor LUT，则返回`true`。

- <b>返回</b>：enabled 启用
- <b>返回类型</b>：布尔

###### GLView.IsStereoEnabled()

指示当前是否启用立体声显示。

- <b>返回</b>：enabled 启用
- <b>返回类型</b>：布尔

###### GLView.IsStereoSwapped()

指示当前是否已左&右立体眼交换。

- <b>返回</b>：enabled 启用
- <b>返回类型</b>：布尔

###### GLView.LoadLUTFile(*pathname*)

将LUT文件、设置或LUT插件ID加载到Monitor LUT中。

- <b>参数</b>：

  `pathname` （***字符串***） – pathname

- <b>返回</b>：success 成功
- <b>返回类型</b>：布尔

###### GLView.LoadPrefs()

**注意：**此方法被重载，并具有其他参数。另见其他定义。

将当前视图首选项保存到命名配置。

###### GLView.LoadPrefs(*configname*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

将当前视图首选项保存到命名配置。

- <b>参数</b>：

  `configname` （***字符串***） – configname

###### GLView.ResetView()

将显示重置为默认位置等。

###### GLView.SavePrefs()

**注意：**此方法被重载，并具有其他参数。另见其他定义。

将当前视图首选项保存到命名配置。

###### GLView.SavePrefs(*configname*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

将当前视图首选项保存到命名配置。

- <b>参数</b>：

  `configname` （***字符串***） – configname

###### GLView.SetBuffer(*buffer*)

显示特定的缓冲区。

`SetBuffer`函数用于在Fusion的视图中显示A/B子视图的三个可能的视图选项中的特定一个。如上所述，0 = 正在运行函数的缓冲区视图，1 = 未正在运行函数的缓冲区视图，2 = A/B视图。因此，如果正在运行该功能的预览窗口是Left B视图，则如果整数值为0，则该功能会将显示查看器设置为B。

该视图将被设置为的buffer整数。缓冲区0 = 当前选定的缓冲区视图，1 = 不是当前视图的缓冲区视图，2 = A / B。

- <b>Python用法</b>：

  ```python
  # 将缓冲区设置为A/B，从中间分开45度
  left = comp.GetPreviewList()["Left"]["View"]
  left.SetBuffer(2)
  left.SetSplit(0.5, 0.5, 45)
  ```

- <b>Lua用法</b>：

  ```lua
  -- 将缓冲区设置为A / B，中间分开45度
  left = comp:GetPreviewList().Left.View
  left:SetBuffer(2)
  left:SetSplit(.5, .5, 45)
  ```

- <b>参数</b>：
  `buffer` （*数值*） – buffer

###### GLView.SetLocked(*enable*)

- <b>参数</b>：

  `enable` （*布尔*） – enable

###### GLView.SetPos(*x*, *y*[, *z*])

设置显示位置。

设置显示相对于中心(0, 0)的位置。在3D GLView中，可以在3D空间中设置视图位置。

`x` 以像素（2D）或单位（3D）为单位的X坐标

`y` 以像素（2D）或单位（3D）为单位的Y坐标

`z` 以单位（仅3D）为单位的Z坐标

- <b>参数</b>：
  `x` （*数值*） – x
  `y` （*数值*） – y
  `z` （*数值*） – z

###### GLView.SetRot(*x*, *y*, *z*)

设置显示器x、y、z旋转度数。

- <b>参数</b>：
  `x` （*数值*） – x
  `y` （*数值*） – y
  `z` （*数值*） – z

###### GLView.SetScale(*scale*)

设置显示比例。

SetScale函数用于设置视图的比例。

`scale` 以数值表示视图中图像的缩放比例。百分比会转换为数值（50％= 0.5，200％= 2.0），其中0是视图的Fit选项。

- <b>Python用法</b>：

  ```python
  # 适合左视图
  left = comp.GetPreviewList()["Left"]["View"]
  left.SetScale(0)
  ```

- <b>Lua用法</b>：

  ```lua
  -- 适合左视图
  left = comp:GetPreviewList().Left.View
  left:SetScale(0)
  ```

- <b>参数</b>：
  `scale` （*数值*） – scale

###### GLView.SetSplit(*x*, *y*, *angle*)

设置视图的分割位置。

根据x、y、坐标和角度设置A/B视图拆分。

`x` A/B分割视图中心的x轴坐标。

`y` A/B分割视图中心的y轴坐标。

`angle` A/B分割视线的角度。

- <b>Python用法</b>：

  ```python
  # 将缓冲区设置为A / B，中间分开45度
  left = comp.GetPreviewList()["Left"]["View"]
  left.SetBuffer(2)
  left.SetSplit(.5, .5, 45)
  ```

- <b>Lua用法</b>：

  ```lua
  -- 将缓冲区设置为A / B，中间分开45度
  left = comp:GetPreviewList().Left.View
  left:SetBuffer(2)
  left:SetSplit(.5, .5, 45)
  ```

- <b>参数</b>：
  `x` （*数值*） – x
  `y` （*数值*） – y
  `angle` （*数值*） – angle

###### GLView.SetStereoMethod(*method*\[, *option1*\]\[, *option*])

设置立体显示的方法。

- <b>参数</b>：
  `method` （***字符串***） – method
  `option1` – option1
  `option2` – option2

###### GLView.SetStereoSource(*ABsource*, *stacked*[, *stackmethod*])

设置左右立体声图像的信号源。

- <b>参数</b>：
  `ABsource` （*布尔*） – ABsource
  `stacked` （*布尔*） – stacked
  `stackmethod` （***字符串***） – stackmethod

###### GLView.ShowLUTEditor()

弹出当前Monitor LUT的Editor窗口。

###### GLView.ShowQuadView(*enable*)

将视图分为四个子视图。

- <b>参数</b>：

  `enable` （*布尔*） – enable

###### GLView.ShowSubView(*enable*)

启用插入式子视图显示。

- <b>参数</b>：

  `enable` （*布尔*） – enable

###### GLView.ShowingQuadView()

如果视图分为四个，则返回`true`。

- <b>返回</b>：enabled 启用
- <b>返回类型</b>：布尔

###### GLView.ShowingSubView()

如果当前正在显示插入式子视图，则返回`true`。

- <b>返回</b>：enabled 启用
- <b>返回类型</b>：布尔

###### GLView.SwapStereo()

**注意：**此方法被重载，并具有其他参数。另见其他定义。

交换左右立体眼视图。

###### GLView.SwapStereo(enable)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

交换左右立体眼视图。

- <b>参数</b>：

  `enable` （*布尔*） – enable

###### GLView.SwapSubView()

将主视图与子视图交换。

- <b>返回</b>：enabled 启用
- <b>返回类型</b>：布尔