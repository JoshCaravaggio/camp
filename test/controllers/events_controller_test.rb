require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get on-ice" do
    get events_on-ice_url
    assert_response :success
  end

end
