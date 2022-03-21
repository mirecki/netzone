# frozen_string_literal: true

# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

Rails.application.config.assets.paths << "#{Rails.root}/app/assets/images/films"
Rails.application.config.assets.paths << "#{Rails.root}/app/assets/images/banner"
Rails.application.config.assets.paths << "#{Rails.root}/app/assets/images/studios"

Rails.application.config.assets.paths += [
  Rails.root.join('vendor', 'assets').to_s
]

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += [
  Rails.root.join('vendor/assets/javascripts/*').to_s,
  Rails.root.join('vendor/assets/stylesheets/*').to_s
]
