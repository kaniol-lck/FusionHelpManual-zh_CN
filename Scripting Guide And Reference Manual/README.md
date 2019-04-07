![cover](images/cover.jpg)

# *FUSION 8*

# SCRIPTING GUIDE

# AND REFERENCE MANUAL

# Fusion 8 脚本指南与参考手册

# ![icon](images/icon.jpg)

# *February 2016*

<div STYLE="page-break-after: always;"></div>

## 目录

- [关于本文档](#关于本文档)
  - [目标用户](#目标用户)
  - [需求](#需求)
  - [约定](#约定)

1. [Scripting Guide 脚本指南](Scripting Guide/README.md)
   - [Introduction 引言](Scripting%20Guide/Introduction.md)
     - [Quick Start Tutorial 快速入门教程](Scripting%20Guide/Introduction.md#quick-start-tutorial-快速入门教程)
   - 脚本语言
     - Lua
     - Python
   - 脚本与调试
     - 控制台
   - 脚本类型
     - 交互式脚本
     - 外部脚本
     - 事件&回调
     - 工具内脚本
     - 简单表达式
     - Fuses
   - Fusion的对象模型
     - 概览
     - 通用对象依赖
     - 属性
     - 对象数据
     - 元数据
   - Graphical User Interfaces 图形用户界面
2. 脚本参考
   - 类继承关系
   - 参考
     - BezierSpline
     - BinClip
     - BinItem
     - BinManager
     - BinStill
     - ChildFrame
     - ChildGroup
     - Composition
     - FloatViewFrame
     - FlowView
     - FontList
     - FuFrame
     - Fusion
     - FuView
     - GL3DViewer
     - GLImageViewer
     - GLPreview
     - GLView
     - GLViewer
     - Gradient
     - GraphView
     - HotkeyManager
     - Image
     - ImageCacheManager
     - IOClass
     - KeyFrameView
     - Link
     - List
     - Loader
     - MailMessage
     - MenuManager
     - Object
     - Operator
     - Parameter
     - PlainInput
     - PlainOutput
     - PolylineMask
     - Preview
     - QueueManager
     - Registry
     - RenderJob
     - RenderSlave
     - ScriptServer
     - SourceOperator
     - TimeRegion
     - TransformMatrix
3. 索引

## 关于本文档

本文档分为两个部分：脚本指南和脚本参考。第一部分是脚本指南，解释了Fusion的脚本应用程序编程接口（API），称为FusionScript。它可以通过Lua或Python编程语言访问。FusionScript可用于自动执行重复或复杂任务，自定义应用程序行为，扩展Fusion功能或与第三方应用程序交换数据。

本指南包含了有关如何入门、脚本语言的差异，如何布置API来表示应用程序模型，以及如何在实践中处理它的信息。
第二部分，脚本参考，假设您从第一部分了解脚本概念和脚本的基础知识。脚本参考描述了常见的API，其对象、成员、参数及用法。
要编写自定义工具或扩展Fusion的核心功能，请参阅C ++ SDK或Fuse文档。有关常规自定义和宏的信息，请阅读《Fusion用户指南》中的相应章节。

### 目标用户

本文档适用于具有编程知识的开发人员、技术总监和用户。它绝不是用来编写编程概念的，也不是编程语言的参考。请参阅“脚本语言”一章中建议的相应语言的文档。但是会尽可能地给出实际的例子和完整的教程来展示FusionScript最常见的应用。

### 需求

要遵循本指南，您需要安装Blackmagic Design Fusion 8的副本。
除突出的部分仅用于Fusion 8 Studio中的一些功能，其他每个示例都适用于常规版本的Fusion 8。为了使用Python，需要按照“脚本语言”一章中的详细说明安装基于C的Python版本。
两种脚本语言的源代码都需要存储为纯文本，可以在任何非格式化文本处理器（如Notepad（记事本）或TextEdit）中编写。建议使用专用的代码编辑器来享受语法高亮和语言特定的功能。

### 约定

重要的注释将在这样的文本框中显示：

> **注意**
>
> 在继续阅读指南之前，请先阅读引言部分。

代码在框中引入，有这样的等宽字体：

```lua
print(“Hello World from Fusion!”) -- Writes text to the console
```

用于指内联代码语句普通文本用等宽字体表示，例如，这个句子中的print语句：

> The statement `print` writes text to the console.

本指南中显示的大多数示例只是完整源代码的摘录，可能无法独立运行。这有助于使指南更具可读性。但是，所有标记为Tutorial的段落都包含完整的源代码。
大多数代码示例都显示在Lua中。内联语句显示特定语句的Lua实现；与Lua一样，标识属性和方法也更容易。为了避免混淆Lua元组和Python元组，通用术语集合用于描述元组、列表、字典等。
这里的代码是为教学目的编写的。所以有些可以重构为独立方法的会显式地以非优化的方式编写。在了解了API的基本概念之后，请毫不犹豫地将您自己的才能投入到代码当中。
出于一致性的原因，命名约定大致遵循Lua和Python的API (骆驼拼写法)的命名。
您可以自由地适应PEP8或您自己的约定。