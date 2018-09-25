require 'test_helper'

class ZipcodedatabasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zipcodedatabase = zipcodedatabases(:one)
  end

  test "should get index" do
    get zipcodedatabases_url
    assert_response :success
  end

  test "should get new" do
    get new_zipcodedatabase_url
    assert_response :success
  end

  test "should create zipcodedatabase" do
    assert_difference('Zipcodedatabase.count') do
      post zipcodedatabases_url, params: { zipcodedatabase: { City: @zipcodedatabase.City, StateAbb: @zipcodedatabase.StateAbb, county: @zipcodedatabase.county, state: @zipcodedatabase.state, zip: @zipcodedatabase.zip } }
    end

    assert_redirected_to zipcodedatabase_url(Zipcodedatabase.last)
  end

  test "should show zipcodedatabase" do
    get zipcodedatabase_url(@zipcodedatabase)
    assert_response :success
  end

  test "should get edit" do
    get edit_zipcodedatabase_url(@zipcodedatabase)
    assert_response :success
  end

  test "should update zipcodedatabase" do
    patch zipcodedatabase_url(@zipcodedatabase), params: { zipcodedatabase: { City: @zipcodedatabase.City, StateAbb: @zipcodedatabase.StateAbb, county: @zipcodedatabase.county, state: @zipcodedatabase.state, zip: @zipcodedatabase.zip } }
    assert_redirected_to zipcodedatabase_url(@zipcodedatabase)
  end

  test "should destroy zipcodedatabase" do
    assert_difference('Zipcodedatabase.count', -1) do
      delete zipcodedatabase_url(@zipcodedatabase)
    end

    assert_redirected_to zipcodedatabases_url
  end
end
