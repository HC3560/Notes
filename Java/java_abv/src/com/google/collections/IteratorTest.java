package com.google.collections;

import org.junit.Test;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

// Iterator迭代器
public class IteratorTest {
    // 迭代是重复反馈过程的活动，其目的通常是为了接近并到达所需目标或结果
    // 每一次对过程的重复被称为一次“迭代”，而每一次迭代的结果会被用来作为下一次迭代的初始值
    // 迭代器Iterator，不管用于ArrayList还是LinkedList都可以迭代输出
    @Test
    public void arrayList() {
        ArrayList<Integer> arrayList = new ArrayList<>();

        arrayList.add(21);
        arrayList.add(458);
        arrayList.add(36);
        arrayList.add(123);
        arrayList.add(45);

        Iterator iterator = arrayList.iterator();

        // .hasNext()返回一个Boolean类型的值，当下一个数据不为空，返回true
        while (iterator.hasNext()) {
            // .next()返回集合中的下一个元素
            Object value = iterator.next();
            System.out.println(value);
        }
    }

    @Test
    public void linkedList() {
        LinkedList<Integer> linkedList = new LinkedList<>();

        linkedList.add(21);
        linkedList.add(458);
        linkedList.add(36);
        linkedList.add(123);
        linkedList.add(45);

        // 迭代器类似用链表的形式去迭代，也可以指定泛型
        Iterator<Integer> iterator = linkedList.iterator();
        while (iterator.hasNext()) {
            Integer value = iterator.next();
            System.out.println(value);
        }
    }

    // for i、增强for（foreach）、迭代器的区别、注意事项和分别用途
    @Test
    public void contrast() {
        LinkedList<Integer> linkedList = new LinkedList<>();

        linkedList.add(21);
        linkedList.add(458);
        linkedList.add(36);
        linkedList.add(123);
        linkedList.add(45);

        // for i适合数据的读取与修改
        for (int i = 0; i < linkedList.size(); i++) {
//            // 将所有值都设置为7
//            linkedList.set(i,7);
            System.out.println(linkedList.get(i));
        }
        
        // 增强for循环适合数据的读取，无法修改数据
        // 绝对不能与.remove()方法一起使用，危险会导致所有数据删除

        // 增强for循环里想要修改数据，可以自己写一个比如Student类，并在泛型中指定
        // 此时如果在Student类里写一个修改数据的方法，则此时可以用其来修改数据
        for (Integer value :
                linkedList) {
            System.out.println(value);
        }

        // Iterator适合数据的读取与修改
        // 操作数据时要使用iterator对象来操作，使用迭代器里的方法
        // 迭代器一定不要使用嵌套，因为.next()方法多次使用很可能出现问题
        // 想要使用嵌套，可以使用增强for循环的嵌套，见下一个测试的例子
        Iterator<Integer> iterator = linkedList.iterator();
        while (iterator.hasNext()) {
            Integer value = iterator.next();
            // 删掉值为36的元素，会在下一次输出时候展现出来
            if (value.equals(36)){
                iterator.remove();
            }
            System.out.println(value);
        }
        System.out.println(linkedList);
    }

    // for each已经是一个小型的迭代器了
    // 如果一定要修改集合的话可以使用迭代器
    // 但不建议在for each中使用对象引用去修改元素
    @Test
    public void foreach() {
        LinkedList<Integer> linkedList_1 = new LinkedList<>();
        linkedList_1.add(21);
        linkedList_1.add(458);
        linkedList_1.add(36);

        LinkedList<Integer> linkedList_2 = new LinkedList<>();
        linkedList_2.add(300);

        // 增强for循环的嵌套
        for (Integer value_1 :
                linkedList_1) {
            for (Integer value_2 :
                    linkedList_2) {
                if (value_1 < value_2) {
                    System.out.println(value_1);
                }
            }
        }
    }

    /*谈谈三者性能：
     比较时间复杂度，foreach和迭代器谁更快呢？

     如果是ArrayList，用三种方式遍历的速度是for i>Iterator>foreach
     速度级别基本一致，一般都会用for或者for each，因为Iterator写法相对复杂一些

     如果是LinkedList，则三种方式遍历的差距很大了,数据量大时越明显
     Iterator>foreach>>>for i，推荐使用foreach或者Iterator
     */

}
