require_relative 'export_csv'

# Post class created
class Post
  include ExportCSV

  attr_accessor :title, :body, :owner_email
  @@posts = {}
  @@id = 1

  def initialize(title, body, owner_email)
    @title = title
    @body = body
    @owner_email = owner_email
  end

  def add_post
    @@posts[@@id] = self
    @@id += 1
  end

  def self.show_posts
    @@posts.each do |key, post|
      puts "Post id#{key}"
      puts "Title: #{post.title}"
      puts "Body: #{post.body}"
      puts "Owner's Email: #{post.owner_email}"
      puts ''
    end
    puts '=========================='
  end

  def update_post(title: @title, body: @body, owner_email: @owner_email)
    @title = title if title
    @body = body if body
    @owner_email = owner_email if owner_email
  end

  def remove_post
    @@posts.delete_if { |_key, post| post == self }
  end
end

post1 = Post.new('First post', 'First test post', '1@ex.com')
post2 = Post.new('Second post', 'Second test post', '2@ex.com')
post3 = Post.new('Third post', 'Third test post', '3@ex.com')

post1.add_post
post2.add_post
post3.add_post

Post.show_posts

post2.remove_post

post3.update_post(body: 'DEUS VULT')

Post.show_posts

Post.posts_to_csv
