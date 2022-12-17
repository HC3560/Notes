package com.microsoft.bean;

// 继承
// Dogs 子类
// Animal 父类
public class Dogs extends Animal {
    // alt + insert
    // 子类中再次构造函数后，括号里给参数的方法将可以使用（super啃老）
    public Dogs() {
    }

    public Dogs(String name, int age) {
        super(name, age);
    }

    public Dogs(String name, String variety, int age, String food) {
        super(name, variety, age, food);
    }

    // 这是他自己拥有的特性，是他自己的，不是来自他的爸爸了，他从他爸爸那革新了！
    // 方法的重写（区分重载），重写是面向对象的继承中特有的
    // 子类自己认为，应该打破他父亲的传统，进行革新， 革新的内容就是方法体
    @Override
    public void barking() {
        // 方法进行抽象后，子类中的方法必须重写，不能再使用super进行啃老
//        super.barking();
        System.out.println("汪汪汪~~~");
    }

    // final 反例 修饰
    // 用final修饰的方法，不能被子类重写，子类不能为所欲为重写父类，但可以使用被final修饰的方法
    public final boolean isGuideBlindness() {
        return false;
    }
}
