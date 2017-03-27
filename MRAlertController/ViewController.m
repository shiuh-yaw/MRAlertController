//
//  ViewController.m
//  MRAlertController
//
//  Created by Yaw on 9/3/17.
//  Copyright © 2017 Yaw. All rights reserved.
//

#import "ViewController.h"
#import "MRAlertController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];

}
- (IBAction)alertDidTapped:(UIButton *)sender {
    
    [self alert];
}

- (void)alert {
    
    MRAlertController *alertController = [MRAlertController alertWithTitle:@"Claim Rewards"
                                                                   message:@"You earned these rewards\nbased on last week performance"
                                                            preferredStyle:MRAlertControllerStyleAlertCustom];
    
    MRAlertAction *cancelAction = [MRAlertAction actionWithTitle:@"Claim" handler:^(MRAlertAction * _Nonnull action) {
        if (action) {
            NSLog(@"%@ Action", action.title);
        }
    }];
    [alertController addAction:cancelAction];
    MRAlertAction *sendAction = [MRAlertAction actionWithTitle:@"My Level" handler:^(MRAlertAction * _Nonnull action) {
        if (action) {
            UITextField *customizedMsgLabel = alertController.textFields.firstObject;
            NSLog(@"customizedMsgLabel: %@", customizedMsgLabel.text);
        }
    }];
    [alertController addAction:sendAction];
    
    MRAlertItem *coinItem = [MRAlertItem actionWithTitle:@"Super Star" titleImage:[NSURL URLWithString:@"https://raw.githubusercontent.com/Ashwinvalento/cartoon-avatar/master/lib/images/male/86.png"] value:@"1000" valueImage:[NSURL URLWithString:@"https://raw.githubusercontent.com/Ashwinvalento/cartoon-avatar/master/lib/images/male/86.png"]];
    [alertController addItem:coinItem];

    MRAlertItem *diamondItem = [MRAlertItem actionWithTitle:@"DJ" titleImage:[NSURL URLWithString:@"https://raw.githubusercontent.com/Ashwinvalento/cartoon-avatar/master/lib/images/male/86.png"] value:@"10" valueImage:[NSURL URLWithString:@"https://raw.githubusercontent.com/Ashwinvalento/cartoon-avatar/master/lib/images/male/86.png"]];
    [alertController addItem:diamondItem];
    
    /*
    [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        if (textField) {
            textField.placeholder = @"Something cool!";
        }
    }];
    
    [alertController addImageViewWithConfigurationHandler:^(UIImageView * _Nonnull imageView) {
        if (imageView) {
            imageView.image = [UIImage imageNamed:@"icPrivilege"];
        }
    }];
    */
    [self presentViewController:alertController animated:false completion:^{
        
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
