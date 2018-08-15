<?php

class search{
	private $conn;
	private $twig;
	public function __construct($conn, $twig){
		$this->conn = $conn;
		$this->twig = $twig;
	}

	public function resultMethod($default = 1){
		$keyword = $_POST['keyword'];
		$gameData = $this->conn->getGameBySearch($keyword);
			session_start();
			// if ($_SESSION){
			// 	var_dump($_SESSION['currentUserId']);
			// }
		try{
			echo $this->twig->render(
				'search.html.twig', 
				array(
					'keyword' => $keyword,
					'games' => $gameData,
				)
			);
		}catch(Exception $e){
			echo $e->getMessage();
		}

	}


}


?>