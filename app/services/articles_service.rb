class ArticlesService
    class << self
        def initialize
            @article = ArticlesRepository.all
        end

        def createArticle(article)
            @create_article = ArticlesRepository.createArticle(article)
        end

        def getArticleById(id)
            @article = ArticlesRepository.getArticleById(id)
        end

        def updateArticle(article, article_params)
            @update_article = ArticlesRepository.updateArticle(article, article_params)
        end

        def destroyArticle(article)
            @destory_article = ArticlesRepository.destroyArticle(article)
        end

        def indexArticle(article)
            @article = ArticlesRepository.indexArticle(article)
        end
    end
end