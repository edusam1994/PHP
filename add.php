<main>
    <?php
    include_once 'database.php';
    $database = new Database();
    $connection = $database->connection;

    // Verificar si se enviaron los datos por POST
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $name = $_POST['name'];
        $email = $_POST['email'];
        $age = $_POST['age'];
        $interests = $_POST['interests'];

        $query = "INSERT INTO subscribers (name, age, email, interests) VALUES ('$name', '$age', '$email', '$interests')";
        $result = $connection->query($query);

        if ($result) {
            echo "<div class='container'>Record added successfully</div>";
        } else {
            echo "<div class='container'>Error: " . $query . "<br>" . $connection->error . "</div>";
        }
    }
    ?>
</main>

