//
//  ViewController.m
//  Show Different Page By Storyboard
//
//  Created by Newsee on 16/1/15.
//  Copyright © 2016年 Newsee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated {
    
    self.usernameField.text = nil;
    self.passwordField.text = nil;
    
    NSString *path = NSHomeDirectory();
    NSLog(@"沙盒路径为%@",path);
    
    [super viewWillAppear:animated];
    
    self.Login.backgroundColor = [UIColor yellowColor];
    [self.Login setTitle:@"登录账号" forState:UIControlStateNormal];
    
    self.usernameField.placeholder = @"请输入您的帐号";
    self.passwordField.placeholder = @"请输入您的密码";
    
    
    
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    NSString *userName = [user objectForKey:@"Name"];
    NSString *userPwd = [user objectForKey:@"Password"];
    
    if (userName && userPwd) {
        
        NSUserDefaults *use = [NSUserDefaults standardUserDefaults];
        NSString *saveId = [use objectForKey:@"USERID"];
        self.userId = saveId;
        [self afterLogin];
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
 
    self.title = @"登录";
    self.view.backgroundColor = [UIColor grayColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Login:(id)sender {
    
    [self doLoginProcess];
}

- (void)doLoginProcess {
    
    [_usernameField resignFirstResponder];
    [_passwordField resignFirstResponder];
    
    NSString *name = self.usernameField.text;
    NSString *password = self.passwordField.text;
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:name forKey:@"Name"];
    [userDefaults setObject:password forKey:@"Password"];
    [userDefaults synchronize];
    
    if (!name.length) {
        [self.usernameField becomeFirstResponder];
        return;
    }
    if (!password.length) {
        [self.passwordField becomeFirstResponder];
    }
    
    if ([name isEqualToString:@"1"] && [password isEqualToString:@"1"]) {
        
        self.userId = @"No1";
        
        NSUserDefaults *USER = [NSUserDefaults standardUserDefaults];
        [USER setObject:self.userId forKey:@"USERID"];
        [USER synchronize];
        
    }else if ([name isEqualToString:@"2"] && [password isEqualToString:@"2"]) {
        
        self.userId = @"No2";
    }else if ([name isEqualToString:@"3"] && [password isEqualToString:@"3"]) {
        
        self.userId = @"No3";
    }
    
    [self afterLogin];
}

- (void)afterLogin {
    
    NSLog(@"根据UserId为%@跳转相应页面",self.userId);
    
    if ([self.userId isEqualToString:@"No1"]) {
        
        [self.navigationController performSegueWithIdentifier:@"No1" sender:self];
    }else if ([self.userId isEqualToString:@"No2"]) {
        
        [self.navigationController performSegueWithIdentifier:@"No2" sender:self];
    }else if ([self.userId isEqualToString:@"No3"]) {
        
        [self.navigationController performSegueWithIdentifier:@"No3" sender:self];
    }
    
    
}



@end
