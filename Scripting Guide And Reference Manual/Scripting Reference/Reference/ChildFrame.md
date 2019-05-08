#### ChildFrame

<b>类 ChildFrame</b>

父类：`FuFrame`

表示包含所有视图的框架窗口的上下文。
通常，每个合成只有一个`ChildFrame`对象，您可以通过`comp.CurrentFrame`检索它。

##### 方法

<b>`ChildFrame.ActivateFrame()`</b>

激活此框架窗口。

<b>`ChildFrame.ActivateNextFrame()`</b>

激活下一个帧窗口。

<b>`ChildFrame.ActivatePrevFrame()`</b>

激活上一帧窗口。

<b>`ChildFrame.GetControlViewList()`</b>

从Controls选项卡返回视图列表。

- Python用法：

  ```python
  list = comp.CurrentFrame.GetControlViewList()
  ```

- Lua用法：

  ```lua
  list = comp.CurrentFrame:GetControlViewList()
  ```

- 返回：views 视图

- 返回类型：表

<b>`ChildFrame.GetControlViewList()`</b>

从Main选项卡返回视图列表。

- 返回：views 视图
- 返回类型：表

<b>`ChildFrame.GetViewLayout()`</b>

检索当前视图布局。

- 返回：views 视图
- 返回类型：表

<b>`ChildFrame.SetViewLayout(layout)`</b>

从表中设置当前视图布局。

- 参数：

  `layout` （*表*） – layout

- 返回：success 成功

- 返回类型：布尔

<b>`ChildFrame.SwitchControlView(id)`</b>

从Controls选项卡显示给定视图。

- 参数：

  `id` （***string***） – id

<b>`ChildFrame.SwitchMainView(id)`</b>

从Main选项卡显示给定视图。

- 参数：

  `id` （***string***） – id