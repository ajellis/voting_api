require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "voter has access token" do
   voter = Voter.create(name: "Bill Nye", party: "Scientist")
   puts voter.inspect
   assert voter.access_token
 end

end
