<?php

require_once('./vendor/autoload.php');
require_once('./db.php');

$loader = new Twig_Loader_Filesystem('./templates');
$twig = new Twig_Environment($loader
	//, array(
	//	'cache' => './compilation_cache',
	// )
);

$db_conn=new dbConnection();

// $uid = 2;

// session_start();

// $_SESSION['ID'] = $uid;

if($_GET){

	$url = $_GET['url'];
	$p_array=explode('/',$url);
	if (!file_exists($p_array[0].'.php')){//game.php
		echo "Sorry, wrong route.";
		exit;
	}
	require_once($p_array[0].".php");
	$p_0=new $p_array[0]($db_conn, $twig);

	if (array_key_exists(1, $p_array) && array_key_exists(2, $p_array) && !$p_array[2]==''){
		$method=$p_array[1].'Method';//=infoMethod
		$p_0 -> $method($p_array[2]);//game/info/ 似乎这时$p_array[2]=''
	}else{
		$method='defaultMethod';
		$p_0 -> $method();
	}

	exit();
}

$gameData=$db_conn->getAllGames();
$platNames=$db_conn->getPlatNames();


$new_platform=array();
foreach ($platNames as $platName){
	$new_platform+=array(
		$platName['idplatformName']=>$platName['platformName']
	);
}

try{

	echo $twig->render(
		'index.html.twig', 
		array(
			'games'=>$gameData,
			// 'names'=>$platNames,
			'platNames'=>$new_platform,
		)
	);
}catch(Exception $e){
	echo $e->getMessage();
}

?>