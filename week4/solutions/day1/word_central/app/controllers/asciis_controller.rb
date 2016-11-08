class AsciisController < ApplicationController
  def new
    render :new
  end

  def create
    asciifier = Artii::Base.new :font => "doh"
    @text = params[:ascii][:text]
    @ascii_text = asciifier.asciify(@text)

    render :ascii_results
  end
end
