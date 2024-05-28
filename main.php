<?php

header("Access-Control-Allow-Origin:*");
header('Content-Type: application/json');
$city = $_GET["city"];
$city=strtolower($city);
function connect_database($server,$username,$password,$database){
    $conn=mysqli_connect($server,$username,$password,$database);
    if($conn){
        return $conn;
    }
    else{
        echo "sql not connected",mysqli_connect_error($conn);
    }
}
function insert_db($city,$date,$day,$temp,$cond,$icon,$pressure,$humidity,$wind,$conn){
    $insertData="INSERT INTO weather_data(city_name,date,day,temperature,conditions,icon,pressure,humidity,wind_speed)Values ('$city','$date',$day,$temp,'$cond','$icon',$pressure,$humidity,$wind)";
    if(mysqli_query($conn,$insertData)){
        echo"";
    }
    else{
        echo "data unable to be inserted",mysqli_error($conn);
    }
}
function fetchdata($city,$conn,$date,$day){
    $apikey="545514ea83870b2e64363e1540cd7a98";
    $uri="https://api.openweathermap.org/data/2.5/weather?q=$city&units=metric&Appid=$apikey";
    $response=@file_get_contents($uri);
    if($response===False){
        return $today=array("cod"=>"404");
    }
else{
    $data=json_decode($response);
    $temp = $data->main->temp;
    $cond = $data->weather[0]->description;
    $icon = "https://openweathermap.org/img/w/{$data->weather[0]->icon}.png";
    $pressure = $data->main->pressure;
    $humidity = $data->main->humidity;
    $wind = $data->wind->speed;
    $cod=$data->cod;
    insert_db($city,$date,$day,$temp,$cond,$icon,$pressure,$humidity,$wind,$conn);
    return $today=array(
       "city_name"=>$city,
        "date"=>$date,
        "day"=>$day,
        "temperature" => $temp,
        "conditions" => $cond,
        "icon" => $icon,
        "pressure" => $pressure,
        "humidity" => $humidity,
        "wind_speed" => $wind,
        "cod"=>$cod,
);

}
}
$conn = connect_database("localhost","root","","weather_app");
$q="SELECT * FROM weather_data";
$select=mysqli_query($conn,$q);
$date=date("M-d-Y");
$timestamp = strtotime($date);
$day=date("N", $timestamp);
if(mysqli_num_rows($select)>0){
    $c=0;
    while($row =mysqli_fetch_assoc($select)){
        if ($row['city_name']==$city and $row['date']==$date) {
            $today=$row;
            $c++;
        }
    }
    if($c==0){
        $today=fetchdata($city,$conn,$date,$day);
    }
}else{
    $today=fetchdata($city,$conn,$date,$day);
}
$selected="SELECT * FROM weather_data 
  WHERE city_name = 'nizamabad' AND STR_TO_DATE(date, '%b-%d-%Y') >= CURRENT_DATE - INTERVAL 7 DAY
  AND STR_TO_DATE(date, '%b-%d-%Y') < CURRENT_DATE
  ORDER BY STR_TO_DATE(date, '%b-%d-%Y') ASC;";
$sevenday=array();
$select=mysqli_query($conn,$selected);
if(mysqli_num_rows($select)>0){
    foreach ($select as $select) {
        $sevenday[]=$select;
    }
}
$weatherdata=array("main"=>$today,"past"=>$sevenday);
echo json_encode($weatherdata);
?>
