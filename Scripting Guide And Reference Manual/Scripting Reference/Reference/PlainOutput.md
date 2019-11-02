#### PlainOutput

###### 类 PlainOutput

父类：`Link`

表示一个输出。

##### PlainOutput属性

| 属性名称        | 类型   | 描述                        |
| --------------- | ------ | --------------------------- |
| `OUTS_Name`     | 字符串 | 输出的名称。                |
| `OUTS_ID`       | 字符串 | 输出的唯一ID字符串。        |
| `OUTS_DataType` | 字符串 | 输出使用的`Parameter`类型。 |

##### 方法

###### PlainOutput.ClearDiskCache(`start`, `end`)

从磁盘缓存中清除帧。

`start` 开始清除磁盘缓存的帧（包含）。

`end` 清除的最后一帧（包含）。

- <b>参数</b>：
  `start` （*数值*） – start
  `end` （*数值*） – end
- <b>返回</b>：success
- <b>返回类型</b>：布尔

###### PlainOutput.EnableDiskCache(*enable*, *path*, *lockCache*, *lockBranch*, *delete*, *preRender*, *useNetwork*)

控制基于磁盘的缓存。

`enable` 启用或禁用缓存。

`path` 用于缓存文件的合法路径。

`lockCache` 锁定缓存，防止在修改上游工具时使现有缓存文件无效。需谨慎使用，因为缓存文件可能会过期。

`lockBranch` 锁定所有上游工具（默认为`false`）。

`delete` 删除可能存在于`path`中的缓存（默认为`false`）。

`preRender` 现在渲染来创建缓存（默认为`true`）。

`useNetwork` 在预渲染时使用网络渲染（默认为`false`）。

若成功则返回布尔值以及缓存路径的字符串。

- <b>Python用法</b>：

  ```python
  comp.BC1.Output.EnableDiskCache(True,"c:\\temp\\BC.0000.raw")
  ```

- <b>Lua用法</b>：

  ```lua
  BC1.Output:EnableDiskCache(true,"c:\\temp\\BC.0000.raw")
  ```

- <b>返回</b>：success

- <b>返回类型</b>：布尔

###### PlainOutput.GetConnectedInputs()

返回连接到此输出的输入表。

`GetConnectedInputs`函数用于确定使用给定输出的输入。

注意，根据设计，输入只能连接到单个输出，而一个输出可能是分支的并且连接到多个输入。

###### PlainOutput.GetDoD(\[*time*\]\[, *flags*\]\[, *proxy*\])

返回给定时间的定义域（Domain of Definition）。

`time` 要为其获取值的帧（默认为当前时间）。

`reqflags` 质量标志（默认为最终质量）。

`proxy` 代理级别（默认为无代理）。

返回的表包含分别按左、下、右、上的顺序包含工具输出DoD的四个整数。

- <b>参数</b>：
  `time` （*数值*） – time
  `flags` （*数值*） – flags
  `proxy` （*数值*） – proxy
- <b>返回</b>：dod
- <b>返回类型</b>：表

###### PlainOutput.GetValue(\[*time*\]\[, *flags*\]\[, *proxy*\])

返回在给定时间的值。

有助于检索一系列工具的结果。它通过触发Output上游所有工具的渲染（如果未找到缓存的值）来实现此目的。

`time` 要为其获取值的帧（默认为当前时间）。

`reqflags` 质量标志（默认为最终质量）。

`proxy` 代理级别（默认为无代理）。

返回的值可以为`nil`或多种不同的类型：

`Number` 返回一个数值。

`Point` 返回一个包含X和Y成员的表。

`Text` 返回一个字符串。

`Clip` 返回文件名字符串。

`Image` 返回一个`Image`对象。

`attr` 是拥有下列条目的表：

`Valid` 包含数值`Start`和`End`条目的表。

`DataType` 参数类型的字符串ID。

`TimeCost` 渲染该参数所花费的时间。

（译注：这一段的格式有点乱，我也不能保证正确性。）

- <b>返回</b>：value
- <b>返回类型</b>：`Parameter`

###### PlainOutput.ShowDiskCacheDlg()

显示用于用户交互的缓存到磁盘（Cache-To-Disk）对话框。

注意这是一个模态对话框。脚本的执行将等待用户关闭对话框。如果取消，则返回`false`，否则返回`true`。

- <b>返回</b>：success
- <b>返回类型</b>：布尔