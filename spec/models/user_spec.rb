require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'pierre', photo: 'photo_any_of_course.com', bio: 'bio exist', posts_counter: 0) }

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'post_counter should be positive' do
    subject.posts_counter = -1
    expect(subject).to_not be_valid
  end

  it 'should show only a maximum of 3 recent posts' do
    subject.posts = [
      Post.new(author: subject, title: 'forth', text: 'forth text', comments_counter: 0, likes_counter: 0),
      Post.new(author: subject, title: 'third', text: 'third text', comments_counter: 0, likes_counter: 0),
      Post.new(author: subject, title: 'second', text: 'second text', comments_counter: 0, likes_counter: 0),
      Post.new(author: subject, title: 'first', text: 'first text', comments_counter: 0, likes_counter: 0)
    ]
    expect(subject.recent_posts.length).to eql(3)
  end
end
