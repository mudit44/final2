require 'test_helper'

class MicropostTest < ActiveSupport::TestCase

  def setup
    @user = users(:mudit)
    # This code is not idiomatically correct.
    @micropost = @user.microposts.build(content: "Lorem ipsum")
  end

  test "should be valid" do
    assert @micropost.valid?
  end

end