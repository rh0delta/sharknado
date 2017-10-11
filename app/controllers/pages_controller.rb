class PagesController < ApplicationController
  def index
    render json: Page.all, status: :success
  end

  def parse
    @page = Page.new(pages_params)
    @page.parse_content

    if @page.save
      render json: @page, status: :created
    else
      render json: @page.errors, status: :unprocessable_entity
    end
  end

  private

  def pages_params
    params.require(:page).permit(:url)
  end
end
