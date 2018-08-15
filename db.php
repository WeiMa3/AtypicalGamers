<?php 

class dbConnection{
	protected $conn;
	public function getConnInstant(){
		if (!isset($this->conn)){
			$this->conn = new PDO('mysql:host=localhost;dbname=gameRating;charset=utf8mb4','root','root');
		}

		return $this->conn;
	}

	public function getPlatNames(){
		$stmt = $this->getConnInstant()->query('SELECT * FROM platformNames');
		$platNames = $stmt->fetchAll(PDO::FETCH_ASSOC);

		return $platNames;
	}

	public function getAllGames(){
		$stmt = $this->getConnInstant()->query('SELECT * FROM gameInfo');

		$games = $stmt->fetchAll(PDO::FETCH_ASSOC);

		return $games;
	}

	public function getGamesByPlat($pid){
		$stmt = $this->getConnInstant()->prepare('SELECT * FROM gameInfo WHERE platform LIKE :pid');
		$stmt->execute(
			array(
				':pid' => '%'.$pid.'%'
			)
		);
		$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
		return $result;
	}


	public function getGameById($id){
		$stmt = $this->getConnInstant()->prepare('SELECT * FROM gameInfo WHERE idgameInfo=:id');
		$stmt->execute(
			array(
				':id' => $id
			)
		);
		$result = $stmt->fetch();
		return $result;
	}

	public function getReviewById($id){
		$stmt = $this->getConnInstant()->prepare('SELECT * FROM review WHERE gameId =:id ORDER BY idreview DESC');
		$stmt->execute(
			array(
				':id' => $id
			)
		);
		$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
		return $result;
	}


	public function login($uName, $PW){
		$stmt=$this->getConnInstant()->prepare('SELECT * FROM userInfo WHERE userName =:uName AND userPW =:PW');
		$stmt->execute(
				array(
					':uName' => $uName,
					':PW' => $PW
				)
			);
		$result = $stmt->fetch(PDO::FETCH_ASSOC);
		return $result;
	}


	public function getUserInfo($id){
		$stmt = $this->getConnInstant()->prepare('SELECT * FROM userInfo WHERE idUser =:id');
		$stmt->execute(
				array(
					':id' => $id
				)
			);
		$result=$stmt->fetch();
		return $result;
	}

	public function insertReview($gid,$uid,$content){
		$stmt = $this->getConnInstant()->prepare('INSERT INTO review(gameId, userId, postTime, reviewContent, likeCount, dislikeCount) VALUES (:gid, :uid, :date, :content, 0, 0)');
		$result = $stmt->execute(
			array(
				':gid' => $gid,
				':uid' => $uid,
				':date' => date('Y-m-d h:i:s'),
				':content' => $content,
			)
		);
		return $result;
	}

	public function reviewLikes($uid,$rid,$action){
		$stmt = $this->getConnInstant()->prepare('INSERT INTO userLikes(userId, reviewId, likeOrNot) VALUES (:uid, :rid, :action)');
		// $stmt = $this->getConnInstant()->prepare('UPDATE review SET likeCount+=1, dislikeCount+=1 WHERE idreview=:rid');
		$result = $stmt->execute(
			array(
				':uid' => $uid,
				':rid' => $rid,
				':action' => $action,
			)
		);
		return $result;
	}


	public function getGameBySearch($input){
		$stmt = $this->getConnInstant()->prepare('SELECT * FROM gameInfo WHERE gameName LIKE :input');
		$stmt->execute(
			array(
				':input' => '%'.$input.'%'
			)
		);
		$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
		return $result;
	}




}

// test

// $db = new dbConnection();
// var_dump($db->login('Mario', 'password2'));




?>