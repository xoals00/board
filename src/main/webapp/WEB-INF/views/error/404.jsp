<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>페이지 없음</title>
    <link rel="stylesheet" href="/css/style.css">
    <script src="/js/jquery-3.7.0.min.js"></script>
    <script>
    $(()=>{
    	if(${mb!=null}){
    		let loginName='${mb.m_name}'; //로그아웃시 mb속성 삭제할것.
    		$('#m_name').html(loginName+' 님');
    		$('.suc').css('display','block');  //.show()
    		$('.bef').css('display','none');   //.hide() 
    	}else{  //로그인 없이 게시글 리스트 요청시
    		$('.suc').css('display','none');
    		$('.bef').css('display','block');
    	}	
    });
    </script>
</head>
<body>
<header>
    <jsp:include page="../header.jsp"></jsp:include>
</header>
<section>
    <div class="content">
        <center>
        <h1>404에러!!! 요청하신 페이지가 없습니다.</h1>
        <p>관리자에게 문의하세요.</p>
        </center>
    </div>
</section>
<footer>
    <jsp:include page="../footer.jsp"></jsp:include>
</footer>
</body>
</html>
