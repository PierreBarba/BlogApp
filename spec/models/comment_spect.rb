require 'rails_helper'

RSpec.describe Comment, type: :model do
  user = User.create(name: 'pierre', photo: 'photo_any_of_course.com', bio: 'bio exist', posts_counter: 0)
  post = Post.create(author: user, title: 'good food', text: 'awesome tacos', comments_counter: 0,
                     likes_counter: 0)
  subject { Comment.new(text: 'test comment', author: user, post: post) }

  before { subject.save }

  it 'comment correctly created' do
    expect(subject).to be_valid
  end

  it 'should increment comments counter for post' do
    prev_counter = subject.post.comments_counter
    subject.update_comment_counter
    expect(subject.post.comments_counter) == prev_counter + 1
  end
end
