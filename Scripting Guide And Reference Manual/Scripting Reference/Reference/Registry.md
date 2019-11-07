#### Registry

###### 类 Registry

表示注册表。

##### Registry属性

| 属性名称                                                     | 类型           | 描述                                                         |
| ------------------------------------------------------------ | -------------- | ------------------------------------------------------------ |
| `REGS_Name`                                                  | 字符串         | 指定该注册表项表示的类的全名。                               |
| `REGS_ScriptName`                                            | 布尔           | 指定该注册表项表示的类的脚本名称。若未指定则使用`REGS_Name`定义的全名。 |
| `REGS_ScriptName`                                            | 字符串         | 该类的帮助文件和ID。                                         |
| `REGI_HelpID`                                                | 整型           | 该类的帮助文件和ID。                                         |
| `REGI_HelpTopicID`                                           | 整型           | 该类的帮助文件和ID。                                         |
| `REGS_OpIconString`                                          | 布尔           | 指定用于表示类的工具栏图标文本。                             |
| `REGS_OpDescription`                                         | 整型           | 指定类的描述。                                               |
| `REGS_OpToolTip`                                             | 布尔           | 指定该类用于提供提供更长的名称或描述的工具提示。             |
| `REGS_Category`                                              | 整型           | 指定类的类别，并在工具类的Tool菜单中定义一个位置。           |
| `REGI_ClassType`<br />`REGI_ClassType2`                      | 整型           | 根据`classtype`常量指定该类的类型。                          |
| `REGI_ID`                                                    | 字符串         | 该类的唯一ID。                                               |
| `REGI_OpIconID`                                              | 字符串         | 用于该类的工具栏图像的位图的资源ID。                         |
| `REGB_OpNoMask`                                              | 整型           | 指示该`Tool`类是否无法处理被遮罩的情况。                     |
| `REGI_DataType`                                              | 字符串<br />表 | 指定该类处理的数据类型RegID。                                |
| `REGI_TileID`                                                | 数值           | 指定该类用于平铺图像的资源ID。                               |
| `REGB_CreateStaticPreview`                                   | 整型           | 指示要在启动该类型时创建预览对象。                           |
| `REGB_CreateFramePreview`                                    | 布尔           | 指示要为每个新框架窗口创建一个预览对象。                     |
| `REGB_Preview_CanDisplayImage`<br/>`REGB_Preview_CanCreateAnim`<br/>`REGB_Preview_CanPlayAnim`<br/>`REGB_Preview_CanSaveImage`<br/>`REGB_Preview_CanSaveAnim`<br/>`REGB_Preview_CanCopyImage`<br/>`REGB_Preview_CanCopyAnim`<br/>`REGB_Preview_CanRecord`<br/>`REGB_Preview_UsesFilenames`<br/>`REGB_Preview_CanNetRender` | 布尔           | 定义预览类的各种功能。                                       |
| `REGI_Version`                                               | 整型           | 定义该类或插件的版本号。                                     |
| `REGI_PI_DataSize`                                           | 数值           | 为`AEPlugin`类定义自定义数据大小。                           |
| `REGB_Unpredictable`                                         | 字符串         | 指示该工具类是否可预测。给定相同的输入值集，可预测的工具将产生相同的结果，而与时间无关。 |
| `REGI_InputDataType`                                         | 整型           | 指定该类的主要输入处理的RegID数据类型。                      |
| `REGB_OperatorControl`                                       | 整型           | 指示该工具类是否提供自定义叠加控件处理。                     |
| `REGB_Source_GlobalCtrls`                                    | 数值           | 指示该源工具类是否具有全局范围控件。                         |
| `REGB_Source_SizeCtrls`                                      | 整型           | 指示该源工具类是否具有图像分辨率控件。                       |
| `REGB_Source_AspectCtrls`                                    | 整型           | 指示该源工具类是否具有图像宽高比控件。                       |
| `REGB_NoAutoProxy`                                           | 布尔           | 指示该工具类是否在调整后不希望自动代理。                     |
| `REGI_Logo`                                                  | 布尔           | 指定该类的公司徽标的资源ID。                                 |
| `REGI_Priority`                                              | 布尔           | 在注册表列表上指定该类的优先级。                             |
| `REGB_NoBlendCtrls`                                          | 布尔           | 指示该工具类是否没有Blend控件。                              |
| `REGB_NoObjMatCtrls`                                         | 布尔           | 指示该工具类是否没有Object/Material选择控件。                |
| `REGB_NoMotionBlurCtrls`                                     | 布尔           | 指示该工具类是否没有Motion Blur控件。                        |
| `REGB_NoAuxChannels`                                         | 布尔           | 指示该工具类是否无法处理被给予的辅助通道（例如Z，ObjID等）   |
| `REGB_EightBitOnly`                                          | 布尔           | 指示该工具类是否不能处理每个通道图像大于8位的问题。          |
| `REGB_ControlView`                                           | 布尔           | 指示该类是否为控件视图类。                                   |
| `REGB_NoSplineAnimation`                                     | 布尔           | 指定该数据类型（参数类）不能使用样条进行动画处理。           |
| `REGI_MergeDataType`                                         | 整型           | 指定该Merge工具类能够合并的数据类型。                        |
| `REGB_ForceCommonCtrls`                                      | 布尔           | 强制工具拥有通用控件，例如Motion Blur、Blend等，即使在修改器上也是如此。 |
| `REGB_Particle_ProbabilityCtrls`<br/>`REGB_Particle_SetCtrls`<br/>`REGB_Particle_AgeRangeCtrls`<br/>`REGB_Particle_RegionCtrls`<br/>`REGB_Particle_RegionModeCtrls`<br/>`REGB_Particle_StyleCtrls`<br/>`REGB_Particle_EmitterCtrls`<br/>`REGB_Particle_RandomSeedCtrls` | 布尔           | 指定粒子工具应具有（或不具有）各种标准控件集。               |
| `REGI_Particle_DefaultRegion`                                | 整型           | 指定该粒子工具类的默认Region的RegID。                        |
| `REGI_Particle_DefaultStyle`                                 | 整型           | 指定该粒子工具类的默认Style的RegID。                         |
| `REGI_MediaFormat_Priority`                                  | 整型整型       | 指定媒体格式类的优先级。                                     |
| `REGS_MediaFormat_FormatName`                                | 字符串         | 指定媒体格式类的名称。                                       |
| `REGST_MediaFormat_Extension`                                | 字符串         | 指定媒体格式类支持的扩展。                                   |
| `REGB_MediaFormat_CanLoad`<br/>`REGB_MediaFormat_CanSave`<br/>`REGB_MediaFormat_CanLoadMulti`<br/>`REGB_MediaFormat_CanSaveMulti`<br/>`REGB_MediaFormat_WantsIOClass`<br/>`REGB_MediaFormat_LoadLinearOnly`<br/>`REGB_MediaFormat_SaveLinearOnly`<br/>`REGB_MediaFormat_CanSaveCompressed`<br/>`REGB_MediaFormat_OneShotLoad`<br/>`REGB_MediaFormat_OneShotSave`<br/>`REGB_MediaFormat_CanLoadImages`<br/>`REGB_MediaFormat_CanSaveImages`<br/>`REGB_MediaFormat_CanLoadAudio`<br/>`REGB_MediaFormat_CanSaveAudio`<br/>`REGB_MediaFormat_CanLoadText`<br/>`REGB_MediaFormat_CanSaveText`<br/>`REGB_MediaFormat_CanLoadMIDI`<br/>`REGB_MediaFormat_CanSaveMIDI`<br/>`REGB_MediaFormat`<br/>`ClipSpecificInputValues`<br/>`REGB_MediaFormat`<br/>`WantsUnbufferedIOClass` | 布尔           | 指定媒体格式类的各种功能。                                   |
| `REGB_ImageFormat_CanLoadFields`<br/>`REGB_ImageFormat_CanSaveField`<br/>`REGB_ImageFormat_CanScale`<br/>`REGB_ImageFormat_CanSave8bit`<br/>`REGB_ImageFormat_CanSave24bit`<br/>`REGB_ImageFormat_CanSave32bi` | 布尔           | 指定图像格式类的各种功能。                                   |

##### 成员

###### Registry.ID

该Registry节点的ID（只读）。

- <b>获取</b>：
  
  ```lua
  id = Registry.ID -- (string)
  ```

###### Registry.Name

该Registry节点命名友好的名称（只读）。

- <b>获取</b>：
  
  ```lua
  name = Registry.Name -- (string)
  ```

###### Registry.Parent

此Registry节点的父级（只读）。

- <b>获取</b>：
  
  ```lua
  parent = Registry.Parent -- (Registry)
  ```

##### 方法

###### Registry.IsClassType()

返回工具的ID或其父级的ID是否是特定的Registry ID。

- <b>返回</b>：matched 匹配
- <b>返回类型</b>：布尔

###### Registry.IsRegClassType()

返回工具是否为特定的Registry `ClassType`。

- <b>返回</b>：matched 匹配
- <b>返回类型</b>：布尔