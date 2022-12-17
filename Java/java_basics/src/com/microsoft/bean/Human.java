package com.microsoft.bean;

// 接口
// 里面所有的方法都是抽象的（不能有方法体），不需要加“abstract”
// 抽象类是对一个具体事务的抽象——针对具体事物
// 而接口是对它的行为进行抽象——针对行为
public interface Human {
    public void eat();

    public void run();
}
