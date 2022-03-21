# frozen_string_literal: true

require 'faker'

# Studios

marvel      = Studio.create!(title: 'Marvel', bytitle: 'marvel', img: 'marvel.jpg',
                          description: Faker::Movies::StarWars.wookiee_sentence)
imdbpro     = Studio.create!(title: 'IMDbPro', bytitle: 'imdbpro', img: 'imdbpro.jpg',
                          description: Faker::Movies::StarWars.wookiee_sentence)
warner_bros = Studio.create!(title: 'Warner Bros', bytitle: 'warner-bros', img: 'warner-bros.jpg',
                          description: Faker::Movies::StarWars.wookiee_sentence)
disney = Studio.create!(title: 'Disney', bytitle: 'disney', img: 'disney.jpg',
                          description: Faker::Movies::StarWars.wookiee_sentence)
paramount = Studio.create!(title: 'Paramount Pictures Studio', bytitle: 'paramount', img: 'paramount.jpg',
                          description: Faker::Movies::StarWars.wookiee_sentence)

# Categories

men = Category.create!(title: 'Men', bytitle: 'men', keywords: 'men', description: 'for men')
women = Category.create!(title: 'Women', bytitle: 'women', keywords: 'women', description: 'for women')
kids = Category.create!(title: 'Kids', bytitle: 'kids', keywords: 'kids', description: 'for kids')

drama = Category.create!(title: 'Drama', bytitle: 'drama', keywords: 'drama', description: 'drama', parent: women)
comedy = Category.create!(title: 'Comedy', bytitle: 'comedy', keywords: 'comedy', description: 'comedy', parent: women)

melodrama = Category.create!(title: 'Melodrama', bytitle: 'melodrama', keywords: 'melodrama', description: 'melodrama', parent: drama)
romantic_comedy = Category.create!(title: 'Romantic comedy', bytitle: 'romantic-comedy', keywords: 'romantic comedy', description: 'romantic-comedy', parent: comedy)

action = Category.create!(title: 'Action', bytitle: 'action', keywords: 'action', description: 'action', parent: men)
horror = Category.create!(title: 'Horror', bytitle: 'horror', keywords: 'horror', description: 'horror', parent: men)

fantasy = Category.create!(title: 'Fantasy', bytitle: 'fantasy', keywords: 'fantasy', description: 'fantasy', parent: action)
sci_fi = Category.create!(title: 'Sci Fi', bytitle: 'sci-fi', keywords: 'sci fi', description: 'sci fi', parent: action)
thriller = Category.create!(title: 'Thriller', bytitle: 'thriller', keywords: 'thriller', description: 'thriller', parent: horror)

animated = Category.create!(title: 'Animated', bytitle: 'animated', keywords: 'animated', description: 'animated', parent: kids)
animals = Category.create!(title: 'Animals', bytitle: 'animals', keywords: 'animals', description: 'animals', parent: kids)

# Films

film_attributes = [
  {
    data: {
      category: sci_fi,
      studio: imdbpro,
      title: 'Lost',
      bytitle: '342432-H9I80-1432',
      content: Faker::Lorem.sentence(word_count: 20),
      price: Faker::Commerce.price(range: 20.0...50.0),
      old_price: Faker::Commerce.price(range: 50.0..400.0),
      status: 1,
      keywords: 'Lost imdbpro island',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'f-1.jpg',
      hit: 1
    },
    tags: {
      category_list: sci_fi.title,
      studio_list: imdbpro.title
    }
  },
  {
    data: {
      category: drama,
      studio: imdbpro,
      title: 'Succession',
      bytitle: '423616-BGR00-4324',
      content: Faker::Lorem.sentence(word_count: 20),
      price: Faker::Commerce.price(range: 20.0...50.0),
      old_price: Faker::Commerce.price(range: 50.0..400.0),
      status: 1,
      keywords: 'imdbpro succession drama',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'f-2.png',
      hit: 1
    },
    tags: {
      category_list: drama.title,
      studio_list: imdbpro.title
    }
  },
  {
    data: {
      category: horror,
      studio: imdbpro,
      title: 'Chamber of Horrors',
      bytitle: '616443-TSS00-9424',
      content: Faker::Lorem.sentence(word_count: 20),
      price: Faker::Commerce.price(range: 20.0...50.0),
      old_price: Faker::Commerce.price(range: 50.0..400.0),
      status: 1,
      keywords: 'imdbpro horror chamber of horrors',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'f-3.jpg',
      hit: 1
    },
    tags: {
      category_list: horror.title,
      studio_list: imdbpro.title
    }
  },
  {
    data: {
      category: fantasy,
      studio: warner_bros,
      title: 'Fantastic beasts and where to find them',
      bytitle: '93490-TNYRS-5045',
      content: Faker::Lorem.sentence(word_count: 20),
      price: Faker::Commerce.price(range: 20.0...50.0),
      old_price: Faker::Commerce.price(range: 50.0..400.0),
      status: 1,
      keywords: 'warner bros fantasy beasts',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'f-4.jpg',
      hit: 1
    },
    tags: {
      category_list: fantasy.title,
      studio_list: warner_bros.title
    }
  },
  {
    data: {
      category: romantic_comedy,
      studio: warner_bros,
      title: 'Isn\'t it romantic',
      bytitle: '545933-TK5GDS-5038',
      content: Faker::Lorem.sentence(word_count: 20),
      price: Faker::Commerce.price(range: 20.0...50.0),
      old_price: Faker::Commerce.price(range: 50.0..400.0),
      status: 1,
      keywords: 'warner bros romantic_comedy',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'f-5.jpg',
      hit: 1
    },
    tags: {
      category_list: romantic_comedy.title,
      studio_list: warner_bros.title
    }
  },
  {
    data: {
      category: melodrama,
      studio: warner_bros,
      title: 'Curly Sue',
      bytitle: 'P45454C_T5H3NG_8976',
      content: Faker::Lorem.sentence(word_count: 20),
      price: Faker::Commerce.price(range: 20.0...50.0),
      old_price: Faker::Commerce.price(range: 50.0..400.0),
      status: 1,
      keywords: 'warner bros melodrama curly sue',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'f-6.png',
      hit: 1
    },
    tags: {
      category_list: melodrama.title,
      studio_list: warner_bros.title
    }
  },
  {
    data: {
      category: animals,
      studio: disney,
      title: 'Turning Red',
      bytitle: '7418CM-A0007-042',
      content: Faker::Lorem.sentence(word_count: 20),
      price: Faker::Commerce.price(range: 20.0...50.0),
      old_price: Faker::Commerce.price(range: 50.0..400.0),
      status: 1,
      keywords: 'disney animals red',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'f-7.jpg',
      hit: 1
    },
    tags: {
      category_list: animals.title,
      studio_list: disney.title
    }
  },
  {
    data: {
      category: romantic_comedy,
      studio: disney,
      title: 'The princess diaries',
      bytitle: '3392FA-0005-495K',
      content: Faker::Lorem.sentence(word_count: 20),
      price: Faker::Commerce.price(range: 20.0...50.0),
      old_price: Faker::Commerce.price(range: 50.0..400.0),
      status: 1,
      keywords: 'disney romantic comedy princess diaries',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'f-8.jpg',
      hit: 0
    },
    tags: {
      category_list: romantic_comedy.title,
      studio_list: disney.title
    }
  },
  {
    data: {
      category: sci_fi,
      studio: disney,
      title: 'Big Hero 6',
      bytitle: '741SU-C0013-J148',
      content: Faker::Lorem.sentence(word_count: 20),
      price: Faker::Commerce.price(range: 20.0...50.0),
      old_price: Faker::Commerce.price(range: 50.0..400.0),
      status: 1,
      keywords: 'disney sci_fi big hero sci fi',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'f-9.jpg',
      hit: 1
    },
    tags: {
      category_list: sci_fi.title,
      studio_list: disney.title
    }
  },
  {
    data: {
      category: action,
      studio: paramount,
      title: 'Jack Reacher',
      bytitle: '1D246M_055_F0002_F_B050',
      content: Faker::Lorem.sentence(word_count: 20),
      price: Faker::Commerce.price(range: 20.0...50.0),
      old_price: Faker::Commerce.price(range: 50.0..400.0),
      status: 1,
      keywords: 'paramount action jack reacher',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'f-10.jpg',
      hit: 1
    },
    tags: {
      category_list: action.title,
      studio_list: paramount.title
    }
  },
  {
    data: {
      category: drama,
      studio: paramount,
      title: 'Blue Story',
      bytitle: '346312_BGF4L_0D56',
      content: Faker::Lorem.sentence(word_count: 20),
      price: Faker::Commerce.price(range: 20.0...50.0),
      old_price: Faker::Commerce.price(range: 50.0..400.0),
      status: 1,
      keywords: 'paramount drama blue story',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'f-11.jpg',
      hit: 0
    },
    tags: {
      category_list: drama.title,
      studio_list: paramount.title
    }
  },
  {
    data: {
      category: comedy,
      studio: paramount,
      title: 'Coming 2 America',
      bytitle: '4D3488_71L_F0632',
      content: Faker::Lorem.sentence(word_count: 20),
      price: Faker::Commerce.price(range: 20.0...50.0),
      old_price: Faker::Commerce.price(range: 50.0..400.0),
      status: 1,
      keywords: 'paramount comedy coming america',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'f-12.jpg',
      hit: 1
    },
    tags: {
      category_list: comedy.title,
      studio_list: paramount.title
    }
  },
  {
    data: {
      category: thriller,
      studio: marvel,
      title: 'Deadpool',
      bytitle: '370843-02001',
      content: Faker::Lorem.sentence(word_count: 20),
      price: Faker::Commerce.price(range: 20.0...50.0),
      old_price: Faker::Commerce.price(range: 50.0..400.0),
      status: 1,
      keywords: 'marvel deadpool',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'f-13.jpg',
      hit: 0
    },
    tags: {
      category_list: thriller.title,
      studio_list: marvel.title
    }
  },
  {
    data: {
      category: animated,
      studio: marvel,
      title: 'Spiderman',
      bytitle: '291603-01001',
      content: Faker::Lorem.sentence(word_count: 20),
      price: Faker::Commerce.price(range: 20.0...50.0),
      old_price: Faker::Commerce.price(range: 50.0..400.0),
      status: 1,
      keywords: 'marvel animated spiderman',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'f-14.jpg',
      hit: 1
    },
    tags: {
      category_list: animated.title,
      studio_list: marvel.title
    }
  },
  {
    data: {
      category: sci_fi,
      studio: marvel,
      title: 'Guardians of the galaxy',
      bytitle: '712642-01303',
      content: Faker::Lorem.sentence(word_count: 20),
      price: Faker::Commerce.price(range: 20.0...50.0),
      old_price: Faker::Commerce.price(range: 50.0..400.0),
      status: 1,
      keywords: 'marvel sci_fi guardians galaxy',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'f-15.jpg',
      hit: 1
    },
    tags: {
      category_list: sci_fi.title,
      studio_list: marvel.title
    }
  },
  {
    data: {
      category: fantasy,
      studio: marvel,
      title: 'Capitan marvel',
      bytitle: '88-454-01007',
      content: Faker::Lorem.sentence(word_count: 20),
      price: Faker::Commerce.price(range: 20.0...50.0),
      old_price: Faker::Commerce.price(range: 50.0..400.0),
      status: 1,
      keywords: 'marvel fantasy capitan super hero',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'f-16.jpg',
      hit: 0
    },
    tags: {
      category_list: fantasy.title,
      studio_list: marvel.title
    }
  }
]

film_attributes.each do |attr|
  fiilm = Film.create!(attr[:data]) unless Film.where(attr[:data]).first
  fiilm.category_list.add(attr[:tags][:category_list])
  fiilm.studio_list.add(attr[:tags][:studio_list])
  fiilm.save!
end

connection = ActiveRecord::Base.connection()

sql = <<-EOL
  INSERT INTO related_films
  (film_id, related_id)
  VALUES
  (1, 9), (1, 8), (1, 7),
  (2, 6), (2, 5), (2, 4),
  (3, 1), (3, 2), (3, 4),
  (4, 1), (4, 2), (4, 3),
  (5, 3), (5, 8), (5, 7),
  (6, 4), (6, 1), (6, 2),
  (7, 9), (7, 8), (7, 3),
  (8, 4), (8, 6), (8, 2),
  (9, 4), (9, 1), (9, 2);

  INSERT INTO galleries
  (id, film_id, img)
  VALUES
  (1, 2, 'f-2.png'),
  (2, 2, 'r-2.jpg'),
  (3, 2, 'r-3.jpg')
EOL

sql.split(';').each do |s|
  connection.execute(s.strip) unless s.strip.empty?
end
