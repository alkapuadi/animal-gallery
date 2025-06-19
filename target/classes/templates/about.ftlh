<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>About - Animal Gallery</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="/css/styles.css" />
</head>
<body>
  <nav class="navbar navbar-dark bg-dark navbar-expand-lg">
    <div class="container-fluid">
      <a class="navbar-brand" href="/dogs">Animal Gallery</a>
      <ul class="navbar-nav ms-auto d-flex flex-row">
        <li class="nav-item mx-2"><a class="nav-link text-white" href="/dogs">Home</a></li>
        <li class="nav-item mx-2"><a class="nav-link text-white" href="/dogs/new">Create New Dog</a></li>
        <li class="nav-item mx-2"><a class="nav-link active text-white" href="/dogs/about">About</a></li>
      </ul>
    </div>
  </nav>

  <div class="container mt-4">
    <h1>About Animal Gallery</h1>
    <p>This is a simple Animal Gallery application built using Spring Boot and FreeMarker.</p>
    <p>You can view, add, update, and delete dogs in the gallery.</p>
  </div>
</body>
</html>
