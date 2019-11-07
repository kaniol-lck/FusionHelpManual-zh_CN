#### Link

###### 类 Link

父类：`LockableObject`

表示输入和输出的父类。

##### 成员

###### Link.ID

Link的ID（只读）。

- <b>获取</b>：
  
  ```lua
  id = Link.ID -- (string)
  ```

###### Link.Name

此链接的命名友好的名称（只读）。

- <b>获取</b>：
  
  ```lua
  name = Link.Name -- (string)
  ```

##### 方法

###### Link.GetData([*name*])

获取自定义持久数据。

另见`Composition:GetData()`。

- <b>参数</b>：
  `name` （***字符串***） – name
- <b>返回</b>：value 值
- <b>返回类型</b>：（数值|字符串|布尔|表）

###### Link.GetTool()

返回拥有此Link的Tool对象。

- <b>返回</b>：tool 工具
- <b>返回类型</b>：`Tool`

###### Link.SetData(*name*, *value*)

设置自定义持久数据。

另见`Composition:SetData()`。

- <b>参数</b>：
  `name` （***字符串***） – name
  `value` （*（数值|字符串|布尔|表）*） – value

