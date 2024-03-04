class Dmv
  attr_reader :facilities

  def initialize
    @facilities = []
  end

  def add_facility(facility)
    @facilities << facility
  end

  def facilities_offering_service(service)
    search_results = []
    @facilities.each do |facility|
      if facility.services.include?(service)
        search_results << facility
      end
    end
    search_results
  end
end