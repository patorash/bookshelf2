# frozen_string_literal: true

module Bookshelf2
  module Actions
    module Home
      class Show < Bookshelf2::Action
        def handle(*, response)
          response.body = "Welcome to Bookshelf"
        end
      end
    end
  end
end
