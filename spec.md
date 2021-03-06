# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project - The App is a rails app :)
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes) - The user has many posts
- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User) - The posts belong to a user.
- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients) - Users have many comments through postsÂ
- [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity) - Comments have content attribute
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) - I validate several things on the user and the posts.
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) - I have a sort method for users which if you are an admin it will allow you show a list of users by their last name sorted.
- [x] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item) - I added a tags model and everything is now linked up for when you create a new blog post, you can add a new tag or select from a group of other ones.
- [x] Include signup (how e.g. Devise) - I have Devise for the signup process
- [x] Include login (how e.g. Devise) - I have Devise for the login process
- [x] Include logout (how e.g. Devise) - I also use devise for the logout process
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) - users can signup and login with facebook
- [x] Include nested resource show or index (URL e.g. users/2/recipes) - post/post_id/comments is the index page for comments
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients) - Users can comment on posts
- [x] Include form display of validation errors (form URL e.g. /recipes/new) - My signup feature and creating a new post show errors.

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers - The only logic really in the controllers is setting instance variable and possibly creating new instances
- [x] Views use helper methods if appropriate - I am using some Pundit helper methods to shape my views when the user is an admin
- [x] Views use partials if appropriate - I am using form partials so far.

Also just to note my ideas. I am planning on using this as a skeleton for future projects. I want to completely craft a portfolio site and include a blog in it. This is why I am doing the blog project.

# Specifications for the Rails with jQuery Assessment

Specs:
- [x] Use jQuery for implementing new requirements
- [x] Include a show page rendered using jQuery and an Active Model Serialization JSON backend. - The post show page is rendered via AJAX when someone clicks on the next button.
- [x] Include an index page rendered using jQuery and an Active Model Serialization JSON backend. - This is done when the comments on the post show page is loaded via AJAX, I also am going to do the post index page with an excerpt.
- [x] Include at least one has_many relationship in information rendered via JSON - Again when you load the post show via json the comments are also loaded.
- [x] Include at least one link that loads or updates a resource without reloading the page - When you click on the next link in a post show page, it renders the next page!
- [x] Must use your Rails API and a form to create a resource and render the response without a page refresh. - When adding a new comment, everything is done via ajax!
- [ ] Translate JSON responses into js model objects
- [ ] At least one of the js model objects must have at least one method added by your code to the prototype

Confirm
- [x] You have a large number of small Git commits - yup over 100 right now!
- [x] Your commit messages are meaningful - This I am good at, at least I feel that way!
- [x] You made the changes in a commit that relate to the commit message - Always, otherwise it just doesn't make any sense.
- [x] You don't include changes in a commit that aren't related to the commit message - I know that this has happened, but I try to keep that at an absolute minimum.
