# frozen_string_literal: true

module Api
  module Endpoints
    class Complex < Grape::API
      namespace :complex do
        desc 'create complex' do
          tags %w[complex]
        end
        params do
          requires :addresses,
                   type: Array[JSON],
                   documentation: { param_type: 'body' } do
            requires :street
            requires :city
            requires :code
          end
        end
        post do
          present :addresses, params[:addresses]
        end

        params do
          requires :id
        end
        route_param :id do
          desc 'put complex' do
            tags %w[complex]
          end
          params do
            requires :addresses,
                     type: Array[JSON],
                     documentation: { param_type: 'body' } do
              requires :street
              requires :city
              requires :code
            end
          end
          put do
            present :addresses, params[:addresses]
          end
        end
      end
    end
  end
end
