#### FlowView

###### 类 FlowView

父类：`FuView`

FlowView表示带有所有工具的流程。

工具的位置、其选择状态和视图缩放级别由此对象控制。

- <b>Python用法</b>：

  ```python
  # 获取当前FlowView
  flow = composition.CurrentFrame.FlowView
  ```

- <b>Lua用法</b>：

  ```lua
  -- 获取当前FlowView
  flow = composition.CurrentFrame.FlowView
  ```

##### 方法

###### FlowView.FlushSetPosQueue()

移动排队等待`QueueSetPos`定位的所有工具。

###### FlowView.FrameAll()

重新缩放并重新定位`FlowView`以包含所有工具。

###### FlowView.GetPos()

返回工具的位置。

此函数返回两个包含工具的X和Y坐标的数值。在Python中使用GetPosTable来代替。

- <b>Python用法</b>：

  ```python
  flow = comp.CurrentFrame.FlowView
  x, y = flow.GetPosTable(comp.Background1).values()
  ```

- <b>Lua用法</b>：

  ```lua
  flow = comp.CurrentFrame.FlowView
  x, y = flow:GetPos(tool)
  ```

- <b>返回</b>：x

- <b>返回类型</b>：数值

###### FlowView.GetPosTable(*tool*)

以表的形式返回工具的位置。

在Python中使用它来获取X和Y值。

- <b>Python用法</b>：

  ```python
  flow = comp.CurrentFrame.FlowView
  x, y = flow.GetPosTable(comp.Background1).values()
  ```

- <b>Lua用法</b>：

  ```lua
  flow = comp.CurrentFrame.FlowView
  x, y = flow:GetPos(tool)
  ```

- <b>参数</b>：

  `tool` （***对象***） – tool

- <b>返回</b>：pos 位置

- <b>返回类型</b>：表

###### FlowView.GetScale()

返回内容的当前缩放比例。

此函数返回一个数值，指示FlowView的当前比例。`1`表示100％，而`0.1`表示默认比例的10％。

- <b>返回</b>：scale 比例
- <b>返回类型</b>：数值

###### FlowView.QueueSetPos(*tool, x, y*) 

将工具移动到新位置的队列。

一旦调用`FlushSetPosQueue()`，将核算所有队列的移动。

- <b>参数</b>：

  `tool` （***对象***） – tool

  `x` （*数值*） – x

  `y` （*数值*） – y

###### FlowView.Select(*tool[, select]*) 

选择或取消选中工具。

此函数将添加或删除当前工具选中集中第一个参数中指定的工具。 第二个参数应设置为`false`以从所选中删除工具，或设置为`true`以添加它。

`tool` 应包含将在`FlowView`中选中或取消选中的工具。

`select` 将此设置为`false`将取消选中第一个参数中指定的工具。否则，使用默认值`true`，选中工具。

如果不带参数调用，该函数将清除当前选择中的所有工具。

- <b>参数</b>：

  `tool` （***对象***） – tool

  `select` （*布尔*） – select

###### FlowView.SetPos(*tool, x, y*) 

将工具移动到新位置。

- <b>Python用法</b>：

  ```python
  # 将所有选定的工具与ActiveTool的x坐标对齐
  flow = comp.CurrentFrame.FlowView
  x, y = flow.GetPosTable(comp.ActiveTool)
  for t in comp.GetToolList(True).values():
      cur_x, cur_y = flow.GetPosTable(t)
      flow.SetPos(t, x, cur_y)
  
  ```

- <b>Lua用法</b>：

  ```lua
  -- 将所有选定的工具与ActiveTool的x坐标对齐
  local flow = comp.CurrentFrame.FlowView
  local x, y = flow:GetPos(comp.ActiveTool)
  for i, t in pairs(comp:GetToolList(true)) do
      cur_x, cur_y = flow:GetPos(t)
      flow:SetPos(t, x, cur_y)
  end
  ```

- <b>参数</b>：

  `tool` （***对象***） – tool

  `x` （*数值*） – x

  `y` （*数值*） – y

###### FlowView.SetScale(*scale*) 

更改内容的比例。

此函数将`FlowView`重新调整为指定的量。 `scale`参数的值为`1`会将`FlowView`设置为100％，而值为`0.1`会将其设置为默认比例的10％。

- <b>参数</b>：
  
  `scale` （*数值*） – scale