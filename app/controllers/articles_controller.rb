class ArticlesController < ApplicationController
	#Get /articles
	def index
		#select * from tabla
		@articles = Article.all
	end
	#get /articles/:id
	def show
		#select * from tabla where 
		@article = Article.find(params[:id])
		#Article.where("body LIKE ?",)
		#Article.where("body LIKE ?",)
		#Article.where("id = ?", params[:id]) ->evita el sql injection
		#Article.where.not("id = ?", params[:id]) -> diferente del que se selecciono
		#Article.where("id = #{params[:id]}") <- sql injection, es vulnerable

	end	
	#get /articles/new
	def new
		@article = Article.new	
	end
	#post /articles
	def create
	#insert  
		@article = Article.new(article_params)
		#@article = Article.new( title: params[:article][:title],body: params[:article][:body])
		 #@article.invalid?
		if @article.save  #guardar en la db
		redirect_to @article
			else
				render :new
			end
	end
	
	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to articles_path	
	end

	def edit
		@article =Article.find(params[:id])
	end

	#PUT /articles/:ID
	def update
		@article = Article.find(params[:id])
		if @article.update(article_params)
			redirect_to @article
		else
			render :edit
		end
	end

#todo lo que esta debajo de private herdean la privbacidad, strong params
	private 
	def article_params
		params.require(:article).permit(:title,:body)
	end
	
end