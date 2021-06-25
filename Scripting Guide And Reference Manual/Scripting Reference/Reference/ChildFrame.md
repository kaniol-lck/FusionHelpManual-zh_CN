#### ChildFrame

###### 类 ChildFrame

父类：`FuFrame`

表示包含所有视图的框架窗口的上下文。
通常，每个合成只有一个`ChildFrame`对象，您可以通过`comp.CurrentFrame`检索它。

##### 方法

###### ChildFrame.ActivateFrame()

激活此框架窗口。

###### ChildFrame.ActivateNextFrame()

激活下一个帧窗口。

###### ChildFrame.ActivatePrevFrame()

激活上一帧窗口。

###### ChildFrame.GetControlViewList()

从Controls选项卡返回视图列表。

- <b>Python用法</b>：

  ```python
  list = comp.CurrentFrame.GetControlViewList()
  ```

- <b>Lua用法</b>：

  ```lua
  list = comp.CurrentFrame:GetControlViewList()
  ```

- <b>返回</b>：views 视图

- <b>返回类型</b>：表

###### ChildFrame.GetControlViewList()

从Main选项卡返回视图列表。

- <b>返回</b>：views 视图
- <b>返回类型</b>：表

###### ChildFrame.GetViewLayout()

检索当前视图布局。

- <b>返回</b>：views 视图
- <b>返回类型</b>：表

###### ChildFrame.SetViewLayout(*layout*)

从表中设置当前视图布局。

- <b>参数</b>：

  `layout` （*表*） – layout

- <b>返回</b>：success 成功

- <b>返回类型</b>：布尔

###### ChildFrame.SwitchControlView(*id*)

从Controls选项卡显示给定视图。

- <b>参数</b>：

  `id` （***string***） – id

###### ChildFrame.SwitchMainView(*id*)

从Main选项卡显示给定视图。

- <b>参数</b>：

  `id` （***string***） – id