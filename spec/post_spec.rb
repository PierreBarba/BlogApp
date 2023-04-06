require 'rails_helper'

RSpec.describe Post, type: :model do
  subject do
    Post.new(
      author: User.new(name: 'pierre', photo: 'photo_any_of_course.com', bio: 'bio exist'),
      title: 'title of any post',
      text: 'some line of text',
      comments_counter: 0,
      likes_counter: 0
    )
  end
  before { subject.save }

  it 'the title must exist' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'the title must not exceed the size of 250 characters' do
    long_title = 'pO+R#)v9rJ^z?T|<asA0M@*gN&1KxHGy$%L>cC(2Ql8fEi5t6S7bB_u4UWw=X
    }D{/e]3[Zn;^!-\pO+R#)v9rJ^z?T|<a~sA0M@*gN&1KxHGy$%L>cC(2Ql8fEi5t6S7bB_u4UWw=X}D{/e]3
    [Zn;^!-\pO+R#)v9rJ^z?T|<asA0M@*gN&1KxHGy$%L>cC(2Ql8fEi5t6S7bB_u4UWw=X}D{/e]3[Zn;^!-\pO+
    R#)v9rJ^z?T|<a~sA0M@*gN&1KxHGy$%L>cC(2Ql8fEi5t6S7bB_u4UWw=X}D{/e]3[Zn;^!-\pO+R#)v9rJ^z?T|
    <asA0M@*gN&1KxHGy$%L>cC(2Ql8fEi5t6S7bB_u4UWw=X}D{/e]3[Zn;^!-\pO+R#)v9rJ^z?T|<a~sA0M@*gN&1KxHGy
    $%L>cC(2Ql8fEi5t6S7bB_u4UWw=X}D{/e]3[Zn;^!-\pO+R#)v9rJ^z?T|'
    subject.title = long_title
    expect(subject).to_not be_valid
  end

  it 'comments_counter should be positive' do
    subject.comments_counter = -4
    expect(subject).to_not be_valid
  end

  it 'likes_counter should be positive' do
    subject.likes_counter = -2
    expect(subject).to_not be_valid
  end

  it 'shows at most 4 recent comments' do
    subject.comments = [
      Comment.new(post: subject, author: subject.author, text: 'Hi lili!'),
      Comment.new(post: subject, author: subject.author, text: 'Hi francisco!'),
      Comment.new(post: subject, author: subject.author, text: 'Hi wanda!'),
      Comment.new(post: subject, author: subject.author, text: 'Hi paul!')
    ]
    expect(subject.recent_comments.length).to eql(4)
  end

  it 'the authors post counter should be increased' do
    prev_counter = subject.author.posts_counter
    subject.update_post_counter
    expect(subject.author.posts_counter) == prev_counter + 1
  end
end
