class HealthController < ApplicationController
    def status
        render plain: 'OK'
    end
end