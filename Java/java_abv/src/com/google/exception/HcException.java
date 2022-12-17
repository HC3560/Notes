package com.google.exception;

// 编译器中，运行时异常不会要求你捕获，但是非运行时异常会强制要求你捕获
// 所以我们在编写自定义异常的时候不会定成运行时异常
public class HcException extends Exception {
    public HcException(ErrorCode errorCode){
        super(errorCode.getMsg());
    }
}
