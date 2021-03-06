<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String emp_name = (String)session.getAttribute("emp_name");
	if(emp_name==null){
		emp_name = "이순신";
	}
%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Personal Schedules</title>
    <%@include file ="../common/fontAwesomeUI.jsp" %>
    <!-- <link rel=" shortcut icon" href="../mihyun_cal/image/favicon.ico"> -->

    <link rel="stylesheet" href="<%=path.toString() %>common/vendor/css/fullcalendar.min2.css" />
    <link rel="stylesheet" href="<%=path.toString() %>common/vendor/css/bootstrap.min2.css?after">
    <link rel="stylesheet" href='<%=path.toString() %>common/vendor/css/select2.min.css' />
    <link rel="stylesheet" href='<%=path.toString() %>common/vendor/css/bootstrap-datetimepicker.min.css' />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <link rel="stylesheet" href="<%=path.toString() %>common/css/main1.css">

</head>
<body>
        <nav class="sb-topnav navbar navbar-expand navbar-dark" style="background-color:#282828;">
            <a class="navbar-brand" href="javascript:history.back();" style="width:20%; padding-top:12px;" >
            <i class="fas fa-arrow-left" style="width:50px; height:50px; float:left;"></i></a>
            <a class="navbar-brand" href="./empSchedule.jsp" style=" width:60%; font-size:25px; padding-top:12px; text-align: center;" >Personal Schedules</a>
		    <a class="navbar-brand" href="../erp_lab/main_content.jsp" style="width:20%; padding-top:12px;">
		    <i class="fas fa-home" style="width:50px; height:50px; float:right;"></i></a>
		    </nav>
      <div class="container"> 
<!-- 일정추가전 생기는 카탈로그 창 -->
        <!-- 일자 클릭시 메뉴오픈 -->
         <div id="contextMenu" class="dropdown clearfix">
            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu"
                style="display:block;  position:static; margin-bottom:5px;">
                <li><a tabindex="-1" href="#">개인일정1</a></li>
                <li><a tabindex="-1" href="#">개인일정2</a></li>
                <li><a tabindex="-1" href="#">개인일정3</a></li>
                <li><a tabindex="-1" href="#">개인일정4</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
            </ul>
        </div> 

        <div id="wrapper">
            <div id="loading"></div>
            <div id="calendar"></div>
        </div>


        <!-- 일정 추가 MODAL -->
        <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title"></h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-allDay">하루종일</label>
                                <input class='allDayNewEvent' id="edit-allDay" type="checkbox"></label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-title">일정명</label>
                                <input class="inputModal" type="text" name="edit-title" id="edit-title"
                                    required="required" />
                            </div>
                        </div>

                       <%--   <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-username">사원명</label>
                                <input class="inputModal" type="text" name="edit-username" id="edit-username"  value="<%=emp_name %>" disabled/>
                            </div>
                        </div>  --%>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-start">시작</label>
                                <input class="inputModal" type="text" name="edit-start" id="edit-start" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-end">끝</label>
                                <input class="inputModal" type="text" name="edit-end" id="edit-end" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type">일정</label>
                                <select class="inputModal" type="text" name="edit-type" id="edit-type">
                                    <option value="개인일정1">개인일정1</option>
                                    <option value="개인일정2">개인일정2</option>
                                    <option value="개인일정3">개인일정3</option>
                                    <option value="개인일정4">개인일정4</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-color">색상</label>
                                <select class="inputModal" name="color" id="edit-color">
                                   <option value="D25565" style="color:#D25565;">빨간색</option>
                                    <option value="9775fa" style="color:#9775fa;">보라색</option>
                                    <option value="ffa94d" style="color:#ffa94d;">주황색</option>
                                    <option value="74c0fc" style="color:#74c0fc;">파란색</option>
                                    <option value="f06595" style="color:#f06595;">핑크색</option>
                                    <option value="63e6be" style="color:#63e6be;">연두색</option>
                                    <option value="a9e34b" style="color:#a9e34b;">초록색</option>
                                    <option value="4d638c" style="color:#4d638c;">남색</option>
                                    <option value="495057" style="color:#495057;">검정색</option>
                                </select>
                            </div>
                        </div> 
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-desc">설명</label>
                                <textarea rows="4" cols="50 " class="inputModal" name="edit-desc"
                                    id="edit-desc"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modalBtnContainer-addEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary" id="save-event">저장</button>
                    </div>
                    <div class="modal-footer modalBtnContainer-modifyEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        <button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
                        <button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <div class="panel panel-default">

            <div class="panel-heading">
                <h3 class="panel-title">필터</h3>
            </div>

            <div class="panel-body">

                <div class="col-lg-6">
                    <label for="calendar_view">카테고리</label>
                    <div class="input-group">
                        <select class="filter" id="type_filter" multiple="multiple">
                            <option value="개인일정1">개인일정1</option>
                            <option value="개인일정2">개인일정2</option>
                            <option value="개인일정3">개인일정3</option>
                            <option value="개인일정4">개인일정4</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.filter panel -->
    </div>
    <!-- /.container -->

    <script src="<%=path.toString() %>common/vendor/js/jquery.min.js"></script>
    <script src="<%=path.toString() %>common/vendor/js/bootstrap.min.js"></script>
    <script src="<%=path.toString() %>common/vendor/js/moment.min.js"></script>
    <script src="<%=path.toString() %>common/vendor/js/fullcalendar.min.js"></script>
    <script src="<%=path.toString() %>common/vendor/js/ko.js"></script>
    <script src="<%=path.toString() %>common/vendor/js/select2.min.js"></script>
    <script src="<%=path.toString() %>common/vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="<%=path.toString() %>common/js/EmpMain.js"></script>
    <script src="<%=path.toString() %>common/js/EmpAddEvent.js"></script>
    <script src="<%=path.toString() %>common/js/EmpEditEvent.js"></script>
    <script src="<%=path.toString() %>common/js/EmpEtcSetting.js"></script>
</body>
</html>