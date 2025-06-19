<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>${animal.name} - Animal Gallery</title>
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
        <li class="nav-item mx-2"><a class="nav-link text-white" href="/dogs/about">About</a></li>
      </ul>
    </div>
  </nav>

  <div class="container mt-4 text-center">
    <h1>${animal.name}</h1>
    <img
      src="/images/${animal.name?lower_case}.webp"
      class="img-fluid mb-3"
      alt="${animal.name} image"
      onerror="this.onerror=null; this.src='/images/default.webp'"
    />
    <div class="card p-3 mx-auto" style="max-width: 600px;">
      <h5>Description</h5>
      <p>${animal.description!"No description available."}</p>
      <p><strong>Breed:</strong> ${animal.breed!"Unknown"}</p>
      <p><strong>Age:</strong> ${animal.age?string["0.0"]!"Unknown"}</p>
      <p><strong>Date of Birth:</strong> ${animal.activeDate?string("MMM dd, yyyy")!"Unknown"}</p>
      <a href="/dogs/update/${animal.dogId}" class="btn btn-primary me-2">Edit</a>
      <a href="/dogs/delete/${animal.dogId}" class="btn btn-danger">Remove</a>
      <br/><br/>
      <a href="/dogs" class="btn btn-secondary">Back to Home</a>
    </div>
  </div>

  <script src="/js/main.js"></script>
</body>
</html>
