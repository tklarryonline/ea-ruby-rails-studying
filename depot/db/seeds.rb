# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#...
# Clean all products first
Product.delete_all
# Create zero index product
Product.create(title: 'Programming Ruby 1.9 & 2.0',
               description:
                %{
                    Ruby is the fastest growing and most exciting dynamic
                    language out there. If you need to get working programs
                    delivered fast, you should add Ruby to your toolbox.
                  },
               image_url: 'http://placeimg.com/200/200/any',
               price: 49.95)
#...
Product.create(title: 'Programming Ruby 1.9',
               description:
                %{
                    Ruby is the fastest growing and most exciting dynamic
                    language out there. If you need to get working programs
                    delivered fast, you should add Ruby to your toolbox.
                  },
               image_url: 'http://placeimg.com/200/200/any',
               price: 49.95)
#...
Product.create(title: 'Programming Ruby 2.0',
               description:
                %{
                    Ruby is the fastest growing and most exciting dynamic
                    language out there. If you need to get working programs
                    delivered fast, you should add Ruby to your toolbox.
                  },
               image_url: 'http://placeimg.com/200/200/any',
               price: 49.95)
#...
