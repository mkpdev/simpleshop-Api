# SimpleShop App

Things you may want to cover:

* Ruby version
    ruby 2.7.1

* Rails version
    Rails 6.0.4

* Gem install
	`bundle install`

* Create Database
	`rails db:create`
	`rails db:migrate`
	`rails db:seed`

* To run rails server
	rails s  

* To run sidekiq serv er  (for job)
	bundle exec sidekiq

-------------------------------------------------------------------------

All API's endpoints - 

	Baseurl =  localhost:3000 (default).
 	Authorization token which you get from sign in API as a response.


 1. User Sign Up API

 	url = Baseurl/api/sign_up
 	Method = Post
 	Headers - 
		    Content-Type   application/json

	Body - 
		 {
		    "email":"string",
		    "password":"1234567",
		    "password_confirmation": "1234567",
		    "first_name": "string",
		    "last_name":"string"
		}
	Resposne - 
		{
		    "id": 11,
		    "email": "string",
		    "first_name": "string",
		    "last_name": "string",
		    "created_at": "2022-02-18T06:31:31.004Z",
		    "updated_at": "2022-02-18T06:31:31.004Z"
		}

2.  User Sign In API

	url = Baseurl/api/users/login
 	Method = Post
 	Headers - 
		    Content-Type   application/json

	Body - 
	{

    	"email":"string",
    	"password":"1234567"
	}

	Response - 

		{
		    "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo4fQ.uz1SYYGsKd1QqGFUWR3tlFDhlKZk4jNYv6EBq-yzkVs",
		    "email": "string"
		}

---------------------------------------------------------------------------------



Region API's

1. Region create 
	url = Baseurl/api/regions
	Method = Post 
	Headers - 
		    Content-Type   application/json
		    Authorization -  token
	Body - 

		{
	    	"title": "Indis"
	    	"country": "US",
	    	"currency": "usd",
	    	"tax": "10"
		}

	Response -  

	{
	    "id": 6,
	    "title": "US",
	    "country": "US",
	    "currency": "usd",
	    "tax": "10.0",
	    "created_at": "2022-02-17T11:26:47.699Z",
	    "updated_at": "2022-02-17T11:26:47.699Z"
	}


2. Region update
    
  	url = Baseurl/api/regions/:id
	Method = put/patch 
	Headers - 
	    Content-Type   application/json
	    Authorization -  token

3. Region show 
	url = Baseurl/api/regions/:id
	Method = get
	Headers - 
	    Content-Type   application/json
	    Authorization -  token


4. Region delte 
	url = Baseurl/api/regions/:id
	Method = delete
	Headers - Same

5. Region index
		url = Baseurl/api/regions
		Method = get
		Headers - 
	    	Content-Type   application/json
	    	Authorization -  token


-----------------------------------------------------------------------
1. Product create 

	url = Baseurl/api/products
	Method = Post 
	Headers - 
		    Content-Type   application/json
		    Authorization -  token
	Body - 

		{
		    "title": "tshirt", 
		    "description": "dfsdf", 
		    "price": "10", 
		    "sku": "23232dfsdf",
		    "stock": "12",
		    "region_id": "2",
		    "image_url": "https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/48457/DIG010147_1._SX360_QL80_TTD_.jpg"
		}

	Response -  

	   {
	    "id": 27,
	    "title": "tshirt",
	    "description": "dfsdf",
	    "price": "10.0",
	    "sku": "23232dfsdf",
	    "stock": 12,
	    "image_url": "https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/48457/DIG010147_1._SX360_QL80_TTD_.jpg",
	    "region_id": 2,
	    "created_at": "2022-02-17T11:13:53.661Z",
	    "updated_at": "2022-02-17T11:13:53.661Z"
	}


2. Product update
    url = Baseurl/api/products/:id
	Method = put/patch 
	Headers - 
	    Content-Type   application/json
	    Authorization -  token

3. Product show 
	url = Baseurl/api/products/:id
	Method = get
	Headers - 
	    Content-Type   application/json
	    Authorization -  token


4. Product deelte 
	url = Baseurl/api/products/:id
	Method = delete
	Headers - 
	    Content-Type   application/json
	    Authorization -  token


5. Product index

		url = Baseurl/api/products
		Method = get
		Headers - 
	    	Content-Type   application/json
	    	Authorization -  token	    

------------------------------------------------------------


Order Table API



1. Order create 

	url = Baseurl/api/orders
	Method = Post 
	Headers - 
		    Content-Type   application/json
		    Authorization -  token
	Body - 

		{
		    "user_id":"1",
		    "order_total": 55,
		    "addresses": {
		        "address":"Gandhi Nagar",
		        "pincode":"452001",
		        "country": "India",
		        "city":"Indore",
		        "state":"MP"
		    }
		}

	Response -  

	   {
	    "id": 3,
	    "user_id": 1,
	    "address_id": 3,
	    "order_total": 55,
	    "status": null,
	    "paid_at": null,
	    "created_at": "2022-02-17T11:21:32.297Z",
	    "updated_at": "2022-02-17T11:21:32.297Z"
	}


2. Order update
    
    url = Baseurl/api/orders/:id
	Method = put/patch 
	Headers - 
	    Content-Type   application/json
	    Authorization -  token

3. Order show 
	url = Baseurl/api/Orders/:id
	Method = get
	Headers - 
	    Content-Type   application/json
	    Authorization -  token


4. Order delete 
	url = Baseurl/api/orders/:id
	Method = delete
	Headers - 
	    Content-Type   application/json
	    Authorization -  token

5. Order index	
	url = Baseurl/api/orders/
	Method = get
	Headers - 
	    Content-Type   application/json
	    Authorization -  token

--------------------------------------------------------------------------

Item Table API's


	1. Item create 

	url = Baseurl/api/items
	Method = Post 
	Headers - 
		    Content-Type   application/json
		    Authorization -  token

	Body - 
		{
	    "product_id": 3,
	    "quantity": "2",
	    "order_id": 1
	}

	Response -  

	{
    "id": 3,
    "order_id": 2,
    "product_id": 3,
    "quantity": "2",
    "created_at": "2022-02-17T11:30:46.674Z",
    "updated_at": "2022-02-17T11:30:46.674Z"
	}


2. Item index
		url = Baseurl/api/items
		Method = get
------------------------------------------------------------
