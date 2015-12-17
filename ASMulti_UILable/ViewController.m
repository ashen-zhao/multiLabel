//
//  ViewController.m
//  ASMulti_UILable
//
//  Created by Ashen on 15/12/17.
//  Copyright © 2015年 Ashen. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+ASDouble.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *multiLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *a = [NSArray arrayWithObjects:@"瞅啥瞅", @"我不就是", @"多样式label么，哈哈", nil];
    NSArray *b = [NSArray arrayWithObjects:[UIColor redColor], [UIColor blackColor], [UIColor blueColor], nil];
    NSArray *c = [NSArray arrayWithObjects:@"19", @"13", @"17", nil];
    
    [self.multiLabel txtArr:a colorArr:b fontArr:c];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
