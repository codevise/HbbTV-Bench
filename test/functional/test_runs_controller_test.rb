require 'test_helper'

class TestRunsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => TestRun.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    TestRun.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    TestRun.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to test_run_url(assigns(:test_run))
  end
  
  def test_edit
    get :edit, :id => TestRun.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    TestRun.any_instance.stubs(:valid?).returns(false)
    put :update, :id => TestRun.first
    assert_template 'edit'
  end

  def test_update_valid
    TestRun.any_instance.stubs(:valid?).returns(true)
    put :update, :id => TestRun.first
    assert_redirected_to test_run_url(assigns(:test_run))
  end
  
  def test_destroy
    test_run = TestRun.first
    delete :destroy, :id => test_run
    assert_redirected_to test_runs_url
    assert !TestRun.exists?(test_run.id)
  end
end
