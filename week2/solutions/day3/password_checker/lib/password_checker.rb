# lib/password_checker.rb

class PasswordChecker
  def check_password(email, password)
    if password.length > 7 &&
       contains_letters?(password) &&
       contains_uppercase?(password) &&
       contains_lowercase?(password) &&
       contains_numbers?(password) &&
       contains_symbols?(password) &&
       no_name?(email, password) &&
       no_domain?(email, password)
      true
    else
      false
    end
  end


  private

  def contains_letters?(password)
    password.match(/[a-zA-Z]/) != nil

    # A different approach:
    # (password =~ /[a-zA-Z]/) != nil
  end

  def contains_uppercase?(password)
    password.match(/[A-Z]/) != nil

    # A different approach:
    # (password =~ /[A-Z]/) != nil
  end

  def contains_lowercase?(password)
    password.match(/[a-z]/) != nil

    # A different approach:
    # (password =~ /[a-z]/) != nil
  end

  def contains_numbers?(password)
    password.match(/[0-9]/) != nil

    # A different approach:
    # (password =~ /[0-9]/) != nil
  end

  def contains_symbols?(password)
    password.match(/[^a-zA-Z0-9]/) != nil

    # A different approaches:
    # (password =~ /[^a-zA-Z0-9]/) != nil
    # password.match(/\W/) != nil
  end

  def no_name?(email, password)
    email_chunks = email.split("@")
    !password.include?(email_chunks[0])
  end

  def no_domain?(email, password)
    email_chunks = email.split("@")
    domain_chunks = email_chunks[1].split(".")
    !password.include?(domain_chunks[0])
  end
end
