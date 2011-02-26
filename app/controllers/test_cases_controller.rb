class TestCasesController < ApplicationController

  def index
    @test_cases = TestCase.all
  end
  
  def show
    @test_case = TestCase.find(params[:id], :include => :test_runs)
    @test_runs = @test_case.test_runs
  end
  
end
