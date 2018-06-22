class AverageCache < ActiveRecord::Base
  belongs_to :rater, :class_name => "Gear"
  belongs_to :rateable, :polymorphic => true
end
