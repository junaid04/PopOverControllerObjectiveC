//
//  PopUp.m
//  UniversalPopUp
//
//  Created by Higher Visibility on 4/8/16.
//  Copyright © 2016 Higher Visibility. All rights reserved.
//

#import "SettingController.h"
#import "DetailsController.h"
#import "UIKit/UIKit.h"
#import "UIViewController+Ext.h"

@implementation SettingController

@synthesize section1;
@synthesize row;
@synthesize type;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    type = [self mobileType];
    
    sectionTitle = [[NSMutableArray alloc]initWithObjects:@"SECURITY",@"TERMINAL",@"INFO", nil];
    data = [[NSMutableArray alloc]initWithObjects:@[@"Keys"],@[@"Appearance",@"Keyboard"],@[@"About"], nil];
    keyData = [[NSMutableArray alloc]initWithObjects:@"Key 1",@"Key 2",@"Key 3", nil];
    aboutData = [[NSMutableArray alloc]initWithObjects:@"About Me",@"About You",@"About Us", nil];
    keyBoard = [[NSMutableArray alloc]initWithObjects:@"KB 1",@"KB 2",@"KB 3",@"KB 4", nil];
    
    self.title = @"Settings";
    
    if(type == 1) {
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(dismiss)];
    }
}

- (IBAction)dismiss
{
    [self dismissViewControllerAnimated:true completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    section1 = indexPath.section;
    row = indexPath.row;
    
    [self performSegueWithIdentifier:@"DetailsSegue" sender:self];
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    DetailsController *destinationViewController = (DetailsController*)segue.destinationViewController;
    if (section1 == 0) {
        destinationViewController.itemDetails = keyData;
    }
    else if (section1 == 1)
    {
        destinationViewController.itemDetails = aboutData;
    }
    
}

@end
