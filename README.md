# React Widget E-Commerce Store Backend

This is the backend for the React Widget Store!

The React Widget Store is an E-Commerce site made with React and Redux for the frontend and Ruby on Rails for the backend. The site has full user support with registering and signing in. A user can view, review, and purchase items! A user will add items to their cart, proceed through the checkout wizard and place an order that is persisted to the backend.

## Usage

**NOTE: It is required to get the [frontend](https://github.com/Xearta/react-ecommerce-frontend) and follow those instructions as well.**
This application is currently only available to run locally.

First clone this repo and run the following commands:

```
bundle install
rails db:drop
rails db:create
rails db:migrate
rails db:seed
rails s
```

If everything runs smoothly, the web site should start up at `http://localhost:3001`. You will need to get the [frontend](https://github.com/Xearta/react-ecommerce-frontend) and follow the instructions there to get the server running.

## Endpoints - Products

**NOTE: All Endpoints should follow: `http://localhost:3001/api/v1`**

|  Name  |     Path      | HTTP Verb |         Purpose         |
| :----: | :-----------: | :-------: | :---------------------: |
| Index  |   /products   |    GET    |  Displays all products  |
| Create |   /products   |   POST    |    Create a product     |
|  Show  | /products/:id |    GET    | Displays single product |
| Update | /products/:id |   PATCH   |  Update single product  |
| Delete | /products/:id |  DELETE   |  Delete single product  |

## Endpoints - Reviews

|  Name  |           Path            | HTTP Verb |              Purpose               |
| :----: | :-----------------------: | :-------: | :--------------------------------: |
| Index  |   /products/:id/reviews   |    GET    |  Displays all reviews for product  |
| Create |   /products/:id/reviews   |   POST    |   Create a review for a product    |
|  Show  | /products/:id/reviews/:id |    GET    | Displays single review for product |

## Endpoints - Users

|  Name  |    Path    | HTTP Verb |         Purpose         |
| :----: | :--------: | :-------: | :---------------------: |
| Index  |   /users   |    GET    |    Display all users    |
| Create |   /users   |   POST    |      Create a user      |
|  Show  | /users/:id |    GET    | Display a specific user |

## Endpoints - Orders

|  Name  |    Path     | HTTP Verb |         Purpose          |
| :----: | :---------: | :-------: | :----------------------: |
| Index  |   /orders   |    GET    |    Display all orders    |
| Create |   /orders   |   POST    |     Create an order      |
| Delete | /orders/:id |  DELETE   | Delete a specific order  |
|  Show  | /orders/:id |    GET    | Display a specific order |

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Xearta/react-ecommerce-frontend. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## License

The app is available as open source under the terms of the MIT License.
