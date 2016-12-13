require  'rails_helper'

describe User do
	it "has a valid factory" do
	#expect (FactoryGirl.create(:User,password:'abcd1212',password_confirmation:'abcd1212')).be_valid
	expect (FactoryGirl.create(:User,password:'abcd1212',password_confirmation:'abcd1212')).should be_valid
	end

 	it "is not valid without a username" do
 	FactoryGirl.build(:User, username:nil,password:'abcd1212',password_confirmation:'abcd1212').should be_invalid
 	#FactoryGirl.build(:User).should be_valid
 	end

 	it "is not valid with password and password_confirmation not the same" do
 	FactoryGirl.build(:User,password:'pass1sadsad',password_confirmation:'passdd2ssas').should be_invalid
	end

	it "is valid with password and password_confirmation as same" do
 	FactoryGirl.build(:User,password:'samePassword',password_confirmation:'samePassword').should be_valid
	end

	it "username is unique  is valid" do
	FactoryGirl.build(:User, username:'yogi',password:'samePassword',password_confirmation:'samePassword').should be_invalid
	FactoryGirl.build(:User, username:'yogi',password:'samePassword1',password_confirmation:'samePassword1').should be_invalid
	end

	it "username is unique  is invalid" do
	FactoryGirl.build(:User, username:'yogi123',password:'samePassword',password_confirmation:'samePassword').should be_valid
	FactoryGirl.build(:User, username:'yogi122',password:'samePassword1',password_confirmation:'samePassword1').should be_valid
	end

end