# == Schema Information
#
# Table name: sub_assignments
#
#  id             :integer          not null, primary key
#  title          :string
#  detail         :text
#  deadline       :datetime
#  satellite_type :integer
#  assignmant_id  :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class SubAssignment < ApplicationRecord
  belongs_to :assignments

  validates :title, presence: true, length: { maximum: 15 }
  validates :detail, length: { maximum: 50 }
  validates :satellite_type, presence: true, numericality: { less_than_or_equal_to: 4 }
  validates :assignmant_id, presence: true

  enum satellite_type: { Earth: 0, Mars: 1, Venus: 2, Jupiter: 3, Saturn: 4 }
end