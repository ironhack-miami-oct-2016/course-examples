# lib/salaried_employee.rb

class SalariedEmployee < Employee
    def initialize(name, email, salary)
        @name = name
        @email = email
        @salary = salary
    end

    def calculate_salary
      exact_pay = @salary / 52.0
      exact_pay.round(2)
    end
end
