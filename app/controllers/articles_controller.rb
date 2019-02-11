class ArticlesController < ApplicationController
	before_action :authenticate_member!,only: [:edit, :update, :destroy, :new, :create]
	before_action :set_article,only: [:show, :edit, :update, :destroy]

	def index
		@articles=Article.order("created_at DESC")
		@article_attachments = @article.article_attachments.all
	end
	def homepage
		@articles=Article.order("created_at DESC").first(3)
		@article_attachments = @article.article_attachments.first(3)
	end
	def show
		
	end
	def new
		@article=Article.new
		@article_attachment = @article.article_attachments.build
	end
	def create
		@article=Article.new articles_params
		respond_to do |format|
     	if @article.save
       		params[:article_attachments]['avatar'].each do |a|
            @article_attachment = @article.article_attachments.create!(:avatar => a)
       		end
       		format.html { redirect_to @article, notice: 'Article was successfully created.' }
     	else
       		format.html { render action: 'new' }
     	end
   		end
		# if @article.save
		# 	params[:post_attachments]['avatar'].each do |a|
  #           @post_attachment = @post.post_attachments.create!(:avatar => a)
		#     redirect_to '/articles'
		# 	end
		# end
	end
	def edit
		
	end
	def update
		
		@article.update articles_params
		#update不用safe
		redirect_to articles_path
	end
	def destroy
		@article.destroy
		redirect_to articles_path
	end
	def articles_params
		params.require(:article).permit(:title,:date,:feature,:description,:body,post_attachments_attributes: [:id, :article_id, :avatar])
	end
	def set_article
		@article=Article.find params[:id]
	end
end
