class User < ApplicationRecord
  enum role: { receptionist: 0, doctor: 1 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
