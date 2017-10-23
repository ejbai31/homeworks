class BooksController < ApplicationController
  def index
    @books = Book.all
    render :index
  end

  def new
    # your code here
    render :new
  end

  def create
    # your code here
    book = Book.new(book_params)
    if book.save
      redirect_to :index
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    render :index
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
