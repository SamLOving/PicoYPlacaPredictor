load "../app/Car.rb"
require 'test/unit'

class PredictorTest < Test::Unit::TestCase
  
  def test1SchedulePicoYPlaca
    p "=============== Validate Pico Y Placa Schedule ================"
    car = Car.new("ABC-1234", "Samantha")
    assert car.picoYPlacaIsAviable("2016/08/29", "7:30")
    assert !car.picoYPlacaIsAviable("2016/08/29", "14:30")
  end
  
  #Testing the predictor in Monday (1 and 2)
  def test2PredictorInMonday
    p "================== Test Predictor in Monday =================="
    
    car1 = Car.new("ABC-1231", "Samantha")
    car1.toString
    assert !car1.predictPicoYPlaca("2016/08/29", "16:31")
    
    car2 = Car.new("ABC-1232", "Francisco")
    car2.toString
    assert !car2.predictPicoYPlaca("2016/08/29", "07:31")
    
    car3 = Car.new("ABC-1234", "Melissa")
    car3.toString
    assert car3.predictPicoYPlaca("2016/08/29", "19:30")
  end
  
  #Testing the predictor in Tuesday (3 and 4)
  def test3PredictorInTuesday
    p "================= Test Predictor in Tuesday =================="
    
    car1 = Car.new("ABC-1233", "Samantha")
    car1.toString
    assert !car1.predictPicoYPlaca("2016/08/30", "08:31")
    
    car2 = Car.new("ABC-1234", "Francisco")
    car2.toString
    assert !car2.predictPicoYPlaca("2016/08/30", "17:31")
    
    car3 = Car.new("ABC-1231", "Melissa")
    car3.toString
    assert car3.predictPicoYPlaca("2016/08/30", "19:30")
  end
  
  #Testing the predictor in Wednesday (5 and 6)
  def test4PredictorInWednesday
    p "================ Test Predictor in Wednesday ================="
    
    car1 = Car.new("ABC-1235", "Samantha")
    car1.toString
    assert !car1.predictPicoYPlaca("2016/08/31", "16:30")
    
    car2 = Car.new("ABC-1236", "Francisco")
    car2.toString
    assert !car2.predictPicoYPlaca("2016/08/31", "19:00")
    
    car3 = Car.new("ABC-1234", "Melissa")
    car3.toString
    assert car3.predictPicoYPlaca("2016/08/31", "09:00")
  end
  
  #Testing the predictor in Thursday (7 and 8)
  def test5PredictorInThursday
    p "================ Test Predictor in Thursday =================="
    
    car1 = Car.new("ABC-1237", "Samantha")
    car1.toString
    assert !car1.predictPicoYPlaca("2016/09/01", "09:00")
    
    car2 = Car.new("ABC-1238", "Francisco")
    car2.toString
    assert !car2.predictPicoYPlaca("2016/09/01", "18:30")
    
    car3 = Car.new("ABC-1235", "Melissa")
    car3.toString
    assert car3.predictPicoYPlaca("2016/09/01", "19:15")
  end
  
  #Testing the predictor in Friday (7 and 8)
  def test6PredictorInFriday
    p "================= Test Predictor in Friday ==================="
    
    car1 = Car.new("ABC-1239", "Samantha")
    car1.toString
    assert !car1.predictPicoYPlaca("2016/09/02", "09:00")
    
    car2 = Car.new("ABC-1230", "Francisco")
    car2.toString
    assert !car2.predictPicoYPlaca("2016/09/02", "18:30")
    
    car3 = Car.new("ABC-1235", "Melissa")
    car3.toString
    assert car3.predictPicoYPlaca("2016/09/02", "19:15")
  end
end
