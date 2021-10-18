class MysqlController < ApplicationController
    def index
        
    end
    def output     
        # name = Demo.where("firstname like ?",params[:firstname])
        name = Demo.find_by_firstname(params[:firstname])
        # puts name+"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
        if name == nil
            render json: {"payload": "no record found"  }
        else
             render json: {"payload": name}
        end
    end
end
