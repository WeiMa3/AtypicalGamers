<?php

class review {

	private $conn;
	private $twig;
	public function __construct($conn, $twig){
		$this->conn=$conn;
		$this->twig=$twig;
	}

	public function submitMethod($sth=0){

		$gid=$_POST['gid'];
		$uid=$_POST['uid'];
		$content = $_POST['content'];

		$result = $this->conn->insertReview($gid, $uid, $content);

		header("Access-Control-Allow-Origin:*");
		header("Content-Type:application/json;charset=UTF-8");

		if($result){
			$message = array(
				'code'=>200,
				'message'=>'Review posted.'
			);
			echo json_encode($message);
		}else{
			$message = array(
				'code'=>400,
				'message'=>'Failed. Please try again.'
			);
			echo json_encode($message);
		}

	}


}














?>