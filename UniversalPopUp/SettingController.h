//
//  PopUp.h
//  UniversalPopUp
//
//  Created by Higher Visibility on 4/8/16.
//  Copyright © 2016 Higher Visibility. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SettingController : UITableViewController

{
    NSMutableArray *data;
    NSMutableArray *keyData;
    NSMutableArray *sectionTitle;
    NSMutableArray *aboutData;
    NSMutableArray *keyBoard ;
    NSInteger section1;
    NSInteger row;
    int type;
    
}

@property (nonatomic) int type;
@property (nonatomic) NSInteger section1;
@property (nonatomic) NSInteger row;
@property (nonatomic) NSUInteger *name;


- (IBAction)dismiss;

@end
