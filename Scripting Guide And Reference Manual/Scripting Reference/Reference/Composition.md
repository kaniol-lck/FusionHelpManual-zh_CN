#### Composition

###### 类 ChildGroup

父类：`Object`

代表一个合成。

`Composition`对象的方法和成员可直接在控制台和用Lua编写的合成脚本中使用。这意味着您只需键入`==CurrentTime`或调用`AddTool(“Blur”)`，而无需在命令前加上`comp`。而Python脚本必须使用全名。

##### Composition属性

| 属性名              | 类型 | 描述 |
| ------------------- | ---- | ---- |
| `COMPN_CurrentTime` | 数值 | 这是合成所在的当前时间。这是用户将看到的时间，并且任何未指定时间的修改将在此时间设置关键帧。|
| `COMPB_HiQ`         | 布尔 | 指示合成当前是否处于"HiQ"模式。|
| `COMPB_Proxy`       | 布尔 | 指示合成是否当前处于"Procy"模式。                           |
| `COMPB_Rendering`    | 整型 | 指示合成当前是否正在渲染。                                  |
| `COMPN_RenderStart`  | 数值 | 合成的渲染开始时间。<br/>未指定开始时间的渲染将从此时间开始。|
| `COMPN_RenderEnd`    | 数值 | 合成的渲染结束时间。<br/>未指定结束时间的渲染将最后渲染至此帧。|
| `COMPN_GlobalStart`  | 数值 | 合成的全局开始时间。这是当合成有效时的开始时间。之前的任何内容都无法渲染或核算。|
| `COMPN_GlobalEnd`    | 数值 | 合成的全局结束时间。这是当合成有效时的结束时间。此后的任何内容都无法渲染或核算。|
| `COMPN_LastFrameRendered` | 数值 | 渲染期间已成功完成的最新帧。                                |
| `COMPN_LastFrameTime` | 数值 | 渲染最近完成的帧所花费的时间，以秒为单位。                  |
| `COMPN_AverageFrameTime` | 数值 | 将每个帧渲染到渲染点的平均时间，以秒为单位。                |
| `COMPN_TimeRemaining` | 数值 | 估计完成此渲染所需的时间，以秒为单位。                      |
| `COMPS_FileName`     | 字符串 | 合成文件的完整路径和名称。                                  |
| `COMPS_Name`         | 字符串 | 合成的名称。|
| `COMPI_RenderFlags`  | 整型 | 为当前渲染指定的标志。|
| `COMPI_RenderStep`   | 整型 | 用于当前渲染的步长值。|
| `COMPB_Locked`       | 布尔 | 这表示合成当前是否已锁定。|

##### 成员

###### Composition.ActiveTool

表示此comp上当前活动的工具（只读）。

- 获取：

  `tool = Composition.ActiveTool` – (`Tool`)

###### Composition.AutoPos

添加工具时启用X坐标/Y坐标的自动更新。

- 获取：

  `val = Composition.AutoPos` – (布尔)

- 设置：

  `Composition.AutoPos = val` – (布尔)

###### Composition.CurrentFrame

表示此合成的当前活动帧（只读）。

不要与`CurrentTime`混淆。

- 获取：

  `frame = Composition.CurrentFrame` – (`FuFrame`)

###### Composition.CurrentTime

该合成的当前时间位置。

- 获取：

  `val = Composition.CurrentTime` – (数值)

- 设置：

  `Composition.CurrentTime = val` – (数值)

###### Composition.UpdateMode()

添加工具时启用X坐标/Y坐标的自动更新。

表示Some/All/None模式。

###### Composition.XPos

下一个添加工具的流程上的X坐标。

- 获取：

  `val = Composition.XPos` – (数值)

- 设置：

  `Composition.XPos = val` – (数值)

###### Composition.YPos

下一个添加工具的流程上的Y坐标。

- 获取：

  `val = Composition.YPos` – (数值)

- 设置：

  `Composition.YPos = val` – (数值)

##### 方法

###### Composition.AbortRender()

停止任何当前渲染。

###### Composition.AbortRenderUI()

在中止渲染之前询问用户。

###### Composition.AddTool(*id\[, defsettings]\[, xpos]\[, ypos]*)

在指定位置添加工具类型。

`id` 要添加的工具的RegID。

`defsettings` 指定是否应对新工具应用用户修改的默认设置（`true`）或不应用（`false`，默认值）。

`xpos` 工具在流程视图中的X位置。

`ypos` 工具在流程视图中的Y位置。

您可以对x和y位置使用数字-32768（16位整数的最小负值）。这会使Fusion添加工具，就像您单击其中一个工具栏图标一样。该工具将位于当前所选工具旁边，如果可能，将自动建立连接。如果未选择任何工具，则将使用流程上最后单击的位置。使用`comp:AddToolAction`方法可以实现相同的行为。

返回一个可用于控制新添加工具的工具句柄。

- Python用法：

  ```python
  bg = comp.AddTool(“Background”, 1, 1)
  mg = comp.AddTool(“Merge”, -32768, -32768)
  ```

- Lua用法：

  ```lua
  bg = comp:AddTool(“Background”, 1, 1)
  mg = comp:AddTool(“Merge”, -32768, -32768)
  ```

- 参数：

  `id` （***字符串***） – id
  
  `defsettings` （*布尔*） – defsettings
  
  `xpos` （*数值*） – xpos
  
  `ypos` （*数值*） – ypos
  
- 返回：tool 工具

- 返回类型：`Tool`


###### Composition.AddToolAction(*id\[, xpos]\[, ypos]*)

在合成中添加工具。

如果没有给出位置，它会使Fusion添加工具，就像您单击其中一个工具栏图标一样。该工具将位于当前所选工具旁边，如果可能，将自动建立连接。如果未选择任何工具，则将使用流程上最后单击的位置。

- 参数：

  `id` （***字符串***） – id

  `xpos` （*数值*） – xpos

  `ypos` （*数值*） – ypos

- 返回：tool 工具

- 返回类型：`Tool`

###### Composition.AskRenderSettings()

显示Render Settings对话框。

###### Composition.AskUser(*title, controls*)

向用户显示自定义对话框，并返回所选值。

AskUser功能向用户显示一个对话框，使用各种常见的Fusion控件（如滑块、菜单和文本框）请求输入。所有脚本执行都会停止，直到用户通过选择OK或Cancel来响应对话框。此功能只能以交互式调用，命令行脚本不能使用此功能。

此函数的第二个参数接收一个输入表，描述要显示的控件。表中的每个条目都是另一个描述控件及其选项的表。例如，如果要显示请求用户路径的对话框，可以使用以下脚本。

返回包含用户响应的表，如果用户取消对话框，则返回`nil`。

- <b>Input Name (字符串，必需的)</b>

  此名称是用户设置的控件值的索引值（即`dialog.Control`或`dialog ["Control Name"])`。它也是对话框中控件旁边显示的标签，除非还为控件提供了Name选项。

- <b>Input Type (字符串，必需的)</b>

  描述要显示的控件类型的字符串值。有效的字符串为`"FileBrowse"`、`"PathBrowse"`，`"Position"`、`"Slider"`、`"Screw"`、`"Checkbox"`、`"Dropdown"`和`"Text"`。每种输入类型都有自己的属性和可选值，如下所述。

- <b>Options (杂项)</b>

  不同的控件类型接受不同的选项，这些选项决定控件在对话框中的显示和行为方式。

- <b>AskUser输入</b>

  | 输入类型                                        | 描述                                                         | 选项                                                         |
  | ----------------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
  |                                                 | 一些选项对于几个控件是通用的。比如，name选项可以与任何类型的控件一起使用，DisplayedPrecision选项可以与任何显示和返回数值的控件一起使用。| <b>Name (字符串)</b><br/>此选项可用于为返回表中的此输入索引指定比用作控件标签的名称更合理的名称。<br/><b>Default (可变)</b><br/>首次显示控件时显示的默认值。<br/><b>Min (整型)</b><br/>设置滑块或螺旋控件允许的最小值。<br/><b>Max (数值)</b><br/>设置滑块或螺旋控件允许的最大值。<br/><b>DisplayedPrecision (数值)</b>使用此选项可设置数字控件（如滑块、螺旋和位置控件）的精度。值为2将允许两位小数的精度——即2.10而不是2.105。<br/><b>Integer (布尔)</b><br/>如果为`true`，则滑块或螺旋控件将仅允许整数（非十进制）值，否则滑块将提供完全精度。如果未指定，则默认为`false`。|
  | <b>FileBrowse<br/>PathBrowse<br/>ClipBrowse</b> | FileBrowse输入允许你浏览以选择磁盘中的文件，而PathBrowse允许你选择一个路径。ClipBrowse用于以它们合适的过滤器获取序列。| <b>Save (boolean) 保存（布尔）</b><br/>将这个选项设置为`true`，如果该对话框用于选择不存在的路径或文件（即当选择要保存的文件时）。|
  | <b>Screw</b>                                    | 显示标准Fusion缩略图或螺旋控件。此控件几乎与滑块全方面相同，只是它的范围是无限的，因此它非常适合角度控制和其他没有实际限制的值。|                                                              |
  | <b>Text</b>                                     | 显示Fusion文本编辑控件，用于向输入大量文本。                | <b>Linear (integer) 线性（整型）</b><br/>用于指定显示在控件上的文本行数<br/><b>Wrap (boolean) 折行（布尔）</b><br/>一个`true`或`false`值，用于确定输入控件的文本是否会在到达行尾时换至下一行。<br/><b>ReadOnly (boolean) 只读（布尔）</b><br/>如果此选项设置为`true`，则控件将不允许对控件中的文本进行任何编辑。用于显示不可编辑的信息。<br/><b>FontName (string) 字体名称（字符串）</b><br/>在此控件中显示文本时要使用的truetype字体的名称。<br/><b>FontSize (numeric) 字体大小（数值）</b><br/>用于指定显示在该控件上显示文本字体大小的数值。|
  | <b>Slider</b>                                   | 显示标准Fusion滑块控件。可使用后面的选项来设置滑块的高低两端的标签。| <b>LowName (string) 低值名称（字符串）</b><br/>该文本标签用于滑块低（左）端。<br/><b>HighName (string) 高值名称（字符串）</b><br/>该文本标签用于滑块高（右）端。|
  | <b>Checkbox</b>                                 | 显示标准Fusion复选框控件。您可以使用NumAcross选项显示其中几个控件使之彼此相邻。| <b>Default (numeric)</b><br/>复选框的默认状态，使用0表示复选框未选中，或1启用复选框。若未指定则默认为0。<br/><b>NumAcross (numeric) 横跨数量（数值）</b><br/>如果设置了NumAcross值，则对话框将保留空格以显示彼此相邻的两个或多个复选框。若要为在同一行上显示的所有复选框就必须设置NumAcross值。请参阅下面的示例获取详细信息。|
  | <b>Position</b>                                 | 显示一对编辑框来输入用于中心控件或其他位置值的X&Y坐标。该控件的默认值是拥有两值的表，一个是X值另一个是Y。该控件返回值的表 | <b>Default (table `{x,y}`) 默认（表`{x, y}`）</b><br/>拥有两个数值条目的表，用于指定x和y坐标的值。|
  | <b>Dropdown</b>                                 | 显示标准Fusion用于从列表中选择选项的下拉菜单。此控件展示和选项使用一个包含下拉菜单值的表来调用选项（Options）。请注意，选项（Options）的表索引从`0`开始，而不是像大多数FusionScript表中常见的那样从`1`开始。因此，如果您希望为列表中的第一个条目设置默认值，则使用`Default=0`，让第二个`Default=0`，依此类推。| <b>Default (numeric) 默认（数值）</b><br/>用于指定选项表（见下）中值的索引的数值，来作为创建时下拉框的默认值。<br/><b>Default (table `{string, string, string…}`) 默认（表 `{string, string, string…}`）</b><br/>用于描述描述显示在下拉框内值的字符串表。|
  | <b>Multibutton</b>                              | 显示多按钮，其中每个选项都作为按钮绘制。<br/>相同的选项也被用于如下拉列表中。| <b>Default (numeric) 默认（数值）</b><br/>用于指定选项表（见下）中值的索引的数值，来作为创建时下拉框的默认值。<br/><b>Default (table `{string, string, string…}`) 默认（表 `{string, string, string…}`）</b><br/>用于描述描述显示在下拉框内值的字符串表。|

  （译注：该表实际上与“Graphical User Interfaces 图形用户界面”一章的完全一致）

- Python用法：

  ```python
  # 在Python中确保用从1开始的合适索引创建字典
  dialog = {1: {1: “dlgDir”, “Name”: “Select a Directory”, 2: “PathBrowse”},
            2: {1: “dlgCheck”, “Name”: “A Check Box”, 2: “Checkbox”, “Default”: 1}}
  ret = composition.AskUser(“A sample dialog”, dialog)
  ```

- Lua用法：

  ```lua
  composition_path = composition:GetAttrs().COMPS_FileName
  msg = “This dialog is only an example. It does not actually do anything, “..
      “so you should not expect to see a useful result from running this script.”
  
  d = {}
  d[1] = {“File”, Name = “Select A Source File”, “FileBrowse”, Default = composition_path}
  d[2] = {“Path”, Name = “New Destination”, “PathBrowse” }
  d[3] = {“Copies”,Name = “Number of Copies”, “Slider”, Default = 1.0, Integer = true,
   Min = 1, Max = 5 }
  d[4] = {“Angle”, Name = “Angle”, “Screw”, Default = 180, Min = 0, Max = 360}
  d[5] = {“Menu”, Name = “Select One”, “Dropdown”, Options = {“Good”, “Better”, “Best”},
   Default = 1}
  d[6] = {“Center”,Name = “Center”, “Position”, Default = {0.5, 0.5} }
  d[7] = {“Invert”,Name = “Invert”, “Checkbox”, NumAcross = 2 }
  d[8] = {“Save”, Name = “Save Settings”, “Checkbox”, NumAcross = 2, Default = 1 }
  d[9] = {“Msg”, Name = “Warning”, “Text”, ReadOnly = true, Lines = 5, Wrap = true,
   Default = msg}
  
  dialog = composition:AskUser(“A Sample Dialog”, d)
  if dialog == nil then
      print(“You cancelled the dialog!”)
  else
      dump(dialog)
  end
  ```

- 参数：

  `title` （***字符串***） – title

  `controls` （*表*） – controls

- 返回：results 结果

- 返回类型：表

###### Composition.ChooseTool(*path*)

显示包含可选工具列表的对话框。

如果取消了对话框，则返回所选工具的RegID或nil。

- 参数：

  `path` （***字符串***） – path

- 返回：ID

- 返回类型：字符串

###### Composition.ClearUndo()

清除合成的撤消/重做历史记录。

###### Composition.Close()

`Close`函数用于关闭合成。然后，调用该函数的`Fusion Composition`对象将被设置为`nil`。

如果合成处于锁定模式，那么`Close`函数将不会尝试保存合成，无论合成是否自上次保存以来已被修改。如果已经进行了应该保留的修改，请首先调用`Save()`函数。

如果合成被解锁，它将询问是否应该在关闭之前保存合成。

如果合成成功关闭返回`true`，如果合成未能关闭，则返回`nil`。

###### Composition.Copy()

**注意：**此方法已重载并具有备用参数。见其他定义。

将工具复制到剪贴板。

不接受任何参数（当前选定的工具）、接受一个工具或工具列表。

如果成功则返回`true`，否则返回`false`。

###### Composition.Copy(*tool*)

**注意：**此方法已重载并具有备用参数。见其他定义。

将工具复制到剪贴板。

不接受任何参数（当前选定的工具）、接受一个工具或工具列表。

如果成功则返回`true`，否则返回`false`。

- 参数：

  `tool` （*Tool*） – tool

- 返回：success 成功

- 返回类型：布尔

###### Composition.Copy(*toollist*)

**注意：**此方法已重载并具有备用参数。见其他定义。

将工具复制到剪贴板。

不接受任何参数（当前选定的工具）、接受一个工具或工具列表。

如果成功则返回`true`，否则返回`false`。

- 参数：

  `toollist` （*table*） – toollist

- 返回：success 成功

- 返回类型：布尔

###### Composition.CopySettings()

**注意：**此方法已重载并具有备用参数。见其他定义。

将工具复制到剪贴板。

不接受任何参数（当前选定的工具）、接受一个工具或工具列表。

将工具列表作为设置表返回。

- 返回：settings 设置
- 返回类型：表

###### Composition.CopySettings(*tool*)

**注意：**此方法已重载并具有备用参数。见其他定义。

将工具复制到剪贴板。

不接受任何参数（当前选定的工具）、接受一个工具或工具列表。

将工具列表作为设置表返回。

- 参数：

  `tool` （*Tool*） – tool

- 返回：settings 设置

- 返回类型：表

###### Composition.CopySettings(*toollist*)

**注意：**此方法已重载并具有备用参数。见其他定义。

将工具复制到剪贴板。

不接受任何参数（当前选定的工具）、接受一个工具或工具列表。

将工具列表作为设置表返回。

- 参数：

  `toollist` （*table*） – toollist

- 返回：settings 设置

- 返回类型：表

###### Composition.DisableSelectedTools()

透过（Pass-through）所选工具。

###### Composition.EndUndo(*keep*)

`StartUndo()`函数始终与`EndUndo()`函数配对。通过`StartUndo()`和`EndUndo()`之间的脚本行对组合所做的任何更改都存储为单个撤消事件。

撤消事件中捕获的更改可以使用CTRL-Z或Edit菜单从GUI撤消。它们也可以通过调用`Undo`函数从脚本中撤消。`keep`确定是保留还是丢弃捕获的撤消事件。指定为`true`会导致将撤销事件添加到撤消堆栈，并显示在相应的菜单中。指定`false`将导致不创建撤消事件。这应该谨慎使用，因为用户（或脚本）将无法撤消前面的命令。

如果脚本在调用`EndUndo()`之前退出，Fusion将自动关闭撤消事件。

- Python用法：

  ```python
  composition.StartUndo(“Add some tools”)
  bg1 = comp.Background()
  pl1 = comp.Plasma()
  mg1 = comp.Merge({ “Background”: bg1, “Foreground”: pl1 })
  composition.EndUndo(True)
  ```

- Lua用法：

  ```lua
  composition:StartUndo(“Add some tools”)
  bg1 = Background{}
  pl1 = Plasma{}
  mg1 = Merge{ Background = bg1, Foreground = pl1 }
  composition:EndUndo(true)
  ```

- 参数：

  `keep` （*布尔*） – keep

###### Composition.Execute()

执行合成的脚本字符串。要在融合使用融合的上下文中执行脚本：执行（...）。

默认情况下，Lua用作解释器。要使用python，请添加以下前缀：

`!Py`：默认Python版本。`!Py2`：Python版本2。`!Py3`：Python版本3.

- Python用法：

  ```python
  comp.Execute(“print(‘Hello from Lua!’)”)
  comp.Execute(“!Py: print(‘Hello from default Python!’)”)
  comp.Execute(“!Py2: print ‘Hello from Python 2!’”)
  comp.Execute(“!Py3: print (‘Hello from Python 3!’)”)
  ```

- Lua用法：

  ```lua
  comp:Execute(“print(‘Hello from Lua!’)”)
  comp:Execute(“!Py: print(‘Hello from default Python!’)”)
  comp:Execute(“!Py2: print ‘Hello from Python 2!’”)
  comp:Execute(“!Py3: print (‘Hello from Python 3!’)”)
  ```

###### Composition.FindTool(*name*)

根据名称查找第一个工具。

如果取消了对话框，则返回所选工具的RegID或nil。

- 参数：

  `name` （***字符串***） – name

- 返回：tool 工具

- 返回类型：`Tool`

###### Composition.FindToolByID(*id\[, prev]*)

查找给定类型的第一个工具。
仅返回找到的第一个工具。
要查找下一个工具，请使用prev参数提供上一个工具。

- Python用法：

  ```python
  # 创建三个Blur工具
  blur1 = comp.Blur()
  blur2 = comp.Blur()
  blur3 = comp.Blur()
  
  print (comp.FindToolByID(“Blur”).Name)
  # 打印: Blur1
  print (comp.FindToolByID(“Blur”, blur1).Name)
  # 打印: Blur2
  print (comp.FindToolByID(“Blur”, blur2).Name)
  # 打印: Blur3
  ```

- Lua用法：

  ```lua
  -- 创建三个Blur工具
  blur1 = Blur
  blur2 = Blur
  blur3 = Blur
  
  print (comp:FindToolByID(“Blur”).Name)
  -- 打印: Blur1
  print (comp:FindToolByID(“Blur”, blur1).Name)
  -- 打印: Blur2
  print (comp:FindToolByID(“Blur”, blur2).Name)
  -- 打印: Blur3
  ```

- 参数：

  `id` （***字符串***） – id

- 返回：tool 工具

- 返回类型：`Tool`

###### Composition.GetCompPathMap(*\[built_ins]\[, defaults]*)

返回所有`Composition`的路径映射表。

`build_ins` 如果设置，则将返回内建（只读）`PathMaps`。

`defaults` 如果设置，将返回默认的`PathMaps`，否则排除。

- Python用法：

  ```python
  # 返回自定义PathMaps
  ==comp.GetCompPathMap(False, False)
  
  # 显示全部，等同于true, true
  ==comp.GetCompPathMap()
  ```

- Lua用法：

  ```lua
  -- 返回自定义PathMaps
  ==comp:GetCompPathMap(false, false)
  
  -- 显示全部，等同于true, true
  ==comp:GetCompPathMap()
  ```

- 参数：

  `built_ins` （*布尔*） – built_ins

  `defaults` （*布尔*） – defaults

- 返回：map 映射

- 返回类型：表

###### Composition.GetConsoleHistory()

此函数对于在控制台中显示两点之间的所有信息非常有用。可用于搜索先前脚本生成的警告或错误。

返回一个表，其中包含两点之间控制台的历史记录。如果省略`endSeq`，则`startSeq`是脚本将从中开始读取的控制台序列号。

`endSeq` 脚本将停止读取的控制台序列号。

脚本从传递给`startSeq`的变量开始获取所有历史记录。如果省略这两个值，则返回有关控制台历史记录的常规表（行数等）如果未给出参数，则将在`Total`键中返回总行数。

- Lua用法：

  ```lua
  -- 获取控制台的总行数
  dump(composition:GetConsoleHistory().Total)
  
  -- 获取控制台的历史行1和2
  dump(composition:GetConsoleHistory(1, 2))
  ```

###### Composition.GetData(*\[name]*)

获取自定义持久数据。

`name` 数据名称。此名称可以是`table.subtable`格式，以允许持久数据存储在子表中。

持久数据是一种非常有用的方式来存储名称，日期，文件名，注释，标志或其他任何内容，以便它们与对象的此实例永久关联，并使用`SetData()`与对象一起存储，可以随时使用`GetData()`检索。

存储方法因对象而异：Fusion应用程序本身调用的`SetData()`会将其数据保存在Fusion.prefs文件中，并且只要Fusion的副本正在运行，它就可以使用。在与`Composition`相关联的任何对象上调用`SetData()`将导致数据保存在.comp文件中，或者保存在可直接从该对象保存的任何设置文件中。一些与任何合成没有关联也没有以任何方式保存的短暂对象可能根本没有永久存储其数据，并且数据只会在对象本身存在的情况下持续存在。

返回从对象的持久数据中获取的值。它几乎可以是任何类型。

- Python用法：

  ```python
  from datetime import datetime
  tool = comp.ActiveTool
  tool.SetData(“Modified.Author”, fusion.GetEnv(“USERNAME”))
  tool.SetData(“Modified.Date”, str(datetime.now()))
  
  author = tool.GetData(“Modified.Author”)
  dt = tool.GetData(“Modified.Date”)
  
  print(“Last modified by {0} on {1}”.format(author, dt))
  ```

- Lua用法：

  ```lua
  tool = tool or comp.ActiveTool
  tool:SetData(“Modified.Author”, fusion:GetEnv(“USERNAME”))
  tool:SetData(“Modified.Date”, os.date())
  
  author = tool:GetData(“Modified.Author”)
  dt = tool:GetData(“Modified.Date”)
  
  print(“Last modified by” ..author.. “ on ” ..dt)
  ```

- 参数：

  `name` （***字符串***） – name

- 返回：value 值

- 返回类型：(数值|字符串|布尔|表)

###### Composition.GetFrameList()

检索合成的`ChildFrames`表。

`ChildFrames`是Fusion的窗口工作区。此功能允许用户访问每个可用的`ChildFrame`窗口对象及其视图。

- Python用法：

  ```python
  windowlist = composition.GetFrameList()
  tool = comp.ActiveTool
  for window in windowlist.values():
      window.ViewOn(tool, 1)
  ```

- Lua用法：

  ```lua
  windowlist = composition:GetFrameList()
  
  tool = comp.ActiveTool
  for i, window in pairs(windowlist) do
      window:ViewOn(tool, 1)
  end
  ```

###### Composition.GetNextKeyTime(*\[time]\[, tool]*)

返回下一个关键帧的关键帧时间。

它可用于检查合成中所有工具之间的关键帧，或仅用于指定工具。

`time` 搜索的源时间。

`tool` 如果仅为工具设置关键帧将返回。

- 参数：

  `time` （*数值*） – time

  `tool` （*Tool*） – tool

- 返回：time 时间

- 返回类型：数值

###### Composition.GetPrefs(*\[prefname]\[, exclude-defaults]*)

检索特定于合成的偏好设置或单个值的表。

`prefname` 要检索的特定偏好设置的名称。用点指示子表。如果未指定`prefname`或`nil`，则返回所有偏好设置的表。

`exclude-defaults` 如果为`true`，不包含默认值的偏好设置。

此函数可用于获取合成、子表或特定值的完整偏好设置表。

- Python用法：

  ```python
  from pprint import pprint
  
  # 所有偏好设置
  pprint(comp.GetPrefs())
  
  # 一个指定的偏好设置
  pprint(comp.GetPrefs(“Comp.AutoSave.Enabled”))
  
  # 除了默认之外的所有偏好设置
  pprint(comp.GetPrefs(None, False))
  ```

- Lua用法：

  ```lua
  -- 所有偏好设置
  dump(comp:GetPrefs())
  
  -- 一个指定的偏好设置
  dump(comp:GetPrefs(“Comp.AutoSave.Enabled”))
  
  -- 除了默认之外的所有偏好设置
  dump(comp:GetPrefs(nil, false))
  ```

- 参数：

  `prefname` （***字符串***） – prefname

  `exclude-defaults` （*布尔*） – exclude-defaults

- 返回：prefs 偏好设置

- 返回类型：表

###### Composition.GetPrevKeyTime(*\[time]\[, tool]*)

返回上一个关键帧的关键帧时间。

它可用于检查合成中所有工具之间的关键帧，或仅用于指定工具。

`time` 搜索的源时间。

`tool` 如果仅为工具设置关键帧将返回。

- 参数：

  `time` （*数值*） – time

  `tool` （*Tool*） – tool

- 返回：time 时间

- 返回类型：数值

###### Composition.GetPreviewList(*\[include_globals]*)

检索预览表。

`GetPreviewList`函数用于确定可用于流程或Fusion的视图。对象本身是一个`View`对象，然后可以将其传递给影响Fusion中视图的各种函数。

返回合成的所有可用视图的表。对于浮动视图，请使用`fusion:GetPreviewList`函数。

- 参数：

  `include_globals` （*布尔*） – include_globals

- 返回：previews 预览

- 返回类型：表

###### Composition.GetToolList(*\[selected]\[, regid]*)

返回所有工具或所选工具的表。

`selected` 如果`selected`参数设置为`true`，则`GetToolList`将返回合成中所选工具的句柄列表。如果未选择任何工具，则返回的表为`nil`。如果所选参数为`false`或为空，则返回包含合成中所有工具句柄的表。

`regid` 此字符串值将限制GetToolList函数返回特定类型的工具（此类型与`TOOLS_RegID`属性相关）。

- Python用法：

  ```python
  from pprint import pprint
  
  # 输出合成中每个工具的名称
  pprint(composition.GetToolList())
  
  # 获取所有选中的工具
  pprint(composition.GetToolList(True))
  
  # 获取所有Loader
  pprint(comp.GetToolList(False, “Loader”))
  ```

- Lua用法：

  ```lua
  -- 输出合成中每个工具的名称
  dump(composition:GetToolList())
  
  -- 获取所有选中的工具
  dump(composition:GetToolList(true))
  
  -- 获取所有Loader
  dump(comp:GetToolList(false, “Loader”))
  ```

- 参数：

  `selected` （*布尔*） – selected

  `regid` （***字符串***） – regid

- 返回：tools 工具

- 返回类型：表

###### Composition.GetViewList()

返回合成中的所有视图。

###### Composition.Heartbeat()

Heartbeat。

###### Composition.IsLocked()

如果禁用弹出窗口和更新，则返回`true`。

使用此功能可以查看合成是否被锁定。

返回一个具有合成的锁定状态的布尔值。

- 返回：locked 锁定
- 返回类型：布尔

###### Composition.IsPlaying()

如果正在播放合成，则返回`true`。

- 返回：playing 正在播放
- 返回类型：布尔

###### Composition.IsRendering()

如果合成忙于渲染，则返回`true`。

如果在尝试查看工具后正在播放、渲染或仅为查看而渲染工具，它将返回`true`。

这等于`COMPB_Rendering`合成属性的状态。

- 返回：rendering 正在渲染
- 返回类型：布尔

###### Composition.Lock()

锁定合成以免更新。

`Lock()`函数将合成设置为非交互（“批处理”或锁定）式。这使得Fusion可以抑制可能出现的任何对话框，并且还可以防止任何重新渲染以响应对控件的更改。可以使用`Unlock()`函数解锁锁定的合成，该函数将合成返回到交互式。

使用`Lock()`和`Unlock()`包围脚本通常很有用，尤其是在添加工具或修改合成时。这样做可确保Fusion不会弹出一个对话框来询问用户输入，如，添加Loader时，还可以加快脚本的操作，因为在解锁合成之前不会花费任何时间进行渲染。

- Python用法：

  ```python
  comp.Lock()
  # 不会打开文件对话框，因为合成被锁定了
  
  my_loader = comp.Loader()
  comp.Unlock()
  ```

- Lua用法：

  ```lua
  comp:Lock()
  -- 不会打开文件对话框，因为合成被锁定了
  my_loader = Loader()
  comp:Unlock()
  ```

###### Composition.Loop(*enable*)

**注意：**此方法已重载并具有备用参数。见其他定义。

启用循环交互式播放。

此函数用于打开合成的播放控件中的循环控件。

- 参数：

  `enable` （*布尔*） – enable

###### Composition.Loop(*mode*)

**注意：**此方法已重载并具有备用参数。见其他定义。

启用循环交互式播放。

此函数用于打开合成的播放控件中的循环控件。

- 参数：

  `mode` （***字符串***） – mode

###### Composition.MapPath(*path*)

扩展路径字符串中的路径映射。

返回文件或目录路径，其中所有路径映射都扩展为其文字路径等效项。

Fusion中有许多默认和用户指定的路径映射，目的是提供访问公共位置的便捷方式，或者提供脚本灵活性。这些可以是任何字符串，但通常以冒号结尾，例如`Fusion:`、`Comp:`。它们将扩展为Path Maps偏好设置页面指定的文字路径。

但是，许多Fusion函数（以及所有Lua函数）都需要严格的文字路径。`MapPath()`可用于轻松地将任何路径映射转换为完全展开的文字路径。如果路径的开头没有路径映射，`MapPath()`将只返回未更改的路径。

除了扩展所有全局路径映射（如`Fusion:MapPath()`）之外，`Composition:MapPath()`还将展开合成的路径映射偏好设置中列出的任何路径映射，以及以下内置默认值。

对于多个目录，请使用`MapPathSegments()`。

- Python用法：

  ```python
  print(composition.MapPath(“Comp:footage\\file0000.tga”))
  ```

- Lua用法

  ```lua
  print(composition:MapPath(“Comp:footage\\file0000.tga”))
  ```

- 参数：

  `path` （***字符串***） – path

- 返回：mapped 被映射的

- 返回类型：字符串

###### Composition.MapPathSegments(*path*)

扩展多路径中的所有路径映射。
`MapPathSegments`类似于`MapPath`，但适用于包含多个目录的字符串。返回值是包含所有扩展路径的表，而`MapPath`仅扩展第一个段并丢弃其余段。

- Python用法：

  ```python
  from pprint import pprint
  
  pprint(comp.MapPathSegments(“AllDocs:Settings;Fusion:Settings”))
  
  # 返回
  # {1.0: ‘C:\\Users\\Public\\Documents\\Blackmagic Design\\Fusion\\Settings’,
  # 2.0: ‘C:\\Program Files\\Blackmagic Design\\Fusion 8\\Settings’}
  ```

- Lua用法

  ```lua
  dump(comp:MapPathSegments(“AllDocs:Settings;Fusion:Settings”))
  
  -- 返回 table: 0x03800440
  -- 1 = C:\Users\Public\Documents\Blackmagic Design\Fusion\Settings
  -- 2 = C:\Program Files\Blackmagic Design\Fusion 8\Settings
  ```

- 参数：

  `path` （***字符串***） – path

- 返回：mapped 被映射的

- 返回类型：字符串

###### Composition.NetRenderAbort()

NetRenderAbort

###### Composition.NetRenderEnd()

NetRenderEnd

###### Composition.NetRenderStart()

NetRenderStart

###### Composition.NetRenderTime()

NetRenderTime

###### Composition.MapPathSegments(*\[settings]*)

从`Clipboard`或设置表中粘贴工具。

`settings` 如果没有提供，将使用`Clipboard`。

- 参数：

  `settings` （*表*） – settings

- 返回：success 成功

- 返回类型：布尔

###### Composition.Play(*\[reverse]*)

开始交互式播放。

此函数用于打开合成的回放控件中的播放控件。

`reverse` 反向播放。

- 参数：

  `reverse` （*布尔*） – reverse

###### Composition.Print()

在合成的上下文中打印。

对于打印到不同合成的控制台很有用。

- Python用法：

  ```python
  new_comp = fu.NewComp()
  new_comp.Print(“Hello World”)
  ```

- Lua用法

  ```lua
  new_comp = fu:NewComp()
  new_comp:Print(“Hello World”)
  ```

###### Composition.Redo(*count*)

重做合成的一个或多个更改。

`Redo`函数可以反转Fusion中的最后一个撤消事件。

注意`count`的值可以是负数，在这种情况下，`Redo`将表现为`Undo`，其行为与`Undo()`函数完全相同。

`count` 指定要触发的重做事件数。

- 参数：

  `count` （*数值*） – count

###### Composition.Render(*\[wait]\[, start]\[, end]\[, proxy]\[, hiq]\[, motionblur]*)

**注意：**此方法已重载并具有备用参数。见其他定义。

开始渲染。

`Render`函数开始渲染当前合成。调用此函数有两种形式，一种是直接传递参数，另一种是在表中传递所有参数的形式。表格格式对于声明非连续渲染范围很有用，例如下面的格式。

如果合成成功渲染，则返回`true`；如果无法启动或完成渲染，则返回`nil`。

**<b>实参</b>**

`wait_for_render` 一个`true`或`false`值，指示脚本是否应该等待渲染完成，或者在渲染开始后继续处理。

`renderstart` 要开始渲染的帧。

`renderend` 要停止渲染的帧。

`step` 渲染x帧中的1个。比如，此处的值为2将隔一帧渲染。

`proxy` 按此因子缩小所有帧，以便更快地渲染。

`hiQ` 进行高质量渲染（如果未指定则默认为`true`）。

`mblur` 渲染时计算运动模糊（如果未指定则默认为`true`）

**<b>表形式</b>**

表条目应为以下一项或多项：

`Start` 渲染的第一帧。默认值：合成的渲染结束设置。

`End` 渲染的最终帧（包括）。默认值：合成的渲染结束设置

`HiQ` 以HiQ渲染。默认为`true`。

`RenderAll` 渲染所有工具，即使saver不是必需的也是如此。默认为`false`。

`MotionBlur` 渲染中的运动模糊，在工具中指定。默认为`true`。

`SizeType` 调整输出大小：

- -1    Custom 自定义（仅在预览渲染期间由`PreviewSavers`使用）
- 0     使用偏好设置
- 1     Half Size 全尺寸（默认）
- 2     半尺寸
- 3     Third Size 三分之一尺寸
- 4     Quarter Size 四分之一尺寸

`Width` 执行自定义预览时的结果宽度（默认为偏好设置）

`Height` 进行自定义预览时的结果高度（默认为偏好设置）。

`KeepAspect` 在进行自定义预览时保持框架方面。默认为Preview偏好设置。

`StepRender` 每X帧渲染一次（“在X帧上拍摄”）或渲染每一帧，默认为`false`。

`Steps` 如果分步渲染，分步的数量。默认`5`。

`UseNetwork` 启用网络渲染。默认为`false`。

`Groups` 使用这些网络从属组进行渲染（当进行网络渲染时）。默认“全部”

`Flags` 指定渲染标志的数字，通常为`0`（默认值）。大多数标志由其他方法指定，但值`262144`用于预览渲染。

`Tool` 处理专门渲染的工具。如果指定了此选项，则只会渲染此工具的部分内容。例如，你可以指定`comp.Saver1`只渲染到`Saver1`，忽略它之后的任何工具（包括Savers）。默认为零。

`FrameRange` 描述要渲染的帧。（例如`“1..100`、`150..180”`），默认为`“Start”..“End”`（见上）。

`Wait` 无论脚本命令是等待渲染完成还是立即返回，都默认为`false`。

- Python用法：

  ```python
  # 渲染显式的渲染范围，等待渲染。
  composition.Render(True, 1, 100, 1) # 等待，指定渲染范围
  
  # 渲染不连续的帧范围，并再渲染完成时返回。
  comp.Render({ “FrameRange”: “1..10,20,30,40..50”, “Wait”: True })
  
  # 渲染至Saver1工具，而不渲染其下游。
  comp.Render({“Tool”: comp.Saver1})
  ```

- Lua用法

  ```lua
  -- 渲染显式的渲染范围，等待渲染。
  composition:Render(true, 1, 100, 1) -- 等待，指定渲染范围
  
  -- 渲染不连续的帧范围，并再渲染完成时返回。
  comp:Render({ FrameRange = “1..10,20,30,40..50”, Wait = true })
  
  -- 渲染至Saver1工具，而不渲染其下游。
  comp:Render({Tool = comp.Saver1})
  ```

- 参数：

  `wait` （*布尔*） – wait

  `start` （*数值*） – start

  `end` （*数值*） – end

  `proxy` （*数值*） – proxy

  `hiq` （*布尔*） – hiq

  `motionblur` （*布尔*） – motionblur

- 返回：success 成功

- 返回类型：布尔

###### Composition.Render(*settings*)

**注意：**此方法已重载并具有备用参数。见其他定义。

开始渲染。

`Render`函数开始渲染当前合成。调用此函数有两种形式，一种是直接传递参数，另一种是在表中传递所有参数的形式。表格格式对于声明非连续渲染范围很有用，例如下面的格式。

如果合成成功渲染，则返回`true`；如果无法启动或完成渲染，则返回`nil`。

**<b>实参</b>**

`wait_for_render` 一个`true`或`false`值，指示脚本是否应该等待渲染完成，或者在渲染开始后继续处理。

`renderstart` 要开始渲染的帧。

`renderend` 要停止渲染的帧。

`step` 渲染x帧中的1个。比如，此处的值为2将隔一帧渲染。

`proxy` 按此因子缩小所有帧，以便更快地渲染。

`hiQ` 进行高质量渲染（如果未指定则默认为`true`）。

`mblur` 渲染时计算运动模糊（如果未指定则默认为`true`）

**<b>表形式</b>**

表条目应为以下一项或多项：

`Start` 渲染的第一帧。默认值：合成的渲染结束设置。

`End` 渲染的最终帧（包括）。默认值：合成的渲染结束设置

`HiQ` 以HiQ渲染。默认为`true`。

`RenderAll` 渲染所有工具，即使saver不是必需的也是如此。默认为`false`。

`MotionBlur` 渲染中的运动模糊，在工具中指定。默认为`true`。

`SizeType` 调整输出大小：

- -1    Custom 自定义（仅在预览渲染期间由`PreviewSavers`使用）
- 0     使用偏好设置
- 1     Half Size 全尺寸（默认）
- 2     半尺寸
- 3     Third Size 三分之一尺寸
- 4     Quarter Size 四分之一尺寸

`Width` 执行自定义预览时的结果宽度（默认为偏好设置）

`Height` 进行自定义预览时的结果高度（默认为偏好设置）。

`KeepAspect` 在进行自定义预览时保持框架方面。默认为Preview偏好设置。

`StepRender` 每X帧渲染一次（“在X帧上拍摄”）或渲染每一帧，默认为`false`。

`Steps` 如果分步渲染，分步的数量。默认`5`。

`UseNetwork` 启用网络渲染。默认为`false`。

`Groups` 使用这些网络从属组进行渲染（当进行网络渲染时）。默认“全部”

`Flags` 指定渲染标志的数字，通常为`0`（默认值）。大多数标志由其他方法指定，但值`262144`用于预览渲染。

`Tool` 处理专门渲染的工具。如果指定了此选项，则只会渲染此工具的部分内容。例如，你可以指定`comp.Saver1`只渲染到`Saver1`，忽略它之后的任何工具（包括Savers）。默认为零。

`FrameRange` 描述要渲染的帧。（例如`“1..100`、`150..180”`），默认为`“Start”..“End”`（见上）。

`Wait` 无论脚本命令是等待渲染完成还是立即返回，都默认为`false`。

- Python用法：

  ```python
  # 渲染显式的渲染范围，等待渲染。
  composition.Render(True, 1, 100, 1) # 等待，指定渲染范围
  
  # 渲染不连续的帧范围，并再渲染完成时返回。
  comp.Render({ “FrameRange”: “1..10,20,30,40..50”, “Wait”: True })
  
  # 渲染至Saver1工具，而不渲染其下游。
  comp.Render({“Tool”: comp.Saver1})
  ```

- Lua用法

  ```lua
  -- 渲染显式的渲染范围，等待渲染。
  composition:Render(true, 1, 100, 1) -- 等待，指定渲染范围
  
  -- 渲染不连续的帧范围，并再渲染完成时返回。
  comp:Render({ FrameRange = “1..10,20,30,40..50”, Wait = true })
  
  -- 渲染至Saver1工具，而不渲染其下游。
  comp:Render({Tool = comp.Saver1})
  ```

- 参数：

  `settings` （*表*） – settings

- 返回：success 成功

- 返回类型：布尔

###### Composition.ReverseMapPath(*mapped*)

将路径折叠为最佳匹配的路径映射。

而`MapPath()`用于扩展路径名中的任何Fusion路径映射以获取普通的文字路径，而`ReverseMapPath`将执行相反的过程，并重新插入这些路径映射。

如果要存储路径以供使用（比如，在合成或脚本中），这通常很有用。它允许路径与另一个系统或情况使用相同的含义，其中路径的文字位置可能不同。

除了处理所有全局路径映射（如`Fusion:ReverseMapPath()`）之外，`Composition:ReverseMapPath()`还处理合成的路径映射首选项页面中列出的任何路径映射，以及内置的`Comp:MapPath`（参阅`MapPath()`）。

返回路径，尽可能重新插入Fusion路径映射句柄。

- 参数：

  `path` （***字符串***） – path

- 返回：mapped 被映射的

- 返回类型：字符串

###### Composition.RunScript(*filename*)

在合成的脚本上下文中运行脚本。

使用此函数在合成环境中运行脚本。这类似于从合成的Scripts菜单启动脚本。

该脚本启动时将`fusion`和`composition`变量设置为`Fusion`和当前激活的`Composition`对象。给定的文件名可以完全指定，也可以相对于合成的`Scripts:path`。

Fusion支持.py .py2和.py3后缀，以区分python脚本版本。

- 参数：

  `filename` （***字符串***） – filename

###### Composition.Save(*filename*)

保存合成。

此功能可将合成保存到磁盘。`compname`参数必须指定相对于Fusion的文件系统的路径，该路径将保存合成。换句话说——如果系统'a'使用`Save()`函数指示系统'b'上的Fusion保存合成，则从系统'b'的角度来看，所提供的路径必须是有效的。

`filename` 是要保存的合成的完整路径和名称。

- 参数：

  `filename` （***字符串***） – filename

- 返回：success 成功

- 返回类型：布尔

###### Composition.SaveAs()

使用Save As对话框提示用户以保存合成。

###### Composition.SaveCopyAs()

使用Save As对话框提示用户将合成保存为副本。

###### Composition.SetActiveTool(*tool*)

设置当前活动的工具。

此函数将当前活动的工具设置为脚本指定的工具。可以使用`ActiveTool`读取它。

要取消选择所有工具，请省略参数或使用`nil`。

请注意，`ActiveTool`还表示选中了该工具，而选中的工具不会自动激活。一次只能有一个工具处于活动状态。要选中工具，请使用`FlowView:Select()`。

###### Composition.SetData(*name, value*)

`name` 数据名称。此名称可以是`table.subtable`格式，以允许持久数据存储在子表中。

`value` 要记录在对象的持久数据中的值。它几乎可以是任何类型。

持久数据是一种非常有用的方式来存储名称，日期，文件名，注释，标志或其他任何内容，以便它们与对象的此实例永久关联，并使用`SetData()`与对象一起存储，可以随时使用`GetData()`检索。

存储方法因对象而异：Fusion应用程序本身调用的`SetData()`会将其数据保存在Fusion.prefs文件中，并且只要Fusion的副本正在运行，它就可以使用。在与`Composition`相关联的任何对象上调用`SetData()`将导致数据保存在.comp文件中，或者保存在可直接从该对象保存的任何设置文件中。一些与任何合成没有关联也没有以任何方式保存的短暂对象可能根本没有永久存储其数据，并且数据只会在对象本身存在的情况下持续存在。

- Python用法：

  ```python
  from pprint import pprint
  from datetime import datetime
  tool = comp.ActiveTool
  tool.SetData(“Modified.Author”, fusion.GetEnv(“USERNAME”))
  tool.SetData(“Modified.Date”, str(datetime.now()))
  pprint(tool.GetData(“Modified”))
  ```

- Lua用法

  ```lua
  tool:SetData(“Modified.Author”, fusion:GetEnv(“USERNAME”))
  tool:SetData(“Modified.Date”, os.date())
  dump(tool:GetData(“Modified”))
  ```

- 参数：

  `name` （***字符串***） – name
  
  `value` （*(数值|字符串|布尔|表)*） – value

###### Composition.SetPrefs(*prefname, val*)

**注意：**此方法已重载并具有备用参数。见其他定义。

从属性表中设置偏好设置。

SetPrefs函数可用于指定Fusion中几乎所有首选项的值。它可以采用由名称或单个名称和值标识的值表。

作为参数提供的表格应具有`[prefs_name] = value`格式。允许子表。

可以设置不存在的偏好设置。比如，设置fusion：**`SetPrefs({Comp.FrameFormat.Stuff = "Bob"})`**将创建一个新的偏好设置，此后将保留在Fusion偏好设置文件中。

如果提供给它的任何参数无效，则返回`false`，否则返回`true`。请注意，如果尝试将偏好设置设置为无效值，则该函数仍将返回`true`。例如，尝试将FPS设置为`"Bob"`将失败，但该函数仍将返回`true`。

- Python用法：

  ```python
  comp.SetPrefs({ “Comp.Transport.FrameStep”:5, “Comp.FrameFormat.AspectX”:2 })
  comp.SetPrefs(“Comp.Interactive.BackgroundRender”, True)
  ```

- Lua用法

  ```lua
  comp:SetPrefs({ [“Comp.Unsorted.GlobalStart”]=0, [“Comp.Unsorted.GlobalEnd”]=100 })
  comp:SetPref(“Comp.Interactive.BackgroundRender”, true)
  ```

- 参数：

  `prefname` （***字符串***） – prefname

  `val` （*(数值|字符串|布尔|表)*） – val

###### Composition.SetPrefs(*prefs*)

**注意：**此方法已重载并具有备用参数。见其他定义。

从属性表中设置偏好设置。

SetPrefs函数可用于指定Fusion中几乎所有首选项的值。它可以采用由名称或单个名称和值标识的值表。

作为参数提供的表格应具有`[prefs_name] = value`格式。允许子表。

可以设置不存在的偏好设置。比如，设置fusion：**`SetPrefs({Comp.FrameFormat.Stuff = "Bob"})`**将创建一个新的偏好设置，此后将保留在Fusion偏好设置文件中。

如果提供给它的任何参数无效，则返回`false`，否则返回`true`。请注意，如果尝试将偏好设置设置为无效值，则该函数仍将返回`true`。例如，尝试将FPS设置为`"Bob"`将失败，但该函数仍将返回`true`。

- Python用法：

  ```python
  comp.SetPrefs({ “Comp.Transport.FrameStep”:5, “Comp.FrameFormat.AspectX”:2 })
  comp.SetPrefs(“Comp.Interactive.BackgroundRender”, True)
  ```

- Lua用法

  ```lua
  comp:SetPrefs({ [“Comp.Unsorted.GlobalStart”]=0, [“Comp.Unsorted.GlobalEnd”]=100 })
  comp:SetPref(“Comp.Interactive.BackgroundRender”, true)
  ```

- 参数：

  `prefs` （*表*） – prefs

###### Composition.StartUndo(*name*)

开始撤消事件。

`StartUndo()`函数始终与`EndUndo()`函数配对。通过`StartUndo()`和`EndUndo()`之间的脚本行对合成所做的任何更改都存储为单个撤消事件。

撤消事件中捕获的更改可以使用CTRL-Z或Edit菜单从GUI撤消。它们也可以通过调用`Undo`函数从脚本中撤消。

应谨慎使用，因为用户（或脚本）将无法撤消上述命令。

`name` 指定Fusion GUI的“编辑/撤消”菜单中显示的名称，该字符串包含要保存的合成的完整路径和名称。

在将撤消添加到堆栈之前，必须对组合进行实际更改（强制“脏”事件）。

- Python用法：

  ```python
  composition.StartUndo(“Add some tools”)
  bg1 = comp.Background()
  pl1 = comp.Plasma()
  mg1 = comp.Merge({ “Background”: bg1, “Foreground”: pl1 })
  composition.EndUndo(True)
  ```

- Lua用法

  ```lua
  composition:StartUndo(“Add some tools”)
  bg1 = Background{}
  pl1 = Plasma{}
  mg1 = Merge{ Background = bg1, Foreground = pl1 }
  composition:EndUndo(true)
  ```

- 参数：

  `name` （***字符串***） – name

###### Composition.Stop()

停止交互式播放。

使用此函数的方法与在合成的回放控件中使用停止按钮的方式相同。

###### Composition.Undo(*name*)

撤销合成的一个或多个更改。

`Undo`函数在Fusion中触发撤消事件。count参数确定触发了多少个撤消事件。

注意`count`的值可以是负数，在这种情况下，`Undo`将表现为`Redo`，其行为与`Redo()`函数完全相同。

`count` 指定要触发的撤销事件数。

- 参数：

  `count` （*数值*） – count

###### Composition.Unlock()

解锁合成。

`Unlock()`函数将合成返回到交互模式。这允许Fusion向用户显示对话框，并允许重新呈现以响应对控件的更改。除非首先使用`Lock()`函数锁定合成，否则调用`Unlock()`将无效。

使用`Lock()`和`Unlock()`包围脚本通常很有用，尤其是在添加工具或修改合成时。这样做可确保Fusion不会弹出一个对话框来询问用户输入，如，添加Loader时，还可以加快脚本的操作，因为在解锁合成之前不会花费任何时间进行渲染。

- Python用法：

  ```python
  comp.Lock()
  # 不会打开文件对话框，因为合成被锁定了
  my_loader = comp.Loader()
  comp.Unlock()
  ```

- Lua用法：

  ```lua
  comp:Lock()
  -- 不会打开文件对话框，因为合成被锁定了
  my_loader = Loader()
  comp:Unlock()
  ```

###### Composition.UpdateViews()

UpdateViews