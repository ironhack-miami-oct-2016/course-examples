class ContactsController < ApplicationController
  def index
    @contacts = Contact.order("LOWER(name)")
    render "index"
  end

  def new
    render "new"
  end

  def create
    contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone_number => params[:contact][:phone_number],
      :email_address => params[:contact][:email_address])

    email_pattern = /^\w+@\w+\.[A-Za-z]+$/
    phone_pattern = /(\+1 )?\(?[0-9]{3}\)? ?-?[0-9]{3}-?[0-9]{4}/

    if (contact.email_address =~ email_pattern) != nil &&
       (contact.phone_number =~ phone_pattern) != nil
      contact.save
      redirect_to("/contacts")
    else
      redirect_to("/contacts/new")
    end
  end
end
