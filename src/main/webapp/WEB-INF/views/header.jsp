
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<div class="top-bar">
	<div class="content">
		<img alt="로고" src="/img/r-logo.jpg" class="top-left logo"
			onclick="gohome()">
		<h2 class="top-left top-home">Web Board</h2>
		<nav class="top-right">
			<ul>
				<li class="suc" id="m_name">테스트님</li>
				<!--<li class="suc">
						<a href="/member/logout">Logout</a>
					</li> -->
				<li class="suc">
					<form action="/member/logout" method="post">
						<button>로그아웃</button>
					</form>
				</li>
				<li class="bef"><a href="/member/loginfrm">Login</a></li>
				<li class="bef"><a href="/member/joinfrm">Join</a></li>
			</ul>
		</nav>
	</div>
</div>

<script>
	function gohome() {
		let id = '${mb.m_id}';

		if (id == '') { //로그인 전
			location.href = "/";
		} else { //로그인 후
			location.href = "/board/list?pageNum=1";
		}
	}
</script>