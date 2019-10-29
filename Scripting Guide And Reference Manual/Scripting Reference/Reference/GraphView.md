#### GraphView

###### 类 GraphView

父类：`FuScrollView`

##### 方法

###### GraphView.DeleteGuides(\[*start*\]\[, *end*\])

删除开始和结束之间的参考线。

- <b>参数</b>：

  `start` （*数值*） – start
  `end` （*数值*） – end

###### GraphView.GetClipboard()

以表格和ASCII文本的形式检索剪贴板上的工具。

- <b>返回</b>：clipboard
- <b>返回类型</b>：表

###### GraphView.GetGuides(\[start\]\[, end\])

返回快速向导时间&名称的表。

- <b>参数</b>：

  `start` （*数值*） – start
  `end` （*数值*） – end

- <b>返回</b>：guides
- <b>返回类型</b>：表

###### GraphView.GoNextKeyTime()

跳至活动样条的下一个关键帧。

###### GraphView.GoPrevKeyTime()

跳至活动样条的上一个关键帧。

###### GraphView.Paste(*desttime*, *spline1*\[, *spline2*...\]\[, *points*\])

在指定的时间将剪贴板内的点粘贴到给定的样条。

- <b>参数</b>：

  `desttime` （*数值*） – desttime
  `spline1` （*对象*） – spline1
  `spline2` （*对象*） – spline2
  `points` （*表*） – points

- <b>返回</b>：success
- <b>返回类型</b>：布尔

###### GraphView.SetGuides(\[guides\]\[, rem_prev\])

设置快速向导。

- <b>参数</b>：

  `guides` （*表*） – guides
  `rem_prev` （*布尔*） – rem_prev

###### GraphView.ZoomFit()

更改比例以适合视图中所有显示的样条。

###### GraphView.ZoomIn()

增大视图的比例（缩放）。

###### GraphView.ZoomOut()

减小视图的比例（缩放）。

###### GraphView.ZoomRectangle()

**注意：**此方法被重载，并具有其他参数。另见其他定义。

用指定的矩形填充视图。

###### GraphView.ZoomRectangle(`x1`, `y1`, `x2`, `y2`)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

用指定的矩形填充视图。

- <b>参数</b>：

  `x1` （*数值*） – x1
  `y1` （*数值*） – y1
  `x2` （*数值*） – x2
  `y2` （*数值*） – y2