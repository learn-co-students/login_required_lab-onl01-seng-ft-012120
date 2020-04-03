class SecretsController < ApplicationController

    def show
        redirect_if_not_authorized
    end

end