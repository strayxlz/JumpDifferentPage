//
//  ThreeByOneVC.m
//  Show Different Page By Storyboard
//
//  Created by Newsee on 16/1/15.
//  Copyright © 2016年 Newsee. All rights reserved.
//

#import "ThreeByOneVC.h"

@interface ThreeByOneVC ()

@end

@implementation ThreeByOneVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"HELLO";
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(50, 300, kWidth-100, 50)];
    [button setTitle:@"第三个页面" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor brownColor] forState:UIControlStateNormal];
    button.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:button];
    
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
