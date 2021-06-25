#### TimeRegion

###### 类 TimeRegion

父类：`List`

##### 成员

###### TimeRegion.Start

- <b>获取</b>：
  
  ```lua
  val = TimeRegion.Start -- (number)
  ```

###### TimeRegion.End

- <b>获取</b>：
  
  ```lua
  val = TimeRegion.End -- (number)
  ```

##### 方法

###### TimeRegion.FromFrameString(*frames*)

读取字符串描述。

- <b>参数</b>：
  `frames` （***字符串***）– frames

###### TimeRegion.FromTable(*frames*)

读取`{start, end}`对形式的表。

- <b>参数</b>：
  `frames`（*表*） – frames

###### TimeRegion.ToFrameString() 

返回字符串描述。

- <b>返回</b>：frames 帧
- <b>返回类型</b>：字符串

###### TimeRegion.ToTable()

返回`{start, end}`对形式的表。

- <b>返回</b>：frames 帧
- <b>返回类型</b>：表