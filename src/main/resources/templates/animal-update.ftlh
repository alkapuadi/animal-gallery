<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Update Dog - Animal Gallery</title>
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
    <h1>Update Dog</h1>

    <form action="/dogs/update" method="post" class="w-50 mx-auto">
      <input type="hidden" name="dogId" value="${animal.dogId}" />

      <div class="mb-3">
        <label for="name" class="form-label">Name</label>
        <input
          type="text"
          class="form-control"
          id="name"
          name="name"
          value="${animal.name!}"
          required
        />
      </div>

      <div class="mb-3">
        <label for="description" class="form-label">Description</label>
        <textarea
          class="form-control"
          id="description"
          name="description"
          rows="3"
          required>${animal.description!}</textarea>
      </div>

      <div class="mb-3">
        <label for="breed" class="form-label">Breed</label>
        <input
          type="text"
          class="form-control"
          id="breed"
          name="breed"
          value="${animal.breed!}"
        />
      </div>

      <div class="mb-3">
        <label for="age" class="form-label">Age</label>
        <input
          type="number"
          step="0.1"
          class="form-control"
          id="age"
          name="age"
          value="${animal.age!}"
          min="0"
        />
      </div>

      <div class="mb-3">
        <label for="activeDate" class="form-label">Date of Birth</label>
        <input
          type="date"
          class="form-control"
          id="activeDate"
          name="activeDate"
          value="${animal.activeDate?string('yyyy-MM-dd')!}"
        />
      </div>

      <button type="submit" class="btn btn-primary">Update</button>
      <a href="/dogs/${animal.dogId}" class="btn btn-secondary ms-2">Cancel</a>
    </form>
  </div>

  <script src="/js/main.js"></script>
</body>
</html>
