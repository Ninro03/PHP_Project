<?php
	$real_name = $_GET["real_name"];
	$file_name = $_GET["file_name"];
	$file_type = $_GET["file_type"];
	$file_path = "./data/".$real_name;

	$ie = preg_match('~MSIE|Internet Explorer~i', $_SERVER['HTTP_USER_AGENT']) || 
        (strpos($_SERVER['HTTP_USER_AGENT'], 'Trident/7.0') !== false && 
            strpos($_SERVER['HTTP_USER_AGENT'], 'rv:11.0') !== false);

	//IE인 경우 한글파일명이 깨지는 경우를 방지하기 위한 코드
	if($ie){
		$file_name = iconv('utf-8', 'euc-kr', $file_name);
	}

	if(file_exists($file_path))
	{
		// fopen은 경로를 포함한 파일($file_path)을 열라는 것
		// rv는 파일을 읽고 쓸 수 있는 모드로 열라는 의미
		$fp = fopen($file_path, "rb");
		// 다운로드 할 파일의 정보를 Header() 함수로 클라이언트 브라우저에 알려준다
		header("Content-type: application/x-msdownload");
		header("Content-Length: ".filesize($file_path));
		header("Content-Disposition: attachment; filename=".$file_name);
		header("Content-Transfer-Encoding: binary");
		header("Content-Description: File Transfer");
		header("Expires: 0");
	}

	// 파일 전송 및 파일 포인터 닫기
	if(!fpassthru($fp))
		fclose($fp);
?>