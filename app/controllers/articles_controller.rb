class ArticlesController < ApplicationController

    # http_basic_authenticate_with name: "dhh", password: "secret", except:[:index, :show]

    def index
      @articles = Article.all
      @sql = "SELECT
        DATE_FORMAT(`created_at`, '%m') as `date`,
        COUNT(*) as `count`
        FROM blog.users
        GROUP BY MONTH(`created_at`)";
      @arrays = ActiveRecord::Base.connection.execute(@sql).to_h;
        # @article = ArticlesService.indexArticle(@article)
    end

    def show
        # @article = Article.find(params[:id])
        @article = ArticlesService.getArticleById(params[:id])
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        
        @create_article = ArticlesService.createArticle(@article)
        if @create_article
            redirect_to @article
        else
            render :new
        end
    end

    def edit
        # @article = Article.find(params[:id])
        @article = ArticlesService.getArticleById(params[:id])
    end

    def update
        @article = ArticlesService.getArticleById(params[:id])
        @update_article = ArticlesService.updateArticle(@article, article_params)
        if @update_article
            redirect_to @article
        else
            render :edit
        end
    end

    def destroy
        @article = ArticlesService.getArticleById(params[:id])
        @destory_article = ArticlesService.destroyArticle(@article)

        redirect_to root_path
    end


    private 
        def article_params
            params.require(:article).permit(:title, :body, :status)
        end
end  