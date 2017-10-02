<?php
require __DIR__.'/../vendor/autoload.php';

$app = new \Slim\Slim(array(
    'templates.path' => __DIR__.'/../templates'
));

$app->get('/api', function () use ($app) {
  $startTimestamp = $app->request->get('start');
  $endTimestamp = $app->request->get('end');

  try {
      // Open database connection
      $conn = new \PDO('mysql:host=127.0.0.1;dbname=calendar', 'test', 'test');

      // Query database for events in range
      $stmt = $conn->prepare('SELECT * FROM events WHERE start >= FROM_UNIXTIME(:start) AND end < FROM_UNIXTIME(:end) ORDER BY start ASC');
      $stmt->bindParam(':start', $startTimestamp, \PDO::PARAM_INT);
      $stmt->bindParam(':end', $endTimestamp, \PDO::PARAM_INT);
      $stmt->execute();

      // Fetch query results
      $results = $stmt->fetchAll(\PDO::FETCH_ASSOC);

      // Return query results as JSON
      echo json_encode($results);
  } catch (\PDOException $e) {
      $app->halt(500, $e->getMessage());
 }
});
$app->get('/', function () use ($app) {
    $app->render('calendar.html');
});
$app->run();
