<?php
include_once('../db_connection.php');

$error = '';
$message = '';
$name = '';
$interval = 0;


    $temp=str_replace("\\", "", trim(file_get_contents("php://input"), "\""));
    $form_data=json_decode($temp);

    if(empty($form_data->name)){
        $error= 'Category Name is Required';
    }else{
        $name = $form_data->name;
    }
  

    if(empty($form_data->easyinterval)){
        $error= 'Easy Interval is Required'.$name;
    }else{
        $interval= $form_data->easyinterval;
    }

    
    if(empty($error))
    {
        
        $data = array(
            ':name'		=>	$name,
            ':interval'	=>	$interval,
            ':member'   =>  $user_id
        );

        $query = "INSERT INTO category (categoryid, createdate, easyinterval,memberid,name)".
            " VALUES (now(),now(),:interval,:member,:name)";

        $statement = new Cassandra\SimpleStatement( $query);
        
        if($statement->execute($data)){
            $message = 'Data Inserted';
            echo "inserted"
        }
        else
        {
            echo "execute error";
        }
    }     
        
    $output = array(
        'error'		=>	$error
    );
    
    echo json_encode($output);
?>