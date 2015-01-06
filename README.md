Climbr
======
Makers Academy Week 8 Challenge
[Heroku Link](https://climbagram.herokuapp.com/)

Brief
-----
Build an Instagram clone using Rails. You'll need users who can post pictures, write comments on pictures and like a picture. It will need to look like the instagrams website or better.

Breakdown of models:

###User
Used devise for user management.

###Post
Used ImageMagick and Paperclip to manage images within the app and Amazon WS S3 for storage.

###Comment
Users can post numerous comments on a post. The comments contain information on how long ago 

###Like
Used AJAX to update likes in real-time without a page refresh.

Still To Do
-----------
- Username to posts and comments should be done by associations not merge info in the params.
- create test helper module file in support and require this in the rails helper. Store test helper methods in there.
- Amend responsiveness of grid and images and investigate break points.
- @post.comments.create, refactor and put mentod in post model to create the comments, call this in the controller.

Challenges
----------


Technologies
------------
Ruby, Rails, RSpec, Capybara, AWS S3