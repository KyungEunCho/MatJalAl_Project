<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	console.log("ggg");
	'use strict';

	var singleUploadForm = document.querySelector('#singleUploadForm');
	var singleFileUploadInput = document.querySelector('#singleFileUploadInput');
	var singleFileUploadError = document.querySelector('#singleFileUploadError');
	var singleFileUploadSuccess = document.querySelector('#singleFileUploadSuccess');
	
	function uploadSingleFile(file) {
	    var formData = new FormData();
	    formData.append("file", file);

	    var xhr = new XMLHttpRequest();
	    xhr.open("POST", "/uploadFile", true);
	    

	    xhr.onload = function() {
	        console.log(xhr.responseText);
	        var response = JSON.parse(xhr.responseText);

	        alert(xhr.responseText);
	        if(xhr.status == 200) {
	        	alert('성공?');
	            singleFileUploadError.style.display = "none";
	            singleFileUploadSuccess.innerHTML = "<p>File Uploaded Successfully.</p><p>DownloadUrl : <a href='" + response.fileDownloadUri + "' target='_blank'>" + response.fileDownloadUri + "</a></p>";
	            singleFileUploadSuccess.style.display = "block";
	        } else {
	        	alert('실패?');
	            singleFileUploadSuccess.style.display = "none";
	            singleFileUploadError.innerHTML = (response && response.message) || "Some Error Occurred";
	        }
	    }
	    

	    xhr.send(formData);
	}

	singleUploadForm.addEventListener('submit', function(event){
	    var files = singleFileUploadInput.files;
	    alert(files.length);
	    if(files.length === 0) {
	        singleFileUploadError.innerHTML = "Please select a file";
	        singleFileUploadError.style.display = "block";
	    }
	    uploadSingleFile(files[0]);
	    event.preventDefault();
	}, true);
});
</script>
</head>
<body>
<div class="upload-container">
	<div class="upload-content">
		<div class="single-upload">
			<h3>Upload Single File</h3>
			<form id="singleUploadForm" name="singleUploadForm">
				<input id="singleFileUploadInput" type="file" name="file" class="file-input" required />
				<button type="submt" class="primary-btn">Submit</button>
			</form>
			<div class="upload-response">
				<div id="singleFileUploadError"></div>
				<div id="singleFileUploadSuccess"></div>
			</div>
		</div>
	</div>
</div>
</body>
</html>