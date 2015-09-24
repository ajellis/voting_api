require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "voter has access token" do
   voter = Voter.create(name: "Bill Nye", party: "Scientist")
   assert voter.access_token
  end

  test "voter with token can update their own information" do
    voter = Voter.create(name: "Bill", party: "democrat")
    post :update, id: voter.id, access_token: voter.access_token, party: voter.party, voter: {name: "Bill Smith", party: "Democrat"}
    puts Voter.access_token
    puts response.body
    puts Voter.last.inspect

    assert_equal "Bill Smith", Voter.last.name
  end


end
