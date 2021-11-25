# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Usuario Administrador
User.create(email: 'cabrerabuelvasd@gmail.com', password: '12345678')

# Tipos de PQR
Kind.create(kind: 'Peticion')
Kind.create(kind: 'Queja')
Kind.create(kind: 'Reclamo')

# Tipos de proveedores
Category.create(kind: 'Persona')
Category.create(kind: 'Empresa')
