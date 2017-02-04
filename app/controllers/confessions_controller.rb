class ConfessionsController < ApplicationController

  def special
    @confession = Confession.last
    if @confession.nil?
      render 'static/index'
    end
  end

  def index
    @confessions = Confession.all.order(created_at: :desc)
  end

  def new
    @confession = Confession.new
  end

  def create
    @confession = Confession.new confession_params
    if @confession.save
      flash[:notice] = "Twoje wyznanie zostało zapisane"
      redirect_to confessions_path
    else
      flash[:error] = "Popraw błedy i spróbuj ponownie"
      render action: "new"
    end

  end


  private
    def confession_params
      params.require(:confession).permit(:title, :description, :author, :location, :gender)
    end

end
