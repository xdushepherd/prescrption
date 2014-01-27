require 'test_helper'

class PrescrisControllerTest < ActionController::TestCase
  setup do
    @prescri = prescris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prescris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prescri" do
    assert_difference('Prescri.count') do
      post :create, prescri: { age: @prescri.age, departments: @prescri.departments, diagnose: @prescri.diagnose, doctor: @prescri.doctor, gender: @prescri.gender, name: @prescri.name, patient_name: @prescri.patient_name, re_doctor: @prescri.re_doctor, re_re_doctor: @prescri.re_re_doctor, total_price: @prescri.total_price }
    end

    assert_redirected_to prescri_path(assigns(:prescri))
  end

  test "should show prescri" do
    get :show, id: @prescri
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prescri
    assert_response :success
  end

  test "should update prescri" do
    patch :update, id: @prescri, prescri: { age: @prescri.age, departments: @prescri.departments, diagnose: @prescri.diagnose, doctor: @prescri.doctor, gender: @prescri.gender, name: @prescri.name, patient_name: @prescri.patient_name, re_doctor: @prescri.re_doctor, re_re_doctor: @prescri.re_re_doctor, total_price: @prescri.total_price }
    assert_redirected_to prescri_path(assigns(:prescri))
  end

  test "should destroy prescri" do
    assert_difference('Prescri.count', -1) do
      delete :destroy, id: @prescri
    end

    assert_redirected_to prescris_path
  end
end
