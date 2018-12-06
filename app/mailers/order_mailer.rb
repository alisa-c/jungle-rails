class OrderMailer < ApplicationMailer

  default from: 'no-reply@jungle.com'

  def order_email(order)
    @order = order
    @url  = 'http://jungle.com'
    mail(to: @order.email,
         subject: @order.id,
         template_path: 'user_mailer',
         template_name: 'order_email')
  end

end
