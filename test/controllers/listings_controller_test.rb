require 'test_helper'

class ListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    # what does the line below do?
    
    @listing = listings(:one)
  end

  test 'should get index' do
    get api_v1_listings_url, as: :json
    assert_response :success
  end

  test 'should create listing' do
    assert_difference('Listing.count') do
      post api_v1_listings_url,
           params: {
             listing: {
               description: @listing.description,
               price: @listing.price,
               title: @listing.title
             }
           }, as: :json
    end

    assert_response :created
  end

  test 'should show listing' do
    get api_v1_listings_url(@listing), as: :json
    assert_response :success
  end

  test 'should update listing' do
    patch api_v1_listings_url(@listing), params:
    { listing: { description: @listing.description, price: @listing.price, title: @listing.title } }, as: :json
    assert_response :success
  end

  test 'should destroy listing' do
    assert_difference('Listing.count', -1) do
      delete api_v1_listings_url(@listing), as: :json
    end

    assert_response :no_content
  end
end
