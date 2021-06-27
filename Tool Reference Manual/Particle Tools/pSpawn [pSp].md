### pSpawn [pSp] 粒子繁殖

pSpawn工具使每个受影响的粒子充当发射器，可以产生自己的一个或多个粒子。原始粒子一直持续到其自身寿命结束，并且它发射的每个粒子都变得完全独立，并具有自己的寿命和属性。

只要粒子落在pSpawn工具的作用下，它就会继续生成粒子。一定注意要通过限制器（例如Start和End Age、Probability、Sets和Regions）以及设置发射器参数的动画来限制工具的效果，以使工具仅在需要时会运算。

#### Controls 控件

pSpawn工具拥有大量的控件，其中大部分控件与pEmitter工具中的控件完全相同。有一些控件是pSpawn工具独有的，其作用如下所述。

![pSp_Controls](images/pSp_Controls.png)

##### Affect Spawned Particles 影响生成的粒子

勾选此复选框会使生成创建的粒子也受到后续帧上的pSpawn工具的影响。这会成倍增加系统中粒子的数量，从而使渲染时间提高到不合理的程度。请谨慎使用此复选框。

##### Velocity Transfer 速度传递

此控件确定将源粒子的速度转移到其生成粒子的速度。默认值1.0导致每个新粒子100％采用其源粒子的速度和方向。较低的值会将较少的原始运动传递给新粒子。

#### Region Tab 区域选项卡

![pSp_RegionTab](images/pSp_RegionTab.png)

请参阅本章的“Particle Common Controls 粒子通用控件”。