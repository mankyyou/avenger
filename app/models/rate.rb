class Rate < ActiveRecord::Base
  belongs_to :rater, :class_name => "Gear"
  belongs_to :rateable, :polymorphic => true

  #attr_accessible :rate, :dimension

end
