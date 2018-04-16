<?php
    class database{

   
 
      private function  connect(){

            $con = new Silex\Application();

            $con ->register (new Silex\Provider\DoctrineServiceProvider(), array(
                'db.options'=>array(
                   ' driver'=>'pdo_mysql',
                    'host'=>'localhost',
                    'dbname'=>'unternehmen',
                    'user'=>'root',
                    'password'=>'root',
                ),

            ));

            return $con;
      }

      function insertInto ($tablename, $name,$type, $amount, $description){
           
            $con = $this ->connect();

            $typer=$this->getFrom($type);
    
            $con['db']->insert($tablename, array(

                'name'=> $name,
                'type'=>$typer('id'),
                'amount'=> $amount,
                'description'=> $description
            ));
      }


      function getAllFrom($tablename, $select){
          $con = $this->connect();

          $get = $con['db']->fetchAll('Select '.$select.' from '.$tablename.'');

         return $get;
      }

      function getFrom($in){
          $con = $this->connect();
          $get = $con['db']->fetchAssoc('SELECT id FROM Type WHERE Namen = ?', array($in));

          return $get;
      }

    }
