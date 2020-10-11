# frozen_string_literal: true

module Api
  module Endpoints
    class Arrays < Grape::API
      namespace :arrays do
        desc 'create array' do
          tags %w[array]
        end
        params do
          requires :names, type: Array[String], documentation: { param_type: 'body' }
        end
        post do
          present :names, params[:names]
        end

        params do
          requires :id
        end
        route_param :id do
          desc 'put specific array' do
            tags %w[array]
          end
          params do
            requires :names, type: Array[String], documentation: { param_type: 'body' }
          end
          put do
            present :names, params[:names]
          end
        end
      end
    end
  end
end
