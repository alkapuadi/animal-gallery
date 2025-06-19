# Animal Gallery - Arodi Kapuadi

This is a simple static website that displays a gallery of dogs. Each dog has their own profile page with details and a picture.

## Features

- Home page with a gallery of 5 dogs: Bella, Charlie, Luna, Max, and Rocky
- Each dog links to their own individual details page
- About page with information about the project
- Fully responsive using Bootstrap


## API Endpoints
Base URL: [`http://localhost:8080/api/dogs`](http://localhost:8080/api/dogs)


1. ### [`/`](http://localhost:8080/api/dogs) (GET)
Gets a list of all dogs in the database.

#### Response - A JSON array of Dog objects.

 ```
[
  {
    "dogID": 2,
    "name": "Bella",
    "description": "Loves playing fetch",
    "breed": "Labrodor",
    "age": 3.0
    "activeDate": "2023-05-31"
  }
]
```
2. ### [`/`](http://localhost:8080/students) (POST)
Create  a new Dog entry

#### Request Body
A dog object.
```
{
  "name":"Bella",
  "description":"Loves playing fetch",
  "breed":"Labrodor",
  "age": 3,
  "activeDate": "2023-06-01"
}
```
#### Response - The newly created Dog.

```
  {
    "name":"Bella",
    "description":"Loves playing fetch",
    "breed":"Labrodor",
    "age": 3,
    "activeDate": "2023-06-01"
  }
```

