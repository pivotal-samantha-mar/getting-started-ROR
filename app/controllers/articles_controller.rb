class ArticlesController < ApplicationController
    def new 
    end
    
    def index
        @articles = Article.all
    end
    
    def show
        @article = Article.find(params[:id])
    end
    
    def create
        #create a new article object with the information from the form
        @article = Article.new(article_params)
        
        @article.save 
        redirect_to @article 
    end
    
    private 
        def article_params 
            params.require(:article).permit(:title,:text)
        end 
end
