class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_positions

  protected
    def load_positions
      @positions = Position.find(:all, :limit => 3, :order => 'created_at desc')
    end
end
