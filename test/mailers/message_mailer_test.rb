require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase
  test "contact_me" do
    message = Message.new name: 'cindy',
                          email: 'jacobcindy@live.be',
                          body: 'hello, how are you doing?'

    email = MessageMailer.contact_me(message)

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal 'hello, how are you doing?', email.subject
    assert_equal ['jacobcindy@live.be'], email.to
    assert_equal ['jacobcindy@live.be'], email.from
  end

end
