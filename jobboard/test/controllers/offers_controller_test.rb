require 'test_helper'

class OffersControllerTest < ActionController::TestCase
  setup do
    @offer = offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offer" do
    assert_difference('Offer.count') do
      post :create, offer: { active: @offer.active, category_id: @offer.category_id, company_id: @offer.company_id, contact: @offer.contact, creation_date: @offer.creation_date, description: @offer.description, duration: @offer.duration, expiration_date: @offer.expiration_date, start_date: @offer.start_date, target: @offer.target, title: @offer.title }
    end

    assert_redirected_to offer_path(assigns(:offer))
  end

  test "should show offer" do
    get :show, id: @offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offer
    assert_response :success
  end

  test "should update offer" do
    patch :update, id: @offer, offer: { active: @offer.active, category_id: @offer.category_id, company_id: @offer.company_id, contact: @offer.contact, creation_date: @offer.creation_date, description: @offer.description, duration: @offer.duration, expiration_date: @offer.expiration_date, start_date: @offer.start_date, target: @offer.target, title: @offer.title }
    assert_redirected_to offer_path(assigns(:offer))
  end

  test "should destroy offer" do
    assert_difference('Offer.count', -1) do
      delete :destroy, id: @offer
    end

    assert_redirected_to offers_path
  end
end
