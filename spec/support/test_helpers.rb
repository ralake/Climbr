def user_posts_image
  click_link("Post an image")
  fill_in 'post[description]', with: "Ama Dablam"
  attach_file('post[image]', 'spec/features/AD.jpg')
  click_button('Post!')
end

def user_posts_comment
  click_link('Comment')
  fill_in 'Comment', with: "Marvelous image!"
  click_button('Post comment')
end

def user_signs_up(email, username, password)
  visit'/posts'
  click_link("Sign up")
  fill_in 'Email', with: email
  fill_in 'Username', with: username
  fill_in 'Password', with: password
  fill_in 'Password confirmation', with: password
  click_button("Sign up")
end