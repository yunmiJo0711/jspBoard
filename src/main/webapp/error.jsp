<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <style type="text/css">
  #myModal{
  	display: block;
  }
  </style>
</head>
<body>
<!-- The Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content" id="content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">오류</h4>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        	잘못된 접근입니다.!
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}'">Close</button>
      </div>

    </div>
  </div>
</div>


</body>
</html>
