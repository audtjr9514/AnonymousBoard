class ContController < ApplicationController
  def index
    @dbases = Dbase.all
  end
  
  def result
    @dbase = Dbase.new
    @dbase.person = params[:person]
    @dbase.question = params[:question]
    
    hashtags = params[:hashtags].split(',')
    hashtags.each do |tag|
      hashtag = Hashtag.find_or_create_by(name: tag.delete('#'))
      hashtag.save
      @dbase.hashtags << hashtag
    end
    
    @dbase.save
    
    redirect_to '/cont/index'
  end
  
  def destroy
    dbase = Dbase.find(params[:dbase_id])
    dbase.destroy
    
    redirect_to '/cont/index'
  end
  
  def edit
    @dbase = Dbase.find(params[:dbase_id])
  end
  
  def update
    @dbase = Dbase.find(params[:dbase_id])
    @dbase.person = params[:person]
    @dbase.question = params[:question]
    @dbase.hashtags.clear
    hashtags = params[:hashtags].split(',')
    hashtags.each do |tag|
      hashtag = Hashtag.find_or_create_by(name: tag.delete('#'))
      hashtag.save
      @dbase.hashtags << hashtag
    end
    @dbase.save
    
    redirect_to '/cont/index'
  end
  
end
