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

url = URI.parse('http://www.rubyinside.com/test.cgi')
web_proxy = Net::HTTP::Proxy('proxy.hostname', 8080)

web_proxy.start(url.host, url.port) do |http|
    req = Net::HTTP::Get.new(url.path)
    puts http.request(req).body
end

# ===================== Secure HTTP with HTTPS ========================
