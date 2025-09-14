class TaggersController < ApplicationController
  respond_to :html

  after_action :skip_authorization, only: :show

  def show
    @post = authorize Post.where("tag_string LIKE '%tagme%'").where.not(id: params[:not_post_id] || nil).order('RANDOM()').first!
    respond_with(@post)
  end
end
