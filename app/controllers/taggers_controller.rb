class TaggersController < ApplicationController
  respond_to :html

  after_action :skip_authorization, only: :show

  def show

  end
end
