<?php 

class dbConnection{
	protected $conn;
	public function getConnInstant(){
		if (!isset($this->conn)){
			$this->conn=new PDO('mysql:host=localhost;dbname=gameRating;charset=utf8mb4','root','root');
		}

		return $this->conn;
	}

	public function getPlatNames(){
		$stmt=$this->getConnInstant()->query('SELECT * FROM platformNames');
		$platNames=$stmt->fetchAll(PDO::FETCH_ASSOC);

		return $platNames;
	}

	public function getAllGames(){
		$stmt=$this->getConnInstant()->query('SELECT * FROM gameInfo');

		$games=$stmt->fetchAll(PDO::FETCH_ASSOC);

		return $games;
	}

	public function getGamesByPlat($pid){
		$stmt=$this->getConnInstant()->prepare('SELECT * FROM gameInfo WHERE platform LIKE :pid');
		$stmt->execute(
			array(
				':pid'=>'%'.$pid.'%'
			)
		);
		$result=$stmt->fetchAll(PDO::FETCH_ASSOC);
		return $result;
	}

	public function getSlides(){
		$stmt=$this->getConnInstant()->prepare('SELECT * FROM gameInfo WHERE idGameInfo<4');
		$stmt->execute(
			array(
				':pid'=>'%'.$pid.'%'
			)
		);
		$result=$stmt->fetchAll(PDO::FETCH_ASSOC);
		return $result;
	}


	public function getGameById($id){
		$stmt=$this->getConnInstant()->prepare('SELECT * FROM gameInfo WHERE idgameInfo=:id');
		$stmt->execute(
			array(
				':id'=>$id
			)
		);
		$result=$stmt->fetch();
		return $result;
	}

	public function getReviewById($id){
		$stmt=$this->getConnInstant()->prepare('SELECT * FROM review WHERE gameId =:id ORDER BY idreview DESC');
		$stmt->execute(
			array(
				':id'=>$id
			)
		);
		$result=$stmt->fetchAll(PDO::FETCH_ASSOC);
		return $result;
	}

	// public function getUserInfo($id){
	// 	$stmt=$this->getConnInstant()->prepare('SELECT * FROM userInfo WHERE idUser =:id');
	// 	$stmt->execute(
	// 			array(
	// 				':id'=>$id
	// 			)
	// 		);
	// 	$result=$stmt->fetch();
	// 	return $result;
	// }

	public function insertReview($gid,$uid,$content){
		$stmt=$this->getConnInstant()->prepare('INSERT INTO review(gameId, userId, postTime,reviewContent) VALUES (:gid, :uid, :date, :content)');
		$result = $stmt->execute(
			array(
				':gid'=>$gid,
				':uid'=>$uid,
				':date'=> date('Y-m-d h:i:s'),
				':content'=>$content
			)
		);
		return $result;
	}

	public function getGameBySearch($input){
		$stmt=$this->getConnInstant()->prepare('SELECT * FROM gameInfo WHERE gameName LIKE :input');
		$result = $stmt->execute(
			array(
				':input'=>'%'.$input.'%'
			)
		);
		$result=$stmt->fetchAll(PDO::FETCH_ASSOC);
		return $result;
	}




}

// test

// $db=new dbConnection();
// var_dump($db->getGameBySearch('zelda'));



?>