module CheckCountry

  def loan_check? population,gdp,state
    return true if population>=3000000&&gdp>=5&&state=='developing'
    false
  end

  def un_seat? population,gdp,no_states,state_type
    return true if population>=2000000&&gdp>=3&&no_states>=12&&state=='developed'
    false
  end

  def war_result? army_strength,gdp
    return true if army_strength>=200000&&gdp>2
    false
  end

end

class Country
  @@country_counter= 0
  include CheckCountry
  attr_accessor :population,:country_name,:gdp,:no_states,:army_strength,:state_of_country,:country_code
  def initialize country_name,population,gdp,states,army_strength,state 
    @country_name=country_name
    @population=population
    @gdp=gdp
    @no_states=states
    @army_strength=army_strength   
    @state_of_country=state
    @@country_counter+= 1
    @country_code=@@country_counter
  end

end

def create_new_object
  print "Enter The Name Of The Country: \n"
  country_name=gets.chomp
  print "Enter The Population Of The Country: \n"
  population=gets.chomp.to_i
  print "Enter The GDP Of The Country: \n"
  gdp=gets.chomp.to_i
  print "Enter The Number Of States In The Country: \n"
  no_states=gets.chomp.to_i
  print "Enter The Strength Of The Army :"
  army_strength=gets.chomp.to_i
  print "Enter The State Of Country (developing/developed)?: \n"
  state=gets.chomp
  country_object=Country.new country_name,population,gdp,no_states,army_strength,state
  print "Done.\n"
  country_object
end

country=[]
choice=0
country_counter=0
flag=true
while flag
  puts "-------------------WELCOME USER----------------------"
  puts "1.Enter The Details Of Country: \n2.Show Details Of Country.\n3.Check Applicability For Loan,UN Seat."
  choice= gets.chomp.to_i
  case choice
  when 1
    country.push(create_new_object)
    country_counter+=1
  when 2
    puts "Enter Code Of The Country: "
    code= gets.chomp.to_i
    if code>0&&code<=country_counter
      code-=1
      print "Country Code: #{code}\n"
      print "Country Name: #{country[code].country_name}\n"
      print "Population : #{country[code].population}\n"
      print "GDP : #{country[code].gdp}\n"
      print "Number of States : #{country[code].no_states}\n"
      print "Army Strength : #{country[code].army_strength}\n"
      print "State of #{country[code].country_name}: #{country[code].state_of_country}\n"
    else
      print "Invalid Code!\n"
    end
    
  when 3
    print "Enter Country Code: "
    code=gets.chomp.to_i
    if code>0&&code<=country_counter
      code-=1
      print "1.Check Applicability For Loan From IMF?\n"
      print "2.Check Applicability For UN Seat?\n"
      print "3.Check Whether The Country Can Win The War Or Not?\n"
      check = gets.chomp.to_i

      case check
      when 1
        if country[code].loan_check? country[code].population,country[code].gdp,country[code].state_of_country
          print "#{country[code].country_name} Is Applicable For Loan.\n"
        else
          print "#{country[code].country_name} Is Not Applicable For Loan.\n"
        end

      when 2
        if country[code].un_seat? country[code].population,country[code].gdp,country[code].no_states,country[code].state_of_country
          print "#{country[code].country_name} Will Get Seat In UN.\n"
        else
          print "#{country[code].country_name} Will Not Get Seat In UN.\n"
        end

      when 3
        if country[code].war_result? country[code].army_strength,country[code].gdp
          print "#{country[code].country_name} Will Win The War.\n"
        else
          print "#{country[code].country_name} Will Not Win The War.\n"
        end

      else
        print "Invalid Choice.\n"
      end

    else
      print "Invalid Country Code.\n"
    end

  else
    print "Invalid Choice.\n"
  end

print "If You Want To Continue,Type[y/n].\n"
condition=gets
if condition=='n'
  flag=false
end

end