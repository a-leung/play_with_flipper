class VersionController < ApplicationController
  def index
    version = if Flipper[:beta].enabled?
                'beta'
              else
                'current'
              end

    render json: { version: version }
  end
end
