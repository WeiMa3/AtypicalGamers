<?php

class logout{
	private $conn;
	private $twig;

	public function __construct($db_conn, $twig){
		$this -> conn = $db_conn;
		$this -> twig = $twig;
	}

	public function defaultMethod(){
		session_start();
		session_destroy();

		try{
			echo $this->twig->render(
				'logout.html.twig', 
				array(
				)
			);
		}catch(Exception $e){
			echo $e->getMessage();
		}

	}

}


?>