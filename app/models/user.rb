# frozen_string_literal: true

class User < ApplicationRecord
  include UserOauth

  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

  has_one :cart, dependent: :destroy
  has_many :authorizations

  validates :email,    presence: true
  validates :encrypted_password, presence: true
end
