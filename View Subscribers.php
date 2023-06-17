<!DOCTYPE html>
<html>
<head>
    <title>Subscriber List</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
</head>
<body>
    <nav class="navbar navbar-expand navbar-light bg-light">
        <div class="nav navbar-nav">
            <a class="nav-item nav-link" href="index.php">Home</a>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <table class="table">
                <?php
                include_once 'database.php';
                $database = new Database();
                $connection = $database->connection;

                $query = 'SELECT * FROM subscribers';
                $result = $connection->query($query);

                if ($result) {
                    if ($result->num_rows > 0) {
                        echo "<tr>";
                        echo "<th>Name</th>";
                        echo "<th>Age</th>";
                        echo "<th>Email</th>";
                        echo "<th>Interests</th>";
                        echo "</tr>";

                        while ($row = $result->fetch_assoc()) {
                            $name = isset($row['name']) ? $row['name'] : '';
                            $age = isset($row['age']) ? $row['age'] : '';
                            $email = isset($row['email']) ? $row['email'] : '';
                            $interests = isset($row['interests']) ? $row['interests'] : '';

                            echo "<tr>";
                            echo "<td>" . $name . "</td>";
                            echo "<td>" . $age . "</td>";
                            echo "<td>" . $email . "</td>";
                            echo "<td>" . $interests . "</td>";
                            echo "</tr>";
                        }
                    } else {
                        echo "<tr><td colspan='4'>No data found.</td></tr>";
                    }
                } else {
                    echo "Error en la consulta: " . $connection->error;
                }
                ?>
            </table>
        </div>
    </div>
</body>
</html>
