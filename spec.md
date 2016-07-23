# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project - The App is a rails app :)
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes) - The user has many posts
- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User) - The posts belong to a user.
- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients) - Users have many comments through postsÂ
- [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity) - Comments have content attribute
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) - I validate several things on the user and the posts.
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) - I have a sort method for users.
- [ ] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item)
- [x] Include signup (how e.g. Devise) - I have Devise for the signup process
- [x] Include login (how e.g. Devise) - I have Devise for the login process
- [x] Include logout (how e.g. Devise) - I also use devise for the logout process
- [ ] Include third party signup/login (how e.g. Devise/OmniAuth)
- [ ] Include nested resource show or index (URL e.g. users/2/recipes)
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
- [x] Include form display of validation errors (form URL e.g. /recipes/new) - My signup feature and creating a new post show errors.

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [x] Views use helper methods if appropriate - I am using some Pundit helper methods to shape my views when the user is an admin
- [x] Views use partials if appropriate - I am using form partials so far.

Also just to note my ideas. I am planning on using this as a skeleton for future projects. I want to completely craft a portfolio site and include a blog in it. This is why I am doing the blog project.
