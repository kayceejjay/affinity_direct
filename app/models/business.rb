class Business < ApplicationRecord
    
    attr_accessor :name, :address1, :address2, :city, :state, :zip, :phone, :email, :category, :fee, :website, :owner_name, :owner_phone, :owner_email, :service_product, :receive_email
    
    validates :name, presence: true, length: { maximum: 150 }
    validates :address1, presence: true, length: { maximum: 150 }
    validates :city, presence: true, length: { maximum: 50 }
    validates :state, presence: true, length: { maximum: 2 }
    validates :zip, presence: true, length: { maximum: 5 }
    validates :phone, presence: true, length: { maximum: 10 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    validates :category, presence: true, length: { maximum: 150 }
    validates :owner_name, presence: true, length: { maximum: 150 }
    validates :owner_phone, presence: true, length: { maximum: 10 }
    validates :service_product, presence: true, length: { maximum: 255 }
end
