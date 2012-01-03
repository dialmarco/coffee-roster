class PagesController < ApplicationController
  def index
    @next_runner = Purchase.next_runner
    @runs = Purchase.limit(5).order('created_at desc')
  end

  def coffee_run
    purchase = Purchase.new(:name => params[:name])
    purchase.save!
    redirect_to root_path
  end
end
