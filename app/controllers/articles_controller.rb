class ArticlesController < ApplicationController
#######Notas globales###############
#"params", es para recibir todos los parametros que recibamos

#Accion para mostrar un formulario
# Se crea un nuevo archivo en app/views/articles/new.html.erb
  def new
#Declaramos un objeto de tipo article vacio
    @article=Article.new
#para llenar los Text
    @article.title='demo'
  end

#Accion para guradar los datos del formulario
  def create
#Metodo para guardar los datos, primero ponemos el titulo del campo en la base de datos
#despues ponemos el origen del dato, y por ultimo el nombre
    @article = Article.create(title: params[:article][:title], content: params[:article][:content])
#para mostrar resultados usamos json  render json: @article
  end

####Accion para mostrar registros
###Se crea un nuevo archivo en app/views/articles/show.html.erb
  def show
   @article= Article.find(params[:id])
  end

####Accion para editar un articulo en este caso se utilizan dos metodos
   def edit
     @article=Article.find(params[:id])
      end
  def update
    @article=Article.find(params[:id])
    @article.update(title: params[:article][:title], content: params[:article][:content])
    redirect_to @article
  end

end
