require "rest-client"
require 'httparty'

def populate_discs
    discs = HTTParty.get("https://discit-api.fly.dev")
    prices = [9.99, 14.99, 19.99, 24.99]
    pictures = ["https://m.media-amazon.com/images/I/61+1Z62KXKL._AC_SX425_.jpg", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4726/3094/BZLuna__51894.1663867352.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4556/2888/IMG_4407__75679.1662673089.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4425/2750/97919EF3-4D8B-4BE3-9713-CA1565290596__15823.1661470071.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4422/2758/IMG_4570__14558.1661206942.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4274/2201/IMG_4215__55257.1660584589.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4672/3013/LucidBounty__38729.1663426047.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4671/3014/OptoClaymore__40635.1663426173.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4569/2892/IMG_4253__87498.1662673261.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4365/2668/E78BE3BD-59AB-4175-A547-0379CA643D71__95754.1661470239.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4354/2356/IMG_4379__74425.1660682946.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4279/2327/IMG_4347__14207.1660676067.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4350/2185/IMG_4220__64858.1660581442.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4269/2236/IMG_4254__18294.1660665037.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4265/2384/IMG_4597__04760.1660755712.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4144/2221/IMG_4207__56458.1660589186.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4123/2393/IMG_4528__37916.1660757226.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/3858/2198/IMG_4221__18737.1660584364.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4674/3011/LucidVandal__55986.1663425690.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4555/2887/IMG_4438__04808.1662673033.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4384/2656/BD8658C9-02EC-4F55-8BC2-0AA83AC3FFF6__99306.1661470098.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4380/2704/A9832B15-FCC1-4EF5-A49F-2B521E7B31F3__18034.1661094048.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4372/2688/54167413-275A-456E-98B8-FA669198D491__45974.1661470188.png?c=1", "https://cdn11.bigcommerce.com/s-vn6e6v8gre/images/stencil/300x300/products/4362/2707/4020305D-D7DE-43F4-BAC1-0241841AA294__88499.1661094137.png?c=1"]
    discs.each do |s|
        Disc.create(name: s["name"], brand: s["brand"], category: s["category"], speed: s["speed"].to_i, glide: s["glide"].to_i, turn: s["turn"].to_i, fade: s["fade"].to_i, stability: s["stability"], flight_path: s["pic"], category_slug: s["category_slug"], price: prices.sample, picture_url: "", name_slug: s["name_slug"])
    end
end

pictureArray = []

puts "Seeding..."

User.create(:email => "johnfinleybremerton@gmail.com", :password => "123456", :password_confirmation => "123456", username: "jfinley92", picture: "https://mystyle-flydiscs.s3.amazonaws.com/design/593946/blob_web_image.jpg")
populate_discs()


puts "Success"