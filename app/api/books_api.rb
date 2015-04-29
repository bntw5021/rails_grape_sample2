class Books_API < Grape::API
  resource "books" do

    # ex) http://localhost:3000/api/v1/books
    desc "returns all books"
    get do
      Book.all
    end

    desc "return a books"
    params do
      requires :id, type: Integer
      optional :title, type: String
    end
    # http://localhost:3000/api/v1/books/{:id}
    get ':id' do
      Book.find(params[:id])
    end
  end
end
