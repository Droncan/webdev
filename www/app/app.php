<?php
require_once __DIR__. '/../vendor/autoload.php';
require_once __DIR__.'/database.php';

use Symfony\Component\HttpFoundation\Request;
use Silex\Provider\UrlGeneratorServiceProvider;

$app = new Silex\Application();

$app->register(new Silex\Provider\TwigServiceProvider(),array(
	'twig.path'=>__DIR__.'/../views',
));

$app['debug']=true;

$app->register(new Silex\Provider\AssetServiceProvider(), array(
    'assets.version' => 'v1',
    'assets.named_packages' => [
        'css' => [ 'base_path' => '/src/assets/css/']
    ],
));


$app->get('/warenlager', function () use($app){

    $db = new database();

    $type=$db->getAllFrom(Type, Namen);
    $test =$db->getFrom(hund);

    return $app['twig']->render('warenlager.html.twig', array('type'=>$type,'test'=>$test));
})->bind('warenlager');




$app->get('/home', function () use($app){
 
	return $app['twig']->render('home.html.twig');
})->bind('home');



$app->post('/postwaren', function(Request $request) use($app){

    $db= new database();

     $name = $request->get('name');
     $type = $request->get('type');
     $amount = $request->get('amount');
     $description =$request->get('description');


     $db -> insertInto ('warenlager',$name, $type, $amount, $description);

    return $app->redirect($app['url_generator']->generate('warenlager'));
})->bind('postwaren');

$app->get('/',function() use($app){
	return $app->redirect($app['url_generator']->generate('home'));
});


return $app;