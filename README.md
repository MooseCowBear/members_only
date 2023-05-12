# TrailNotes

This is an implementation of the Members Only project, from [the Odin Project's](https://theodinproject.com) Rails Path. 

## Features

- Authorization with the Devise Gem.
- Only members who are signed in may view the authors of posts. 
- Only the author of a post may edit or delete it. 

## Screenshots

The home page, when not signed in: 

![alt text](/screenshots/home.png "home page")

The home page when a user is signed in:

![alt text](/screenshots/home_signedin.png "home page when signed in")

The edit user page:

![alt text](/screenshots/edit_user.png "edit user page")

The post show page when not authored by the user:

![alt text](/screenshots/post_show_unowned.png "post show page")

The post show page when authored by the user:

![alt text](/screenshots/post_show_owned.png "post show page")

The edit post page that is available to author of post: 

![alt text](/screenshots/edit_post.png "edit post page")