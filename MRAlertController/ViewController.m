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
    MRAlertController *alertController = [MRAlertController alertWithTitle:@"Information"
                                                                   message:@""
                                                            preferredStyle:MRAlertControllerStyleAlertImage];
    MRAlertAction *sendAction = [MRAlertAction actionWithTitle:@"OK" handler:^(MRAlertAction * _Nonnull action) {
       
        if (action) {
            UITextField *customizedMsgLabel = alertController.textFields.firstObject;
            NSLog(@"customizedMsgLabel: %@", customizedMsgLabel.text);
        }
    }];
    [alertController addAction:sendAction];
    MRAlertAction *cancelAction = [MRAlertAction actionWithTitle:@"Cancel" handler:^(MRAlertAction * _Nonnull action) {
        if (action) {
            NSLog(@"Cancel Actiion");
        }
    }];
    [alertController addAction:cancelAction];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        if (textField) {
            textField.placeholder = @"Write Something cool!";
        }
    }];
    [alertController addImageViewWithConfigurationHandler:^(UIImageView * _Nonnull imageView) {
        if (imageView) {
            imageView.image = [UIImage imageNamed:@"icPrivilege"];
        }
    }];
    [self presentViewController:alertController animated:false completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end