package com.thanhlong.bandienthoailaptop.utils;

import com.thanhlong.bandienthoailaptop.model.GioHang;
import com.thanhlong.bandienthoailaptop.model.User;

import java.util.ArrayList;
import java.util.List;

public class Utils {
    public static final String Base_URL="http://longbruno.click/banhang/";
    public static List<GioHang> manggiohang;
    public static List<GioHang> mangmuahang = new ArrayList<>();
    public static User user_current = new User();

    public static String ID_RECEIVED;
    public static final String SENDID = "idsend";
    public static final String RECEIVEDID = "idreceived";
    public static final String MESS = "message";
    public static final String DATETIME = "datetime";
    public static final String PATH_CHAT = "chat";
}
