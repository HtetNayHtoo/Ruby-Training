class ArticlesRepository
    class << self
        def initialize
            @article = Article.all
        end

        def createArticle(article)
            @create_article = article.save
        end

        def getArticleById(id)
            @article = Article.find(id)
        end

        def updateArticle(article, article_params)
            @update_article = article.update(article_params)
        end

        def destroyArticle(article)
            @destory_article = article.destroy
        end

        # def indexArticle(article)
        #     @sql = "SELECT
        #     DATE_FORMAT(`created_at`, '%m') as `date`,
        #     COUNT(*) as `count`
        #     FROM blog.users
        #     GROUP BY MONTH(`created_at`)";
        # end
    end
end