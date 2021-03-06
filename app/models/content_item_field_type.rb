class ContentItemFieldType < Cortex::FieldType
  attr_accessor :content_item_id

  def elasticsearch_mapping
    { name: mapping_field_name, type: :keyword, index: :not_analyzed }
  end

  def data=(data_hash)
    @content_item_id = data_hash['content_item_id']
  end

  def field_item_as_indexed_json_for_field_type(field_item, options = {})
    json = {}
    json[mapping_field_name] = field_item.data['content_item_id']
    json
  end

  private

  def mapping_field_name
    "#{field_name.parameterize(separator: '_')}_content_item_id"
  end
end
