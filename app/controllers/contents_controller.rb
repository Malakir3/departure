class ContentsController < ApplicationController
  before_action :find_content, only: [:edit, :update, :destroy]

  def index
    @contents = Content.all.order('created_at DESC')
  end
  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    render :new unless @content.save
  end

  def edit
  end

  def update
    return if @content.update(content_params)
    render :new
  end

  def destroy
    @content.destroy
  end

  private

  def content_params
    params.require(:content).permit(:nickname, :study_rule, :text)
  end

  def find_content
    @content = Content.find(params[:id])
  end
end
