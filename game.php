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
		$gameX=$this->conn->getGameById($id);
		$reviews=$this->conn->getReviewById($id);

		try{
			echo $this->twig->render(
				'game.html.twig',
				array(
					'gameX'=>$gameX,
					'reviews'=>$reviews
				)
			);
		} catch (Exception $e){
			echo $e->getMessage();
		}
	}


}


?>