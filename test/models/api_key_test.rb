require 'test_helper'

class ApiKeyTest < ActiveSupport::TestCase
  def test_api_key_can_be_created
    a = ApiKey.new()
    assert a.save
  end
end
