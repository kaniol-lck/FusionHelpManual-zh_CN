### MIDI Extractor MIDI提取器

MIDI Extractor修改器提供了使用存储在MIDI文件中值来修改控件值的能力。使用该修改器需要一些MIDI的知识，详细解释并不属于该手册的范畴。

（译注：所以我也不怎么懂具体什么意思，希望能有了解的人来补充一下。）

#### Controls 控件

![MIDIExtractor_Controls1](images/MIDIExtractor_Controls1.png)![MIDIExtractor_Controls2](images/MIDIExtractor_Controls2.png)

##### MIDI File MIDI文件

该浏览器控件用于指定作为该修改器输入的MIDI文件。

##### Time Scale 时间缩放

Time Scale用于指定MIDI文件定义的和Fusion定义的时间之间的关系。值位1.0会以正常速度播放MIDI时间，2.0则为双倍速，等等。

##### Time Offset 时间偏移

Time Offset调整MIDI文件时间和Fusion时间之间的同步。如果存在不想要的延迟或MIDI文件出现在Fusion动画之前或一半进入的时候，可能使用该控件来按需要偏移MIDI数据。

##### Result Offset, Result Scale 结果偏移、结果缩放

这些滑块调整该修改器产生的值范围。默认地，会生成0与1之间的值（PitchBend为-1与1）。这将会不适合工具/参数，那么缩放将用于将范围变得更大（例如\* 0.0 - 2.0）。Offset用于提供一些常量作为基础。

##### Result Curve 结果曲线

Result Curve可以用于调整输出，调整结果的曲线。默认情况下，对于任何输入MIDI文件，结果会线性地落在0.1至1.0（比如，速度chanshe127音符会生成1.0，而63会生成大概0.5）.

结果曲线应用了一个类似伽马的曲线，所以中间值可以更高或更低的结果并仍然维持完整的比例。

##### Mode 模式

该菜单提供了Beats、Note、Controls Change、Poly AfterTouch、Channel AfterTouch或Pitch Bend，用于指示哪个MIDI事件会被读取。Beats模式稍有不同，它会根据MIDI文件的tempo（包括任何tempo映射）产生常规脉冲。

Beats模式不会真正使用任何特定的信息。它的事件时间基于MIDI文件中包含的tempo映射。

##### Combine Events 结合事件

该菜单选择同一事件出现多个事件时发生哪一件。在Notes模式中，这很容易发生。对于其他事件，可能会在Multiple Channels选择时发生。

使用这个来从当前出现的所有事件中选取最近出现的事件、最早出现的事件、最高或最低值的事件、平均、求和或中位事件。

（译注：我就不瞎翻了）

##### Beat (Quarters) Beat Mode Only

This defines how often a beat will occur when in Beat mode. This is in Quarter notes so a value of 1.0 will give a beat every quarter.

##### Note Range Note and Poly Aftertouch Modes Only

This defines what range of notes will cause a value to be generated. For example, use this to pick out the kick drum from a GM drum track by setting the note range between 35-36.

##### Pitch Scale Note Mode Only

Pitch Scale defines how much the result changes with pitch. A value of 1.0 will cause the result to vary from 0.0 to 1.0 over the entire range.

##### Velocity Scale Note Mode Only

This defines how much the result changes with velocity. A value of 1.0 will cause the result to vary from 0.0 to 1.0 over the entire range. This is added to the result from pitch scale for the final result.

##### Control Number Control Change Mode Only

This specifies the MIDI controller number from which to extract events.

##### Envelope Controls Note and Beat Modes Only

These define an Envelope to follow for values before, during and after the note or beat. Pre-Attack Time defines how long before the event it will start ramping up to the pre-attack level. Attack is the Time/Level to ramp to once the event has occurred, followed by the Decay ramp and Sustain, until the event stops. This stage is for Notes only. Beats have an instantaneous duration, so it goes straight to Release. Release is the ramp down time after the event finishes. When trying to do a Beat, set Release to some value, or there likely will not be much on the beats.

These values can be used to follow actual sounds in the MIDI sequence, or just to create interesting effects. All time values used in the MIDI Extractor are in seconds.

#### Channels Tab 通道选项卡

![MIDIExtrator_ChannelsTab](images/MIDIExtrator_ChannelsTab.png)

##### Channels 通道

Channels复选框选择MIDI文件中的16个通道中的哪些用于事件。这是一个很好的从一个编排中挑出特定乐器的方法。

#### More About MIDI 更多关于MIDI的

单个MIDI接口允许16个通道。通常这些会被分配给一个或不同设备中不同的乐器。

通常，MIDI数据为7位，范围为0..127。这里使用0..1的值来表示，使得与Fusion中的处理其他值具有一致性。

有很多MIDI消息和事件，该修改器中特别有用的那些在下方详细描述。

（译注：我就不瞎翻了）

##### MIDI Messages MIDI消息

- **Note On：**This indicates that a note (on a specific channel) is being turned on, has a pitch (0..127, with middle C being 60) and a Velocity (0..127, how fast the key was or whatever was hit).
- **Note Off：**This indicates that a note (on a specific channel) is being turned off, has a pitch (0..127, with middle C being 60) and a Velocity (0..127, how fast the key was or whatever was released).
- **Control Change：**This message indicates that some controller has changed. There are 128 controllers (0..127), each of which has data from 0..127. Controllers are used to set things such as Volume, Pan, amount of Reverb or Chorus, and generic things like foot controllers or breath controllers.

##### MIDI Events MIDI事件

- **Channel Aftertouch：**This event defines that pressure is being applied to the keys (or whatever) during a note. It is general, overall pressure for this channel so it simply uses a pressure value (0..127).
- **Poly Aftertouch：**This event defines that pressure is being applied to the keys (or strings, or whatever) during a note. It is specific to each particular note and, therefore, contains a note number as well as a pressure value (0..127).

#### General 总述

##### Pitch Bend

The Pitch Bend controller generally specifies the degree of pitch bending or variation applied to the note. Because pitch bend values are transmitted as a 14-bit value, this control has a range between -1 and 1, and a correspondingly finer degree of resolution.

对于MIDI如何工作的资源，查阅http://www.harmony-central.com/MIDI/Doc/doc.html。