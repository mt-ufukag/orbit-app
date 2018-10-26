# == Schema Information
#
# Table name: assignments
#
#  id             :integer          not null, primary key
#  title          :string
#  detail         :text
#  deadline       :datetime
#  planet_type    :integer
#  planet_size    :integer
#  orbit_pos      :integer
#  project_id     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  done_flag      :boolean          default(FALSE)
#  destroyed_flag :boolean          default(FALSE)
#

class Assignment < ApplicationRecord
  belongs_to :project
  has_many :sub_assignments, dependent: :destroy

  validates :title, presence: true, length: { maximum: 30 }
  validates :detail, length: { maximum: 140 }
  validates :planet_type, presence: true, numericality: { less_than_or_equal_to: 4 }
  validates :planet_size, presence: true, numericality: { less_than_or_equal_to: 2 }
  validates :orbit_pos,   presence: true, numericality: { less_than_or_equal_to: 3 }
  validates :project_id,  presence: true

  enum planet_type: [:Earth, :Mars, :Venus, :Jupiter, :Saturn]
  enum planet_size: [:small, :medium, :large]
  enum orbit_pos:   [1, 2, 3]
end
