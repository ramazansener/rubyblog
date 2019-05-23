class Yazilar < ApplicationRecord
    has_attached_file :resim, styles: { medium: "800x600>", thumb: "250X200>" }, default_url: "/images/:style/missing.png"
 validates_attachment_content_type :resim, content_type: /\Aimage\/.*\z/

end
