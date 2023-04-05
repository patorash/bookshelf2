# app/actions/books/show.rb

module Bookshelf2
  module Actions
    module Books
      class Show < Bookshelf2::Action
        include Deps["persistence.rom"]

        params do
          required(:id).value(:integer)
        end

        def handle(request, response)
          book = rom.relations[:books].by_pk(
            request.params[:id]
          ).one!

          response.format = :json
          response.body = book.to_json
        end
      end
    end
  end
end
