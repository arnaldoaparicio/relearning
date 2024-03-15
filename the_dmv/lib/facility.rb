require 'date'

class Facility
  attr_reader :name, :address, :phone, :services, :registered_vehicles, :collected_fees

  def initialize(facility_data)
    @name = facility_data[:name]
    @address = facility_data[:address]
    @phone = facility_data[:phone]
    @services = []
    @registered_vehicles = []
    @collected_fees = 0
  end

  def add_service(service)
    @services << service
  end

  def register_vehicle(vehicle)
    if !@services.empty? && @services.include?('Vehicle Registration')
      vehicle.registration_date = Date.today
      current_year = Date.today.year.to_i
      vehicle_age = current_year - vehicle.year
    
      if vehicle_age >= 25
        vehicle.plate_type = :antique
        @collected_fees += 25
      elsif vehicle_age < 25 && vehicle.engine == :ev
        vehicle.plate_type = :ev
        @collected_fees += 200
      else
        vehicle.plate_type = :regular
        @collected_fees += 100
      end
      @registered_vehicles << vehicle
    else
      nil
    end
  end

  def administer_written_test(registrant)
    if !@services.empty? && @services.include?('Written Test')
      registrant.license_data[:written] = true
      registrant.license_data[:written]
    else
      registrant.license_data[:written] 
    end
  end
end