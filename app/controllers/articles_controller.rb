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
    end

    def show
        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)

        if @article.save
            redirect_to @article
        else
            render :new
        end
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])

        if @article.update(article_params)
            redirect_to @article
        else
            render :edit
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy

        redirect_to root_path
    end


    private 
        def article_params
            params.require(:article).permit(:title, :body, :status)
        end
end  