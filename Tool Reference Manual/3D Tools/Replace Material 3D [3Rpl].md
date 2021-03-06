### Replace Material 3D [3Rpl] 替换材质3D

Replace Material 3D工具用它自己的材质输入替换应用于输入场景中所有几何物体的材质。输入场景中的所有灯光或摄像机都不会受到影响。

使用Object ID和Material ID可以限制替换的范围。这个范围也可以被限制在单独的通道上，例如，可以在红色通道上使用完全不同的材质。

#### External Inputs 外部输入

 ![3Rpl_tile](images/3Rpl_tile.jpg)

**Replacematerial3D.SceneInput 场景输入** 

[橙色，必需的]这个输入需要一个3D场景。

**Replacematerial3D.MaterialInput 材质输入** 

[绿色，可选的]该输入将接受2D图像或3D材质。如果提供2D图像，它将被用作工具内置的基础材质的漫反射纹理贴图。如果连接了3D材质，那么基础材质将被禁用。

#### Controls 控件

![3Rpl_Controls](images/3Rpl_Controls.png)

##### Enable 启用

启用材质替换。

#### Replace Mode 替换模式

##### Red, Green, Blue, and Alpha Mode 红、黄、蓝及Alpha模式

为每个rgba通道提供几种替换模式：

- **Keep 保持：**防止通道被输入材质所替代。
- **Replace 替换：**替换相应颜色通道的材质。
- **Blend 混合：**把这些材质混合在一起。
- **Multiply 相乘：**乘以两个输入的相应通道。

##### Limit by Object ID/Material ID 以Object ID/Material ID限制

启用时，将出现一个滑块，其中可以设置所需的id。所有其他物体都会保留它们的材质。如果两个选项都被启用，则对象必须同时满足这两个条件。

#### Material Tab 材质选项卡

此选项卡中出现的选项决定此工具创建的几何物体的外观。由于这些控件在所有生成几何物体的工具上都是相同的，因此在本文档的Common 3D Controls部分中对这些控件进行了完整的描述。

![3Rpl_Material](images/3Rpl_Material.png)

如果一个外部3D材质连接到工具块的材质输入，那么这个选项卡中的控件将被替换为Using External Material（使用外部材质）标签。

