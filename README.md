# Swanky Spirits

![Swanky Logo](https://i.imgur.com/upwpD36.png)

The main responsibility of the inventory management system is to be able to track the inventory levels of various items that your business needs in stock. You must keep track of the quantity of each item in stock, as well its price.

Swanky Spirits is a fictitious liquor store with a physical address. The application was created for employees to be able to interact with the company's liquor and wine database to keep track of what's incoming and what's being sold at the store.

## Live APPS

[Live Website](https://callback-ktz.github.io/swanky-spirits-client) | [Heroku App](https://glacial-cliffs-16241.herokuapp.com)

### Client Repository

[Client Repo Link](https://github.com/Callback-ktz/swanky-spirits-client)

### Server Repository

[Server Repo Link](https://github.com/Callback-ktz/swanky-spirits-server)

## RESTful API Documentation

### Users

#### POST / sign-up

Creates a new user account and auto signs them in the first time.
Takes a `credentials` parameter that is a JSON object with the following keys.
`email` - Required - The e-mail for the new user account
`password` - Required - Password
`password_confirmation` - Required - Repeat Password

#### POST /sign-in

Signs in used according to credentials passed previously. Responds with a user token that is used for all other requests.
`email` - Required - The e-mail for the new user account.
`password` - Required - Current Password.

#### PATCH /change-password

Allows user to change password once they are logged in.
`old` - Required - Old Password.
`new` - Required - New Password.

#### DELETE /sign-out

Ends the current session.

### Inventory

#### GET /inventory

Gets the inventory and shows it on main page. Populates the table accordingly to the owner in current session. For V 10. we allowed all employees to have the same level of authority on adding and editing items.

#### GET /inventory/:id

Gets the data for an individual item in the inventory and shows it on main table.

### POST /inventory

`name` - Required - Name of item to be added. If next adds have the same name, it will **sum** the new item to the total of items currently on the table.
`unit_price` - Required - Unit price of the current item. You will not be able to use same name item and change the price while creating it. Instead, update it directly in the table.
`quantity` - Required - Quantity of items.

### PATCH /inventory/:id

Fully editable table realtime. No requirements. Once a user changes another user activity on the table, it will show them as the most updated owner of that change in the `user` column.

### DELETE /inventory/:id

Immediately deletes item. No confirmation required on V 1.0.

## Planning

We worked the entirery of the backend as a team. After our backend was up and running, we started wit the user authentication on the frontend side of the application. After we were done with both assignments, we started working on CRUD separately to be merged in the development branch together. Once all of our CRUD items were done, we started to work on special functionalities, like limiting max currency and quantity, adding decimals and working on building a user friendly inventory management so any of the employees could make updates to the table that would be tracked back to that user. We worked developing a rich layout that would make the website even better than before.

## Technical Information

### Technologies Used

- **On the BackEnd:**
Express, MongoDB, Node.js, JavaScript, Curl, Heroku, Github
- **On the FrontEnd:**
Axios, HTML, CSS, JavaScript, React, React Bootstrap, Github

### Original Wireframe

![Swanky Spirits](https://i.imgur.com/Ekqjqv5.jpg)

### User relationships

![User Relationships](https://i.imgur.com/psotpgR.jpg)

### User Stories

- As a user, I want to be able to Sign-up
- As a user, I want to be able to Sign-in to access my account
- As a user, I want to Change-Pw and Sign-out from my app
- As a user, I want to view the main-container with the products I have 10 at each time
- As a user, I want to change between different pages of data
- As a user, I want to be able to filter my search for a specific product
- As a user, I want to merge products with same ID to existing product;
- As a user, I want to create a new product ID if none of that product exists yet in the table;
- As a user, I want to specify and edit unit price, total price and quantities of each product;
- As a user, I want to delete products.

## Issues and Upgrades

- The table still needs to be fully responsive for mobile view
- A search filter and navigation through pages can be incorporated in a 2.0 version of the project
- The project could create interactions between other companies and their own employees and not only Swanky Spirits
- Add external API that handles the item names
- Auto-complete for item names that were already added to the list
