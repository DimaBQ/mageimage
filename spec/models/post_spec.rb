require 'rails_helper'

describe Post do
	
	it "validates the name and makes sure it's not nil" do 
		post = Post.new(body: '')
		post.valid?
		post.errors[:body].should_not be_empty
	end

end