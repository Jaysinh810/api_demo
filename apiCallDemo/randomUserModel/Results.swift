/* 
Copyright (c) 2024 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
import ObjectMapper

struct Results : Mappable {
	var gender : String?
	var name : Name?
	var location : Location?
	var email : String?
	var login : Login?
	var dob : Dob?
	var registered : Registered?
	var phone : String?
	var cell : String?
	var id : Id?
	var picture : Picture?
	var nat : String?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

		gender <- map["gender"]
		name <- map["name"]
		location <- map["location"]
		email <- map["email"]
		login <- map["login"]
		dob <- map["dob"]
		registered <- map["registered"]
		phone <- map["phone"]
		cell <- map["cell"]
		id <- map["id"]
		picture <- map["picture"]
		nat <- map["nat"]
	}

}