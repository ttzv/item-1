class Template < ApplicationRecord
  has_one_attached :template_file, dependent: :destroy
  has_many :template_taggings, dependent: :destroy
  has_many :itemtags, through: :template_taggings

  def self.type_list
    return ["mail", "sms", "signature"]
  end

end
