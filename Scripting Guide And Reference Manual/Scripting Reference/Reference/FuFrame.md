#### FuFrame

###### 类 FuFrame

父类：`Object`

##### 成员

###### FuFrame.Composition

表示此框架窗口的合成（只读）。

- <b>设置</b>：

  ```lua
  FuFrame.Composition = comp -- (Composition)
  ```

###### FuFrame.ConsoleView

表示此框架窗口的控制台（只读）。

- <b>设置</b>：

  ```lua
  FuFrame.ConsoleView = view -- (FuView)
  ```

###### FuFrame.CurrentView

表示此框架窗口的当前活动视图（只读）。

- <b>设置</b>：

  ```lua
  FuFrame.CurrentView = view -- (FuView)
  ```

###### FuFrame.FlowView

表示此框架窗口的流程视图（只读）。

- <b>设置</b>：

  ```lua
  FuFrame.FlowView = view -- (FuView)
  ```

###### FuFrame.InfoView

表示此框架窗口的信息视图（只读）。

- <b>设置</b>：

  ```lua
  FuFrame.InfoView = view -- (FuView)
  ```

###### FuFrame.LeftView

表示此框架窗口的左显示视图（只读）。

- <b>设置</b>：

  ```lua
  FuFrame.LeftView = view -- (GLView)
  ```

###### FuFrame.ModifierView

表示此框架窗口的修改器（Modifier）控件视图（只读）。

- <b>设置</b>：

  ```lua
  FuFrame.ModifierView = view -- (FuView)
  ```

###### FuFrame.RightView

表示此框架窗口的右显示视图（只读）。

- <b>设置</b>：

  ```lua
  FuFrame.RightView = view -- (GLView)
  ```

###### FuFrame.SplineView

表示此框架窗口的样条编辑器视图（只读）。

- <b>设置</b>：

  ```lua
  FuFrame.SplineView = view -- (FuView)
  ```

###### FuFrame.TimeRulerView

表示此框架窗口的时间标尺视图（只读）。

- <b>设置</b>：

  ```lua
  FuFrame.TimeRulerView = view -- (FuView)
  ```

###### FuFrame.TimelineView

表示此框架窗口的时间轴视图（只读）。

- <b>设置</b>：

  ```lua
  FuFrame.TimelineView = view -- (FuView)
  ```

###### FuFrame.ToolView

表示此框架窗口的工具（Tool）控件视图（只读）。

- <b>设置</b>：

  ```lua
  FuFrame.ToolView = view -- (FuView)
  ```

###### FuFrame.TransportView

表示此框架窗口的传输控件视图（只读）。

- <b>设置</b>：

  ```lua
  FuFrame.TransportView = view -- (FuView)
  ```

##### 方法

###### FuFrame.GetPreviewList([*include_globals*])

检索预览表。

- <b>参数</b>：

  `include_globals` （*布尔*） – include_globals

- <b>返回</b>：previews 预览

- <b>返回类型</b>：表

###### FuFrame.GetViewList()

返回此框架内的视图列表。

- <b>返回</b>：views 视图
- <b>返回类型</b>：表

###### FuFrame.SwitchView(*id*)

在此框架内显示给定视图。

- <b>参数</b>：

  `id` （***字符串***） – id

###### FuFrame.ViewOn(\[*tool*\]\[, *view*\])

在所编号的视图上显示工具。

- <b>Python用法</b>：

  ```python
  comp.CurrentFrame.ViewOn(tool, 1)
  ```

- <b>Lua用法</b>：

  ```Lua
  comp.CurrentFrame:ViewOn(tool, 1)
  ```

- <b>参数</b>：

  `tool` （*Tool*）– tool

  `view` （*数值*）– view 