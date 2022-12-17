package com.microsoft.bean;

// 多层继承
// 最下层了，后面没人再继承它了
// final 最终 断子绝孙了！
// 1.遗产没人继承，也不可能被继承——final的类，不能被继承
public final class Labrador extends Dogs {
//    @Override
//    public boolean isGuideBlindness() {
//        return true;
//    }
}

/*
Java中不支持多继承（但C++支持）
不能写为：class A extends B, C
但是你可以写为多层继承的形式来实现多继承
比如，要实现C同时继承A和B:
class A extend B;
class C extend A;
 */