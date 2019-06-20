class Clothe < ApplicationRecord
    VALID_NAMECL_REGEX = /\A[A-Za-z]/i
    validates :name, presence: true, length: {maximum: 50}, format:{with: VALID_NAMECL_REGEX, message: "VUI LONG NHAP CHUI CAI"}, 
    uniqueness: { case_sensitive: false }
    validates :gia, presence:true, length: {maximum: 10}, numericality: { only_integer: true, message: "VUI LONG NHAP SO"}
    validates :soluong, presence:true, numericality: { only_integer: true, message: "VUI LONG NHAP SO"}
    mount_uploader :picture, PictureUploader
end
