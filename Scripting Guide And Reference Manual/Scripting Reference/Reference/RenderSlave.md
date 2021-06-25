#### RenderSlave

###### 类 RenderSlave

父类：`LockableObject`

表示一个渲染从属设备。

##### RenderSlave属性

| 属性名称            | 类型   | 描述                                                         |
| ------------------- | ------ | ------------------------------------------------------------ |
| RSLVS_Status        | 字符串 | 从属设备的当前状态。                                         |
| RSLVN_Status        | 数值   | 用数字表示的从属设备的当前状态。<br/>0. 扫描中 Scanning<br/>1. 空闲 Idle<br/>2. 失败 Failed<br/>3. 忙碌 Busy<br/>4. 分配作业 Assigning Job<br/>5. 连接中 Connecting<br/>6. 检查设置 Checking Settings<br/>7. 加载合成 Loading Comp<br/>8.  启动渲染中 Starting Render<br/>9. 渲染中 Rendering<br/>10. 结束渲染中 Ending Render<br/>11. 断开中 Disconnecting<br/>12. 离线 Offline<br/>13. 禁用 Disabled<br/>14. 未使用 Unused |
| RSLVS_IP            | 字符串 | 从属设备的IP地址。                                           |
| RSLVID_ID           | 字符串 | 作业的ID。                                                   |
| RSLVS_Name          | 字符串 | 从属设备使用的网络名称。                                     |
| RSLVB_IsUnused      | 布尔   | 指示从属设备是否未使用。                                     |
| RSLVS_Version       | 字符串 | 从属设备的版本数字。                                         |
| RSLVS_Groups        | 字符串 | 从属设备分配的组。                                           |
| RSLVN_RenderingComp | 数值   | 当前渲染的合成ID数字。                                       |
| RSLVB_IsRemoving    | 布尔   | 从属设备是否从队列中移除。                                   |
| RSLVB_IsFailed      | 布尔   | 是否因失败足够多次而从更多作业中移除。                       |

- <b>Python用法</b>：

  ```python
  # 输出队列中所有的RenderSlaves
  qm = fusion.RenderManager
  slavelist = qm.GetSlaveList().values()
  for slave in slavelist:
  	print(slave.GetAttrs()["RSVLS_Name"])
  ```

- <b>Lua用法</b>：

  ```lua
  -- 输出队列中所有的RenderSlaves
  qm = fusion.RenderManager
  slavelist = qm:GetSlaveList()
  for i, slave in pairs(slavelist) do
  	print(slave:GetAttrs().RSVLS_Name)
  end
  ```

##### 方法

###### RenderSlave.Abort()

停止渲染，并退出当前作业。

###### RenderSlave.GetJob()

返回该从属作业的当前`RenderJob`对象。

###### RenderSlave.IsDisconnecting()

若从属设备断开作业则返回`true`。

有时，当从属设备与渲染管理器对象断开连接时，实际上需要花费几秒钟的时间。在此期间，它不会以交互方式显示在渲染管理器（Render Manager）的从属设备列表中，但是会显示在`GetSlaveList()`返回的表中。这样，添加了此函数来轻松判断`RenderSlave`当前是否断开连接。

返回一个指示从属设备`RSLVB_IsDisconnecting`属性的布尔值。

###### RenderSlave.IsIdle()

若从属设备没有作业且无事可做则返回`true`。

返回一个指示从属设备`RSLVB_IsIdle`属性的布尔值。

###### RenderSlave.IsProcessing()

若从属设备忙碌则返回`true`。

返回一个指示从设备当前是否正在处理帧的布尔值。