# 双创周《开源硬件实战》课程笔记（1）

## 1.注册GitHub账号，并完成基础操作的学习。

**GitHub是一个面向开源及私有软件项目的托管平台，因为只支持Git作为唯一的版本库格式进行托管，故名GitHub。**

## 2.“git”软件的下载与学习

### 	**（1）下载git，官网：http://www.git-scm.com/**

​					官网下载速度过慢，镜像网站：[git-for-windows Mirror (taobao.org)](https://npm.taobao.org/mirrors/git-for-windows/)

### 	**（2）使用git的代码上传今天上课的笔记：**

```c
	git clone "GitHub地址";   //将此地址的GitHub库导入到本地
	git add *;   //'*'代表所有东西
	git commit - m "修改人，修改时间，修改内容"；
    //git pull;	//这句代码是在你下载库但还没有上传的时候，别人已经先一步上传导致错误时候使用，作用是再次更新本地的库文件。
    git push;   //将修改过后的本地库文件上传到GitHub
```

## 3.GNU-GNU is Not Unix

​		GNU是一个自由的操作系统，其内容软件完全以GPL方式发布。这个操作系统是GNU计划的主要目标，名称来自GNU's Not Unix!的递归缩写，因为GNU的设计类似Unix，但它不包含具著作权的Unix代码。GNU的创始人，理查德·马修·斯托曼，将GNU视为“达成社会目的技术方法”。
​		作为操作系统，GNU的发展仍未完成，其中最大的问题是具有完备功能的内核尚未被开发成功。GNU的内核，称为Hurd，是自由软件基金会发展的重点，但是其发展尚未成熟。在实际使用上，多半使用Linux内核、FreeBSD等替代方案，作为系统核心，其中主要的操作系统是Linux的发行版。Linux操作系统包涵了Linux内核与其他自由软件项目中的GNU组件和软件，可以被称为GNU/Linux（见GNU/Linux命名争议）。

## 4.电脑的特性

**只有以下特点都具备才能被称为电脑。**

![电脑的特性](pngs/电脑的特性.png)

## 5.模拟开发平台

**www.tinkercad.com**

**可以在上面用虚拟的开发板和器件，并通过写代码来实现自己的想法。**



## 6.Arduino

### （1）简介

​		Arduino是一款便捷灵活、方便上手的开源电子原型平台。包含硬件（各种型号的Arduino板）和软件（ArduinoIDE）。由一个欧洲开发团队于2005年冬季开发。其成员包括Massimo Banzi、David Cuartielles、Tom Igoe、Gianluca Martino、David Mellis和Nicholas Zambetti等。
​		它构建于开放原始码simple I/O介面版，并且具有使用类似Java、C语言的Processing/Wiring开发环境。主要包含两个的部分：硬件部分是可以用来做电路连接的Arduino电路板；另外一个则是Arduino IDE，你的计算机中的程序开发环境。你只要在IDE中编写程序代码，将程序上传到Arduino电路板后，程序便会告诉Arduino电路板要做些什么了。
​		Arduino能通过各种各样的传感器来感知环境，通过控制灯光、马达和其他的装置来反馈、影响环境。板子上的微控制器可以通过Arduino的编程语言来编写程序，编译成二进制文件，烧录进微控制器。对Arduino的编程是通过 Arduino编程语言 (基于 Wiring)和Arduino开发环境(基于 Processing)来实现的。基于Arduino的项目，可以只包含Arduino，也可以包含Arduino和其他一些在PC上运行的软件，它们之间进行通信 (比如 Flash, Processing, MaxMSP)来实现。

### （2）可以去Arduino官网：www.arduino.cc	阅读函数文档，了解每个函数的用途和使用方法。

### （3）最简单程序（Blink）

**连接线路图：**

![Blink连接线路图](pngs/Blink连接线路图.png)

**代码实现：**

```c
void setup() {
  pinMode(7, OUTPUT);
}
void loop() {
  digitalWrite(7, HIGH);
  delay(1000);
  digitalWrite(7, LOW);
  delay(1000);
}
```

**实现结果：**

红色LED灯一亮一暗，且间隔一秒。

### （4）可以通过类似代码，实现更复杂的功能，如控制舵机，读取传感器模块的数据等。

### （5）Arduino板子上有两种接口，一种是数字接口，一种是模拟接口，有的数字接口旁边带有“~”符号，代表我们可以用这个数字接口来模拟模拟信号接口的输出。
