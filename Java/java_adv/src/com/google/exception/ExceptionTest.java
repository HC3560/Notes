package com.google.exception;

import org.junit.Test;

public class ExceptionTest {

    // throw抛出异常
    // try&catch捕获异常
    @Test
    public void throwException() throws Exception {
        try {
            // 自己写异常
            throw new HcException(HcCodeEnum.NOT_RIGHT);
        } catch (Exception e) {
            // catch里内容为空的话，就直接通过，不会报出异常
            e.printStackTrace();
        }
    }

    /* NullPointerException空指针异常
     空指针异常的情况：
     1.调用空对象的实例方法
     2.访问或修改空对象的字段
     3.将null的长度当作一个数组
     4.访问或修改null的插槽，就好像它是一个数组一样
     5.将null视为Throwable值
     */
}
