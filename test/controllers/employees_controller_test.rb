require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert response.body.include?("Donatello")
  end

  test "show is specific" do
    # get the show page for Don
    get :show, id: employees(:don).id

    assert_response :success

    # Make sure I don't see Raph
    assert response.body.include?("Donatello")
    refute response.body.include?("Raphael")
  end

end
