//
//  ViewController.m
//  HelloCpp
//
//  Created by Chris on 16/6/28.
//  Copyright © 2016年 Young. All rights reserved.
//

#import "ViewController.h"
#import "Greeting.hpp"

@interface ViewController ()
{

    Greeting greeting;
    IBOutlet UIButton *helloButton;

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)helloButtonAction{
    
    NSString* newTitle = [NSString stringWithCString:greeting.greet().c_str() encoding:[NSString defaultCStringEncoding]];
    
    [helloButton setTitle:newTitle forState:UIControlStateNormal];
}

@end
