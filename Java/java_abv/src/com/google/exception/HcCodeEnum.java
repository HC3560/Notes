package com.google.exception;

public enum HcCodeEnum implements ErrorCode {
    NOT_FOUND_PAGE("404","找不到网站资源"),
    NOT_FOUND_FILE("888","找不到文件"),
    NOT_RIGHT("233", "有异常！")
    ;

    HcCodeEnum(String code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    private final String code;
    private final String msg;

    @Override
    public String getcode() {
        return code;
    }

    @Override
    public String getMsg() {
        return msg;
    }
}
