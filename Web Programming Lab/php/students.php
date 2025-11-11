+<!DOCTYPE html>
<html lang="en">
    <head>
        <title>STUDENTS NAMES</title>
            <style>
            body{
                font-family: Arial, sans_serif;
                margin: 20px;
            }
            pre{
                background-color: #f4f4f4;
                padding: 10px;
                border: 1px soild #ccc;
                border-radius: 5px;
            }
        </style>
    </head>
    <body>
        <h1>Student Names</h1>
        <?php
        $students = ["Alice", "Bob", "Charlie", "David", "Eve"];

        echo "<h2>Original Array</h2>";
        echo "<pre>";
        print_r($students);
        echo "</pre>";

        asort($students);
        echo "<h2>Array Sorted with asort(): </h2>";
        echo "<pre>";
        print_r($students);
        echo "</pre>";

        arsort($students);
        echo "<h2>Array Sorted with arsort(): </h2>";
        echo "<pre>";
        print_r($students);
        echo "</pre>";   
        ?>

    </body>
</htlm>