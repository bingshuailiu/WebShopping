<%--
  Created by IntelliJ IDEA.
  User: 沐夏季风
  Date: 2021/7/2
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
  table.altrowstable {
    font-family: verdana,arial,sans-serif;
    font-size:11px;
    color:#333333;
    border-width: 1px;
    border-color: #a9c6c9;
    border-collapse: collapse;
  }
  table.altrowstable th {
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #a9c6c9;
  }
  table.altrowstable td {
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #a9c6c9;
  }
  .oddrowcolor{
    background-color:#d4e3e5;
  }
  .evenrowcolor{
    background-color:#c3dde0;
  }
</style>
<script type="text/javascript">
  function altRows(id){
    if(document.getElementsByTagName){

      var table = document.getElementById(id);
      var rows = table.getElementsByTagName("tr");

      for(i = 0; i < rows.length; i++){
        if(i % 2 == 0){
          rows[i].className = "evenrowcolor";
        }else{
          rows[i].className = "oddrowcolor";
        }
      }
    }
  }

  window.onload=function(){
    altRows('alternatecolor');
  }
</script>
<link rel="stylesheet" type="text/css" href="../css/User.css">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
