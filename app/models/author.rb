class Author < ApplicationRecord
  has_one :profile
  has_many :posts
  def show
    author = Author.find(params[:id])
    render json: author ,include: :name
  end
end
