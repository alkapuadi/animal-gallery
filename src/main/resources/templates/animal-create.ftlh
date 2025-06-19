<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Create New Dog - Animal Gallery</title>
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

  <div class="container mt-4">
    <h1>Create New Dog</h1>

    <form action="/dogs/new" method="post" class="w-50 mx-auto">
      <div class="mb-3">
        <label for="name" class="form-label">Name</label>
        <input type="text" class="form-control" id="name" name="name" required />
      </div>

      <div class="mb-3">
        <label for="description" class="form-label">Description</label>
        <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
      </div>

      <div class="mb-3">
        <label for="breed" class="form-label">Breed</label>
        <input type="text" class="form-control" id="breed" name="breed" />
      </div>

      <div class="mb-3">
        <label for="age" class="form-label">Age</label>
        <input type="number" step="0.1" class="form-control" id="age" name="age" />
      </div>

      <div class="mb-3">
        <label for="activeDate" class="form-label">Active Date</label>
        <input type="date" class="form-control" id="activeDate" name="activeDate" />
      </div>

      <button type="submit" class="btn btn-primary">Create</button>
      <a href="/dogs" class="btn btn-secondary ms-2">Cancel</a>
    </form>
  </div>

  <script src="/js/main.js"></script>
</body>
</html>
