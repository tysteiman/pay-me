class HomeController < ApplicationController
    def index
        @lended   = current_user.lended
        @borrowed = current_user.borrowed
    end
end