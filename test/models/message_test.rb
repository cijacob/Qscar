require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test 'respond to name, email and body' do 
    msg = Message.new

    assert msg.respond_to?(:name), 'does not respond to: name'
    assert msg.respond_to?(:email), 'does not respont to: email'
    assert msg.respond_to?(:body), 'does not respond to: body'
  end 

  test 'shoudl be valid' do 
    attrs= {
      name: 'cindy',
      email: 'cindy@live.be',
      body: 'test'
    }

    msg = Message.new attrs
    assert msg.valid?, 'should be valid'
  end 

  test 'name, email and body are required' do 
    msg = Message.new
    refute msg.valid?, 'msg blank should be invalid'


    assert_match /blank/, msg.errors[:name].to_s
    assert_match /blank/, msg.errors[:email].to_s
    assert_match /blank/, msg.errors[:body].to_s

  end 

end
