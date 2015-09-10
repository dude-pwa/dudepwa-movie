class Movie < ActiveRecord::Base
  has_attached_file :cover, styles: { medium: "200x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

  acts_as_ordered_taggable

  has_many :comments
end
