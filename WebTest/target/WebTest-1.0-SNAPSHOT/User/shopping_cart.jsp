<%--
  Created by IntelliJ IDEA.
  User: 沐夏季风
  Date: 2021/7/1
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.example.WebTest.shopping_cart"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Classes.shopping_cart_item" %>
<%@ page import="Classes.Item" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    shopping_cart temp=new shopping_cart();
    ArrayList<shopping_cart_item> items=temp.getShoppingCart((String)session.getAttribute("username"));
    int x=-1;
%>
<html>
<head>

    <jsp:include page="oldImport.jsp" flush="true"></jsp:include>
    <script type="text/javascript">
        var sum=0;
        function shops(o,x){
            var z="";
            z=x;
            var input=document.getElementById(z);

            if(o.checked){
                sum+=parseInt(input.value);
            }else{
                sum-=parseInt(input.value);
            }

            document.getElementById('total').innerHTML='商品总价：'+sum+'元';
        }
        function check(size){
            var allChecked=true;
            for(var i=0;i<size;i++){
                var target='item'+i;
                var o=document.getElementById(target);
                if(!o.checked){
                    allChecked=false;
                    break;
                }
            }

            if(allChecked){
                for(var i=0;i<size;i++){
                    var target='item'+i;
                    var o=document.getElementById(target);
                    if(o.checked){
                        o.click();
                    }
                }
            }else {
                for(var i=0;i<size;i++){
                    var target='item'+i;
                    var o=document.getElementById(target);
                    if(!o.checked){
                        o.click();
                    }
                }
            }
        }

        function delP() {
            var param=""; //它是用于拼接参数.
            var checkChoice = document.getElementsByName("checkChoose");
            for ( var i = 0; i < checkChoice.length; i++) {
                if (checkChoice[i].checked === true) {
                    param+="id="+checkChoice[i].value+"&";
                }
            }

            if(param!==""){
                param=param.substring(0,param.length-1);
                window.location="../Tomcat/OrderControl?"+param;
            }
        };
    </script>
    <title>购物车</title>
</head>
<body>
<jsp:include flush="true" page="checkLogin.jsp"></jsp:include>

<jsp:include page="head.jsp" flush="true"></jsp:include>
<div class="container">
    <div class="row">
        <div class="col-sm-offset-4">
            <table class="altrowstable" id="alternatecolor">
                <tr>
                    <th>
                        <input type="checkbox" onclick="check(<%=items.size()%>)">全选
                    </th>
                    <th>商品名称</th>
                    <th>数量</th>
                    <th>单品价格</th>
                    <th>点击确定减少物品</th>
                </tr>
                <%

                    for(shopping_cart_item item:items){
                        x++;
                %>
                <tr>
                    <td><input type="checkbox" id="item<%=x%>" name="checkChoose" value="<%=item.getBuyerAccount()+","+item.getSellerAccount()+","+
                    item.getName()+","+item.getBuyCount()+","+item.getPrice() %>" onclick="shops(this,<%=x%>)"></td>
                    <input type="hidden" id="<%=x%>" value="<%=item.getPrice()*item.getBuyCount()%>">
                    <td><%=item.getName()%></td>
                    <td><%=item.getBuyCount()%></td>
                    <td><%=item.getPrice()%></td>
                    <td>
                        <form action="../Tomcat/ReduceShoppingItems" method="post">
                            <input type="hidden" name="buyerAccount" value="<%= item.getBuyerAccount()%>"/>
                            <input type="hidden" name="sellerAccount" value="<%= item.getSellerAccount()%>"/>
                            <input type="hidden" name="name" value="<%= item.getName()%>"/>
                            <input type="hidden" name="price" value="<%= item.getPrice()%>"/>
                            <button type="button" onclick="change(-1,<%=item.getBuyCount()%>,<%=x%>)">-</button>
                            <input type="text" readonly="readonly" name="buyCount" id="buyCount<%=x%>" value="<%=item.getBuyCount()%>">
                            <button type="button" onclick="change(1,<%=item.getBuyCount()%>,<%=x%>)">+</button>
                            <input type="submit" value="确定"/>
                        </form>
                    </td>
                </tr>
                <% } %>
                <tr class="alt" >
                    <td class="center" colspan="5">
                        <div id="total">商品总价：0元</div>
                        <div><button type="button" onclick="delP()">结算</button></div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>

<script type="text/javascript">
    function change(t,itemCount,label){
        var temp="buyCount"+label;
        var  x=document.getElementById(temp);
        var  a= x.value;
        if(t===1){
            if(a<itemCount) a++;
        }
        else{
            if(a>0) a--;
        }
        x.value=a;
    }
</script>
</body>
</html>
