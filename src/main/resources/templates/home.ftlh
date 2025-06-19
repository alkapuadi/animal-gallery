<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Animal Gallery - Home</title>
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
    <h1 class="mb-4 text-center">Welcome to the Animal Gallery!</h1>
    
    <form action="/dogs/search" method="get" class="mb-4 d-flex justify-content-center">
      <input
        type="text"
        name="name"
        class="form-control w-50 me-2"
        placeholder="Search by name"
        aria-label="Search dogs by name"
      />
      <button type="submit" class="btn btn-outline-primary">Search</button>
    </form>

    <div class="row">
      <#if animalList?size == 0>
        <p class="text-center">No dogs found.</p>
      <#else>
        <#list animalList as animal>
          <div class="col-md-4 mb-4">
            <div class="card h-100">
              <img
                src="/images/${animal.name?lower_case}.webp"
                class="card-img-top"
                alt="${animal.name} image"
                onerror="this.onerror=null; this.src='/images/default.webp'"
              />
              <div class="card-body d-flex flex-column">
                <h5 class="card-title">${animal.name}</h5>
                <p class="card-text">${animal.description!"No description available."}</p>
                <a href="/dogs/${animal.dogId}" class="btn btn-primary mt-auto">View Details</a>
              </div>
            </div>
          </div>
        </#list>
      </#if>
    </div>
  </div>

  <script src="/js/main.js"></script>
</body>
</html>
