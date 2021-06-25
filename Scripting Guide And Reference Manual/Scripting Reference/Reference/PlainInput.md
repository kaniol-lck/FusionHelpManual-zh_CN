#### PlainInput

###### 类 PlainInput

父类：`Link`

表示一个输入（`Input`）。

##### PlainInput属性

| 属性名称                  | 类型   | 描述                                                         |
| ------------------------- | ------ | ------------------------------------------------------------ |
| `INPS_Name`               | 字符串 | 输入的完整名称。                                             |
| `INPS_ID`                 | 字符串 | 输入的脚本ID。                                               |
| `INPS_DataType`           | 字符串 | 该输入接受的`Parameter`类型（如`Number`、`Point`、`Text`、`Image`） |
| `INPS_StatusText`         | 字符串 | 鼠标悬停在状态栏上显示的文本。                               |
| `INPB_External`           | 布尔   | 此输入是否可以设置动画或连接到工具或修改器。                 |
| `INPB_Active`             | 布尔   | 此输入的值是否用于渲染。                                     |
| `INPB_Required`           | 布尔   | 工具的结果是否需要此输入中的有效`Parameter`。                |
| `INPB_Connected`          | 布尔   | 输入是否连接到另一个工具的输出。                             |
| `INPI_Priority`           | 整型   | 用于确定获取工具输入的顺序。                                 |
| `INPID_InputControl`      | 字符串 | 输入所使用的工具窗口控件的类型的ID。                         |
| `INPID_PreviewControl`    | 字符串 | 输入所使用的显示视图控件类型的ID。                           |
| `INPB_Disabled`           | 布尔   | 输入是否将不接受新值。                                       |
| `INPB_DoNotifyChanged`    | 布尔   | 是否通知工具输入值的更改。                                   |
| `INPB_Integer`            | 布尔   | 输入将所有数字四舍五入到最接近的整数。                       |
| `INPI_NumSlots`           | 整型   | 该输入可以一次获取的来自不同时间的值的数量。                 |
| `INPB_ForceNotify`        | 布尔   | 每当有新参数到达时，都会通知该工具，即使该参数是相同的值。   |
| `INPB_InitialNotify`      | 布尔   | 在创建时通知该工具输入的初始值。                             |
| `INPB_Passive`            | 布尔   | 此输入的值不会影响渲染的结果，并且如果更改则不会创建Undo事件。 |
| `INPB_InteractivePassive` | 布尔   | 此输入的值不会影响渲染的结果，但如果更改，则可以为Undone。   |
| `INPN_MinAllowed`         | 数值   | 允许的最小值——低于此值的任何数字都会被裁剪。                 |
| `INPN_MaxAllowed`         | 数值   | 允许的最大值——高于此值的任何数字都会被裁剪。                 |
| `INPN_MinScale`           | 数值   | 输入控件正常显示的最低值。                                   |
| `INPN_MaxScale`           | 数值   | 输入控件正常显示的最高值。                                   |
| `INPI_IC_ControlPage`     | 整型   | 确定哪个工具控件窗口的哪个标签显示输入控件。                 |
| `INPI_IC_ControlGroup`    | 整型   | 当多个输入共享单个复合窗口控件时，它们必须都具有相同的Control Group值。 |
| `INPI_IC_ControlID`       | 整型   | 当多个输入共享单个复合窗口控件时，它们都必须具有不同的Control ID值。 |

##### 方法

###### PlainInput.ConnectTo()

**注意：**此方法被重载，并具有其他参数。另见其他定义。

将输入连接到输出。

注意`ConnectTo`来连接输入和输出并不是必要的。设置了输入就相当于对输出做了相同的事。

`output` 相当于将连接到运行该函数的输入的某种输出。如果连接到`nil`值，将断开输入与任何输出的连接。

- <b>Python用法</b>：

  ```python
  mybg = comp.Background()
  myblur = comp.Blur()
  
  # 连接
  myblur.Input.ConnectTo(mybg.Output)
  # 断开
  myblur.Input.ConnectTo()
  
  # 现在与=运算符相同
  # 连接
  myblur.Input = mybg.Output
  # 断开
  myblur.Input = None
  ```

- <b>Lua用法</b>：

  ```lua
  mybg = Background()
  myblur = Blur()
  
  -- 连接
  myblur.Input:ConnectTo(mybg.Output)
  -- 断开
  myblur.Input:ConnectTo()
  
  -- 现在与=运算符相同
  -- 连接
  myblur.Input = mybg.Output
  -- 断开
  myblur.Input = nil
  ```

- <b>返回</b>：success 成功

- <b>返回类型</b>：布尔

###### PlainInput.ConnectTo(*out*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

将输入连接到输出。

注意`ConnectTo`来连接输入和输出并不是必要的。设置了输入就相当于对输出做了相同的事。

`output` 相当于将连接到运行该函数的输入的某种输出。如果连接到`nil`值，将断开输入与任何输出的连接。

- <b>Python用法</b>：

  ```python
  mybg = comp.Background()
  myblur = comp.Blur()
  
  # 连接
  myblur.Input.ConnectTo(mybg.Output)
  # 断开
  myblur.Input.ConnectTo()
  
  # 现在与=运算符相同
  # 连接
  myblur.Input = mybg.Output
  # 断开
  myblur.Input = None
  ```

- <b>Lua用法</b>：

  ```lua
  mybg = Background()
  myblur = Blur()
  
  -- 连接
  myblur.Input:ConnectTo(mybg.Output)
  -- 断开
  myblur.Input:ConnectTo()
  
  -- 现在与=运算符相同
  -- 连接
  myblur.Input = mybg.Output
  -- 断开
  myblur.Input = nil
  ```

- <b>返回</b>：success 成功

- <b>返回类型</b>：布尔

###### PlainInput.GetConnectedOutput()

返回此输入连接的输出。

注意，根据设计，输入只能连接到单个输出，而一个输出可能是分支的并且连接到多个输入。

- <b>返回</b>：ouput 输出
- <b>返回类型</b>：`Output`

###### PlainInput.GetExpression()

返回在输入的Expression字段中显示的表达式字符串（如果有），如果没有则返回`nil`。

简单表达式有助于自动化控件之间的关系，尤其是在宏（macro）和常用合成中。

###### PlainInput.GetKeyFrames()

返回此输入的所有关键帧时间的表。如果工具控件未使用样条进行动画处理，则此函数将返回`nil`。

`GetKeyFrames()`函数用于确定哪些帧已在样条上对输入进行了关键帧设置。它返回一个显示用户为输入定义关键帧的表。

- <b>返回</b>：keyframes 关键帧
- <b>返回类型</b>：表

###### PlainInput.HideViewControls(*hide*)

隐藏或显示此输入的视图控件。

使用此功能可以在显示视图中隐藏或显示视图控件。

`hide` 如果设置为`true`，则隐藏控件，否则将其显示。

- <b>Python用法</b>：

  ```python
  # 隐藏Center位置变换控件
  comp.Transform1.Center.HideViewControls()
  
  # 显示Center位置变换控件
  comp.Transform1.Center.HideViewControls(False)
  ```

- <b>Lua用法</b>：

  ```lua
  -- 隐藏Center位置变换控件
  Transform1.Center:HideViewControls()
  
  -- 显示Center位置变换控件
  Transform1.Center:HideViewControls(false)
  ```

- <b>参数</b>：
  `hide` （*布尔*） – hide

###### PlainInput.HideWindowControls(*hide*)

隐藏或显示此输入的窗口控件。

使用此函数可以在工具属性窗口中隐藏或显示窗口控件。例如，这可以用于隐藏Brightness / Contrasts上的所有伽玛控件，以防止用户操纵。

`hide` 如果设置为`true`，则隐藏控件，否则将其显示。

- <b>Python用法</b>：

  ```python
  # 从属性中隐藏Center
  comp.Transform1.Center.HideWindowControls()
  
  # 在属性中显示Center
  comp.Transform1.Center.HideWindowControls(False)
  ```

- <b>Lua用法</b>：

  ```lua
  -- 从属性中隐藏Center
  Transform1.Center:HideWindowControls()
  
  -- 在属性中显示Center
  Transform1.Center:HideWindowControls(false)
  ```

- <b>参数</b>：
  `hide` （*布尔*） – hide

###### PlainInput.SetExpression()

此函数显示输入的Expression字段，并将其设置为给定的字符串。

简单表达式有助于自动化控件之间的关系，尤其是在宏（macro）和常用合成中。

- <b>Python用法</b>：

  ```python
  # 将Lift和Gamma设置为与Gain相关联
  comp.BrightnessContrast1.Lift.SetExpression("Gain * 0.7")
  comp.BrightnessContrast1.Gamma.SetExpression("Gain * 0.4")
  ```

- <b>Lua用法</b>：

  ```lua
  -- 将Lift和Gamma设置为与Gain相关联
  BrightnessContrast1.Lift:SetExpression("Gain * 0.7")
  BrightnessContrast1.Gamma:SetExpression("Gain * 0.4")
  ```

###### PlainInput.ViewControlsVisible()

返回此输入的视图控件的可见状态。

- <b>返回</b>：hidden 隐藏
- <b>返回类型</b>：布尔

###### PlainInput.WindowControlsVisible()

返回此输入的窗口控件的可见状态。

- <b>返回</b>：hidden 隐藏
- <b>返回类型</b>：布尔