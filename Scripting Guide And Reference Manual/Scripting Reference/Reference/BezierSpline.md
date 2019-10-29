#### BezierSpline

###### 类 BezierSpline

父类：`Spline`

修改器用来表示数值输入上的动画。

关键帧以贝塞尔样条插值。

若需animate点（Points），使用`Path`来代替。

- <b>Python用法</b>：

  ```python
  comp.Merge1.Blend= comp.BezierSpline()
  comp.Merge1.Blend[1] = 1
  comp.Merge1.Blend[50] = 0
  ```

- <b>Lua用法</b>：

  ```lua
  Merge1.Blend = BezierSpline()
  Merge1.Blend[1] = 1    -- 在第1帧添加关键帧
  Merge1.Blend[50] = 0   -- 在第50帧添加关键帧
  ```

##### 方法

###### BezierSpline.AdjustKeyFrames (*start, end, x, y, operation\[, pivotx]\[, pivoty]*)

设置、偏移或缩放关键帧的范围。

`start, end` 要调整的关键点的时间范围（包含的）。

`x, y` 时间和值偏移/因子

`operation` 可以是`"set"`、`"offset"`或`"scale"`（区分大小写）

`pivotx, pivoty` 缩放的可选值。默认为零。

- <b>参数</b>：

  `start` （*数值*） – start
  `end` （*数值*） – end
  `x` （*数值*） – x
  `y` （*数值*） – y
  `operation` （***字符串***） – operation
  
  `pivotx` （*数值*） – pivotx
  `pivoty` （*数值*） – pivoty

###### BezierSpline.DeleteKeyFrames(*start\[, end]*)

删除关键帧。

- <b>参数</b>：

  `start` （*数值*） – start
  `end` （*数值*） – end

###### BezierSpline.GetKeyFrames()

获取关键帧的表。

当`Operator:GetKeyFrames()`返回工具有效范围的表时，以及`Input:GetKeyFrames()`返回任何动画的关键帧时间表时，当从`BezierSpline`修改器调用`GetKeyFrames()`时，它将返回一个完全描述样条曲率的表。

返回的数据包括由子表组成的表，每个关键帧一个子表并以关键帧时间为键值。子表包含关键帧值的条目，以及左边和/或左边的子表 右手柄，由`"LH"`和`"RH"`键索引。手柄子表包含两个条目，用于手柄的X和Y位置。

返回一个包含样条控件的动画关键帧信息的表。

有三个关键帧的样条曲线的示例表如下：

```lua
{
    [0.0] = { 2.0, RH = { 12.666667, 2.0 } },
    [38.0] = { 3.86, LH = { 25.333333, 3.666667 }, RH = { 46.0, 4.0 } },
    [62.0] = { 2.5, LH = { 54.0, 2.5 } }
}
```

- <b>Python用法</b>：

  ```python
  from pprint import pprint
  # 获取连接到Blend输入上的样条输出
  splineout = comp.Merge1.Blend.GetConnectedOutput()
  
  # 然后使用GetTool()来获取Bezier Spline修改器自身
  if splineout:
      spline = splineout.GetTool()
  
      # 接着使用GetKeyFrames()来获取样条数据的表
      splinedata = spline.GetKeyFrames()
      pprint(splinedata)
  ```

- <b>Lua用法</b>：

  ```lua
  -- 获取连接到Blend输入上的样条输出
  splineout = Merge1.Blend:GetConnectedOutput()
  
  -- 然后使用GetTool()来获取Bezier Spline修改器自身
  if splineout then
      spline = splineout:GetTool()
  
      -- 接着使用GetKeyFrames()来获取样条数据的表
      splinedata = spline:GetKeyFrames()
      dump(splinedata)
  end
  ```

- <b>返回</b>：keyframes 关键帧
- <b>返回类型</b>：表

###### BezierSpline.SetKeyFrames(*keyframes\[, replace]*)

设置关键帧表。
此功能允许你设置样条曲线的关键帧及其曲率。该表应包含一个子表，每个关键帧一个，每个都有一个关键帧时间的键值。子表应包含关键帧值的条目，并且可以选择包含左和/或右手柄的子表，键入`"LH"`和`"RH"`。句柄子表应包含两个条目，用于句柄的X和Y位置。
以下是具有三个关键帧的样条曲线的示例表：

```lua
{
    [0.0] = { 2.0, RH = { 12.666667, 2.0 } },
    [38.0] = { 3.86, LH = { 25.333333, 3.666667 }, RH = { 46.0, 4.0 } },
    [62.0] = { 2.5, LH = { 54.0, 2.5 } }
}
```

- <b>返回</b>：关键帧
- <b>返回类型</b>：表