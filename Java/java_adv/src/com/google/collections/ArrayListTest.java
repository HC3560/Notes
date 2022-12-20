package com.google.collections;

import org.junit.Test;

import java.util.ArrayList;
import java.util.Collections;

/*
原生数组容易造成超出边界，如果非要使用传统的数组，增删改查，就要用到数据结构，非常复杂
Collections：
Java集合框架是一个包含一系列实作可重复使用集合的数据结构的类别和界面集合
Java集合大致可以分为两大体系，一个是Collection，另一个是Map
 */
// Iterable集合层次结构中的根接口，可以理解成帮派老大
// 当我们要帮派帮忙时，一般请它下面的小弟来办事，所以用的时候找类来实现
// 所有类和接口都自身相关的规定，也必须遵守总集合的规定
public class ArrayListTest {

    // ArrayList类是一个可以动态修改的数组
    // 与普通数组的区别就是它是没有固定大小的限制，我们可以添加或删除元素
    // ArrayList继承了AbstractList，并实现了List接口可以自动扩容
    @Test
    public void base() {
        // 泛型限定是指将类型做限定，可设置成只能存放String类型
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add("123");
        arrayList.add("abc");
        // 指定类型后，不能添加除字符串之外的其他内容
//        arrayList.add(123);
        System.out.println(arrayList);
    }

    // ArrayList实现简单的CRUD（增删改查）
    @Test
    public void studentArrayList() {
//        // 正常来说Student并不是以数组的形式输出的，而是toString
//        // 如果要再添加一个对象扩容的话，又要getter&setter一遍
//        Student student = new Student();
//        student.setName("Tom");
//        student.setAge(13);
//        System.out.println(student.toString());

        // 如果换成集合形式输出，效果会大不同
        // 此时Student类里只需要写构造方法与toString即可，不需要写Getter&Setter
        // 此时泛型里面的方法指定我们自己创建的Student类
        ArrayList<Student> arrayList = new ArrayList<>();

        arrayList.add(new Student("Tom", 13));
        arrayList.add(new Student("Jerry", 14));

        // 这里ArrayList里存放元素的方式为Student类里构造的toString
        System.out.println(arrayList);
    }

    // .add()方法可以添加元素和替换元素
    @Test
    public void add() {
        // 指定ArrayList类型为整形时，用的为Integer而不是int
        ArrayList<Integer> arrayList = new ArrayList<>();

        arrayList.add(1);
        arrayList.add(2);
        arrayList.add(3);
        // .add(0, 4)表示在第0个下标处插入元素4
        arrayList.add(0, 4);

        System.out.println(arrayList);
    }

    // .addAll()方法可以合并两个ArrayList的元素
    @Test
    public void addAll() {
        ArrayList<Integer> arrayList_1 = new ArrayList<>();
        ArrayList<Integer> arrayList_2 = new ArrayList<>();

        arrayList_1.add(1);
        arrayList_1.add(2);
        arrayList_1.add(3);

        arrayList_2.add(4);
        arrayList_2.add(5);
        arrayList_2.add(6);

        // 将arrayList_2中的元素全部合并到arrayList_1，不会改变arrayList_2
        arrayList_1.addAll(arrayList_2);

        System.out.println(arrayList_1);
        System.out.println(arrayList_2);
        // 查看源代码中，集合是先转换为数组，再拷贝到一份新数组返回
        // .toArray()方法表示返回集合的数组形式
    }

    // .clear()方法表示清除数据
    @Test
    public void clear() {
        ArrayList<Integer> arrayList = new ArrayList<>();

        arrayList.add(1);
        arrayList.add(2);
        arrayList.add(3);

        System.out.println(arrayList);
        // 清除数据
        arrayList.clear();
        System.out.println(arrayList);
    }

    // .contains()方法用于判断字符串中是否包含指定的字符或字符串
    @Test
    public void contains() {
        ArrayList<Integer> arrayList = new ArrayList<>();

        arrayList.add(1);
        arrayList.add(2);
        arrayList.add(3);

        System.out.println(arrayList);
        // 判断集合中是否有元素“1”
        boolean contains = arrayList.contains(1);
        System.out.println(contains);
    }

    // .get()方法获得集合里的元素
    @Test
    public void get() {
        ArrayList<Integer> arrayList = new ArrayList<>();

        arrayList.add(1);
        arrayList.add(2);
        arrayList.add(3);

        // for循环遍历具有操作性，集合的长度要用.size()，数组的长度用.length()
        // .get()的源代码中，是先检查指是否存在，再返回元素值
        for (int i = 0; i < arrayList.size(); i++) {
            System.out.println(arrayList.get(i));
        }

        // 如何对集合中每个元素操作呢？增强for循环foreach,可以实现对每个元素值都加1
        for (Integer value :
                arrayList) {
            System.out.println(value + 1);
        }
        System.out.println(arrayList);
    }

    // ArrayList索引（下标）是从0开始的
    // .indexOf()方法用于查找元素首个下标
    // .lastIndexOf()方法用于查找元素最后一个下标
    @Test
    public void indexOf() {
        ArrayList<String> arrayList = new ArrayList<>();

        arrayList.add("Tom");
        arrayList.add("Jerry");
        arrayList.add("Tom");
        arrayList.add("Rose");

        // 查找元素的首个下标
        System.out.println(arrayList.indexOf("Tom"));
        // 查找元素的最后一个下标
        System.out.println(arrayList.lastIndexOf("Tom"));
    }

    // .isEmpty()方法用于检查集合是否为空
    @Test
    public void isEmpty() {
        ArrayList<String> arrayList = new ArrayList<>();

        arrayList.add("Tom");
        arrayList.add("Jerry");
        arrayList.add("Tom");
        arrayList.add("Rose");

        // 检查集合是否为空
        System.out.println(arrayList.isEmpty());
    }

    // .remove()方法用于删除元素，默认根据下标删除，可以根据object和index删除
    @Test
    public void remove() {
        ArrayList<String> arrayList = new ArrayList<>();

        arrayList.add("Tom");
        arrayList.add("Jerry");
        arrayList.add("Tom");
        arrayList.add("Rose");

        // 当参数为对象时，默认删除第一个符合的元素，删除后将结束，不再继续寻找
        arrayList.remove("Tom");
        System.out.println(arrayList);

        // 当参数为下标时，注意下标不能越界
        arrayList.remove(2);
        System.out.println(arrayList);
    }

    // .removeAll()方法用于移除所有元素
    @Test
    public void removeAll() {
        ArrayList<String> arrayList = new ArrayList<>();

        arrayList.add("Tom");
        arrayList.add("Jerry");
        arrayList.add("Tom");
        arrayList.add("Rose");

        System.out.println(arrayList);
        // 删除所有元素，返回一个Boolean类型的值，可以直接用，也可以将其输出
//        arrayList.removeAll(arrayList);
        System.out.println(arrayList.removeAll(arrayList));
        System.out.println(arrayList);
    }

    // .replaceAll()方法用于替换所有元素
    @Test
    public void replaceAll() {
        ArrayList<String> arrayList = new ArrayList<>();

        arrayList.add("Tom");
        arrayList.add("Jerry");
        arrayList.add("Tom");
        arrayList.add("Rose");

        System.out.println(arrayList);
        // .toLowerCase()用于转换成小写
        arrayList.replaceAll(e -> e.toLowerCase());
        System.out.println(arrayList);
        // .toUpperCase()用于转换成大写
        arrayList.replaceAll(e -> e.toUpperCase());
        System.out.println(arrayList);
    }

    // .retainAll()方法用于取交集
    @Test
    public void retainAll() {
        ArrayList<String> arrayList_1 = new ArrayList<>();
        arrayList_1.add("Tom");
        arrayList_1.add("Jerry");
        arrayList_1.add("Tom");
        arrayList_1.add("Rose");

        ArrayList<String> arrayList_2 = new ArrayList<>();
        arrayList_2.add("Rose");
        arrayList_2.add("Frank");

        System.out.println(arrayList_2);
        // 取arrayList_2与arrayList_1的交集，会改变arrayList_2中的元素
        arrayList_2.retainAll(arrayList_1);
        System.out.println(arrayList_2);

    }

    // .set()方法用于给指定的下标元素设置值
    @Test
    public void set() {
        ArrayList<String> arrayList = new ArrayList<>();

        arrayList.add("Tom");
        arrayList.add("Jerry");
        arrayList.add("Tom");
        arrayList.add("Rose");

        System.out.println(arrayList);
        // 给下标为0的元素设置一个值
        arrayList.set(0, "HC");
        System.out.println(arrayList);
    }

    // .sort()方法用于排序，默认从小到大
    @Test
    public void sort() {
        ArrayList<Integer> arrayList = new ArrayList<>();

        arrayList.add(132);
        arrayList.add(1);
        arrayList.add(21);
        arrayList.add(165);
        arrayList.add(1415);

        System.out.println(arrayList);
        // 排序，默认从小到大，需要用到Collections
        Collections.sort(arrayList);
        System.out.println(arrayList);
    }

    // .reverse()方法用于置反集合
    @Test
    public void reverse() {
        ArrayList<Integer> arrayList = new ArrayList<>();

        arrayList.add(132);
        arrayList.add(1);
        arrayList.add(21);
        arrayList.add(165);
        arrayList.add(1415);

        System.out.println(arrayList);
        // 置反集合，需要用到Collections
        Collections.reverse(arrayList);
        System.out.println(arrayList);
    }

    // .subList()方法用于切割容器
    @Test
    public void subList() {
        ArrayList<Integer> arrayList = new ArrayList<>();

        arrayList.add(132);
        arrayList.add(1);
        arrayList.add(21);
        arrayList.add(165);
        arrayList.add(1415);

        // 此方法传入的两个下标为左闭右开，即[fromIndex, toIndex)
        System.out.println(arrayList.subList(1, 3));
    }

}
