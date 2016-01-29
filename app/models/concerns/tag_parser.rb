module TagParser
  def tag_parse
    self.tags.collect do |tag|
      tag.name
    end.join(", ")
  end

  def tag_parse=(tags_string)
    tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
    new_or_found_tags = tag_names.collect { |t| Tag.find_or_create_by(tag: t) }
    self.tags = new_or_found_tags
  end
end
