package com.google.collections;

import org.junit.Test;

import java.util.HashSet;
import java.util.LinkedHashSet;

public class SetTest {
    // HashSet
    @Test
    public void hashSet() {
        /*
        HashSet基于HashMap来实现的，是一个不允许有重复元素的集合
        允许有null值，是无序的，即不会记录插入的顺序

        HashSet不是线程安全的，如果多个线程尝试同时修改HashSet
        则最终结果是不确定的，必须在多线程访问时显式同步对HashSet的并发访问

        HashSet实现了Set接口
        使用Hash函数实现HashSet，元素无序，且不重复
         */
        // HashSet也可以通过泛型来指定数据类型
        HashSet<String> hashSet = new HashSet<>();
        hashSet.add("Tom");
        hashSet.add("Jerry");
        hashSet.add("Rose");
        // HashSet里的元素不重复，即使插入两次，也只会显示一个
//        hashSet.add("Tom");
        hashSet.add(null);

        // 输出结果的元素是无序的
        System.out.println(hashSet);
    }

    // LinkedHashSet
    @Test
    public void linkedHashSet() {
        // 如果要创建有序集合呢？LinkedHashSet便是有序的
        LinkedHashSet<Integer> linkedHashSet = new LinkedHashSet<>();
        linkedHashSet.add(1);
        linkedHashSet.add(2);
        linkedHashSet.add(3);

        System.out.println(linkedHashSet);
    }

}
