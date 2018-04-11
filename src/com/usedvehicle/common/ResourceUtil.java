package com.usedvehicle.common;

import java.util.ResourceBundle;

/**
 * 项目参数工具类
 * 
 */
public class ResourceUtil {

    //private static final ResourceBundle bundle = java.util.ResourceBundle.getBundle("sysConfig");
    /**
     * 获取随机码的长度
     *
     * @return 随机码的长度
     */
    public static String getRandCodeLength() {
        return "4";//bundle.getString("randCodeLength");
    }

    /**
     * 获取随机码的类型
     *
     * @return 随机码的类型
     */
    public static String getRandCodeType() {
        return "5";//bundle.getString("randCodeType");
    }

}