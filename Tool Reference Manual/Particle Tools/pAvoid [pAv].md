### pAvoid [pAv] 粒子回避

pAvoid工具用来创建一个区域或范围，受影响的粒子试图避免进入和/或穿过。

它有两个主要的控件，一个决定粒子远离该区域的距离，另一个决定粒子远离该区域的强度。

pAvoid工具是创建粒子远离指定区域的“愿望”。如果粒子速度强于pAvoid区域的距离与强度之和，粒子的“愿望”就是避免穿过该区域。

#### Controls 控件

![pAv_Controls](images/pAv_Controls.png)

##### Random Seed/Randomize 随机种子/随机化

随机种子用于设置应用于复制对象的抖动量的种子。两个具有相同设置但不同随机种子的复制工具将产生两个完全不同的结果。单击Randomize按钮来分配随机种子值。

##### Distance 距离

决定粒子远离该区域的距离。

##### Strength 强度

决定粒子远离该区域的强度。负值反而使粒子接近该区域。

#### Conditions Tab

![pAv_ConditionsTab](images/pAv_ConditionsTab.png)

#### Region Tab 

![pAv_RegionTab](images/pAv_RegionTab.jpg)

请参阅本章的“Particle Common Controls 粒子通用控件”。