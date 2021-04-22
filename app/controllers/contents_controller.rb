class ContentsController < ApplicationController
  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    render :new unless @content.save
  end

  private

  def content_params
    params.require(:content).permit(:nickname, :study_rule, :text)
  end
end
