#### Fusion

###### 类 Fusion

父类：`Object`

此应用程序的句柄。

##### Fusion属性

| 属性名称                                    | 类型   | 描述                                                         |
| ------------------------------------------- | ------ | ------------------------------------------------------------ |
| `FUSIONS_FileName`                          | 字符串 | Fusion.exe文件的路径。                                       |
| `FUSIONS_Version`                           | 字符串 | 所连接FUSION的版本，可以是字符串（FUSION_Version）或数字（FUSIONI_VersionHi，FUSIONI_VersionLo）格式。 |
| `FUSIONI_SerialHi`<br/>`FUSIONI_SerialLo`   | 整型   | 所连接Fusion许可证的序列号。                                 |
| `FUSIONS_MachineType`                       | 字符串 | 机器的类型（OS和CPU）。                                      |
| `FUSIONI_NumProcessors`                     | 整型   | 运行Fusion的机器中存在的处理器数。                           |
| `FUSIONB_IsManager`                         | 布尔   | 表示此Fusion当前是否为渲染主机。                             |
| `FUSIONI_MemoryLoad`                        | 整型   | 机器当前的内存负载百分比，从0到100。                         |
| `FUSIONI_PhysicalRAMTotalMB`                | 整型   | 物理RAM的总量，以MB为单位。                                  |
| `FUSIONI_PhysicalRAMFreeMB`                 | 整型   | 可用的物理RAM量，以MB为单位。                                |
| `FUSIONI_VirtualRAMTotalMB`                 | 整型   | 虚拟RAM的总量，以MB为单位。                                  |
| `FUSIONI_VirtualRAMUsedMB`                  | 整型   | 正在使用的虚拟RAM总量，以MB为单位。                          |
| `FUSIONB_IsPost`                            | 布尔   | 表示此Fusion是否为Post许可证。                               |
| `FUSIONB_IsDemo`                            | 布尔   | 表示此Fusion是否为Demo许可证。                               |
| `FUSIONB_IsRenderNode`                      | 布尔   | 表示此Fusion是否为Render Node许可证。                        |
| `FUSIONH_CurrentComp`                       | 句柄   | 返回Fusion中具有焦点的当前合成的句柄。                       |
| `FUSIONI_VersionHi`<br/>`FUSIONI_VersionLo` | 整型   |                                                              |

##### 成员

###### Fusion.Bins

工具箱（只读）。

- <b>获取</b>：

  ```lua
  bins = Fusion.Bins -- (Bins)
  ```

###### Fusion.Build

返回当前Fusion实例的内部版本号。

- <b>获取</b>：

  ```lua
  build = Fusion.Build -- (number)
  ```

###### Fusion.CacheManager

全局缓存管理器（Global Cache Manager）（只读）。

- <b>获取</b>：

  ```lua
  cm = Fusion.CacheManager -- (CacheManager)
  ```

###### Fusion.CurrentComp

表示当前处于活动状态的合成（只读）。

- <b>获取</b>：

  ```lua
  comp = Fusion.CurrentComp -- (Composition)
  ```

###### Fusion.FileLogging()

是否启用Fusion日志。

如果Fusion是使用`/log filepath`参数启动的，则返回true。

###### Fusion.FontManager

全局字体管理器（Global Font Manager）（只读）。

- <b>获取</b>：

  ```lua
  fm = Fusion.FontManager -- (FontList)
  ```

###### Fusion.HotkeyManager

全局热键管理器（Global Hotkey Manager）（只读）。

- <b>获取</b>：

  ```lua
  hkm = Fusion.HotkeyManager -- (HotkeyManager)
  ```

###### Fusion.MenuManager

全局菜单管理器（Global Menu Manager）（只读）。

- <b>获取</b>：

  ```lua
  mm = Fusion.MenuManager -- (MenuManager)
  ```

###### Fusion.QueueManager

此Fusion实例的全局渲染管理器（只读）。

- <b>获取</b>：

  ```lua
  qm = Fusion.QueueManager -- (QueueManager)
  ```

###### Fusion.RenderManager

此Fusion实例的全局渲染管理器（只读）。

- <b>获取</b>：

  ```lua
  qm = Fusion.RenderManager -- (QueueManager)
  ```

###### Fusion.Version

返回当前Fusion实例的版本。

- <b>获取</b>：

  ```lua
  ver = Fusion.Version -- (number)
  ```

##### 方法

###### Fusion.AllowNetwork()

允许网络。

###### Fusion.ClearFileLog()

如果以`/log`参数启动，则清除日志。

###### Fusion.CreateFloatingView()

创建一个新的FloatView。

###### Fusion.CreateMail()

返回可以与其他邮件相关功能一起使用的对象句柄。在Fusion中，有许多脚本可用于通过电子邮件向人们发送信息。这可以用来在用户渲染完成或渲染发生错误时通知用户。

- <b>Python用法</b>：

  ```Python
  mail = fusion.CreateMail()
  
  mail.AddRecipients("vfx@studio.com, myself@studio.com")
  mail.SetSubject("Render Completed")
  mail.SetBody("The job completed.")
  ok, errmsg = mail.SendTable().values()
  print(ok)
  print(errmsg)
  ```

- <b>Lua用法</b>：

  ```Lua
  mail = fusion:CreateMail()
  
  mail:AddRecipients("vfx@studio.com, myself@studio.com")
  mail:SetSubject("Render Completed")
  mail:SetBody("The job completed.")
  ok, errmsg = mail:Send()
  print(ok)
  print(errmsg)
  ```

- <b>返回</b>：mail 邮箱
- <b>返回类型</b>：`MailMessage`

###### Fusion.DumpCgObjects(*filename*)

将所有当前Cg着色器的状态写入给定文件。

- <b>参数</b>：

  `filename` （***字符串***） – filename

- <b>返回</b>：success 成功

- <b>返回类型</b>：布尔

###### Fusion.DumpGLObjects(*filename*)

将所有当前OpenGL对象的状态写入给定文件。

- <b>参数</b>：

  `filename` （***字符串***） – filename

- <b>返回</b>：success 成功

- <b>返回类型</b>：布尔

###### Fusion.DumpGraphicsHardwareInfo(*filename*)

将图形硬件的信息写入给定文件。

- <b>参数</b>：

  `filename` （***字符串***） – filename

- <b>返回</b>：success 成功

- <b>返回类型</b>：布尔

###### Fusion.DumpOpenCLDeviceInfo(*filename*)

将OpenCL设备的信息写入给定文件。

- <b>参数</b>：

  `filename` （***字符串***） – filename

- <b>返回</b>：success 成功

- <b>返回类型</b>：布尔

###### Fusion.Execute()

为Fusion实例执行脚本字符串。

另见`Composition:Execute()`。

###### Fusion.FindReg(*id*[, *type*])

通过名称查找注册表对象。

可选类型限制搜索。 一些有效的类型常量包括

- `CT_Tool`
- `CT_Filter`
- `CT_FilterSource`
- `CT_ParticleTool`
- `CT_ImageFormat`

如果找不到匹配项，则返回nil/None。

- <b>Python用法</b>：

  ```python
  from pprint import pprint
  reg = fusion.FindReg("Loader")
  pprint(reg.GetAttrs())
  ```

- <b>Lua用法</b>：

  ```lua
  reg = fusion:FindReg("Loader")
  dump(reg:GetAttrs())
  ```

- <b>参数</b>：
  `id` （***字符串***） – id
  `type` （*数值*） – type

- <b>返回</b>：reg 注册表

- <b>返回类型</b>：`Registry`

###### Fusion.GetAppInfo()

返回一个表，其中包含有关当前应用程序的名称、可执行文件、版本和内部版本号的信息。

###### Fusion.GetArgs()

获取命令行参数。

将Fusion的命令行参数以表的形式返回。

- <b>返回</b>：args 参数
- <b>返回类型</b>：表

###### Fusion.GetCPULoad()

检索系统的当前CPU负载。

以0到100之间的百分比形式返回当前CPU负载。

###### Fusion.GetClipboard()

以表和ASCII文本的形式检索剪贴板上的工具。

返回剪贴板当前内容的字符串或表，如果为空则返回nil。

- <b>返回</b>：cliptbl 剪贴板
- <b>返回类型</b>：表

###### Fusion.GetCompList()

检索当前存在的所有成分的表。

- <b>返回</b>：complist 合成列表
- <b>返回类型</b>：表

###### Fusion.GetCurrentComp()

返回当前活动的合成。

- <b>返回</b>：comp 合成
- <b>返回类型</b>：`compsition`

###### Fusion.GetData([*name*])

获取自定义永久性数据。

另见`Composition:GetData()`。

- <b>参数</b>：
  `name` （***字符串***） – name
- <b>返回</b>：value 值
- <b>返回类型</b>：（数值|字符串|布尔|表）

###### Fusion.GetEnv(*name*)

检索环境变量的值。

返回运行Fusion的计算机上环境变量的值。该函数与全局`os.getenv()`函数相同，但它在Fusion实例的上下文中运行，因此如果Fusion实例指向Fusion的远程副本，则环境变量将来自远程计算机。

- <b>参数</b>：
  `name`（***字符串***） – name
- <b>返回</b>：value 值
- <b>返回类型</b>：字符串

###### Fusion.GetGlobalPathMap(\[*built_ins*\]\[, *defaults*\])

返回所有全局路径图的表。

- <b>参数</b>：
  `built_ins` （*布尔*） – built_ins
  `defaults` （*布尔*） – defaults
- <b>返回</b>：map 映射图
- <b>返回类型</b>：表

###### Fusion.GetMainWindow()

获取Fusion的窗口句柄。

###### Fusion.GetPrefs(\[*prefname*\]\[, *exclude-defaults*\])

检索偏好设置表。

此函数有助于获取全局偏好设置的完整表、子表或特定值。

如果省略该参数，则将返回所有偏好设置。

返回偏好设置表或特定的偏好设置值。

- <b>Python用法</b>：

  ```python
  from pprint import pprint
  pprint(fusion.GetPrefs("Global.Paths.Map"))
  print(fusion.GetPrefs("Global.Controls.GrabDistance"))
  ```

- <b>Lua用法</b>：

  ```lua
  from pprint import pprint
  dump(fusion:GetPrefs("Global.Paths.Map"))
  print(fusion:GetPrefs("Global.Controls.GrabDistance"))
  ```

- <b>参数</b>：
  `prefname` （***字符串***） – prefname
  `exclude-defaults` （布尔） – exclude-defaults
- <b>返回</b>：prefs 偏好设置
- <b>返回类型</b>：表

###### Fusion.GetPreviewList()

检索全局预览表。

此函数返回Fusion对象当前可用的预览对象的列表。`Composition:GetPreviewList` 函数类似，但不会像此函数一样返回浮动视图。

- <b>返回</b>：previewlist 预览列表
- <b>返回类型</b>：表

###### Fusion.GetRegAttrs(id[, *type*])

检索有关注册表ID的信息。

`GetRegAttrs()`函数将返回一个表格，其中包含Fusion中特定注册表项的属性。唯一的参数是ID，这是注册表中每个条目所拥有的唯一数字标识符。可以从`fusion:GetRegList()`、`fusion:FindRegID()`和`tool:GetID()`函数获取每个注册表项的ID标识符。

注册表属性是严格只读的，不能以任何方式进行修改。

- <b>Python用法</b>：

  ```python
  from pprint import pprint
  # 转储当前活动工具的RegAttrs，
  # 或在没有活动工具式打印信息。
  pprint(comp.ActiveTool and
  fusion.GetRegAttrs(comp.ActiveTool.ID) or "Please set an ActiveTool first.")
  ```

- <b>Lua用法</b>：

  ```lua
  -- 转储当前活动工具的RegAttrs，
  -- 或在没有活动工具式打印信息。
  dump(comp.ActiveTool and
  fusion:GetRegAttrs(comp.ActiveTool.ID) or "Please set an ActiveTool first.")
  ```

- <b>参数</b>：
  `id` （***字符串***） – id
  `type`（*数值*） – type
- <b>返回</b>：attrs 属性
- <b>返回类型</b>：表

###### Fusion.GetRegList(*typemask*)

检索系统已知的所有注册表对象的列表。

Fusion注册表存储有关Fusion的特定安装的配置和功能的信息。在注册表中可以找到如支持哪些文件格式以及安装哪些工具之类的详细信息。请注意，这与操作系统注册表不同，此功能访问的注册表对于Fusion是唯一的。

`GetRegAttrs`接受的唯一参数是Mask常量，该Mask常量用于过滤特定注册表类型的注册表。常量代表特定类型的注册表项，例如`CT_Any`将返回注册表中的所有项，而`CT_Source`将仅返回描述工具源类别（Loader、Plasma、Text...）中的工具的条目。有效常量的完整列表可以在此处找到。

返回一个表，其中包含每个注册表项的数字ID值的列表。机器之间的数字ID是恒定的，例如 QuickTime格式的数字ID为1297371438，与Fusion的安装或版本无关。

这些ID用作`GetRegAttrs()`函数的参数，该函数提供对存储在特定注册表设置中的实际值的访问。

`typemask` 预定义的常数，用于确定函数返回的注册表项的类型。

一些有效的Mask常量：

- `CT_Tool` 所有工具
- `CT_Mask` 遮罩工具
- `CT_SourceTool` 创建器工具（图像/3D/粒子）等所有不需要输入图像的工具
- `CT_ParticleTool` 粒子工具
- `CT_Modifier` 修改器
- `CT_ImageFormat` 图像格式
- `CT_View` 界面的不同部分
- `CT_GLViewer` 各种类型的查看器
- `CT_PreviewControl` 查看器中的预览控件
- `CT_InputControl` 输入控件
- `CT_BinItem` 工具箱物品

- <b>Python用法</b>：

  ```python
  from pprint import pprint
  
  # 该示例会输出这个Fusion副本
  # 所支持的所有图像格式
  
  reg = fusion.GetRegList(comp.CT_ImageFormat)
  reg["Attrs"] = {}
  
  for i in range(1, len(reg)):
      reg["Attrs"][i] = fusion.GetRegAttrs(reg[i].ID)
      name = reg["Attrs"][i]["REGS_MediaFormat_FormatName"]
      
      if name == None:
          name = reg["Attrs"][i]["REGS_Name"]
      if reg["Attrs"][i]["REGB_MediaFormat_CanSave"] == True:
          print(name)
      else:
          print(name + "(Cannot Save)")
  ```

- <b>Lua用法</b>：

  ```lua
  -- 该示例会输出这个Fusion副本
  -- 所支持的所有图像格式
  
  reg = fusion:GetRegList(CT_ImageFormat)
  reg.Attrs = {}
  for i = 1, #reg do
  	reg.Attrs[i] = fusion:GetRegAttrs(reg[i].ID)
      name = reg.Attrs[i].REGS_MediaFormat_FormatName
      if name == nil then
          name = reg.Attrs[i].REGS_Name
      end
      --dump(reg.Attrs[i])
      if reg.Attrs[i].REGB_MediaFormat_CanSave == true then
      	print(name)
      else
          print(name .. " (Cannot Save)")
      end
  end
  ```

- <b>参数</b>：
  `typemask` （*数值*） – typemask

- <b>返回</b>：reglist 注册表列表

- <b>返回类型</b>：表

###### Fusion.GetRegSummary(*typemask*[, *hidden*])

检索系统已知的所有注册表对象的基本信息列表。

此函数有助于获取全局首选项的完整表、子表或特定值很有用。

返回一个表，其中包含了注册表中每个项目的名称、ID、ClassType和OpIconString的摘要。 对于返回`Fusion:GetRegList`提供的信息的轻量版本很有用。

- <b>参数</b>：
  `typemask` （*数值*） – typemask
  `hidden` （*布尔*） – hidden
- <b>返回</b>：regattrs 注册表属性
- <b>返回类型</b>：表

###### Fusion.LoadComp(*filename*\[, *quiet*\]\[, *autoclose*\]\[, *hidden*\])

**注意：**此方法被重载，并具有其他参数。另见其他定义。

加载现有合成。

`auto-close` 一个`true`或`false`值，用于确定脚本退出时合成是否将自动关闭。默认为`false`。

`hidden` 如果此值为`true`，将以看不见的方式创建合成，且用户无法使用任何UI。默认为`false`。

返回打开的合成的句柄。

- <b>参数</b>：
  `filename` （***字符串***） – filename
  `quiet` （*布尔*） – quiet
  `autoclose` （*布尔*） – autoclose
  `hidden` （*布尔*） – hidden
- <b>返回</b>：comp 合成
- <b>返回类型</b>：`Composition`

###### Fusion.LoadComp(*filename*, *options*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

加载现有合成。

`auto-close` 一个`true`或`false`值，用于确定脚本退出时合成是否将自动关闭。默认为`false`。

返回打开的合成的句柄。

- <b>参数</b>：
  `filename` （***字符串***） – filename
  `options` （*表*） – options
- <b>返回</b>：comp 合成
- <b>返回类型</b>：`Composition`

###### Fusion.LoadComp(*savedcomp*, *options*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

加载现有合成。

返回打开的合成的句柄。

- <b>参数</b>：
  `savedcomp` （*MemBlock*） – savedcomp
  `options` （*表*） – options
- <b>返回</b>：comp 合成
- <b>返回类型</b>：`Composition`

###### Fusion.LoadPrefs(\[*filename*\]\[, *mastername*\])

重新加载所有当前的全局偏好设置。

从指定的文件和（可选的）覆盖的主prefs文件中重新加载所有全局首选项。

- <b>参数</b>：
  `filename` （***字符串***） – filename
  `mastername` （***字符串***） – mastername
- <b>返回</b>：success 成功
- <b>返回类型</b>：布尔

###### Fusion.LoadRecentComp(*index*\[, *quiet*\]\[, *autoclose*\]\[, *hidden*\])

从最近的文件列表中加载合成。

`index ` 最近的合成的是1。该索引与最近文件（Recent Files）菜单中的索引相同。

`auto-close` 一个`true`或`false`值，用于确定脚本退出时合成是否将自动关闭。默认为`false`。

`hidden` 如果此值为`true`，将以看不见的方式创建合成，且用户无法使用任何UI。默认为`false`。

- <b>参数</b>：
  `index` （*数值*） – index
  `quiet` （*布尔*） – quiet
  `autoclose` （*布尔*） – autoclose
  `hidden` （*布尔*） – hidden
- <b>返回</b>：comp 合成
- <b>返回类型</b>：`Composition`

###### Fusion.MapPath(*path*)

在路径字符串中扩展路径映射。

另见`Comp:MapPath()`。

- <b>Python用法</b>：

  ```python
  print(comp.MapPath("Fusion:"))
  ```

- <b>Lua用法</b>：

  ```lua
  print(MapPath("Fusion:"))
  ```

- <b>参数</b>：
  `path` （***字符串***） – path
- <b>返回</b>：mapped 映射
- <b>返回类型</b>：字符串

###### Fusion.MapPathSegments(*path*)

展开多路径中的所有路径映射。

另见`Comp:MapPathSegments()`。

- <b>参数</b>：
  `path` （***字符串***） – path
- <b>返回</b>：mapped 映射
- <b>返回类型</b>：字符串

###### Fusion.NewComp(\[*quiet*]\[, *autoclose*\]\[, *hidden*\])

创建一个新的合成。

`auto-close` 一个`true`或`false`值，用于确定脚本退出时合成是否将自动关闭。默认为`false`。

`hidden` 如果此值为`true`，将以看不见的方式创建合成，且用户无法使用任何UI。默认为`false`。

- <b>参数</b>：
  `quiet` （*布尔*） – quiet
  `autoclose` （*布尔*） – autoclose
  `hidden` （*布尔*） – hidden
- <b>返回</b>：comp 合成
- <b>返回类型</b>：`Composition`

###### Fusion.OpenFile(*filename*, *mode*)

打开文件。

`filename` 指定打开文件的完整路径和名称。

`mode` 通过以下常量的组合来指定所需的文件访问模式：

- `FILE_MODE_READ` 读访问
- `FILE_MODE_WRITE` 写访问
- `FILE_MODE_UNBUFFERED` 无缓存访问
- `FILE_MODE_SHARED` 共享访问

返回文件对象；如果打开失败，则返回`nil`。

- <b>Lua用法</b>：

  ```lua
  fusion:OpenFile([[c:\\fusion.log]], FILE_MODE_READ)
  line = f:ReadLine()
  while line do
  	print(line)
  	line = f:ReadLine()
  end
  ```

- <b>参数</b>：
  `filename` （***字符串***） – filename
  `mode` （*数值*） – mode

- <b>返回</b>：file 文件

- <b>返回类型</b>：`File`

###### Fusion.OpenLibrary()

打开库。

###### Fusion.QueueComp(*filename*\[, *start*\]\[, *end*\]\[, *group*\])

**注意：**此方法被重载，并具有其他参数。另见其他定义。

将要在本地渲染的合成放入队列中。

`QueueComp`函数将从磁盘提交合成到渲染管理器。如果未提供渲染起点和终点，则渲染管理器将渲染与合成一起保存的范围。否则，这些参数将覆盖已保存的范围。

如果成功将合成添加到队列中，则返回`true`；如果失败，则返回`false`。

`filename` 描述要加入队列合成的完整路径字符串。

`start` 描述渲染范围中的第一帧的数字。

`end` 描述渲染范围中的最后一帧的数字。

`group` 指定要用于此作业的从属组。

**<b>表形式</b>**

指定要用于此作业的从属组。以下关键字有效：

- `FileName` 加入队列的合成

- `QueuedBy` 使用队列的合成

- `Groups` 渲染的从属组

- `Start` 渲染开始

- `End` 渲染结束

- `FrameRange` 帧范围字符串，用于代替上面的开始/结束

- `RenderStep` 渲染步长

- `ProxyScale` 渲染使用的代理比例

- `TimeOut` 帧超时

- <b>Python用法</b>：

  ```python
  # 带有附加选项的QueueComp
  fusion.QueueComp({
  	"FileName": "c:\\example.comp",
  	"QueuedBy": "Bob Lloblaw",
  	"Start": 1,
  	"End": 25,
  	"Step": 5,
  	"ProxyScale": 2
  })
  
  # 指定非连续帧范围
  fusion.QueueComp({
  	"FileName": "c:\\example.comp",
  	"FrameRange": "1..10,20,30,40..50"
  })
  ```

- <b>Lua用法</b>：

  ```lua
  -- 带有附加选项的QueueComp
  fusion:QueueComp({
   FileName = [[c:\example.comp]],
   QueuedBy = "Bob Lloblaw",
   Start = 1,
   End = 25,
   Step = 5,
   ProxyScale = 2
  })
  
  -- 指定非连续帧范围
  fusion:QueueComp({
   FileName=[[c:\example.comp]],
   FrameRange = “1..10,20,30,40..50”
  })
  ```

- <b>参数</b>：
  `lename` （***字符串***） – lename
  `start` （*数值*） – start
  `end` （*数值*） – end
  `group` （***字符串***） – group

- <b>返回</b>：job 作业

- <b>返回类型</b>：`RenderJob`

###### Fusion.QueueComp(*args*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

将要在本地渲染的合成放入队列中。

`QueueComp`函数将从磁盘提交合成到渲染管理器。如果未提供渲染起点和终点，则渲染管理器将渲染与合成一起保存的范围。否则，这些参数将覆盖已保存的范围。

如果成功将合成添加到队列中，则返回`true`；如果失败，则返回`false`。

**<b>表形式</b>**

指定要用于此作业的从属组。以下关键字有效：

- `FileName` 加入队列的合成

- `QueuedBy` 使用队列的合成

- `Groups` 渲染的从属组

- `Start` 渲染开始

- `End` 渲染结束

- `FrameRange` 帧范围字符串，用于代替上面的开始/结束

- `RenderStep` 渲染步长

- `ProxyScale` 渲染使用的代理比例

- `TimeOut` 帧超时

- <b>Python用法</b>：

  ```python
  # 带有附加选项的QueueComp
  fusion.QueueComp({
  	"FileName": "c:\\example.comp",
  	"QueuedBy": "Bob Lloblaw",
  	"Start": 1,
  	"End": 25,
  	"Step": 5,
  	"ProxyScale": 2
  })
  
  # 指定非连续帧范围
  fusion.QueueComp({
  	"FileName": "c:\\example.comp",
  	"FrameRange": "1..10,20,30,40..50"
  })
  ```

- <b>Lua用法</b>：

  ```lua
  -- 带有附加选项的QueueComp
  fusion:QueueComp({
   FileName = [[c:\example.comp]],
   QueuedBy = "Bob Lloblaw",
   Start = 1,
   End = 25,
   Step = 5,
   ProxyScale = 2
  })
  
  -- 指定非连续帧范围
  fusion:QueueComp({
   FileName=[[c:\example.comp]],
   FrameRange = “1..10,20,30,40..50”
  })
  ```

- <b>参数</b>：
  `args`（*表*） – args
  
- <b>返回</b>：job作业

- <b>返回类型</b>：`RenderJob`

###### Fusion.Quit(*exitcode*)

退出Fusion。

Quit命令将导致Fusion实例对象所引用的Fusion副本退出。之后Fusion实例对象将置为nil。

- <b>参数</b>：
  `exitcode`（*数值*） – exitcode

###### Fusion.ReverseMapPath(*mapped*)

将路径折叠为最佳匹配路径图。

另见`Composition:ReverseMapPath()`。

- <b>参数</b>：
  `mapped`（***字符串***） – mapped
- <b>返回</b>：path 路径
- <b>返回类型</b>：字符串

###### Fusion.RunScript(*filename*)

在Fusion的脚本上下文中运行脚本。

另见`Composition:RunScript()`。

- <b>参数</b>：
  `filename`（***字符串***） – filename

###### Fusion.SavePrefs([*filename*])

保存所有当前的全局偏好设置。

- <b>Python用法</b>：

  ```python
  fusion.SetPrefs("Comp.AutoSave.Enabled", True)
  fusion.SavePrefs()
  ```

- <b>Lua用法</b>：

  ```lua
  fusion:SetPrefs("Comp.AutoSave.Enabled", true)
  fusion:SavePrefs()
  ```

- <b>参数</b>：
  `filename` （***字符串***） – filename

###### Fusion.SetBatch()

设置批次。

###### Fusion.SetClipboard()

**注意：**此方法被重载，并具有其他参数。另见其他定义。

将剪贴板设置为包含由表或ASCII文本指定的工具。

将系统剪贴板设置为包含由表指定工具的ASCII字符，或将剪贴板设置为指定的文本。

- <b>返回</b>：success 成功
- <b>返回类型</b>：布尔

###### Fusion.SetClipboard([*重载参数未知*])

**注意：**此方法被重载，并具有其他参数。另见其他定义。

将剪贴板设置为包含由表或ASCII文本指定的工具。

将系统剪贴板设置为包含由表指定工具的ASCII字符，或将剪贴板设置为指定的文本。

- <b>返回</b>：success 成功
- <b>返回类型</b>：布尔

###### Fusion.SetData(*name*, *value*)

设置自定义持久数据。

- <b>参数</b>：
  `name` （***字符串***） – name
  `value` （*(数值|字符串|布尔|表)*） – value

###### Fusion.SetPrefs(*prefname*, *val*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

从属性表中设置偏好设置。

SetPrefs函数可用于指定Fusion中几乎所有首选项的值。它可以采用由名称或单个名称和值标识的值表。

作为参数提供的表格应具有`[prefs_name] = value`格式。允许子表。

- <b>Python用法</b>：

  ```python
  fusion.SetPrefs({
  	"Global.Network.Mail.OnJobFailure": True,
  	"Global.Network.Mail.Recipients": "admin@studio.com"
  })
  fusion.SetPrefs("Global.Controls.AutoClose", False)
  ```

- <b>Lua用法</b>：

  ```lua
  fusion:SetPrefs({
  	["Global.Network.Mail.OnJobFailure"]=true,
  	["Global.Network.Mail.Recipients"]="admin@studio.com"
  })
  fusion:SetPrefs("Global.Controls.AutoClose", false)
  ```

- <b>参数</b>：
  `prefname` （***字符串***） – prefname
  `val` （*值*） – val

###### Fusion.SetPrefs(*prefs*)

从属性表中设置偏好设置。

SetPrefs函数可用于指定Fusion中几乎所有首选项的值。它可以采用由名称或单个名称和值标识的值表。

作为参数提供的表格应具有`[prefs_name] = value`格式。允许子表。

- <b>Python用法</b>：

  ```python
  fusion.SetPrefs({
  	"Global.Network.Mail.OnJobFailure": True,
  	"Global.Network.Mail.Recipients": "admin@studio.com"
  })
  fusion.SetPrefs("Global.Controls.AutoClose", False)
  ```

- <b>Lua用法</b>：

  ```lua
  fusion:SetPrefs({
  	["Global.Network.Mail.OnJobFailure"]=true,
  	["Global.Network.Mail.Recipients"]="admin@studio.com"
  })
  fusion:SetPrefs("Global.Controls.AutoClose", false)
  ```

- <b>参数</b>：
  `prefs` （*表*） – prefs

###### Fusion.ShowAbout()

显示关于对话框。

###### Fusion.ShowPrefs(\[*prefname*\]\[, *showall*\]\[, *comp*\])

显示偏好设置对话框。

`ShowPrefs`函数将显示偏好设置对话框。可选参数可用于指定将打开首选项的哪个页面或面板。

`prefname` 要显示的偏好设置的特定页面（或面板）的名称。名称应从下列中选择一项：

- `PrefsGeneral`
- `Prefs3D`
- `PrefsBinSecurity`
- `PrefsBinServers`
- `PrefsBins`
- `PrefsDefaults`
- `PrefsFlow`
- `PrefsFrameFormat`
- `PrefsEDLImport`
- `PrefsLayout`
- `PrefsLoader`
- `PrefsMemory`
- `PrefsNetwork`
- `PrefsOpenCL`
- `PrefsPathMap`
- `PrefsPreview`
- `PrefsQuickTime`
- `PrefsScript`
- `PrefsSplineViews`
- `PrefsSplines`
- `PrefsTimeline`
- `PrefsTweaks`
- `PrefsUI`
- `PrefsDeckLink`
- `PrefsView`

- <b>Python用法</b>：

  ```python
  # 在视图页面上打开偏好设置
  fu.ShowPrefs("PrefsView")
  
  # 打印当前Fusion版本的可能的prefname
  for v in fu.GetRegList(comp.CT_Prefs).values():
  	print(v.GetAttrs()["REGS_ID"])
  ```

- <b>Lua用法</b>：

  ```lua
  -- # 打印当前Fusion版本的可能的prefname
  fu:ShowPrefs("PrefsView")
  
  -- 打印当前Fusion版本的可能的prefname
  for i,v in ipairs(fu:GetRegList(CT_Prefs)) do
  	print(v:GetAttrs().REGS_ID)
  end
  ```

- <b>参数</b>：
  `pageid` （***字符串***） – pageid
  `showall` （*布尔*） – showall
  `comp` （*`Composition`*） – comp

###### Fusion.ShowWindow(*mode*)

显示或隐藏主窗口。

此功能将显示或隐藏Fusion的主窗口。请注意，如果使用命令提示符来控制Fusion，则只有在隐藏窗口之后才能重新显示该窗口。

- <b>参数</b>：
  `mode` （*数值*） – mode

###### Fusion.Test()

测试。

###### Fusion.ToggleBins()

显示或隐藏工具箱（Bins）窗口。

###### Fusion.ToggleRenderManager()

显示或隐藏渲染管理器。

###### Fusion.ToggleUtility(id)

显示或隐藏实用工具（Utility）插件。

- <b>参数</b>：
  `id` （***字符串***） – id