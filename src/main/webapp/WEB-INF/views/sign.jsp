<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

if('${check}' == "false") {
	alert("중복된 내용이 있습니다.");
} else {
	alert("작성 중 문제가 발생하였습니다");	
}
history.back();	
</script>
</head>
<body>

</body>
</html>