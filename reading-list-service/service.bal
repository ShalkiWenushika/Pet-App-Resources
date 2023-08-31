// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.org) All Rights Reserved.

// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at

//    http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied. See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/http;

type BookItem record {|
    string title;
    string author;
    string status;
|};

type Book record {|
    *BookItem;
    string id;
|};

map<map<Book>> books = {};
const string DEFAULT_USER = "default";

service /readinglist on new http:Listener(9090) {

    resource function get books(http:Headers headers) returns Book {
        Book book1 = { title: "Title1", author: "Author1", status: "Status1", id: "1"};
        return book1;
    }
}