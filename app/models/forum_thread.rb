# == Schema Information
#
# Table name: forum_threads
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ForumThread < ActiveRecord::Base

  belongs_to :user
  has_many :forum_posts
  has_many :users, through: :forum_posts

  accepts_nested_attributes_for :forum_posts

    validates :title, presence: true
  validates_associated :forum_posts
end