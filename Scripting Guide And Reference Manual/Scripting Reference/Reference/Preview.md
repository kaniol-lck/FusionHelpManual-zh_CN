#### Preview

###### 类 Preview

父类：`PlainInput`

##### 方法

###### Preview.Close()

关闭当前片段。

- <b>参数</b>：
  `tool` （*`Tool`*） – tool
  `filename` （***字符串***） – filename
- <b>返回</b>：success
- <b>返回类型</b>：布尔

###### Preview.DisplayImage(*img*)

显示一个`Image`对象。

- <b>参数</b>：
  `img` （*`Image`*） – img
- <b>返回</b>：success
- <b>返回类型</b>：布尔

###### Preview.IsPlaying()

指示当前是否正在播放预览。

- <b>返回</b>：playing
- <b>返回类型</b>：布尔

###### Preview.Open(*filename*)

使用文件名打开来进行查找和播放。

- <b>参数</b>：
  `filename` （***字符串***） – filename
- <b>返回</b>：success
- <b>返回类型</b>：布尔

###### Preview.Play([*reverse*])

播放当前片段。

- <b>参数</b>：
  `reverse` （*布尔*） – reverse

###### Preview.Seek(frame)

查找指定的帧。

- <b>参数</b>：
  `frame` （*数值*） – frame

###### Preview.Stop()

停止播放。

###### Preview.ViewOn(*tool*)

将Preview附加到工具来显示它的输出。

- <b>参数</b>：
  `tool` （*`Tool`*） – tool
  `filename` （***字符串***） – filename
- <b>返回</b>：success
- <b>返回类型</b>：布尔