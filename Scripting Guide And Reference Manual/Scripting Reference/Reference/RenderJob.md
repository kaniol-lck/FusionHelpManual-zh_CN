#### RenderJob

###### 类 RenderJob

父类：`Object`

表示一个渲染作业。

##### RenderJob属性

| 属性名称                | 类型   | 描述                                                         |
| ----------------------- | ------ | ------------------------------------------------------------ |
| `RJOBS_Status`          | 字符串 | 以字符串形式的当前作业状态。                                 |
| `RJOBB_Resumable`       | 布尔   |                                                              |
| `RJOBS_CompEndScript`   | 字符串 |                                                              |
| `RJOBN_CompID`          | 数值   |                                                              |
| `RJOBS_QueuedBy`        | 字符串 |                                                              |
| `RJOBB_IsRemoving`      | 布尔   |                                                              |
| `RJOBB_Paused`          | 布尔   | 指示该作业是否被暂停。                                       |
| `RJOBS_Name`            | 字符串 | 该作业的文件名。                                             |
| `RJOBB_DontClose`       | 布尔   |                                                              |
| `RJOBN_TimeOut`         | 数值   | 以分钟为单位的作业的超时时间。                               |
| `RJOBN_Status`          | 数值   | 依赖于作业状态的旧数字索引的脚本的旧版状态指示器。<br />0. 未渲染 Not Rendered<br/>1. 不完整 Incomplete<br/>2. 已完成 Done<br/>3. 已失败 Failed<br/>4. 已暂停 Paused<br/>5. 已提交 Submitted<br/>6. 渲染中 Rendering<br/>7. 中止中 Aborting |
| `RJOBN_RenderingFrames` | 数值   | 当前渲染帧的数量。                                           |
| `RJOBN_RenderedFrames`  | 数值   | 作业中渲染的帧数。                                           |
| `RJOBID_ID`             | 字符串 | Fusion内部追踪的作业UUID。                                   |

- <b>Python用法</b>：

  ```python
  # 添加当前合成为新作业
  # 并打印队列中所有的RenderJob
  qm = fusion.RenderManager
  
  qm.AddJob(comp.GetAttrs()["COMPS_FileName"])
  joblist = qm.GetJobList().values()
  for job in joblist:
  	print(job.GetAttrs()["RJOBS_Name"])
  ```

- <b>Lua用法</b>：

  ```lua
  -- 添加当前合成为新作业
  -- 并打印队列中所有的RenderJob
  qm = fusion.RenderManager
  
  qm:AddJob(comp:GetAttrs().COMPS_FileName)
  joblist = qm:GetJobList()
  for i, job in pairs(joblist) do
  	print(job:GetAttrs().RJOBS_Name)
  end
  ```

##### 方法

###### RenderJob.ClearCompletedFrames()

清除已完成帧的列表，然后重新开始渲染。

###### RenderJob.GetFailedSlaves()

列出所有导致该作业失败的从属设备。

该函数返回一个包含已分配给该作业的所有从属设备但无法加载合成或渲染已分配给它们的帧的表。

这些从属设备不再参与作业，但是可以使用`RetrySlave()`重新添加到作业中。

- <b>返回</b>：failedslaves 失败的从属设备
- <b>返回类型</b>：表

###### RenderJob.GetFrames()

返回要渲染帧的总数。

- <b>返回</b>：frames 帧
- <b>返回类型</b>：字符串

###### RenderJob.GetRenderReport()

获取渲染报告。

###### RenderJob.GetSlaveList()

获取分配给该作业的从属设备表。

- <b>返回</b>：slaves 从属设备
- <b>返回类型</b>：表

###### RenderJob.GetUnrenderedFrames()

返回要渲染的其余帧。

返回字符串中的框架以逗号分隔。连续帧以`<first> .. <last>`的形式给出范围。

- <b>返回</b>：frames 帧
- <b>返回类型</b>：字符串

###### RenderJob.IsRendering()

如果作业当前正在渲染，则返回`true`。

- <b>返回</b>：rendering 渲染中
- <b>返回类型</b>：布尔

###### RenderJob.RetrySlave([*slave*])

尝试重用以前失败的从属设备。

作业管理器会将它们放回作业的活动列表中，并尝试再次为其分配帧。

`slave` 分配给该作业的`RenderSlave`对象，以前无法渲染分配给它的帧。若未指定从属设备，将重试所有发生故障的从属设备。

- <b>参数</b>：
  `slave` （*`RenderSlave`*） – slave

###### RenderJob.SetFrames(*frames*)

指定要渲染的框架集。

`frames` 用于作业要渲染的帧的拥有有效格式的字符串。帧号应以逗号分隔，没有空格，并且帧的范围由`<first> .. <last>`表示。

- <b>Python用法</b>：

  ```python
  # 设置要在队列中第一个作业上渲染的帧
  job = fusion.RenderManager.GetJobList()[1]
  
  job.SetFrames("1..50, 55, 60, 75, 80..100")
  ```

- <b>Lua用法</b>：

  ```lua
  -- 设置要在队列中第一个作业上渲染的帧
  job = fusion.RenderManager:GetJobList()[1]
  
  job:SetFrames("1..50, 55, 60, 75, 80..100")
  ```

- <b>参数</b>：
  `frames` （***字符串***） – frames

###### RenderJob._Heartbeat()

_Heartbeat