<?php

class login{
	private $conn;
	private $twig;

	public function __construct($db_conn, $twig){
		$this -> conn = $db_conn;
		$this -> twig = $twig;
	}

	public function defaultMethod(){
		echo "Address not valid.";
	}

	public function welcomeMethod($default = 1){
		$uName = $_POST['userName'];
		$PW = $_POST['PW'];
		$result = $this->conn->login($uName, $PW);
		if ($result){
			session_start();
			$_SESSION['currentUserId'] = $result['idUser'];
		} else {
			session_start();
			session_destroy();
		}
		try{
			echo $this->twig->render(
				'login.html.twig', 
				array(
					'userInfo' => $result,
				)
			);
		}catch(Exception $e){
			echo $e->getMessage();
		}

	}

}



// Check Post -> name  -> password


// Check Database -> signin
 // $result = ["idUser" => 1];


 // session_start();


 // $_SESSION['currentLoginUserId'] = $result['idUser'];


?>