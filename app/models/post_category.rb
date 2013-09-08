class PostCategory < Activerecord::Base
	belongs_to :post
	belongs_to :category
end