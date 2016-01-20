//
//  ViewController.h
//  Show Different Page By Storyboard
//
//  Created by Newsee on 16/1/15.
//  Copyright © 2016年 Newsee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *usernameField;

@property (weak, nonatomic) IBOutlet UITextField *passwordField;

@property (weak, nonatomic) IBOutlet UIButton *Login;

- (IBAction)Login:(id)sender;

@property(nonatomic,copy) NSString *userId;

@end

