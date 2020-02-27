# require "net/http"

# url = URI.parse("http://www.rubyinside.com/test.txt")
# ----------------------------------------------------
# Net::HTTP.start(url.host, url.port) do |http|
#     req = Net::HTTP::Get.new(url.path)
#     req.basic_auth('test', 'test')
#     puts http.request(req).body
# end

# ----------------------------------------------------
# response = Net::HTTP.get_response(url)
# puts response.body

# -----------------------------------------------------
# def get_web_document url
#     uri = URI.parse(url)
#     response = Net::HTTP.get_response(uri)
#     case response
#         when Net::HTTPSuccess
#             response.body
#         when Net::HTTPRedirection
#             get_web_document(response['Location'])
#         when Net::HTTPClientError
#             %Q{
#                 Client error!
#                 Error name: #{response.class}
#                 Error status: #{response.code}
#             }
#         else nil
#     end
# end

# puts get_web_document("http://www.rubyinside.com/test.txt")
# puts get_web_document("http://www.rubyinside.com/testtttt.txt")
# puts get_web_document("http://www.rubyinside.com/redirect-test")

# ===================== Posting Form Data ========================

# require "net/http"
# url = URI.parse('http://www.rubyinside.com/test.cgi')

# response = Net::HTTP.post_form(url,{'name' => 'Ziggs', 'age' => '24'})
# puts response.body

# Net::HTTP.start(url.host, url.port) do |http|
#     req = Net::HTTP::Post.new(url.path)
#     req.basic_auth('test', 'test')
#     req.set_form_data({ 'name' => 'Ziggs', 'age' => '24' })
#     puts http.request(req).body
# end

# ================= Using HTTP Proxies =====================
require "net/http"
url = URI.parse('http://www.rubyinside.com/test.txt')

# ------------------- First version ------------------------
web_proxy = Net::HTTP::Proxy('37.18.79.41', 3128)
# web_proxy.start(url.host, url.port) do |http|
#     req = Net::HTTP::Get.new(url.path)
#     puts http.request(req).inspect
#     puts http.request(req).body
# end

# ------------------- Second version ------------------------
# http_class = ARGV.first ? Net::HTTP::Proxy(ARGV[0], ARGV[1]) : Net::HTTP
# http_class.start(url.host, url.port) do |http|
#     req = Net::HTTP::Get.new(url.path)
#     puts http.request(req).inspect
#     puts http.request(req).body
# end

# ===================== Secure HTTP with HTTPS ========================
# require "net/http"
# require "net/https"

# url = URI.parse('https://google.com/')
# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true if url.scheme == 'https'
# request = Net::HTTP::Get.new(url.path)
# puts http.request(request).body

# ====================== The Open-Uri Library ============================
# require 'open-uri'

# f = open('http://www.rubyinside.com/test.txt')
# puts f.size
# puts f.readlines.join

# f = open('http://www.rubyinside.com/test.txt', 
#     {'User-Agent' => 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)'})
# puts f.read

# ================== Parsing HTML with Nokogiri ====================
# require "nokogiri"
# require "open-uri"

# html = <<END_OF_HTML
# <html>
# <head>
# <title>This is the page title</title>
# </head>
# <body>
# <h1>Big heading!</h1>
# <p>A paragraph of text.</p>
# <ul><li>Item 1 in a list</li><li>Item 2</li><li class="highlighted">Item
# 3</li></ul>
# </body> 
# </html>
# END_OF_HTML

# doc = Nokogiri::HTML(open('http://www.rubyinside.com/test.html'))
# puts doc.css('h1').inner_html
# list_node = doc.css('ul').first
# list_node.css('li').each_with_index do |item, index|
#     puts item.inner_html + ", index is: " + index.to_s
# end

# =============== Parsin XML with REXML ======================
# require 'rexml/document'

# xml = <<XML_END
#     <people>
#         <person>
#             <name>Peter Cooper</name>
#             <gender>Male</gender>
#         </person>
#         <person>
#             <name>Fred Bloggs</name>
#             <gender>Male</gender>
#         </person>
#     </people>
# XML_END

# tree = REXML::Document.new(xml)

# tree.elements.each('people/person') do |per|
#     puts per.get_elements('name')
# end


# =========================== E-Mail =================================
# ----------------- POP3 -----------------------

# require 'net/pop'
# mail_server = Net::POP3.new('pop/gmail.com')

# begin
#     mail_server.start('example@gmail.com','examplepassword')
#     if mail_server.mails.empty?
#         puts "No mails"
#     else
#         puts "#{mail_server.mails.length} mails waiting"
#     end
# rescue => e 
#     puts e
# end

# ---------------------- SMTP -------------------------
# require 'net/smtp'

# message = <<MESSAGE_END
# From: Private Person <edgarhovhannisyan.stdev@gmail.com>
# To: Author of Beginning Ruby <edgar.hovhannisyan08@gmail.com>
# Subject: SMTP e-mail test
# This is a test e-mail message with SMTP.
# MESSAGE_END

# Net::SMTP.start('localhost') do |smtp|
#     smtp.send_message message, 'edgarhovhannisyan.stdev@gmail.com', 'edgar.hovhannisyan08@gmail.com'
# end

# -------------------- Sending Mail with ActionMailer -------------------------
# require "action_mailer"

# class Emailer < ActionMailer::Base
#     def test_email(email_address, email_body)
#         mail(to: email_address, from: 'test@mail.com', subject: 'test', body: email_body)
#     end
# end

# Emailer.test_email('test2@mail.com', 'This is a test e-mail!').deliver_now


# ======================== FTP =============================

# require 'open-uri'
# output = File.new('1.8.2-patch1.gz', 'wb')
# open('ftp://ftp.ruby-lang.org/pub/ruby/1.8/1.8.2-patch1.gz') do |f| 
#     output.print f.read
# end
# output.close

# ----------------- Connection and basic FTP actions ---------------------
require 'net/ftp'
require 'uri'

uri = URI.parse('ftp://ftp.ruby-lang.org/')