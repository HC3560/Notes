package com.microsoft.bean;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

// Java中，Object是老大，是所有类的父类

@Getter
@Setter
@ToString

// 创建一个名为"Animal"的类
// Animal本质来说是没有人用的，它是一个抽象的，抽取了这些猫狗的共性，作为使用
// 抽象 <---> 具体
// 动物 <---> 狗、猫…
// 抽象的目的是为了概括（解释）这些具体事物
// 因此将Animal修改为一个抽象类
public abstract class Animal {

    // 类当中的变量和方法都总称为：属性（共性，特性）

    // 类当中的变量叫：成员变量，它们是类的重要组成部分
    private String name;
    private int age;
    private String variety;
    private String food;

    //    // 小区名，静态变量，不需要依赖创建对象
//    public static String plot = "NanG";
    // 私有，静态的变量，使得后续可以获取，但无法轻易被赋值
    // final修饰变量，可以使变量在以后任何时候都不能再被改变，相当于一个常量
    // 常量的命名需要全部大写，单词间用下划线隔开，不要嫌名字长，力求表达完整清楚！
    // 快速变大小写的快捷键：CTRL+Shift+U
    // 要改变类名、方法名、变量名等，可以选中后按Shift+F6，就可以一次性修改全部名字
    // “COMMUNITY_NAME”这个名字并不标准，正常前面应该再加上这个常量的用途，方便全局使用
    // 此处就加一个“TEXT”为例，虽然并不好，但是可以作为一个例子，表示这个常量是一个文本
    private static String TEXT_COMMUNITY_NAME = "NanG";

    // 构造函数（构造方法）
    // 构造方法的目的为初始化对象
    // 添加有参构造器时，一定要添加无参构造器
    // 无参构造器
    public Animal() {
    }

    // 有参构造器
    // 构造函数的重载（两个参数）
    public Animal(String name, int age) {
        this.name = name;
        this.age = age;
    }

    // 构造函数的重载（四个参数）
    public Animal(String name, String variety, int age, String food) {
        // this:对象名，"name":属性，this.name:对象属性
        this.name = name;
        this.variety = variety;
        this.age = age;
        this.food = food;
    }


    // 下面的方法都为Animal的成员

    // Getter，Setter
    // 特殊的单独拿出来写 --方法的重写
    public void setAge(int age) {
        if (age < 0 || age > 30) {
            System.out.println("你输入的年龄不符合规范，默认清零！");
            this.age = 0;
        } else {
            this.age = age;
        }
    }

    // 私有，静态的变量Getter
    public static String getPlotInstance() {
        return TEXT_COMMUNITY_NAME;
    }


    // 一个动作，这些方法（函数）在类当中叫：行为
    public void eat() {
        System.out.println(this.name + " 吃饭,正在吃：" + this.food);
    }

    public void sleep() {
        System.out.println(this.name + " 睡觉");
    }

    public void sick() {
        System.out.println(this.name + " 生病");
    }

    // 某一个动物的特性
    void crazy() {
        System.out.println("抓狂");
    }

    // 所有的动物打针，静态行为，静态方法
    // 可以直接用类名，不需要创建对象
    public static void injection() {
        System.out.println("所有的动物打针！");
    }

    // 抽象方法，抽象方法中不能有主体，不能有实际意义
    // 动物叫声太多了，无法具体到某一个指定的叫声
    // 抽象方法所在的类，必须是抽象类！反之不一定
    // 方法进行抽象后，此方法必须在所有继承Animal的子类中进行重写，否则就会报错
//    public void barking() {
//        System.out.println("动物叫！");
//    }
    public abstract void barking();

}
