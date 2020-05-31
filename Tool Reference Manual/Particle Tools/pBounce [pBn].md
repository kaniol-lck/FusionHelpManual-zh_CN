### pBounce [pBn] 粒子反弹

pBounce工具是用于从受影响的粒子中创建区域，当粒子接触到该区域会发生反弹。pBounce工具有三个主要的控制，如下所述。 

#### Controls 控件

![pBn_Controls](images/pBn_Controls.png)

##### Random Seed/Randomize 随机种子/随机化

随机种子用于设置应用于复制对象的抖动量的种子。两个具有相同设置但不同随机种子的复制工具将产生两个完全不同的结果。单击Randomize按钮来分配随机种子值。

##### Elasticity 弹性

弹性是影响反弹的强度，也是反弹区域的粒子被反弹后产生的多少速率。值为1.0将导致粒子被反弹后拥有同样的速率。值为0.1将导致粒子被反弹后丢失90%的速率。

默认情况下，控制范围是0.0到1.0，需要更大的值可以手动输入。这将导致粒子发生碰撞后增加动力，而不是丢失它。负值不产生有用的结果。

##### Variance 变化

默认情况下，根据矢量和区域的角度，粒子打在反弹区域将被均匀的反弹回来。0.0往上增加将会产生反弹角度变化。这可以用来模拟一个粗糙表面效果。

##### Spin 自旋

默认情况下，粒子打在反弹区域后以任何方式影响它们的角度和方向。  增加或减少自旋值将导致反弹区域的粒子基于碰撞角度来传递和改变现有的粒子自旋。正值向前自旋负值向后自旋。该值越大，就越快应用到粒子的自旋。

##### Roughness 粗糙度

此滑块略微改变表面反弹随机粒子的方向。

##### Surface Motion 表面运动

此滑块产生表面反弹行为，若是运动的从而影响粒子。

##### Surface Motion Direction 表面运动方向

此滑动条控制是设置表面反弹的相对角度。

#### Conditions Tabs 条件选项卡

![pBn_ConditionsTab](images/pBn_ConditionsTab.png)

#### Region Tab 区域选项卡

![pBn_RegionTab](images/pBn_RegionTab.jpg)

请参阅本章的“Particle Common Controls 粒子通用控件”。