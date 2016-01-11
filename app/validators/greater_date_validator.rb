class GreaterDateValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value > Date.today
      record.errors[attribute] << (options[:message] || 'Date must go forward')
    end
  end
end