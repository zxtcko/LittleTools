//
//  Greeting.cpp
//  HelloCpp
//
//  Created by Chris on 16/6/28.
//  Copyright © 2016年 Young. All rights reserved.
//

#include "Greeting.hpp"

Greeting::Greeting(){
    greeting = "Hello C++!";
}

std::string Greeting::greet(){
    return greeting;
}