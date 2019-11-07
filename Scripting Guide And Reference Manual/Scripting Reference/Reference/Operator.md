#### Operator

###### 类 Operator

父类：`Object`

是所有`Tool`、`Modifier`等的基类。

###### Operator属性

| 属性名称                    | 类型 | 描述 |
| --------------------------- | ---- | ---- |
| `TOOLS_Name`                  | 字符串 | 该工具的全名 |
| `TOOLB_Visible`               | 整型 | 表示此工具在流程上是可见的还是不可见的工具（例如修改器）。 |
| `TOOLB_Locked`                | 布尔 | 表示该工具是否锁定。 |
| `TOOLB_PassThrough`           | 布尔 | 表示该工具是否设置为透过。 |
| `TOOLB_HoldOutput`            | 布尔 | 表示此工具是否设置为保留其输出（不更新）。 |
| `TOOLB_CtrlWZoom`             | 整型 | 表示此工具的控制窗口是打开还是关闭。 |
| `TOOLB_NameSet`               | 布尔 | 表示此工具的名称是由用户设置的还是默认名称。 |
| `TOOLB_CacheToDisk`           | 整型 | 表示此工具是否设置为将自身缓存到磁盘。 |
| `TOOLS_RegID`                 | 字符串 | 此工具的RegID |
| `TOOLH_GroupParent`           | `group`<br/>userdata | 相关联的`group`对象 |
| `TOOLNT_EnabledRegion_Start`  | 数值 | 启用此工具使其开始生效的点（帧）。 |
| `TOOLNT_EnabledRegion_End`    | 数值 | 禁用此工具停止其效果的点（帧）。 |
| `TOOLNT_Region_Start`         | 数值 | 此工具可以开始提供结果的点（帧）。 |
| `TOOLNT_Region_End` | `composition`<br/>userdata | 此工具停止提供结果的点（帧）。 |
| `TOOLN_LastFrameTime`         | 数值 | 该工具处理最近渲染的帧所花费的时间（以秒为单位）。 |
| `TOOLI_Number_o_Inputs`       | 数值 | 有助于对于确定工具具有的输入数量（为Merge 3D实现）。 |
| `TOOLI_ImageWidth`            | 整型 | 对于基于图像的工具，这些代表该工具最近处理的图像格式。 |
| `TOOLI_ImageHeight`           | 整型 |      |
| `TOOLI_ImageField`            | 整型 |      |
| `TOOLI_ImageDepth`            | 整型 |      |
| `TOOLN_ImageAspectX`          | 数值 |      |
| `TOOLN_ImageAspectY`          | 数值 |      |
| `TOOLST_Clip_Name`            | 字符串 | 对于基于片段的工具（Loader和Saver），可能会在表中显示一个或多个条目来定义有关当前在此工具中选择片段的信息。请注意，这些属性实际上返回括号中指示的类型的值表。表中的每个索引代表片段列表中的一个片段。 |
| `TOOLIT_Clip_Width`           | 整型 |      |
| `TOOLIT_Clip_Height`          | 整型 |      |
| `TOOLIT_Clip_StartFrame`      | 整型 |      |
| `TOOLIT_Clip_Length`          | 整型 |      |
| `TOOLBT_Clip_IsMultiFrame`    | 布尔 |      |
| `TOOLST_Clip_FormatName`      | 字符串 |      |
| `TOOLST_Clip_FormatID`        | 字符串 |      |
| `TOOLNT_Clip_Start`           | 数值 |      |
| `TOOLNT_Clip_End`             | 数值 |      |
| `TOOLBT_Clip_Reverse`         | 布尔 |      |
| `TOOLBT_Clip_Saving`          | 布尔 |      |
| `TOOLBT_Clip_Loop`            | 布尔 |      |
| `TOOLIT_Clip_TrimIn`          | 整型 |      |
| `TOOLIT_Clip_TrimOut`         | 整型 |      |
| `TOOLIT_Clip_ExtendFirst`     | 整型 |      |
| `TOOLIT_Clip_ExtendLast`      | 整型 |      |
| `TOOLIT_Clip_ImportMode`      | 整型 |      |
| `TOOLIT_Clip_PullOffset`      | 整型 |      |
| `TOOLIT_Clip_InitialFrame`    | 整型 |      |
| `TOOLIT_Clip_AspectMode`      | 整型 |      |
| `TOOLIT_Clip_TimeCode`        | 整型 |      |
| `TOOLST_Clip_KeyCode`         | 字符串 |      |
| `TOOLST_AltClip_Name`         | 字符串 |      |
| `TOOLIT_AltClip_Width`        | 整型 |      |
| `TOOLIT_AltClip_Height`       | 整型 |      |
| `TOOLIT_AltClip_StartFrame`   | 整型 |      |
| `TOOLIT_AltClip_Length`       | 整型 |      |
| `TOOLBT_AltClip_IsMultiFrame` | 布尔 |      |
| `TOOLST_AltClip_FormatName`   | 字符串 |      |
| `TOOLST_AltClip_FormatID`     | 字符串 |      |

##### 成员

###### Operator.Composition

该工具所属的合成（只读）。

- <b>获取</b>：
  
  ```lua
  comp = Operator.Composition -- (Composition)
  ```

###### Operator.FillColor

- <b>获取</b>：
  
  ```lua
  color = Operator.FillColor -- (table)
  ```
  
- <b>设置</b>：
  
  ```lua
  Operator.FillColor = color -- (table)
  ```

###### Operator.ID

该工具的注册表ID（只读）。

- <b>获取</b>：
  
  ```lua
  id = Operator.ID -- (string)
  ```

###### Operator.Name

该工具命名友好的名称（只读）。

- <b>获取</b>：
  
  ```lua
  name = Operator.Name -- (string)
  ```

###### Operator.ParentTool

此工具的父工具（只读）。

如果工具在组（group）或宏（macro）内，则为父组。

- <b>获取</b>：
  
  ```lua
  parent = Operator.ParentTool -- (Tool)
  ```

###### Operator.TextColor

Flow视图中工具图标文字的颜色。

- <b>获取</b>：
  
  ```lua
  color = Operator.TextColor -- (table)
  ```
  
- <b>设置</b>：
  
  ```lua
  Operator.TextColor = color -- (table)
  ```

###### Operator.TileColor

Flow视图中工具图标的颜色。

- <b>获取</b>：
  
  ```lua
  color = Operator.TileColor -- (table)
  ```
  
- <b>设置</b>：
  
  ```lua
  Operator.TileColor = color -- (table)
  ```

###### Operator.UserControls

用户控件定义表。

- <b>获取</b>：
  
  ```lua
  controls = Operator.UserControls -- (table)
  ```
  
- <b>设置</b>：
  
  ```lua
  Operator.UserControls = controls -- (table)
  ```

##### 方法

###### Operator.AddModifier(*input*, *modifier*)

创建一个修改器并将其连接到输入。

这提供了一种为工具控件添加动画的简便方法。

要连接的工具输入的输入ID。

要创建的修改器的修改器ID。

返回指示成功的布尔值。

- <b>Python用法</b>：

  ```python
  myBlur = comp.Blur()
  if myBlur.AddModifier("Blend", "BezierSpline"):
  	myBlur.Blend[0] = 1.0
  	myBlur.Blend[100] = 0.0
  ```

- <b>Lua用法</b>：

  ```lua
  myBlur = Blur()
  if myBlur:AddModifier("Blend", "BezierSpline") then
  	myBlur.Blend[0] = 1.0
  	myBlur.Blend[100] = 0.0
  end
  ```

- <b>参数</b>：
  `input` （***字符串***） – input 
  `modifier` （***字符串***） – modifier

- <b>返回</b>：success 成功

- <b>返回参数</b>：布尔

###### Operator.ConnectInput(*input*, *target*)

连接或断开输入。

输入可以连接到输出或`Operator`，也可以连接到`nil`来断开输入。

如果给定的目标是`Operator`，则输入将连接到该`Operator`的主输出。

`input` 要连接输入的ID

`target` 将输入连接到的输出或`Operator`对象，或者将其断开的`nil`

- <b>Python用法</b>：

  ```python
  # 查找Loader，并将其连接到Merge1.Foreground
  ldr = comp.FindToolByID("Loader")
  if ldr and comp.Merge1:
  	comp.Merge1.ConnectInput("Foreground", ldr)
  ```

- <b>Lua用法</b>：

  ```lua
  -- 查找Loader，并将其连接到Merge1.Foreground
  ldr = comp:FindToolByID("Loader")
  if ldr and Merge1 then
  	print(comp.ActiveTool)
  	Merge1:ConnectInput("Foreground", ldr)
  end
  ```

- <b>参数</b>：
  `input` （***字符串***） – input 
  `target` （*（`Tool`|`Output`|`nil`）*） – target

- <b>返回</b>：success 成功

- <b>返回参数</b>：布尔

###### Operator.Delete()

删除该工具。

从合成中移除该工具。这也会释放Fusion Tool对象的句柄，将其置为`nil`。

###### Operator.FindMainInput(*index*)

返回该工具的主（可见的）输入。

`index` 大于1的整数。

- <b>Python用法</b>：

  ```python
  # 遍历所有主输入。
  i = 1
  while True:
  	inp = tool.FindMainInput(i)
  	if inp is None:
  		break
  	# 获取输入
  	print(inp.GetAttrs()["INPS_Name"])
  	i+=1
  ```

- <b>Lua用法</b>：

  ```lua
  -- 遍历所有主输入。
  tool = comp.ActiveTool
  i = 1
  while true do
  	inp = (tool:FindMainInput(i))
      if inp == nil then
  		break
  	end
  	-- 获取输入
  	print (inp:GetAttrs().INPS_Name)
  	i = i + 1
  end
  ```

- <b>参数</b>：
  `index` （*数值*） – index

- <b>返回</b>：inp 输入

- <b>返回参数</b>：`Input`

###### Operator.FindMainOutput(*index*)

返回该工具的主（可见的）输出。

`index` 大于等于1的整数。

- <b>Python用法</b>：

  ```python
  # 遍历所有主输出。
  i = 1
  while True:
  	inp = tool.FindMainOutput(i)
  	if inp is None:
  		break
  	# 获取输出
  	print(inp.GetAttrs()["OUTS_Name"])
  	i+=1
  ```

- <b>Lua用法</b>：

  ```lua
  -- 遍历所有主输出。
  tool = comp.ActiveTool
  i = 1
  while true do
  	inp = (tool:FindMainOutput(i))
      if inp == nil then
  		break
  	end
  	-- 获取输出
  	print (inp:GetAttrs().OUTS_Name)
  	i = i + 1
  end
  ```

- <b>参数</b>：
  `index` （*数值*） – index

- <b>返回</b>：out 输出

- <b>返回参数</b>：`Output`

###### Operator.GetChildrenList(\[*selected*\]\[, *regid*\])

返回所有子工具或选中子工具的列表。

此函数有助于查找宏（macro）或组（group）工具的成员。

`selected` 传递`true`来仅获得选定的子工具。

`regid` 传递注册表ID字符串来仅获取该类型的子工具。

返回工具对象表。

- <b>Python用法</b>：

  ```python
  # 列出组或宏中的所有工具
  for t in comp.ActiveTool.GetChildrenList().values():
  	print(t.Name)
  ```

- <b>Lua用法</b>：

  ```lua
  -- 列出组或宏中的所有工具
  for i, t in pairs(comp.ActiveTool:GetChildrenList()) do
  	print(t.Name)
  end
  ```

- <b>参数</b>：
  `selected` （*布尔*） – selected
  `regid` （***字符串***） – regid

- <b>返回</b>：tools 工具

- <b>返回参数</b>：表

###### Operator.GetControlPageNames()

返回一个控件页面名称表，按页面编号索引。

- <b>返回</b>：names 名称
- <b>返回参数</b>：表

###### Operator.GetCurrentSettings()

返回工具当前设置槽的索引。

一个工具具有6个不同的设置集合/槽。默认情况下，它使用槽1。

返回大于等于1的数字索引。

- <b>返回</b>：index 索引
- <b>返回参数</b>：数值

###### Operator.GetData([*name*])

获取自定义持久数据。

另见`Composition:GetData()`。

- <b>参数</b>：
  `name` （***字符串***） – name
- <b>返回</b>：value 值
- <b>返回参数</b>：（数值|字符串|布尔|表）

###### Operator.GetInput(*id*[, *time*])

获取输入在给定时间的值。

如果输入未设置动画，则可以省略time参数。

通过简单地使用所需时间索引输入也可获得相似的结果。

`id` 需要查询的输入ID。

`time` 需要查询的关键帧时间。

根据查询的字符串的数据类型返回数值、字符串或其他`Parameter`对象。

- <b>Python用法</b>：

  ```python
  # 这些行：相同的事
  print(tool:GetInput("Blend", 30.0))
  print(tool.Blend[30])
  ```

- <b>Lua用法</b>：

  ```lua
  -- 这些行执行相同的事
  print(tool:GetInput("Blend", 30.0)
  print(tool.Blend[30.0]
  ```

- <b>参数</b>：
  `id` （***字符串***） – id
  `time` （*数值*） – time

- <b>返回</b>：value 值

- <b>返回参数</b>：（数值|字符串|布尔|`Parameter`）

###### Operator.GetInputList([*type*])

返回此工具上所有输入的表。

`type` 可用于过滤结果来仅返回特定的数据类型。有效值包括“Image”、“Number”、“Point”、“Gradient”和“Text”。

返回一个包含处理该工具所有可用输入的表。

- <b>Python用法</b>：

  ```python
  # 该Tool脚本打印出选中
  # 工具上每个输入的名称
  tool = comp.ActiveTool
  x = tool.GetInputList().values()
  
  for inp in x:
  	print(inp.GetAttrs()["INPS_Name"])
  ```

- <b>Lua用法</b>：

  ```lua
  -- 该Tool脚本打印出选中
  -- 工具上每个输入的名称
  tool = tool or comp.ActiveTool
  x = tool:GetInputList()
  
  for i, inp in pairs(x) do
  	print(inp:GetAttrs().INPS_Name)
  end
  ```

- <b>参数</b>：
  `type` （***字符串***） – type

- <b>返回</b>：inputs

- <b>返回参数</b>：表

###### Operator.GetKeyFrames()

返回此工具所有关键帧时间的表。

仅对于工具按顺序返回包含关键帧时间列表的表。不考虑任何附加在工具输入上的动画样条或修改器。

- <b>返回</b>：keyframes
- <b>返回参数</b>：表

###### Operator.GetOutputList([*type*])

返回此工具上所有输出的表。

`type` 可用于过滤结果来仅返回特定的数据类型。有效值包括“Image”、“Number”、“Point”、“Gradient”和“Text”。

返回一个包含处理该工具所有可用输出的表。

- <b>Python用法</b>：

  ```python
  # 该Tool脚本打印出选中
  # 工具上每个输出的名称
  tool = comp.ActiveTool
  x = tool.GetInputList().values()
  
  for outp in x:
  	print(inp.GetAttrs()["OUTS_Name"])
  ```

- <b>Lua用法</b>：

  ```lua
  -- 该Tool脚本打印出选中
  -- 工具上每个输出的名称
  tool = tool or comp.ActiveTool
  x = tool:GetInputList()
  
  for i, outp in pairs(x) do
  	print(outp:GetAttrs().OUTS_Name)
  end
  ```

- <b>参数</b>：
  `type` （***字符串***） – type

- <b>返回</b>：outputs 输出

- <b>返回参数</b>：表

###### Operator.LoadSettings(*filename*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

从文件或表中加载工具的设置。

用于将.setting文件或表加载到工具中。这对许多应用程序具有潜在的用途，例如将曲线数据加载到Fusion中或通过项目管理系统将更新同步到工具上。

- <b>Python用法</b>：

  ```python
  settingtable = bmd.readfile("fusion:\\settings\\ccv_project1.setting")
  comp.ColorCurve1.LoadSettings(settingtable)
  
  # 与之相同
  comp.ColorCurve1.LoadSettings("fusion:\\settings\\ccv_project1.setting")
  ```

- <b>Lua用法</b>：

  ```lua
  settingtable = bmd.readfile("fusion:\\settings\\ccv_project1.setting")
  ColorCurve1:LoadSettings(settingtable)
  
  -- 与之相同
  ColorCurve1:LoadSettings("fusion:\\settings\\ccv_project1.setting")
  ```

- <b>参数</b>：
  `filename` （***字符串***） – filename

- <b>返回</b>：success 成功

- <b>返回参数</b>：布尔

###### Operator.LoadSettings(*settings*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

从文件或表中加载工具的设置。

用于将.setting文件或表加载到工具中。这对许多应用程序具有潜在的用途，例如将曲线数据加载到Fusion中或通过项目管理系统将更新同步到工具上。

- <b>Python用法</b>：

  ```python
  settingtable = bmd.readfile("fusion:\\settings\\ccv_project1.setting")
  comp.ColorCurve1.LoadSettings(settingtable)
  
  # 与之相同
  comp.ColorCurve1.LoadSettings("fusion:\\settings\\ccv_project1.setting")
  ```

- <b>Lua用法</b>：

  ```lua
  settingtable = bmd.readfile("fusion:\\settings\\ccv_project1.setting")
  ColorCurve1:LoadSettings(settingtable)
  
  -- 与之相同
  ColorCurve1:LoadSettings("fusion:\\settings\\ccv_project1.setting")
  ```

- <b>参数</b>：
  `settings` （*表*） – settings

- <b>返回</b>：success 成功

- <b>返回参数</b>：布尔

###### Operator.Refresh()

刷新该工具，显示更新的用户控件。

调用`Refresh`将使该工具的句柄无效。会返回一个新的句柄并将其存储。

返回刷新工具的新句柄。

###### Operator.SaveSettings(*filename*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

将工具的当前设置保存到文件或表中。

如果指定了路径，则该工具的设置将保存到该文件中，并返回一个用于指示成功的布尔值。

如果未提供路径，则`SaveSettings()`会返回该工具设置的表格。

- <b>参数</b>：
  `filename` （***字符串***） – filename
- <b>返回</b>：success 成功
- <b>返回参数</b>：布尔

###### Operator.SaveSettings(*customdata*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

将工具的当前设置保存到文件或表中。

如果指定了路径，则该工具的设置将保存到该文件中，并返回一个用于指示成功的布尔值。

如果未提供路径，则`SaveSettings()`会返回该工具设置的表格。

- <b>参数</b>：
  `customdata` （*布尔*） – customdata
- <b>返回</b>：settings 设置
- <b>返回参数</b>：表

###### Operator.SetCurrentSettings()

设置工具当前的设置槽。

如果槽不为空，则该函数会将所有工具的输入更改为存储在该槽中的设置。

一个工具用有6个不同的设置集合（“槽”）。默认情况下使用槽1。更改当前设置槽可能会将工具的任何或所有输入更改为存储在新槽（如果有）中的新值或新动画。

在更改为新槽之前，该工具的所有先前设置都存储在旧槽中。

`index` 大于等于1的数值索引

- <b>Python用法</b>：

  ```python
  import time
  
  tool = comp.ActiveTool
  slot = tool.GetCurrentSettings()
  
  # 更改为新槽，并关闭效果
  tool.SetCurrentSettings(slot + 1)
  tool.Blend[comp.CurrentTime] = 0.0
  print(tool.Name + ". Before...")
  
  # 等待（几秒）
  time.sleep(3)
  
  # 更改为旧槽，并重新打开效果
  tool.SetCurrentSettings(slot)
  tool.Blend[comp.CurrentTime] = 1.0
  print(tool.Name + ". After!")
  ```

- <b>Lua用法</b>：

  ```lua
  local clock = os.clock
  function sleep(n) -- 秒
  	local t0 = clock()
  	while clock() - t0 <= n do end
  end
  
  tool = tool or comp.ActiveTool
  slot = tool:GetCurrentSettings()
  
  -- 更改为新槽，并关闭效果
  tool:SetCurrentSettings(slot + 1)
  tool.Blend[comp.CurrentTime] = 0.0
  print(tool.Name .. ": Before...")
  
  -- 等待（几秒）
  sleep(3)
  
  -- 更改为旧槽，并重新打开效果
  tool:SetCurrentSettings(slot)
  tool.Blend[comp.CurrentTime] = 1.0
  print(tool.Name .. ": After!")
  ```

- <b>返回</b>：index 索引

- <b>返回参数</b>：数值

###### Operator.SetData(*name*, *value*)

设置自定义持久数据。

另见`Composition:SetData()。`

- <b>参数</b>：
  name（***字符串***） – name
  value（*（数值|字符串|布尔|表）*） – value

###### Operator.SetInput(*id*, *value*, *time*)

设置输入在给定时间的值。

如果输入未设置动画，则可以省略time参数。

通过简单地使用所需时间索引输入也可获得相似的结果，并可对其赋值。

- <b>参数</b>：
  `id`（***字符串***） – id
  `value`（*（数值|字符串|`Parameter`）*） – value
  `time` （*数值*） – time

###### Operator.ShowControlPage(*name*)

使指定的控件页面可见。

可以使用`GetControlPageNames()`查询该工具的有效`ControlPageNames`。

- <b>参数</b>：
  `name`（***字符串***） – name