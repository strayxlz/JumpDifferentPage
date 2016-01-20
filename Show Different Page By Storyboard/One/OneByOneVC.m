//
//  OneByOneVC.m
//  Show Different Page By Storyboard
//
//  Created by Newsee on 16/1/15.
//  Copyright © 2016年 Newsee. All rights reserved.
//

#import "OneByOneVC.h"

@interface OneByOneVC ()

@end

@implementation OneByOneVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"要事";
    //self.view.backgroundColor = [UIColor brownColor];
    
    
    UITabBarController *tab = [[UITabBarController alloc] init];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
