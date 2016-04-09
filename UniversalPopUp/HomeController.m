//
//  ViewController.m
//  UniversalPopUp
//
//  Created by Higher Visibility on 4/8/16.
//  Copyright © 2016 Higher Visibility. All rights reserved.
//

#import "HomeController.h"
#import "SettingController.h"
#import "UIViewController+Ext.h"

@interface HomeController ()

@end

@implementation HomeController
@synthesize type;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"viiew");
    type = [self mobileType];
    NSLog(@"%d",type);
}

- (IBAction)SettingsButton:(id)sender {
    
    if (type == 1){
        
        [self popOverPresentation:@"SettingView"];

    }
    
    else {
        
        [self performSegueWithIdentifier:@"SettingSegue" sender:self];
    }
}

- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller {
    
    return UIModalPresentationNone;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
