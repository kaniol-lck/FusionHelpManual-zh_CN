#### QueueManager

###### 类 QueueManager

父类：`LockableObject`

表示队列管理器。

##### QueueManager属性

| 属性名称            | 类型   | 描述                                                    |
| ------------------- | ------ | ------------------------------------------------------- |
| `RQUEUEB_Paused`    | 布尔   | 如果当前渲染被暂停且没有渲染作业，则为`true`。          |
| `RQUEUEB_Verbose`   | 布尔   | 如果当前启用了详细日志（Verbose Logging），则为`true`。 |
| `RQUEUES_QueueName` | 字符串 | 队列加载或保存文件的名称（如果有）。                    |

- <b>Python用法</b>：

  ```python
  # 访问QueueManager
  qm = fusion.RenderManager
  ```

- <b>Lua用法</b>：

  ```lua
  -- 访问QueueManager
  qm = fusion.RenderManager
  ```

##### 方法

###### QueueManager.AddItem()

添加项目。

###### QueueManager.AddJob(*filename*\[, *groups*\]\[, *frames*\]\[, *endscript*\])

**注意：**此方法被重载，并具有其他参数。另见其他定义。

向列表中添加一个作业。

此函数允许用户通过独立脚本或Fusion界面将作业远程添加到Fusion渲染管理器（Render Manager）。这有助于批量添加作业。

`filename` 将作业添加到渲染管理器的有效路径。

`groups` 一个列出要进行此作业的slave组（用逗号分隔）的字符串。 默认为“`all`”。

`frames` 要渲染的帧集合，例如“`1..150, 155, 160`”。如果为`nil`或未指定，则将使用合成的已保存帧范围。

`endscript` 作业完成时要执行的脚本的完整路径名（可作为`RenderJob`对象的`RJOBS_CompEndScript`属性获得）。

返回刚刚在队列管理器中创建的`RenderJob`对象。

- <b>参数</b>：
  `filename` （***字符串***） – filename
  `groups` （***字符串***） – groups
  `frames` （***字符串***） – frames
  `endscript` （***字符串***） – endscript
- <b>返回</b>：job 作业
- <b>返回类型</b>：`Render`

###### QueueManager.AddJob(*args*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

向列表中添加一个作业。

此函数允许用户通过独立脚本或Fusion界面将作业远程添加到Fusion渲染管理器（Render Manager）。这有助于批量添加作业。

`filename` 将作业添加到渲染管理器的有效路径。

`groups` 一个列出要进行此作业的从属组（用逗号分隔）的字符串。默认为“`all`”。

`frames` 要渲染的帧集合，例如“`1..150, 155, 160`”。如果为`nil`或未指定，则将使用合成的已保存帧范围。

`endscript` 作业完成时要执行的脚本的完整路径名（可作为`RenderJob`对象的`RJOBS_CompEndScript`属性获得）。

返回刚刚在队列管理器中创建的`RenderJob`对象。

- <b>参数</b>：
  `args` （*表*） – args
- <b>返回</b>：job 作业
- <b>返回类型</b>：`Render`

###### QueueManager.AddSlave(*name*\[, *groups*\]\[, *unused*\])

将一个从属设备添加到从属设备列表。

此函数允许用户通过独立脚本或Fusion界面将作业远程添加到渲染管理器（Render Manager）。这有助于批量添加作业。

`name` 从属设备的主机名或IP地址。

`groups` 要加入的渲染组。默认为“`all`”。

返回刚刚在队列管理器中创建的`RenderSlave `对象。

- <b>参数</b>：
  `name` （***字符串***） – name
  `groups` （***字符串***） – groups
  `unused` （*布尔*） – unused
- <b>返回</b>：slave 从属设备
- <b>返回类型</b>：`RenderSlave`

###### QueueManager.AddWatch()

添加监视。

###### QueueManager.DeleteItem()

删除项目。

###### QueueManager.GetGroupList()

获取所有从属组的列表。

返回此`QueueManager`中从属设备使用的所有各种组的表。

- <b>返回</b>：groups 组
- <b>返回类型</b>：表

###### QueueManager.GetID()

获取ID。

###### QueueManager.GetItemList()

获取项目列表。

###### QueueManager.GetJobFromID()

依据ID获取作业。

###### QueueManager.GetJobList()

获取要渲染的作业列表。

返回包含当前队列管理器中作业的`RenderJob`对象的表。就像Fusion中的任何其他对象一样，这些对象具有指示对象状态信息的属性和可查询或操纵对象的函数。

- <b>Python用法</b>：

  ```python
  # 输出队列中所有的RenderJobs
  qm = fusion.RenderManager
  joblist = qm.GetJobList().values()
  for job in joblist:
  	print(job.GetAttrs()["RJOBS_Name"])
  ```

- <b>Lua用法</b>：

  ```lua
  -- 输出队列中所有的RenderJobs
  qm = fusion.RenderManager
  joblist = qm:GetJobList()
  for i, job in pairs(joblist) do
  	print(job:GetAttrs().RJOBS_Name)
  end
  ```

- <b>返回</b>：jobs

- <b>返回类型</b>：表

###### QueueManager.GetJobs()

获取拥有当前`RenderJob`信息的表。

###### QueueManager.GetRootData()

获取根数据。

###### QueueManager.GetSchemaList()

获取架构列表。

###### QueueManager.GetSlaveFromID()

依据ID获取从属设备。

###### QueueManager.GetSlaveList()

获取可用从属设备列表。

返回包含当前列于队列管理器中的`RenderSlave`对象的表。

- <b>Python用法</b>：

  ```python
  # 输出队列中所有的RenderSlaves
  qm = fusion.RenderManager
  slavelist = qm.GetSlaveList().values()
  for slave in slavelist:
  print(slave.GetAttrs()["RSLVS_Name"])
  ```

- <b>Lua用法</b>：

  ```lua
  -- 输出队列中所有的RenderSlaves
  qm = fusion.RenderManager
  slavelist = qm:GetSlaveList()
  for i, slave in pairs(slavelist) do
   print(slave:GetAttrs().RSLVS_Name)
  end
  ```

- <b>返回</b>：slaves 从属设备

- <b>返回类型</b>：表

###### QueueManager.GetSlaves()

获取具有当前`RenderSlave`信息的表。

###### QueueManager.LoadQueue(*filename*)

加载要执行的作业列表。

该函数使得脚本将包含要完成的作业列表的Fusion Studio渲染队列文件加载到队列管理器中。

`filename` 加载队列的路径。

- <b>参数</b>：
  `filename` （***字符串***） – filename

###### QueueManager.LoadSlaveList([*filename*])

加载要使用的从属设备列表。

- <b>参数</b>：
  `filename` （***字符串***） – filename
- <b>返回</b>：success 成功
- <b>返回类型</b>：布尔

###### QueueManager.Log(*message*)

向渲染日志（Render Log）写入一条消息。

向渲染管理器写入一条消息。这有助于触发合成提交给管理器的自定义注意。

- <b>参数</b>：
  `message` （***字符串***） – message

###### QueueManager.MoveJob(*job*, *offset*)

在列表中上移或下移一个作业。

使用`offset`更改渲染管理器中作业的优先级。

`job` 要移动的`RenderJob`。

`offset` 将作业列表上移或下移的距离（负数将其向上移动）。

- <b>Python用法</b>：

  ```python
  # 将所有叫做“master”的作业移动到队列顶部
  # 或至少上移了100个条目。
  qm = fusion.RenderManager
  jl = qm.GetJobList().values()
  
  for job in jl:
  	if "master" in job.GetAttrs()["RJOBS_Name"]:
  		qm.MoveJob(job,-100)
  ```

- <b>Lua用法</b>：

  ```lua
  -- 将所有叫做“master”的作业移动到队列顶部
  -- 或至少上移了100个条目。
  qm = fusion.RenderManager
  jl = qm:GetJobList()
  
  for i, job in pairs(jl) do
  	if job:GetAttrs().RJOBS_Name:find("master") then
  		qm:MoveJob(job,-100)
  	end
  end
  ```

- <b>参数</b>：
  `job` （*`RenderJob`*） – job
  `offset` （*数值*） – offset

###### QueueManager.NetJoinRender()

网络加入渲染。

###### QueueManager.RemoveJob(*job*)

从列表中移除一个作业。

- <b>参数</b>：
  `job` （*`RenderJob`*） – job

###### QueueManager.RemoveSlave(*slave*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

从从属设备列表中移除一个从属设备。

- <b>参数</b>：
  `slave` （*`RenderSlave`*） – slave

###### QueueManager.RemoveSlave(*slave*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

从从属设备列表中移除一个从属设备。

- <b>参数</b>：
  `slave` （***字符串***） – slave

###### QueueManager.RemoveWatch()

移除监视。

###### QueueManager.SaveQueue(*filename*)

保存当前作业列表。

`filename` 要保存队列的位置。

该函数将渲染管理器中当前加载的队列保存到文件中。

- <b>参数</b>：
  `filename` （***字符串***） – filename

###### QueueManager.SaveSlaveList([*filename*])

保存当前从属设备列表。

- <b>参数</b>：
  `filename` （***字符串***） – filename
- <b>返回</b>：success 成功
- <b>返回类型</b>：布尔

###### QueueManager.ScanForSlaves()

扫描本地网络查找新的从属设备。

此函数定位本地网络（仅本地子网）上的所有计算机，查询每台计算机了解它们当前是否正在运行Fusion副本，然后将其添加到管理器的从属设备列表中。

###### QueueManager.Start()

开始。

###### QueueManager.Stop()

停止。

###### QueueManager.UpdateItem()

更新项目。