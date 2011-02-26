class TestRunsController < ApplicationController

  before_filter :find_test_run, :only => [ :show ]

  respond_to :html, :json 

  def index
    @test_runs = TestRun.all
    respond_with @test_runs
  end
  
  def show
    # see before_filter
    respond_with @test_run
  end
  
  def create
    test_case = TestCase.find_by_test_id(params[:test_case][:test_id])
    test_case = TestCase.create!(params[:test_case]) unless test_case
    
    params[:test_run][:avg] = params[:test_run][:avg].to_i
    @test_run = TestRun.new(params[:test_run])
    @test_run.browser = Browser.find_or_create_by_user_agent(request.env['HTTP_USER_AGENT'])
    @test_run.test_case = test_case;
    @test_run.save

    respond_with @test_run do |format| 
      format.json { head :ok }
    end
  end

  private 

  def find_test_run
    @test_run = TestRun.find(params[:id])
  end

end
