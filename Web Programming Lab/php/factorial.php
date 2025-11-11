<?php
    function fact($num){
        if($num <= 1){
            return 1;
        }
        else{
            return $num*fact($num-1);
        }
    }
    $number = 5;
    $result =fact($number);
    echo "the factorial of $number is: $result";
?>