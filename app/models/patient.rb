class Patient < ApplicationRecord
    belongs_to :doctor, class_name: 'User', optional: true
  end
  