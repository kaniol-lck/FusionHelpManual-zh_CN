### Graphical User Interfaces 图形用户界面

虽然脚本可以在后台运行并输出文本到控制台，但总还是需要一个图形用户界面。这样，脚本的逻辑可以根据用户设置的选项更改。这有两种选择。对于更复杂的用户界面，Lua搭载了iup GUI库。请参阅该库文档，因为它的用法超出了本文档的范围：

http://webserver2.tecgraf.puc-rio.br/iup/

另一个选择是名为`AskUser`的内置对话框。

##### Ask User

一个构建并核算被调用对话框的简单方法：`comp:AskUser(name, {table of inputs})`

每个输入都是一个如下结构的表：

```lua
{Input Name, Input Type, Options ...}
```

<b>Input Name (string, required) 输入名称（字符串，必需的）</b>

此名称是用户设置控件值的索引值（即`dialog.Control`或`dialog ["Control Name"]`）。它也是对话框中显示于控件旁边的标签，除非还为控件提供了Name选项。

<b>Input Type (string, required) 输入类型（字符串，必需的）</b>

用于描述要显示的控件类型的字符串值。有效的字符串为`"FileBrowse"`、`"PathBrowse"`、`"Position"`、`"Slider"`、`"Screw"`、`"Checkbox"`、`"Dropdown"`和`ext`。每种输入类型都有自己的属性和可选值。

<b>Options (misc) 选项（杂项）</b>

不同的控件类型接受不同的选项来决定控件在对话框中的显示和行为。

所有脚本都会执行至用户选择OK或Cancel来响应对话框再停止。

返回的表包含用户的回应，如果用户取消了对话框，则为`nil`。

> **注意**
>
> 此功能只能交互式调用，命令行脚本不能使用此功能。

比如，如果要显示请求用户路径的对话框，你可以使用以下脚本：

```lua
ret = composition:AskUser("A Sample Dialog", { {"Select a Directory", "PathBrowse"} } )
dump(ret)
```

一些选项对于多个控件是通用的。比如，Name选项可以与任何类型的控件一起使用，DisplayedPrecision选项可以与任何显示并返回数值的控件一起使用。常用的控件选项为：

- **Name (string) 名称（字符串）**

  此选项可用于在返回表中为输入指定更合理的名称，而不是作为标签用于控件的那个。

- **Default (string) 默认（字符串）**

  控件初次显示时的默认值。

- **Min (integer) 最小值（数值）** 

  设置滑块或螺旋控件允许的最小值。

- **Max (numeric) 最大值（数值）**

  设置滑块或螺旋控件允许的最大值。

- **DisplayedPrecision (numeric) 显示精度（数值）**

  使用此选项可设置数字控件（如滑块、螺旋和位置控件）的精度。值为2将允许两位小数的精度 - 即，2.10而非2.105。

- **Integer (boolean) 整数（布尔）**

  如果为true，则滑块或螺旋控件将仅允许整数（非十进制）值，否则滑块将提供完全精度。如果未指定，则默认为false。

##### Control Types 控件类型

下表显示了控件的类型。

<table class="guide-table">
  <thead>
    <tr>
      <th>
        控件类型</th>
      <th>
        用途</th>
      <th>
        选项</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>
        <b>
          Text</b>
      </td>
      <td>
        显示Fusion文本编辑控件，用于向输入大量文本。</td>
      <td>
        <strong>
          Linear (integer) 线性（整型）</strong>
        <br>
        用于指定显示在控件上的文本行数
        <br>
        <strong>
          Wrap (boolean) 折行（布尔）</strong>
        <br>
        一个
        <code>true</code>
        或
        <code>false</code>
        值，用于确定输入控件的文本是否会在到达行尾时换至下一行。
        <br>
        <strong>
          ReadOnly (boolean) 只读（布尔）</strong>
        <br>
        如果此选项设置为
        <code>true</code>
        ，则控件将不允许对控件中的文本进行任何编辑。用于显示不可编辑的信息。
        <br>
        <strong>
          FontName (string) 字体名称（字符串）</strong>
        <br>
        在此控件中显示文本时要使用的truetype字体的名称。
        <br>
        <strong>
          FontSize (numeric) 字体大小（数值）</strong>
        <br>
        用于指定显示在该控件上显示文本字体大小的数值。</td>
    </tr>
    <tr>
      <td>
        <b>
          FileBrowse
          <br>
          PathBrowse
          <br>
          ClipBrowse</b>
      </td>
      <td>
        FileBrowse输入允许你浏览以选择磁盘中的文件，而PathBrowse允许你选择一个路径。ClipBrowse用于以它们合适的过滤器获取序列。</td>
      <td>
        <strong>
          Save (boolean) 保存（布尔）</strong>
        <br>
        将这个选项设置为
        <code>true</code>
        ，如果该对话框用于选择不存在的路径或文件（即当选择要保存的文件时）。</td>
    </tr>
    <tr>
      <td>
        <b>
          Slider</b>
      </td>
      <td>
        显示标准Fusion滑块控件。可使用后面的选项来设置滑块的高低两端的标签。</td>
      <td>
        <strong>
          LowName (string) 低值名称（字符串）</strong>
        <br>
        该文本标签用于滑块低（左）端。
        <br>
        <strong>
          HighName (string) 高值名称（字符串）</strong>
        <br>
        该文本标签用于滑块高（右）端。</td>
    </tr>
    <tr>
      <td>
        <b>
          Checkbox</b>
      </td>
      <td>
        显示标准Fusion复选框控件。您可以使用NumAcross选项显示其中几个控件使之彼此相邻。</td>
      <td>
        <strong>
          Default (numeric)</strong>
        <br>
        复选框的默认状态，使用0表示复选框未选中，或1启用复选框。若未指定则默认为0。
        <br>
        <strong>
          NumAcross (numeric) 横跨数量（数值）</strong>
        <br>
        如果设置了NumAcross值，则对话框将保留空格以显示彼此相邻的两个或多个复选框。若要为在同一行上显示的所有复选框就必须设置NumAcross值。请参阅下面的示例获取详细信息。</td>
    </tr>
    <tr>
      <td>
        <b>
          Position</b>
      </td>
      <td>
        显示一对编辑框来输入用于中心控件或其他位置值的X&amp;Y坐标。该控件的默认值是拥有两值的表，一个是X值另一个是Y。该控件返回值的表。</td>
      <td>
        <strong>
          Default (table
          <code>{x,y}</code>
          ) 默认（表
          <code>{x, y}</code>
          ）</strong>
        <br>
        拥有两个数值条目的表，用于指定x和y坐标的值。</td>
    </tr>
    <tr>
      <td>
        <b>
          Screw</b>
      </td>
      <td>
        显示标准Fusion缩略图或螺旋控件。此控件几乎与滑块全方面相同，只是它的范围是无限的，因此它非常适合角度控制和其他没有实际限制的值。</td>
      <td>&nbsp;</td></tr>
    <tr>
      <td>
        <b>
          Dropdown</b>
      </td>
      <td>
        显示标准Fusion用于从列表中选择选项的下拉菜单。此控件展示和选项使用一个包含下拉菜单值的表来调用选项（Options）。请注意，选项（Options）的表索引从
        <code>0</code>
        开始，而不是像大多数FusionScript表中常见的那样从
        <code>1</code>
        开始。因此，如果您希望为列表中的第一个条目设置默认值，则使用
        <code>Default=0</code>
        ，让第二个
        <code>Default=0</code>
        ，依此类推。</td>
      <td>
        <strong>
          Default (numeric) 默认（数值）</strong>
        <br>
        用于指定选项表（见下）中值的索引的数值，来作为创建时下拉框的默认值。
        <br>
        <strong>
          Default (table
          <code>{string, string, string…}</code>
          ) 默认（表
          <code>{string, string, string…}</code>
          ）</strong>
        <br>
        用于描述描述显示在下拉框内值的字符串表。</td>
    </tr>
    <tr>
      <td>
        <b>
          Multibutton</b>
      </td>
      <td>
        显示多按钮，其中每个选项都作为按钮绘制。
        <br>
        相同的选项也被用于如下拉列表中。</td>
      <td>
        <strong>
          Default (numeric) 默认（数值）</strong>
        <br>
        用于指定选项表（见下）中值的索引的数值，来作为创建时下拉框的默认值。
        <br>
        <strong>
          Default (table
          <code>{string, string, string…}</code>
          ) 默认（表
          <code>{string, string, string…}</code>
          ）</strong>
        <br>
        用于描述描述显示在下拉框内值的字符串表。</td>
    </tr>
  </tbody>
</table>

本例展示了包含大多数各种控件类型的对话框：

```lua
composition_path = composition:GetAttrs().COMPS_FileName
msg = "This dialog is only an example. It does not actually do anything, "..
    "so you should not expect to see a useful result from running this script."

d = {}
d[1] = {"File", Name = "Select A Source File", "FileBrowse", Default = composition_path}
d[2] = {"Path", Name = "New Destination", "PathBrowse" }
d[3] = {"Copies", Name = "Number of Copies", "Slider", Default = 1.0, Integer = true,
 Min = 1, Max = 5 }
d[4] = {"Angle", Name = "Angle", "Screw", Default = 180, Min = 0, Max = 360}
d[5] = {"Menu", Name = "Select One", "Dropdown", Options = {"Good", "Better", "Best"},
 Default = 1}
d[6] = {"Center", Name = "Center", "Position", Default = {0.5, 0.5} }
d[7] = {"Invert", Name = "Invert", "Checkbox", NumAcross = 2 }
d[8] = {"Save", Name = "Save Settings", "Checkbox", NumAcross = 2, Default = 1 }
d[9] = {"Msg", Name = "Warning", "Text", ReadOnly = true, Lines = 5, Wrap = true,
 Default = msg}

dialog = composition:AskUser("A Sample Dialog", d)
if dialog == nil then
    print("You cancelled the dialog!")
else
    dump(dialog)
end
```

> **注意**
>
> 在Python中，确保使用合适的从`1`开始的索引来来创建字典，正如在有关Python章节解释的那样。比如：
>
> ```python
> dialog = {1: {1: "dlgDir", "Name": "Select a Directory", 2: "PathBrowse"},
>              2: {1: "dlgCheck", "Name": "A Check Box", 2: "Checkbox", "Default": 1}}
> ret = composition.AskUser("A sample dialog", dialog)
> ```