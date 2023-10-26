class YoukosController < ApplicationController


    def index
        @youkos = Youko.all
        @youkos = @youkos.page(params[:page]).per(3)
    end


    def new
        @youko = Youko.new
     end
    
      def create
        youko = Youko.new(youko_params)
        if youko.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
    
      def dog
        @youkos = Youko.where(cause: "二日酔い")
      end
    
      def cat
        @youkos = Youko.where(cause: "夏バテ")
      end
    
      def hadakadebanezumi
        @youkos = Youko.where(cause: "貧血")
      end
    
      def edit
        @youko = Youko.find(params[:id])
      end

      def update
        youko = Youko.find(params[:id])
        if youko.update(youko_params)
          redirect_to :action => "show", :id => youko.id
        else
          redirect_to :action => "new"
        end
      end


        def show
          @youkos = Youko.find(params[:id])
        end
     

      private
      def youko_params
        params.require(:youko).permit(:food, :effect, :cook, :cause, :image)
        
      end

end

