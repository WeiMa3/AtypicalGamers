<?php

class platform{
	private $conn;
	private $twig;
	public function __construct($conn, $twig){
		$this->conn=$conn;
		$this->twig=$twig;
	}

	public function getMethod($pid){

		$gameData=$this->conn->getGamesByPlat($pid);
		$platNames=$this->conn->getPlatNames();

		$new_platform=array();
		foreach ($platNames as $platName){
			$new_platform+=array(
				$platName['idplatformName']=>$platName['platformName']
			);
		}

		try{
			session_start();
			// if ($_SESSION){
			// 	var_dump($_SESSION['currentUserId']);
			// }
			echo $this->twig->render(
				'index.html.twig', 
				array(
					'games'=>$gameData,
					'platNames'=>$new_platform,
					'currentPlat' => $pid
				)
			);
		}catch(Exception $e){
			echo $e->getMessage();
		}

	}

}






?>