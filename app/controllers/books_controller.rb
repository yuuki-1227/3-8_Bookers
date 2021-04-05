class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])

  end

  def new

  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books'
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book =Book.find(params[:id])
    book.update(book_params)
    redirect_to '/books'
  end


  private
    def book_params
      params.require(:book).permit(:title,:body)
    end

end