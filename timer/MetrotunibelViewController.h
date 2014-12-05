//
//  MetrotunibelViewController.h
//  timer
//
//  Created by Samarth Sandeep on 6/6/13.
//  Copyright (c) 2013 Samarth Sandeep. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MetrotunibelViewController : UIViewController {
    
    UILabel *mainLabel;
    UILabel *secondLabel;
    
    NSTimer *mainTimer;
    NSTimer *secondTimer;
    
    NSDate *startDateMain;
    NSDate *startDate;
    
}

@property(nonatomic, retain)IBOutlet UILabel *mainLabel;
@property(nonatomic, retain)IBOutlet UILabel *secondLabel;

-(IBAction)startMain:(id)sender;
-(IBAction)startSecond:(id)sender;

@end