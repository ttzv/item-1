module GoogleApiServices
  require 'google/apis/gmail_v1'
  class MailingService

    def initialize(client)
      @service = Google::Apis::GmailV1::GmailService.new
      @service.authorization = client
    end

    def send(mail_request={})
      raise "Sender address is required" if mail_request[:sender].nil?
      raise "Messages are required" if mail_request[:messages].nil?

      sender =  mail_request[:sender]
      messages = mail_request[:messages]

      messages.each do |m|
        mail = Mail.new do
          from sender
          to 'tomasz.zwak@atal.pl'
          subject m["subject"]
          html_part do
            content_type 'text/html; charset=UTF-8'
            body m["content"]
          end
        end
        message = Google::Apis::GmailV1::Message.new
        message.raw = mail.to_s
        @service.send_user_message('me', message)
      end
    end

    private

    def header(properties)
      
    end

  end
end