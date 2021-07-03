package com.example.WebTest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

@WebServlet("/OrderControl")
public class OrderControl extends HttpServlet {
    public String tranString(String s){
        byte[] bs=s.getBytes(StandardCharsets.ISO_8859_1);
        s=new String(bs, StandardCharsets.UTF_8);
        return s;
    }


    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
