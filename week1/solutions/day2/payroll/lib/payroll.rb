# lib/payroll.rb

class Payroll
  def initialize(employees_array)
    @employees = employees_array
  end

  def pay_employees
    total_payroll = 0

    @employees.each do |the_employee|
      employee_salary = the_employee.calculate_salary

      total_payroll += employee_salary

          #           100% - 18% = 82%
          #                         |
      net_pay = employee_salary * 0.82
      pretty_net_pay = net_pay.round(2)

      tax = employee_salary * 0.18
      pretty_tax = tax.round(2)

      print "This week's pay for #{the_employee.name}: $#{pretty_net_pay}"
      puts  " + $#{pretty_tax} tax."

      notify_employee(the_employee)

      puts ""
    end

    pretty_total_payroll = total_payroll.round(2)

    puts "Total payroll this week: $#{pretty_total_payroll}."
  end


  private

  def notify_employee(the_employee)
    puts "Sending an email to #{the_employee.email} to notify #{the_employee.name} about their payment."
  end
end
