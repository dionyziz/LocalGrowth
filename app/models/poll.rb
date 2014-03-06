class Poll < ActiveRecord::Base

  has_many   :poll_options, :dependent => :destroy
  accepts_nested_attributes_for :poll_options,
    :reject_if => ->(a) { a[:text].blank? },
    :allow_destroy => true

  # validations
  validates :question, :presence => true, :allow_blank => false

  # scopes
  scope :active,   -> { where(:active => true) }
  scope :inactive, -> { where(:active => false) }


end
