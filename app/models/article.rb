########Este es el modelo Article ################################################

class Article < ApplicationRecord

  #le indicamos al modelo que tine un campo x=con texto enriquecido
  has_rich_text :content
end
