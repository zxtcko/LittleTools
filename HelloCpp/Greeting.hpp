//
//  Greeting.hpp
//  HelloCpp
//
//  Created by Chris on 16/6/28.
//  Copyright © 2016年 Young. All rights reserved.
//

#ifndef Greeting_hpp
#define Greeting_hpp

#include <stdio.h>
#include <string>

class Greeting{
    std::string greeting;
    
public:
    Greeting();
    std::string greet();
};

#endif /* Greeting_hpp */
