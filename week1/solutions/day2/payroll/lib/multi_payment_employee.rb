# lib/multi_payment_employee.rb

class MultiPaymentEmployee < Employee
    def initialize(name, email, salary, hourly_rate, hours_worked)
        @name = name
        @email = email
        @salary = salary
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked

    end

    def calculate_salary
      exact_base_pay = @salary / 52.0
      base_pay = exact_base_pay.round(2)

      if @hours_worked > 40
        payed_hours = @hours_worked - 40
        extra_money = payed_hours * @hourly_rate
        base_pay += extra_money
      end

      base_pay
    end
end
