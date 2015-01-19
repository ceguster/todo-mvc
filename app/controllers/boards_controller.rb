class BoardsController < ApplicationController

  def index
    @boards = Board.all
    @board = Board.new
  end

  def create
    @board = Board.create(board_params)
    redirect_to board_path(@board)
  end

  def show
    @board = Board.find(params[:id])
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
    @board.update(board_params)
    @board.save

    redirect_to @board
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy

    redirect_to root_path
  end

  private
    def board_params
      params.require(:board).permit(:name)
    end

end
