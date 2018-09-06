<%@ page contentType = "text/html;charset=utf-8"%>
<%@ page import="func.*" %> 
<%@include file="con.jsp"%>
<%@ page import="conexao.*" import="java.io.*,java.sql.*,javax.sql.*" %>


<%
rs=st.executeQuery("select * from bj");
rs.next();
%>
        

<html>
    <head>
  <meta charset="UTF-8">
</head>
    <title><%=rs.getString("nome")+"Empresa"%></title>
<link href="https://fonts.googleapis.com/css?family=Lato:100" rel="stylesheet" >
<link rel="stylesheet" type="text/css" href="./css/stilo.css" >
<script src="./js/jquery.min.js"></script>
<script src="./js/jquery.mask.min.js"></script>
<body>

<div class="container">
            <div class="content">
<div class="title">Empresa</div>
               <pre>
                <form action="" method="get" id="formulario">
                    <label>Nome</label>            <input type="text" id="nome" name="nome"/>
                    <label>Email</label>           <input type="text" id="email" name="email" placeholder="@exemplo.com"/>
                    <label>DescriçãoDaVaga</label> <input type="text" id="descricao" name="descricao"/>
                    <label>Telefone</label>        <input type="text" id="tel" name="tel" placeholder="(00)0000-0000"/>
                <label>Tipo</label>            <select name="tipo" style="width: 120px" id="tipo">
   <%
rs=st.executeQuery("select descricao from tipo order by descricao");
//rs=st.executeQuery("select descricao from tipo");
        while(rs.next()){
            out.println("<option>"+rs.getString("descricao")+"</option>");
        }%>
                </select>
                    <label>Endereco</label>
                    <textarea rows="4" cols="50" id="endereco" name="endereco">
                    </textarea> 
                    <input type="submit" value="Cadastrar" style="height:20px;width:200px" class="btn-primary btn-sm" id="cad_btn"/>
                </form></pre>
            </div>
        </div>

    </body>	
</html>
<script>
 document.querySelector("#formulario").addEventListener("click",function(){
 var nome=document.querySelector("#nome").value;
 var email=document.querySelector("#email").value;
 var descricao=document.querySelector("#descricao").value;
 var tel=document.querySelector("#tel").value;
 var tipo=document.querySelector("#tipo").value;
 var endereco=document.querySelector("#endereco").value;

     window.location.href = "testelogin.jsp?nome="+nome+"&email="+email+"&descricao="+descricao+"&tel="+tel+"&tipo="+tipo+"&endereco="+endereco; 
//window.open("testelogin.jsp?nmm=" +nome); 
 

     
 });
                        
    
    
    
    
    
    
    
    
    
    
$(document).ready(function(){
   $("#tel").mask("(00)0000-0000"); 
   $("#cnpj").mask("000-000-000/0000-0");
    
    
    $("#tipo").change(function(){
        alert($("#tipo").val());
    });
});
</script>
<script>
document.getElementById("formulario").reset()
  
      </script>
