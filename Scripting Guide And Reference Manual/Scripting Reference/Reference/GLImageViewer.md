#### GLImageViewer

###### 类 GLImageViewer

父类：`GLViewer`

##### 方法

###### GLImageViewer.DragRoI()

允许用户拖出RoI矩形。

###### GLImageViewer.EnableLUT([*enable*])

启用或禁用当前的View LUT。

- <b>参数</b>：

  `enable` （*布尔*） – enable

###### GLImageViewer.EnableRoI([*enable*])

启用或禁用当前的View RoI。

- <b>参数</b>：

  `enable` （*布尔*） – enable

###### GLImageViewer.ExportTo3DLUT()

将当前的LUT导出到3D LUT文件。

- <b>返回</b>：success 成功
- <b>返回类型</b>：布尔

###### GLImageViewer.IsLUTEnabled()

如果启用了当前的View LUT，则返回`true`。

- <b>返回</b>：enabled 启用
- <b>返回类型</b>：布尔

###### GLImageViewer.LoadLUTFile([*pathname*])

将LUT文件、设置或LUT插件ID加载到View LUT中。

- <b>参数</b>：

  `pathname` （**字符串**） – pathname

- <b>返回</b>：success 成功
- <b>返回类型</b>：布尔

###### GLImageViewer.LockRoI([*enable*])

锁定或解锁View RoI。

- <b>参数</b>：

  `enable` （*布尔*） – enable

###### GLImageViewer.SaveLUTFile([*pathname*])

将当前的LUT保存到.viewlut文件中。

- <b>参数</b>：

  `pathname` （**字符串**） – pathname

- <b>返回</b>：success 成功

- <b>返回类型</b>：布尔

###### GLImageViewer.SetRoI()

**注意：**此方法被重载，并具有其他参数。另见其他定义。

设置当前的View RoI区域。

###### GLImageViewer.SetRoI(*rect*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

设置当前的View RoI区域。

- <b>参数</b>：

  `rect` （*表*） – rect

###### GLImageViewer.SetRoI(*auto*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

设置当前的View RoI区域。

- <b>参数</b>：

  `auto` （*表*） – auto

###### GLImageViewer.ShowDoD([*enable*])

启用或禁用绘制当前View DoD矩形。

- <b>参数</b>：

  `enable` （*布尔*） – enable

###### GLImageViewer.ShowLUTEditor()

弹出当前View LUT的Editor窗口。

###### GLImageViewer.ShowRoI([enable])

启用或禁用绘制当前的View RoI矩形。

- <b>参数</b>：

  `enable` （*布尔*） – enable