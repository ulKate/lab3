class Messege < ActiveRecord::Base
  attr_accessible :body, :name, :state, :topic
  validates :name, :presence => true
  validates :body, :presence => true
  validates :topic, :presence => true
  
    state_machine initial: :unpublished do
      event :unpublish do
        transition all => :unpublished
      end

      event :publish do
        transition all => :published
      end

      event :delete do
        transition all => :deleted
      end
    end
end
