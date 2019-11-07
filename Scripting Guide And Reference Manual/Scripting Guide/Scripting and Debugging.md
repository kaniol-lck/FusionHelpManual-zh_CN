### Scripting and Debugging 脚本与调试

#### Console 控制台

Fusion有内建的控制台来输出脚本中的print语句。这有助于没有GUI的脚本，或作为简单的调试工具。

比如：

- <b>Lua</b>

  ```Lua
  print("Hello World.")
  ```

- <b>Python</b>

  ```Python
  print("Hello World.")
  print "Hello World."
  ```

无论在什么情况下，控制台都会显示`"Hello World"`。如果在控制台中执行，会复制一份该命令跟着解释器：Lua>，Py2>，Py3>。

当使用集合时，打印只会输出集合的引用，为了显示其预格式化的内容，使用：

- <b>Lua</b>

  ```Lua
  dump(comp:GetAttrs())
  ```

  > **提示**
  >
  > 如果在控制台中使用FusionScript，可以使用`dump`为Lua和Python的缩写版本：
  >
  > ```Lua
  > ==comp:GetAttrs() -- 与上面的命令相同
  > ```

同样也可以在Python中通过一个叫做`“Data pretty printer”(pprint)`的模块完成。

- <b>Python</b>

  ```Python
  from pprint import pprint # 需要加载一次
  pprint(comp.GetAttrs())
  ```

请留意所有FusionScript返回的集合本质上都是Lua元组。比较“Scripting Languages 脚本语言”一章。