class PiecesController < ApplicationController
  def index
    @pieces = Piece.all
  end

  def my_favorites
    @pieces = current_user.favorited_pieces
  end

  def show
    @piece = Piece.find(params[:id])
  end

  def new
    @piece = Piece.new
  end

  def create
    @piece = Piece.new
    @piece.necklace_style_3 = params[:necklace_style_3]
    @piece.necklace_style_2 = params[:necklace_style_2]
    @piece.work = params[:work]
    @piece.night = params[:night]
    @piece.everyday = params[:everyday]
    @piece.gold = params[:gold]
    @piece.silver = params[:silver]
    @piece.designer_id = params[:designer_id]
    @piece.price = params[:price]
    @piece.description = params[:description]
    @piece.necklace_style_1 = params[:necklace_style_1]
    @piece.title = params[:title]
    @piece.image = params[:image]

    if @piece.save
      redirect_to "/pieces", :notice => "Piece created successfully."
    else
      render 'new'
    end
  end

  def edit
    @piece = Piece.find(params[:id])
  end

  def update
    @piece = Piece.find(params[:id])

    @piece.necklace_style_3 = params[:necklace_style_3]
    @piece.necklace_style_2 = params[:necklace_style_2]
    @piece.work = params[:work]
    @piece.night = params[:night]
    @piece.everyday = params[:everyday]
    @piece.gold = params[:gold]
    @piece.silver = params[:silver]
    @piece.designer_id = params[:designer_id]
    @piece.price = params[:price]
    @piece.description = params[:description]
    @piece.necklace_style_1 = params[:necklace_style_1]
    @piece.title = params[:title]
    @piece.image = params[:image]

    if @piece.save
      redirect_to "/pieces", :notice => "Piece updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @piece = Piece.find(params[:id])

    @piece.destroy

    redirect_to "/pieces", :notice => "Piece deleted."
  end
end
