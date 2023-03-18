# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
@user = User.new(
                    :email => 'test@example.com',
                    :name => 'Tom',
                    :photo => 'https://unsplash.com/photos/F_-0BxGuVvo',
                    bio: 'Teacher from Mexico china.',
                 :password => 'password',
                 :password_confirmation => 'password')
Post.create(author: @user, title: 'Hello', text: 'This is my first post')