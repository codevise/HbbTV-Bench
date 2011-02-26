require 'test_helper'

class TestCasesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => TestCase.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    TestCase.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    TestCase.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to test_case_url(assigns(:test_case))
  end
  
  def test_edit
    get :edit, :id => TestCase.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    TestCase.any_instance.stubs(:valid?).returns(false)
    put :update, :id => TestCase.first
    assert_template 'edit'
  end

  def test_update_valid
    TestCase.any_instance.stubs(:valid?).returns(true)
    put :update, :id => TestCase.first
    assert_redirected_to test_case_url(assigns(:test_case))
  end
  
  def test_destroy
    test_case = TestCase.first
    delete :destroy, :id => test_case
    assert_redirected_to test_cases_url
    assert !TestCase.exists?(test_case.id)
  end
end
