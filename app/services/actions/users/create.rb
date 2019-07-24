module Actions
  module Users
    class Create < ApplicationAction

      def initialize(params)
        super(params)
      end

      def execute
        city = params[:city]

        case city
        when 'los_santos'
          additional_params = {
              money: 0,
              spawnX: 1642.2903,
              spawnY: -2333.3423,
              spawnZ: 13.5469,
              spawnA: 0,
              role: :player
          }

          User.create!(params.merge(additional_params))
        when 'las_venturas'
          additional_params = {
              money: 0,
              spawnX: 1642.2903,
              spawnY: -2333.3423,
              spawnZ: 13.5469,
              spawnA: 0,
              role: :player
          }

          User.create!(params.merge(additional_params))
        when 'san_fierro'
          additional_params = {
              money: 0,
              spawnX: 1642.2903,
              spawnY: -2333.3423,
              spawnZ: 13.5469,
              spawnA: 0,
              role: :player
          }

          User.create!(params.merge(additional_params))
        else
          # raiseError
        end
      end
    end
  end
end