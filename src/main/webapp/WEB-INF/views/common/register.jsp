<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    
    <!-- daum주소검색api사용 -->
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/user/register.js"></script>

    <link rel="stylesheet" href="../../css/dinner41.css">

    <title>register</title>

</head>
<body>
<!--전체-->
<div class="container-fluid">

    <div class="row" style="text-align: center;">
        <div style="width: 80%; margin: 20pt auto auto;">
            <!--            로고 이미지-->
            <div style="">
                <img src="${pageContext.request.contextPath }/resources/images/1인의만찬.png" width="18%" class="img-fluid" alt="no title" style="margin: auto;"/>
                <h2>회원가입</h2>
            </div>

            <hr/>

            <div>
                <form class="text-left" action="${pageContext.request.contextPath }/register" method="POST">
                    <div class="form-group">
                        <label for="emailLabel">이메일</label>
                        <div id="emailLabel">
                            <input type="email" name="email" class="form-control left_input" placeholder="name@example.com" id="user_email">
                            <button type="button" class="btn btn-outline-success right_input" id="user_email_button">중복확인</button>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="user_password">비밀번호</label>
                        <input type="password" name="password" class="form-control" id="user_password">
                        <!--                    라벨의 for와 이메일의 id가 일치해야함-->
                    </div>

                    <div class="form-group">
                        <label for="user_password_check">비밀번호 확인</label>
                        <input type="password" name="passwordConfirm" class="form-control" id="user_password_check">
                        <!--                    라벨의 for와 이메일의 id가 일치해야함-->
                    </div>

                    <div class="form-group">
                        <label for="user_name">이름</label>
                        <input type="text" name="name" class="form-control" id="user_name">
                    </div>

                    <div class="form-group">
                        <label for="address">거주지</label>
                        <div id="address">
                            <button type="button" class="btn btn-outline-success right_input" id="searchButton" >주소검색</button>
                            <!--  <input type="text" class="form-control margin_up" placeholder="주소" id="user_address"/>-->
                            <input type="text" name="address" class="form-control margin_up" placeholder="도로명주소" id="user_address"/>
                            <!--<input type="text" class="form-control margin_up" placeholder="상세주소" id="user_sub_address"/>-->
                            <input type="text" name="subAddress" class="form-control margin_up" placeholder="상세주소" id="user_detailAddress"/>
                            <div id="wrap" style="display:none;border:2px solid black;width:500px;height:300px;margin:5px 0;position:absolute"></div>
                            <input type="hidden" name="latitude" id="user_latitude" name="latitude" value=""/>
                            <input type="hidden" name="longitude" id="user_longitude" name="longitude" value=""/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="phoneNumber">전화번호</label>
                        <div id="phoneNumber">
                            <input type="tel" name="phone1" class="form-control phone_one_two" id="phoneNumber1">
                            <p style="width: 5% ;float: left;text-align: center">-</p>
                            <input type="tel" name="phone2" class="form-control phone_one_two" id="phoneNumber2">
                            <p style="width: 5% ;float: left ; text-align: center">-</p>
                            <input type="tel" name="phone3" class="form-control phone_three" id="phoneNumber3">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="user_type">회원유형</label>
                        <select name="type" class="form-control" id="user_type">
                            <option value="GM">일반회원</option>
                            <option value="SM">점주회원</option>
                        </select>
                    </div>

                    <button type="submit" class="btn btn-success btn-block margin_first" id="register_apply_button">가입하기</button>
                </form>
            </div>
        </div>
    </div>
</div>
<hr/>
<div class="last_block"></div>
</body>
</html>