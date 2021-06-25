#### Parameter

###### 类 Parameter

父类：`Object`

像`Image`、`Number`等`Parameter`的基类。

##### 成员

###### Parameter.ID

`Parameter`的ID（只读）。

- <b>获取</b>：
  `id = Parameter.ID – (string)`

###### Parameter.Metadata()

获取或设置元数据表。

注意，一旦Loader重新核算输出，从常规脚本设置的元数据将被重置。

- <b>Python用法</b>：

  ```python
  metadata = comp.Loader1.Output.GetValue().Metadata
  print("Image was loaded from " + metadata["Filename"])
  ```

- <b>Lua用法</b>：

  ```lua
  metadata = Loader1.Output:GetValue().Metadata
  print("Image was loaded from " .. metadata.Filename)
  ```

###### Parameter.Name

该参数的`Parameter`（只读）。

- <b>获取</b>：
  `name = Parameter.Name – (string)`

##### 方法

###### Parameter.GetData([*name*])

获取自定义持久数据。

另见`Composition:GetData()`。

- <b>参数</b>：
  `name`（***字符串***） – name
- <b>返回</b>：value
- <b>返回类型</b>：（数值|字符串|布尔|表）

###### Parameter.SetData(*name*, *value*)

设置自定义持久数据。

另见`Composition:SetData()`。

- <b>参数</b>：
  `name`（***字符串***） – name
  `value`（*（数值|字符串|布尔|表）*） – value

