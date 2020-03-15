class ContractMailer < ApplicationMailer
  default from: 'sales@clique-enquiries.com'

  def clique_email(client)
    @client = client
    mail(to: @client.email, subject: 'Thank you for signing Expression of Interest with Clique!')
  end
end
