class Car
  #constructor
  def initialize (licenseNumber, owner)
    @licenseNumber = licenseNumber
    @owner = owner
  end

  #method toString
  def toString
    p "Owner: " + @owner 
    p "License Number: " + @licenseNumber
  end
  
  #method to determinate if 'pico and placa' is aviable 
  def picoYPlacaIsAviable (date, time)
    dateToEvaluate = Time.local(date.split("/")[0], date.split("/")[1], date.split("/")[2], time.split(":")[0], time.split(":")[1])
    dateStartMorning = Time.local(dateToEvaluate.year, dateToEvaluate.month, dateToEvaluate.day, 7, 0)
    dateFinishMorning = Time.local(dateToEvaluate.year, dateToEvaluate.month, dateToEvaluate.day, 9, 30)
    dateStartEvening = Time.local(dateToEvaluate.year, dateToEvaluate.month, dateToEvaluate.day, 16, 0)
    dateFinishEvening = Time.local(dateToEvaluate.year, dateToEvaluate.month, dateToEvaluate.day, 19, 30)
    
    #validate the schedule of "pico y placa"
    if (dateStartMorning <= dateToEvaluate && dateFinishMorning >= dateToEvaluate) || (dateStartEvening <= dateToEvaluate && dateFinishEvening >= dateToEvaluate)
      return true
    else
      p "The 'Pico y Placa' is over!"
      return false
    end
  end
  
  
  #method to predict the 'pico and placa'
  def predictPicoYPlaca (date, time)
    #Initialize date vars
    dateToEvaluate = Time.local(date.split("/")[0], date.split("/")[1], date.split("/")[2], time.split(":")[0], time.split(":")[1])
    schedulePicoYPlaca = picoYPlacaIsAviable(date, time)

    #validate the schedule of "pico y placa"
    if (schedulePicoYPlaca == true)
      #split the license number
      licenseNumberArray = @licenseNumber.split("-")[1]
      
      dateArray = dateToEvaluate.to_a
      case dateArray[6]
      when 1 # monday (1 and 2)
        if (licenseNumberArray[licenseNumberArray.length-1] == "1" || licenseNumberArray[licenseNumberArray.length-1] == "2")
          p "The car with license number " + @licenseNumber + " can't be road!"
          return false
        else
          p "The car with license number " + @licenseNumber + " can be road!"
          return true
        end
      when 2 # tuesday (3 and 4)
        if (licenseNumberArray[licenseNumberArray.length-1] == "3" || licenseNumberArray[licenseNumberArray.length-1] == "4")
          p "The car with license number " + @licenseNumber + " can't be road!"
          return false
        else
          p "The car with license number " + @licenseNumber + " can be road!"
          return true
        end
      when 3 # wednesday (5 and 6)
        if (licenseNumberArray[licenseNumberArray.length-1] == "5" || licenseNumberArray[licenseNumberArray.length-1] == "6")
          p "The car with license number " + @licenseNumber + " can't be road!"
          return false
        else
          p "The car with license number " + @licenseNumber + " can be road!"
          return true
        end
      when 4 # thursday (7 and 8)
        if (licenseNumberArray[licenseNumberArray.length-1] == "7" || licenseNumberArray[licenseNumberArray.length-1] == "8")
          p "The car with license number " + @licenseNumber + " can't be road!"
          return false
        else
          p "The car with license number " + @licenseNumber + " can be road!"
          return true
        end
      when 5 # friday (9 and 0)
        if (licenseNumberArray[licenseNumberArray.length-1] == "9" || licenseNumberArray[licenseNumberArray.length-1] == "0")
          p "The car with license number " + @licenseNumber + " can't be road!"
          return false
        else
          p "The car with license number " + @licenseNumber + " can be road!"
          return true
        end
      else 
        p "The 'Pico y Placa' only works on weekdays!"
        return true
      end
    end
  end
end
