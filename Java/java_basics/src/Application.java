import com.microsoft.bean.*;

// 面向对象的三个特性：封装，继承，多态

public class Application {
    public static void main(String[] args) {
        // Animal本质来说是没有人用的，它是一个抽象的，抽取了这些猫狗的共性，作为使用
        // 将Animal类设置为抽象类之后，Animal将不能被new，其余不受影响
//        Animal animal = new Animal();
        // 张大爷的狗
        // 继承后，括号里给参数的构造方法将不能使用，除非在子类里再次构造方法（super啃老）
        Dogs zhangDog = new Dogs("Tom", "拉布拉多", 2, "肉");
//        zhangDog.setName("Tom");
//        zhangDog.setAge(2);
//        zhangDog.setVariety("拉布拉多");
//        zhangDog.setFood("肉");
        // 王阿姨的猫
        Cats wangCat = new Cats();
        wangCat.setName("Jerry");
        wangCat.setAge(3);
        wangCat.setFood("小鱼干");

        Hamsters hamsters = new Hamsters();

//        // 多层继承
//        Labrador labrador = new Labrador();
//        labrador.setName("Tom");

//        zhangDog.eat();
//        zhangDog.sleep();

//        System.out.println("张大爷的狗的年龄是 " + zhangDog.getAge());
//        System.out.println(zhangDog.getName());
//        System.out.println(zhangDog.getVariety());

        System.out.println("zhangDog = " + zhangDog);
//        System.out.println("wangCat = " + wangCat);
//        System.out.println(zhangDog);

        System.out.println("zhangDog的年龄为" + zhangDog.getAge());
//        System.out.println("wangCat的年龄为" + wangCat.getAge());

        System.out.println("Dogs.plot = " + Dogs.getPlotInstance());
//        System.out.println("Cats.plot = " + Cats.getPlotInstance());

//        zhangDog.eat();
//        wangCat.eat();
        zhangDog.barking();
        wangCat.barking();
        hamsters.barking();

        Dogs.injection();
//        Cats.injection();

        // 此时只能有一个Earth，“new Earth”在此处不能用
//        Earth earth1 = new Earth();
        Earth earthInstance = Earth.getEarthInstance();
        earthInstance.hello();

        // final 反例
        Labrador labrador = new Labrador();
        System.out.println(labrador.isGuideBlindness());

//        // 接口的实现
//        Chinese chinese = new Chinese();
//        chinese.eat();
//        chinese.run();
        Westerner westerner = new Westerner();
        westerner.eat();
        westerner.run();

        // 多态：至少要有两个类，且具备继承关系
        // 分为向上转型和向下转型
        // 多个行为，功能变多
        // 替父从军 向上转型
        HuaHu huaHu = new HuaMuLan();

        System.out.println(huaHu.name);
        System.out.println(huaHu.age);
        HuaHu.sayMe();
        huaHu.fight();

        // 有一天打完仗了，遇到心爱的人，就要做回自己
        // 向下转型
        HuaMuLan huaMuLan = (HuaMuLan)huaHu;
        System.out.println(huaMuLan.name);
        System.out.println(huaMuLan.age);
        HuaMuLan.sayMe();
        huaMuLan.dressing();

        // 匿名内部类（一般在接口上使用较多）
//        Human chinese = new Human() {
//            @Override
//            public void eat() {
//                System.out.println("中国人吃中国菜");
//            }
//
//            @Override
//            public void run() {
//
//            }
//        };
//        chinese.eat();
        // 匿名内部类，顾名思义，甚至可以不写名字进行使用：
        new Human() {
            @Override
            public void eat() {
                System.out.println("中国人吃中国菜");
            }

            @Override
            public void run() {

            }
        }.eat();
    }
}
