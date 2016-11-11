class NotesController < ApplicationController
before_action :find_note, only: [:show, :edit, :update, :destroy]
  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to @note
    else
      render 'new'
    end
  end

  def index
      @notes = Note.all.order('created_at DESC')
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def note_params
    params.require(:note).permit(:title,:content)
  end

  def find_note
    @note = Note.find(params[:id])
  end
end
