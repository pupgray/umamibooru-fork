class TaggersController < ApplicationController
  respond_to :html

  after_action :skip_authorization, only: :show

  def show
    @post = authorize Post.where("tag_string LIKE '%tagme%'").order('RANDOM()').first!
    respond_with(@post)
  end
end
