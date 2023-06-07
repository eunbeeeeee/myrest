<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, myrest.SQLConnection" %>    
<jsp:useBean id="mem" class="myrest.MemberDTO" />   
<jsp:setProperty name="mem" property="*" />
<%!
   Connection conn = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   String sql = null;
%>
<!DOCTYPE html>
<html lang="ko-KR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>맛집검색</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Tilt+Prism&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/jquery.mobile-1.3.2.min.css">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.2.0/fonts/remixicon.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    
   <script src="js/jquery-1.12.4.min.js"></script>
   <script src="js/jquery.mobile-1.3.2.min.js"></script>
   <script src="js/custom.js"></script>
</head>
<body>

    <div id="memberlist" data-role="page" data-theme="c">
    <%@ include file="include/header.jsp" %>
        <div data-role="content">
            <ul data-role="listview" data-inset="true" data-divider-theme="d">
               <li data-role="list-divider">필수항목</li>
               <li data-role="fieldcontain">
                   <label for="username">이름</label> 
                   <input type="text" name="username" id="username" value="홍길동" data-clear-btn="true" />
               </li>
               <li data-role="fieldcontain">
                  <label for="userid">아이디</label> 
                  <input type="text" name="userid" id="userid" value="홍길동" readonly />
               </li>
               <li data-role="fieldcontain">
                  <label for="userpass">비밀번호</label>
                  <input type="password" name="userpass" id="userpass" value="" data-clear-btn="true" />
               </li>
               <li data-role="fieldcontain">
                  <label for="postcode">우편번호</label> 
                  <input type="number" name="postcode" id="postcode" value="1235" data-clear-btn="true" />
               </li>
               <li data-role="fieldcontain" id="addressbox">
                  <label for="address">주소</label> 
                  <input type="text" name="address" id="address" value="1235" data-clear-btn="true" />
                  <input type="text" name="detailaddress" id="detailaddress" value="1235" data-clear-btn="true" />
               </li>
               <li data-role="list-divider">선택항목</li>
               <li data-role="fieldcontain">
                  <label for="gender" class="ui-input-text" id="genderlabel">성별</label> 
                  <select name="gender" id="gender" data-role="slider">
                    <option value="남자">남자</option>
                    <option value="여자">여자</option>
                  </select>
               </li>
               <li data-role="fieldcontain">
                  <label id="radiobox">직업</label> 
                  <fieldset data-role="controlgroup">
                      <input type="radio" name="job" id="job1" value="프론트앤드 프로그래머" checked>
                      <label for="job1">프론트앤드 프로그래머</label>
                      <input type="radio" name="job" id="job2" value="백앤드 프로그래머">
                      <label for="job2">백앤드 프로그래머</label>
                      <input type="radio" name="job" id="job3" value="풀스택 프로그래머">
                      <label for="job3">풀스택 프로그래머</label>
                      <input type="radio" name="job" id="job4" value="UI 디자이너">
                      <label for="job4">UI 디자이너</label>
                      <input type="radio" name="job" id="job5" value="입만 프로그래머">
                      <label for="job5">입만 프로그래머</label>
                  </fieldset> 
               </li>
               <li data-role="fieldcontain">
                  <label id="radiobox">취미</label> 
                  <fieldset data-role="controlgroup">
                      <input type="checkbox" name="hobby" id="hobby1" value="운동" checked>
                      <label for="hobby1">운동</label>
                      <input type="checkbox" name="hobby" id="hobby2" value="여행">
                      <label for="hobby2">여행</label>
                      <input type="checkbox" name="hobby" id="hobby3" value="독서">
                      <label for="hobby3">독서</label>
                      <input type="checkbox" name="hobby" id="hobby4" value="음악감상">
                      <label for="hobby4">음악감상</label>
                      <input type="checkbox" name="hobby" id="hobby5" value="쇼핑">
                      <label for="hobby5">쇼핑</label>
                  </fieldset> 
               </li>
               <li data-role="fieldcontain">
                  <label for="leftright">좌우명</label> 
                  <input type="text" name="leftright" id="leftright" value="잘하자" />
                  </li>
            </ul> 
   
        </div>
   <%@ include file="include/footer.jsp" %>
   </div>