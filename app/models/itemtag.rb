class Itemtag < ApplicationRecord
  has_many :template_taggings, dependent: :destroy
  has_many :templates, through: :template_taggings

  def associate_with(template_id)
    TemplateTagging.upsert(template_id: template_id, itemtag_id: self.id)
  end

  def self.create_from_tag_string(tag_string)
    p tag_string
    Itemtag.create(
      name: tag_string,
      display_name: Parsers::ItemtagParser.tag_display_name(tag_string),
      description: "This tag was autogenerated"
    )
  end

end
