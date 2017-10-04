class Article < ApplicationRecord

validates :title,presence: true, uniqueness: true
validates :body, presence: true, length: {minimum: 20}
#message: "prueba de msj personalizados", notice: "Pruebadesdecontrolador"
#validates :username, format: {with: /regex/} -> valida al usuario

end
