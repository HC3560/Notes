package com.google.collections;

import org.junit.Test;

import java.util.*;

public class MapTest {

    // HashMap
    @Test
    public void hashMap() {
        // HashMap是映射关系，即键Key值Value对
        HashMap<Integer, String> hashMap = new HashMap<>();
        // HashMap中添加元素用.put()方法
        hashMap.put(10000, "Tom");
        hashMap.put(10001, "Jerry");
        hashMap.put(10002, "Rose");
        // HashMap输出的结果用{}包裹，与用[]包裹的集合不同
        System.out.println(hashMap);

        // 对于已经存在的键值对，再次.put()会替换原来的
        hashMap.put(10002, "Tom");
        System.out.println(hashMap);

        // .get()方法用来拿取元素，参数为Key，以Key值来获取Value值
        System.out.println(hashMap.get(10000));
        // .get()不存在的值会返回null
        System.out.println(hashMap.get(10005));

        // .remove()方法用来删除元素，参数为Key，以Key值来删除元素对
        hashMap.remove(10002);
        System.out.println(hashMap);

        // .containsKey()方法检查hashMap中是否存在指定的Key对应的映射关系
        System.out.println(hashMap.containsKey(10001));
        System.out.println(hashMap.containsKey(10002));

        // .containsValue()方法检查hashMap中是否存在指定的value对应的映射关系
        System.out.println(hashMap.containsValue("Tom"));
        System.out.println(hashMap.containsValue("Rose"));

        // .replace()方法可以替换键Key对应的值Value
        hashMap.replace(10001, "Rose");
        System.out.println(hashMap);

        // .keySet()方法返回值是HashMap中Key值的集合，让Key以Set集合形式输出
        // 需要用到Set
        Set<Integer> keys = hashMap.keySet();
        System.out.println(keys);

        // .entrySet()方法的返回值也是Set集合，让HashMap以集合形式输出
        // 即转换为以[]包裹的集合，需要用到Set与Map
        // 此处用到泛型的嵌套
        Set<Map.Entry<Integer, String>> entrySet = hashMap.entrySet();
        System.out.println(entrySet);
    }

    // Entry与Map转换Set之后遍历
    @Test
    public void ergodic() {
        // Entry就是用来管理键值对对象的，将对象包裹起来，提供遍历的方式
        // Entry可以使用迭代器，筛选值，但只适合在内存中使用，不适用于JDBC
        // 将Entry与Map转换为Set类型后就可以做任何相干的事情了
        HashMap<Integer, Double> hashMap = new HashMap<>();
        hashMap.put(10000, 92.56);
        hashMap.put(10001, 85.64);
        hashMap.put(10002, 88.62);
        hashMap.put(10003, 98.58);
        System.out.println(hashMap);

        // 创建一个ArrayList用来存放想要的值
        ArrayList<Double> arrayList_1 = new ArrayList<>();
        ArrayList<Integer> arrayList_2 = new ArrayList<>();

        // 将hashMap中的键值对转化为Set集合
        Set<Map.Entry<Integer, Double>> entrySet = hashMap.entrySet();
        System.out.println(entrySet);

        // Iterator迭代器对entrySet集合进行迭代
        Iterator<Map.Entry<Integer, Double>> iterator_1 = entrySet.iterator();
        // 加入第2个迭代器
        Iterator<Map.Entry<Integer, Double>> iterator_2 = entrySet.iterator();

        // 用迭代器实现想要的操作
        // 如将Value值大于90.00的值输出到arrayList中
        while (iterator_1.hasNext()) {
            // iterator.next()之后得到的是一个键值对对象
            // 还需要使用.getValue()来得到单独的数据，方便存入arrayList
            double value = iterator_1.next().getValue();
            if (value >= 90.00) {
                arrayList_1.add(value);
            }
        }
        System.out.println(arrayList_1);

        // 如果想要将Value值大于90.00的值对应的Key值输出到arrayList中，可以如下操作
        while (iterator_2.hasNext()) {
            // 迭代器不能复用，两次使用同一个迭代器可能会导致第二次使用不起作用
            // 迭代器本来就只能调用一次，遍历完毕之后，指针就已经移动至最末
            // 再使用.hasNext()，肯定返回false，自然就没进第2个while
            // 如果我们想要迭代第2次，非常简单，加入第2个迭代器
            // 此处应该避免同时使用两个或两个以上的.next()

            // 第一种方法是先拿到key，再通过key从hashMap中得到value
            int key = iterator_2.next().getKey();
            double value = hashMap.get(key);

//            // 第二种方法是直接把iterator_2.next()对象拿出来，再分别得到它的key和value
//            Map.Entry<Integer, Double> next = iterator_2.next();
//            int key = next.getKey();
//            double value = next.getValue();

            if (value >= 90.00) {
                arrayList_2.add(key);
            }
        }
        System.out.println(arrayList_2);
    }

    // 提及 LinkedHashMap
    // HashMap是无序的，可以自定义泛型
    // 而LinkedHashMap相当于有序的HashMap
    // 可以自己写一个包括增删改查的学生管理系统了
}
