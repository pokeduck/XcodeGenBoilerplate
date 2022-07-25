//
//  ViewControllerObjc.m
//  XcodeGenSample
//
//  Created by wayne on 2022/7/26.
//

#import "ViewControllerObjc.h"

@interface ViewControllerObjc ()

@end

@implementation ViewControllerObjc

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *label = [UILabel new];
    label.text = @"Objc ViewController";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    label.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addConstraints:@[
        [label.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [label.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor],
        [label.leftAnchor constraintEqualToAnchor:self.view.leftAnchor],
        [label.rightAnchor constraintEqualToAnchor:self.view.rightAnchor],
        
    ]];
    
    self.view.backgroundColor = UIColor.whiteColor;
}

@end
