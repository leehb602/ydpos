<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html lang="en">

<head>

<c:import url='/WEB-INF/views/write/layout/head.jsp' />


</head>

</html>

<title>글쓰기 페이지</title>





<body>
				<c:import url='/WEB-INF/views/layout/top.jsp' />



	<form id="a" action="/write2" method="post" enctype="multipart/form-data">
	


		<div>

			<main id="write">


				<div id="write_1">
					<span><img src="image/writing.png" id="writiong" /></span>
					<h5 class="sub_eTitle">SUGGESTED INFO</h5>
					<h1 class="page_eTitle">여정을 소개해주세요</h1>
					<h6 class="under_eTitle">The gladdest moment in human life,
						methinks, is a departure into unknown lands. -Sir Richard Burton-</h6>
				</div>
			</main>


			<section>
				<div id="title">
					<div id="profile_Box">
						<!--작은부모1-->
						<span><img src="image/title.png" id="titleimg" /></span>
					</div>
					<dl>
						<div id="tinput">
							<input id="inputtitle" type="text" placeholder="제목을 입력해주세요."
								name="writeTitle">
						</div>
					</dl>
				</div>
				<div id="titleBox">


					<div id="info">
						<!--큰부모-->
						<div>
							<!--작은부모1-->
							<span><img src="image/profile.png" id="profile_img" /></span>
						</div>

						<div id="info_">
							<div id="info_2">
								<!--작은부모2-->

								<div class="info_2_1" >
									<div class="group">
										분류&nbsp
										<div>
											<select name="group" id="group">
												<option>Select</option>
												<option value="개인">개인</option>
												<option value="법인">법인</option>
											</select>
										</div> 
									</div>
								</div>
								<div>
									<div class="environment">
										환경&nbsp
										<div>
											<select name="environment" id="environment"> 
												<option value="전체">전체</option>
												<option value="산">산</option>
												<option value="바다" >바다</option>
												<option value="호수">호수</option>
												<option value="레저">레저</option>
											</select>
										</div>
									</div>
								</div>
								<div>
									<div class="area">
										지역&nbsp  
										<div>
											<select name="area" id="area">
												<option value="전국">전국</option>
												<option value="서울">서울</option>
												<option value="경기도">경기도</option>
												<option value="강원도">강원도</option>
												<option value="충청도">충청도</option>
												<option value="전라도">전라도</option>
												<option value="경상도">경상도</option>
												<option value="제주">제주</option>
											</select>
										</div>
									</div>
								</div>
								<div>
									<div class="theme">
										테마&nbsp
										<div>
											<select name="theme" id="theme">
												<option value="전체">전체</option>
												<option value="맛집">맛집</option>
												<option value="쇼핑">쇼핑</option>
												<option value="감성">감성</option>
												<option value="어린이">어린이</option>
												<option value="당일치기">당일치기</option>
												<option value="1박2일">1박2일</option>
											</select>
										</div>
									</div>
								</div>


							</div>
						</div>
					</div>

					<!-- 실험중 -->
					<!-- 실험중 -->
					<!-- 실험중 -->
					<!-- 실험중 -->
					<!-- 실험중 -->
					<!-- 실험중 -->
					<!-- 실험중 -->
					<!-- 실험중 -->
					<!-- 실험중 -->
					<!-- 실험중 -->

					<div id="Thumbnail">
						<h4>대표이미지 등록</h4>
						<input style="display: block;" type="file" id="writeImg"
							name="writeImg">


	

						<script type="text/javascript">
                            /**
                             * 파일 업로드
                             */
                            function readImage(input) {
                                if (input.files && input.files[0]) {
                                    const reader = new FileReader();

                                    reader.onload = (e) => {
                                        const previewImage = document.getElementById('previewImage');
                                        previewImage.src = e.target.result;
                                    }
                                    reader.readAsDataURL(input.files[0]);
                                }
                            }
                            // 이벤트 리스너
                            document.getElementById('inputImage').addEventListener('change', (e) => {
                                readImage(e.target);
                            })
                        </script>
					</div>
				</div>



				<!-- 실험중 -->
				<!-- 실험중 -->
				<!-- 실험중 -->
				<!-- 실험중 -->
				<!-- 실험중 -->
				<!-- 실험중 -->
				<!-- 실험중 -->
				<!-- 실험중 -->
				<!-- 실험중 -->
				<!-- 실험중 -->





				
				


            <textarea id="summernote" name="editordata"></textarea>
 
				


				<div id="btn_">
					<button id="btn_" type="submit" value="등록">등록</button>&nbsp
					<!-- <input type="submit" value="write"> -->
					<button type="button">취소</button>
				</div>









			</section>

			<c:import url='/WEB-INF/views/layout/bottom.jsp' />
		</div>
	</form>

	<!--여기부터 사용하신 바디 맨 밑에 넣으시면 됩니다 -->
	<!--여기부터 사용하신 바디 맨 밑에 넣으시면 됩니다 -->

	<!-- 여기부터 모달 창 -->
 <c:import url="/WEB-INF/views/layout/login.jsp"/>
 
	




</body>



</html>