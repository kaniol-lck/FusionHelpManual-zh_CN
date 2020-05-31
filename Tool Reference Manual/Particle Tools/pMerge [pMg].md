### pMerge [pMg] 粒子合并

该工具没有任何控制。它用于合并来自两个节点流的粒子。粒子合并工具下游的任何工具都会将这两个节点流视为一个。

合并的粒子将在创建时保留分配给它们的所有集合，从而使pMerge下游的工具可以在必要时隔离特定粒子。

#### Controls 控件

![pMg_Controls](images/pMg_Controls.png)