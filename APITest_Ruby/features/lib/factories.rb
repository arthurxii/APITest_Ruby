require 'faker'
require_relative '../models/users_model'
require_relative '../models/activities_model'
require_relative '../models/authors_model'
require_relative '../models/books_model'
require_relative '../models/coverphotos_model'

## API USERS

def sort_id
    user_file = YAML.load_file('features/support/massa/user.yml')
    ids = "#{user_file['ids']}"
    ids = ids.split(",")
    ids = ids[rand(1...ids.length)]
    ids
end

FactoryBot.define do 
    factory :user, class: UsersModel do 
        id { Faker::Number.number(digits: 2) }
        user_name {Faker::Name.name}
        password { 123456 }
    end 
end

## API ACTIVITIES

def sort_id
    activity_file = YAML.load_file('features/support/massa/activity.yml')
    ids = "#{activity_file['ids']}"
    ids = ids.split(",")
    ids = ids[rand(1...ids.length)]
    ids
end

FactoryBot.define do 
    factory :activity, class: ActivitiesModel do 
        id { Faker::Number.number(digits: 2) }
        title {Faker::Lorem.characters(number: 10)}
        dueDate {Faker::Date.in_date_period}
        completed {Faker::Boolean.boolean}
    end 
end

## API AUTHORS

def sort_id
    author_file = YAML.load_file('features/support/massa/author.yml')
    ids = "#{author_file['ids']}"
    ids = ids.split(",")
    ids = ids[rand(1...ids.length)]
    ids
end

def sort_id
    author_file = YAML.load_file('features/support/massa/author_idBook.yml')
    idBook = "#{author_file['idBook']}"
    idBook = idBook.split(",")
    idBook = idBook[rand(1...idBook.length)]
    idBook
end

FactoryBot.define do 
    factory :author, class: AuthorsModel do 
        id { Faker::Number.number(digits: 2) }
        idBook { Faker::Number.number(digits: 2) }
        first_name {Faker::Name.name}
        last_name {Faker::Name.name}
    end 
end

## API BOOKS
def sort_id
    book_file = YAML.load_file('features/support/massa/books.yml')
    ids = "#{book_file['ids']}"
    ids = ids.split(",")
    ids = ids[rand(1...ids.length)]
    ids
end

FactoryBot.define do 
    factory :book, class: BooksModel do 
        id { Faker::Number.number(digits: 2) }
        title { Faker::Lorem.word }
        description { Faker::Lorem.sentence(word_count: 3) }
        pageCount { Faker::Number.number(digits: 2) }
        excerpt { Faker::Lorem.sentence(word_count: 50) }
        publishDate{ Faker::Date.in_date_period} 
    end 
end

#API COVERPHOTOS
def sort_id
    coverphotos_file = YAML.load_file('features/support/massa/coverphotos.yml')
    ids = "#{coverphotos_file['ids']}"
    ids = ids.split(",")
    ids = ids[rand(1...ids.length)]
    ids
end

def sort_id
    coverphotos_file = YAML.load_file('features/support/massa/coverphotos_idBook.yml')
    idBook = "#{coverphotos_file['idBook']}"
    idBook = idBook.split(",")
    idBook = idBook[rand(1...idBook.length)]
    idBook
end

FactoryBot.define do 
    factory :coverphotos, class: CoverPhotosModel do 
        id { Faker::Number.number(digits: 2) }
        idBook { Faker::Number.number(digits: 2) }
        url { Faker::Internet.url }
    end 
end

