class ApplicationAction
  attr_accessor :params

  def initialize(params)
    @params = params
  end

  def self.execute(params = nil)
    itself.new(params).execute
  end
end