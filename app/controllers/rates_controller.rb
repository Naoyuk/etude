class RatesController < ApplicationController
  def index
    @rates = Rate.order('created_at DESC')
  end
end
