# frozen_string_literal: true

module Api
  module V1
    class FilmsController < Api::V1::BaseApiController
      skip_before_action :doorkeeper_authorize!, on: :index

      def index
        @films = Film
                    .all
                    .includes(%i[related category])
                    .limit(5)
        respond_with @films
      end
    end
  end
end
