# Market SONG

* 이 프로젝트는 개인 프로젝트로 마켓컬리를 목표로 만들었습니다.
* 식자재 쇼핑몰을 목적으로 만든 Spring Project입니다.
* MVC Pattern을 기반으로 구성하여 MySQL을 DB로 사용했습니다.
* 프로젝트 기간 : '21.04.12 ~ '21.04.23 2주

## Purpose

* 회원가입, 로그인, 로그아웃, 회원정보 수정, 회원 탈퇴
* 식자재 등록, 자세히 보기, 제거, 수정
* 슬라이드쇼 구현으로 해당 이벤트 페이지 정보전달, 자세히 보기
* 댓글 수정, 삭제
* 장바구니 등록, 수정, 삭제, 구매
* 관리자 페이지
* 식자재 검색, 카테고리별 보기
* 페이징
* 초기 VO구성
  > UserVo
    * user_no pk
    * user_id
    * user_password
    * user_name
    * user_email
    * user_role
    * user_regDate

  > BoardVO
    * board_no pk
    * board_title
    * board_content
    * board_startDate
    * board_endDate
    * board_count
    * searchType
    * searchKeyword
    * uploadFile
    * startList
    * listSize
    * seller_id fk

  > SellerVO
    * seller_no
    * seller_id pk
    * seller_password
    * seller_name
    * seller_email
    * seller_tel
    * seller_regDate

  > User_BoardVO
    * user_no fk
    * board_no fk

  > PageVO
    * listSize
    * rangeSize
    * page
    * range
    * listCnt
    * pageCnt
    * startPage
    * startList
    * endPage
    * boolean prev
    * boolean next

## Environment

* OS : macOS Big Sur v11.4
* Java v1.8.281.09
* Spring Framework v4.11.0
* MVC Pattern
* Tomcat v8.5
* Maven
* MySQL v8.0.23
* Ajax
* Json
* Mybatis v3.5.6
* Bootstrap v4.5.3
* jQuery v3.5.1

## Overview

* 댓글(review), 장바구니(cart)같은 경우는 매끄러운 웹작동을 위해 비동기식 처리해 Ajax, Json, jQuery을 사용하였습니다.
* Controller구성에서 보다 직관적이고 빠른 개발을 위해 Mybatis와 Annotation을 사용했습니다.
* Foreign key를 활용하여 DB간 관계를 보다 적극적으로 활용(다른 VO의 PK를 상속)
* BootStrap을 사용하여 반응형으로 구성하였습니다.

## Usage
1. 쇼핑몰 소개
* Home(index) : 소개 화면으로 이동
* Market(BoardList) : 식자재 쇼핑 화면으로 이동
* Write(BoardCreate) : 식자재 등록 화면으로 이동
* 회원가입(UserJoin) : UserVO을 기준으로 DB에 User 등록
* 로그인 후 Withdrawl(UserDelete) : Delete SQL문을 활용해 DB에서 User 제거
<img width="1440" alt="index.jsp_Logout" src="https://user-images.githubusercontent.com/86213046/128479647-1988fc06-0cd9-4026-90ac-0be1deaeba40.png">
<img width="1440" alt="index.jsp_Login" src="https://user-images.githubusercontent.com/86213046/128479999-a0c6eb8c-0400-4a8a-8d1a-945e4fa1f983.png">

2. 식자재 등록
* BoardVO에 따라 정보 입력
<img width="1440" alt="insertBoard.jsp" src="https://user-images.githubusercontent.com/86213046/128480947-1d8131f9-1b65-4122-a3e6-a55ceff566df.png">

3. 회원 관리
* 로그인
  * DB에 등록된 User만 로그인 가능
* 회원가입
  * UserVo 기준 정보입력
* 회원탈퇴
  * 탈퇴 전 회원정보를 한번 더 입력해 탈퇴하고자 하는 User가 맞는지 확인
<img width="1440" alt="Login.jsp" src="https://user-images.githubusercontent.com/86213046/128483396-4e3b01af-8f27-430f-8637-80dcb13694e5.png">
<img width="1440" alt="Join.jsp" src="https://user-images.githubusercontent.com/86213046/128483439-fc09f684-1c5f-4c46-9eba-19ae95fd3665.png">
<img width="1440" alt="UserDelete.jsp" src="https://user-images.githubusercontent.com/86213046/128483557-addbfd9d-3154-4fbe-9dac-d79c22a65349.png">

4. Market
* BootStrap을 활용한 슬라이드 쇼 구성으로 이벤트 페이지 구성
* 검색창을 통해 원하는 식자재 검색(title, content)
* DB에 등록된 BoardList 화면
* PageDAO를 통해 페이징 기능 구현
* Board를 DB에 등록할때 cno(Category Number)를 통해 카테고리별 분류 구현
* sessionScope를 통해 기능 구분
  * 로그인시 주문배송, 로그아웃 화면에 표시
  * 로그아웃시 로그인 화면에 표시

<img width="1440" alt="BoardList.jsp_logout" src="https://user-images.githubusercontent.com/86213046/128485399-eb1de7cc-8753-44e1-8243-ff6b77e01ee9.png">
<img width="1440" alt="BoardList.jsp_login" src="https://user-images.githubusercontent.com/86213046/128487544-820b01f9-8de6-4c51-974d-be7754f88de8.png">
<img width="1425" alt="Search" src="https://user-images.githubusercontent.com/86213046/128487939-3ae92de2-fe16-4d67-975d-8ea3ed1decc8.png">

5. 식자재 상세보기
* 장바구니 담기를 통해 원하는 수량 담기
* 댓글 구현
  * 비동기 처리(Ajax)를 통해 전체 페이지가 로딩되지 않게 구현
  * 로그인시에만 댓글작성 가능
  * include file="/review.jsp"를 통해 댓글과 식자재 화면을 연결
<img width="1440" alt="GetBoard.jsp" src="https://user-images.githubusercontent.com/86213046/128488557-954fd337-64f1-46df-9eae-bd0638f71c49.png">
<img width="1428" alt="Review.jsp" src="https://user-images.githubusercontent.com/86213046/128488718-9568bfb9-6907-4417-ba7c-a438f2afc906.png">

6. 장바구니
* 수량변경
  * 비동기 처리(Ajax)를 통해 전체 페이지가 로딩되지 않게 구현
* 삭제하기
* 
<img width="1438" alt="GetCartList.jsp" src="https://user-images.githubusercontent.com/86213046/128489201-308d035f-b414-4e1a-8526-d9b8f3c15faf.png">
