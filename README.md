Climbr
======
Makers Academy Week 8 Challenge
![homepage](https://s3-eu-west-1.amazonaws.com/repoimages/Screen+Shot+2015-01-12+at+09.34.24.png)
[Heroku Link](https://climbagram.herokuapp.com/)

Brief
-----
Build an Instagram clone using Rails. You'll need users who can post pictures, write comments on pictures and like a picture. It will need to look like the instagrams website or better.

Breakdown of models:

###User
Used devise for user management.

###Post
Used ImageMagick and Paperclip to manage images within the app and AWS S3 for storage.

###Comment
Users can post numerous comments on a post and the comment has details on when it was posted and by whom.

###Like
Used AJAX to update likes in real-time without a page refresh.

Challenges
----------
I have an on-going issue with portrait photos being displayed as landscape when the full image is viewed. It seems that this is to do with the image's iternal EXIF data but I cannot find a way of rectifying this as yet. I also stuggled with setting up modals for the forms and posts but this is now in place.

Technologies
------------
Ruby, Rails, RSpec, Capybara, AWS S3
