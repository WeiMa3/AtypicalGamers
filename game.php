<?php

class game{
	private $conn;
	private $twig;

	public function __construct($db_conn, $twig){
		$this -> conn = $db_conn;
		$this -> twig = $twig;
	}

	public function defaultMethod(){
		echo "Address not valid.";
	}

	public function infoMethod($id){
		session_start();
		if ($_SESSION){
			$x = $_SESSION['currentUserId'];
			$userXInfo = $this->conn->getUserInfo($x);
		}
		$gameX = $this->conn->getGameById($id);
		$reviews = $this->conn->getReviewById($id);

		try{
			if ($_SESSION){
				echo $this->twig->render(
					'game.html.twig',
					array(
						'gameX' => $gameX,
						'reviews' => $reviews,
						'userXInfo' => $userXInfo
					)
				);
			} else {
				echo $this->twig->render(
					'game.html.twig',
					array(
						'gameX' => $gameX,
						'reviews' => $reviews
					)
				);
			}
		} catch (Exception $e){
			echo $e->getMessage();
		}
	}


}


?>