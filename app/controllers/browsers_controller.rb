class BrowsersController < ApplicationController
  def show
    @browser = Browser.find(params[:id], :include => :test_runs)
    @test_runs = @browser.test_runs
  end
  
  def index
    @browsers = Browser.all
  end
end
