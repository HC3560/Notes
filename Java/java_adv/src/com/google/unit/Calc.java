package com.google.unit;

public class Calc {
//    // main() 在main里测试——以往的方式
//    public static void main(String[] args) {
//        // 2.本地测试
//
//        // 3.调用函数
//        int number = sum(1, 2);
//
//        // 4.看输出，程序员通过肉眼查看控制台的结果，看是否符合预期
//        System.out.println(number);
//
//        // 5.预期结果和测试结果是通过人工计算的
//    }

    // 1.编写功能函数（方法）
    public static int sum(int numberA, int numberB) {
        return numberA + numberB;
    }

    public static int subtraction(int numberA, int numberB) {
        return numberA - numberB;
    }
}
