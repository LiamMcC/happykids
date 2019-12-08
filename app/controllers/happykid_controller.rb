class HappykidController < ApplicationController
  def home
    @happykid = OpeningTime.all
    @promo = Promo.all

    @news = News.all
  end

  def contact
  end
                    ################  OPENING TIMES START HERE #####################
# Open admin page
  def admin
    @happykid = OpeningTime.all
    @promo = Promo.all
    @news = News.all
  end

# Open page to add nwe opening time
  def addtime
    
  end

# post request to create a new opening time
  def maketime

    openingtime = OpeningTime.new do |u|
      u.day = params[:opening_times][:day]
      u.from = "9:00"
      u.to = "12 Noon"
      u.on = true
      u.position = params[:opening_times][:position]
      
      
    end
    openingtime.save
    redirect_to "/"
  end

# Get request to open edit opening time page
    def edittime
        @nox = params[:id]
        @dday = OpeningTime.find_by(id: params[:id]) 

          @day = @dday.day
          @to = @dday.to
          @from = @dday.from
          @on = @dday.on
          @position = @dday.position


    end

# Post request to update opening time 
    def changetime

      @order = OpeningTime.find_by(id: params[:id])
      @order.update_attribute(:from , params[:opening_times][:from])
      @order.update_attribute(:to , params[:opening_times][:to])
      @order.update_attribute(:on , params[:opening_times][:on])
      @order.update_attribute(:day , params[:opening_times][:day])
      @order.update_attribute(:position , params[:opening_times][:position])
          
    redirect_to "/admin"
    end


# Get request to delete opening time 
        def deletetime
            OpeningTime.find(params[:id]).destroy
            redirect_to "/admin"
        end



         ################  OPENING TIMES END HERE #####################






          ################  PROMO DETAILS START HERE #####################
# Open page to add new promo

      def addpromo
          
      end

# post request to create a new promoton
          def makepromo

            promo = Promo.new do |u|
              u.title = params[:promo][:title]
              u.description = params[:promo][:description]
              u.image1 = params[:promo][:image1]
              u.image2 = params[:promo][:image2]
              u.position = params[:promo][:position]
              u.on = true
              
              
            end
            promo.save
            redirect_to "/admin"
          end


# Get request to open edit promo page
            def editpromo
              @promox = params[:id]
              @promof = Promo.find_by(id: params[:id]) 

                @title = @promof.title
                @description = @promof.description
                @image1 = @promof.image1
                @image2 = @promof.image2
                @on = @promof.on
                @position = @promof.position


            end



# Post request to update promo
def changepromo

  @promo = Promo.find_by(id: params[:id])
  @promo.update_attribute(:title , params[:promo][:title])
  @promo.update_attribute(:description , params[:promo][:description])
  @promo.update_attribute(:image1 , params[:promo][:image1])
  @promo.update_attribute(:image2 , params[:promo][:image2])
  @promo.update_attribute(:position , params[:promo][:position])
      
redirect_to "/admin"
end
          ################  PROMO DETAILS END HERE #####################

          ################  news DETAILS START HERE #####################
# Open page to add new promo

def addnews
          
end

# post request to create a new promoton
    def makenews

      news = News.new do |u|
        u.title = params[:news][:title]
        u.description = params[:news][:description]
        u.image1 = params[:news][:image1]
        u.image2 = params[:news][:image2]
        u.position = params[:news][:position]
        u.on = true
        
        
      end
      news.save
      redirect_to "/admin"
    end


# Get request to open edit promo page
      def editnews
        @newsx = params[:id]
        @newsf = News.find_by(id: params[:id]) 

          @title = @newsf.title
          @description = @newsf.description
          @image1 = @newsf.image1
          @image2 = @newsf.image2
          @on = @newsf.on
          @position = @newsf.position


      end



# Post request to update promo
def changenews

@news = News.find_by(id: params[:id])
@news.update_attribute(:title , params[:news][:title])
@news.update_attribute(:description , params[:news][:description])
@news.update_attribute(:image1 , params[:news][:image1])
@news.update_attribute(:image2 , params[:news][:image2])
@news.update_attribute(:position , params[:news][:position])

redirect_to "/admin"
end




# Get request to delete opening time 
def deletenews
  News.find(params[:id]).destroy
  redirect_to "/admin"
end


    ################  News DETAILS END HERE #####################









end
