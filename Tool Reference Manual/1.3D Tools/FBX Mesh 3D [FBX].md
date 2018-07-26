### FBX Mesh 3D [FBX]

FBXMesh3D工具用于以FilmBox (FBX)格式保存的场景文件中导入多边形几何体。它还可以从OBJ、3DS、DAE和DXF场景文件中导入物体。这提供了一种使用比Fusion内建物体更复杂几何体的方法。

当使用此工具导入几何图形时，FBX文件中包含的所有物体将被组合成一个具有单个中心点和变换的mesh。FBXMesh工具将忽略任何应用于物体的动画。

File > Import > FBX工具可用于导入FBX并为文件中包含的每个摄像机、灯光和mesh创建单独的工具。这个工具还可以保留物体的动画。

如果启用了Global > General > Auto Clip Browse选项(默认)，则将此工具添加到工具栏或菜单的composition中，将自动显示文件浏览器。

#### 外部输入

~~此处有图~~

*FBXMesh3D.SceneInput*

[橙色,必需的]这个输入需要一个3D场景作为输入。

*FBXMesh.MaterialInput*

[绿色,可选的]该输入将接受二维图像或三维材质。如果提供了2D图像，则它将作为构建在工具中的基本材质的diffuse纹理映射。如果一个3D材质被连接，那么基本材质将被禁用。