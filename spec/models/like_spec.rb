require 'rails_helper'

RSpec.describe Like, type: :model do
  user = User.create(name: 'pierre', photo: 'photo_any_of_course.com', bio: 'bio exist', posts_counter: 0)
  post = Post.create(author: user, title: 'good foood', text: 'awesome tacos', comments_counter: 0,
                     likes_counter: 0)
  subject { Like.new(author: user, post: post) }

  before { subject.save }

  it 'a like is created' do
    expect(subject).to be_valid
  end

  it 'the counter of likes must be incrementing for the publication' do
    prev_counter = subject.post.likes_counter
    subject.update_likes_counter
    expect(subject.post.likes_counter) == prev_counter + 1
  end
end
