class ConfessionsController < ApplicationController

  def index
    @confessions = Confession.all
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
