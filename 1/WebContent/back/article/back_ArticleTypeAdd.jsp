<!-- 后台文章类别的增加 -->
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/1/CSS/head_CSS/style.css" type="text/css" rel="stylesheet">
<title>Insert title here</title>
<script type="text/javascript">
function addArticleType(){
	if(document.form.typeName.value == ""){
		window.alert("请输入文章类型");
		return false;
	}
	return true;
}
</script>
</head>
<body>
<jsp:include page="../back_Top.jsp" flush="true" />
<table width="800" border="0" align="center" cellpadding="0"
		cellspacing="0" background="/1/images/back_picture/back1.gif">
		<tr>
			<td width="227" valign="top"><jsp:include page="../back_Left.jsp"
					flush="true" /></td>
				<!-- 第二列 -->	
					<td width="573" valign="top"   background="/1/images/back_picture/back1.gif">
						<table width="227" border="0" cellpadding="0" cellspacing="0">
									<tr>
									        <td >
									        	<img src="/1/images/back_picture/back_noword_03.jpg" width="573" height="25">
									        </td>
									</tr>
						</table>
						<table width="573" border="0" cellpadding="0" cellspacing="0" background="/1/images/back_picture/back_noword_05.jpg">
							<tr>
							<td valign="top" align="center">
          <%out.println("<p align=left>&nbsp;&nbsp;&nbsp;&nbsp;<img src=/1/images/icon.gif width=10 height=10>&nbsp;&nbsp;文章类型添加</p>");%>
          <form name="form" method="post" action="ArticleServlet?method=0" onSubmit="return addArticleType()">
          <table width="340" border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#ACD6FF">
          <tr>
                <td width="77" height="30"><div align="center">文章类型：</div></td>
                <td width="250" bgcolor="#FFFFFF"><div align="center">
                  <input name="typeName" type="text" class="inputinput" size="30">
                </div></td>
              </tr>
              <tr>
                <td height="30"><div align="center">文章描述：</div></td>
                <td bgcolor="#FFFFFF"><div align="center">
                  <input name="description" type="text" class="inputinput" size="30">
                </div></td>
              </tr>
          </table>
          <br>
          <input type="image" class="inputinputinput" src="/1/images/save.gif">
&nbsp;&nbsp;
 <a href="#" onClick="javascript:form.reset()"><img src="/1/images/reset.gif"></a>
            &nbsp;&nbsp;
			<a href="back_ArticleTypeSelect.jsp" ><img src="/1/images/back.gif"></a>
          </form>
          </td>				
							</tr>
						</table>
						<table width="227" border="0" cellpadding="0" cellspacing="0">
					        <tr>
					          <td><img src="/1/images/back_picture/back_noword_18.jpg" width="573" height="21"></td>
					        </tr>
						</table>					
					</td>			
		</tr>
</table>
<jsp:include page="../back_Down.jsp" flush="true" />
</body>
</html>