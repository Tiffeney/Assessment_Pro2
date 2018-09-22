class WidgetsController < ApplicationController
    def create
        @widget = Widget.new(widget_params)
        if @widget.save
            redirect_to widgets_path(id: @widget)
        else
            redirect_to 'index'
        end
    end

    def index
        @widgets = Widget.all
        @widget = Widget.new

    def show
        @widget = Widget.find params[:id]
    end

    def new
        @widget = Widget.new
    end

    
end

    def destroy
        @widget = Widget.find params[:id]
        @widget.destroy
            redirect_to wigets_path
    end


private
        def widget_params
            params.require(:widget).permit(:description, :quantity)
        end
end