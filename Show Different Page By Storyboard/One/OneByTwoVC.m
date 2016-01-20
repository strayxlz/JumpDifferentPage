//
//  OneByTwoVC.m
//  Show Different Page By Storyboard
//
//  Created by Newsee on 16/1/15.
//  Copyright © 2016年 Newsee. All rights reserved.
//

#import "OneByTwoVC.h"

@interface OneByTwoVC ()

@end

@implementation OneByTwoVC

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"我";
    //self.view.backgroundColor = [UIColor orangeColor];
    
}

- (IBAction)LoginOut:(id)sender {
    
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    [user removeObjectForKey:@"Name"];
    [user removeObjectForKey:@"Password"];
    [user removeObjectForKey:@"USERID"];
    [user synchronize];
    
    NSLog(@"注销登录");
    
    //[self.navigationController popToRootViewControllerAnimated:YES];
    [self.tabBarController dismissViewControllerAnimated:YES completion:nil];
    
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
