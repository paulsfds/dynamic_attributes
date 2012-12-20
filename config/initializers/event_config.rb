module EventConfig
  DYNAMIC_FIELDS = YAML.load(File.open("#{Rails.root}/config/dynamic_fields.yml"))
end
