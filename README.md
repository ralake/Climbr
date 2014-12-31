Climbr
======
Makers Academy Week 8 Challenge

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

[Heroku Link]: https://climbagram.herokuapp.com/

Challenges
----------


Technologies
------------
Ruby, Rails, RSpec, Capybara, AWS S3