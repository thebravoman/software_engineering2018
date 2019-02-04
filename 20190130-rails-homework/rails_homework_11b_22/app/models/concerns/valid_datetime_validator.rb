class ValidDatetimeValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    DateTime.parse(value.to_s)
  rescue ArgumentError
    record.errors.add(attribute, "is not a valid datetime format")
  end
end

