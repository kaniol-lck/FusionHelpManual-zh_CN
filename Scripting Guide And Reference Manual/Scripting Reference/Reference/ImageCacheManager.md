#### ImageCacheManager

###### 类 ImageCacheManager

父类：`Object`

##### 方法

###### ImageCacheManager.FreeSpace()

空余空间。

###### ImageCacheManager.GetSize()

获取尺寸。

###### ImageCacheManager.IsRoom(*bytes*)

这有助于查看缓存管理器中当前有多少空间，通过检查是否有一定数量的字节可以不需要清除/刷新来适应。

`bytes` 需要检查的字节数。

返回一个指示缓存管理器中是否存在作为参数传递的字节数的空间的布尔值。

###### ImageCacheManager.Purge()

此功能允许完全清除缓存，就像在Fusion中以交互方式进行一样。