# Todo-golang-react

A simple, dockerized, golang RESTful API with react frontend.

Golang RESTful API based on [this tutorial](https://medium.com/@thedevsaddam/build-restful-api-service-in-golang-using-gin-gonic-framework-85b1a6e176f3)

## Development

#### Server

To run the server, do

```bash
go build -o todo-app
./todo-app
```

Accessible via: http://localhost:5001/api/v1/todos/

#### UI

```bash
cd ui
yarn install
yarn start
```

Accessible via: http://localhost:8080
