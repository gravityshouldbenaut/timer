//
//  MetrotunibelViewController.m
//  timer
//
//  Created by Samarth Sandeep on 6/6/13.
//  Copyright (c) 2013 Samarth Sandeep. All rights reserved.
//

#import "MetrotunibelViewController.h"

@implementation NSTimerViewController
@synthesize mainLabel, secondLabel;

-(IBAction)startMain:(id)sender {
    

    
    mainTimer = [NSTimer scheduledTimerWithTimeInterval:1.0/1.0 target:self selector:@selector(updateTimerMain) userInfo:nil repeats:YES];
    
}

-(IBAction)startSecond:(id)sender {
    
    
    
    secondTimer = [NSTimer scheduledTimerWithTimeInterval:1.0/100.0 target:self selector:@selector(updateTimerSecond) userInfo:nil repeats:YES];
    
}

-(void)updateTimerMain {
    
    NSDate *currentDate = [NSDate date];
    NSTimeInterval timeInterval = [currentDate timeIntervalSinceDate:startDateMain];
    NSDate *timerDate = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"s"];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0.0]];
    NSString *timeString = [dateFormatter stringFromDate:timerDate];
    mainLabel.text = timeString;

    
}

-(void)updateTimerSecond {
    
    NSDate *currentDate2 = [NSDate date];
    NSTimeInterval timeInterval2 = [currentDate2 timeIntervalSinceDate:startDate];
    NSDate *timerDate2 = [NSDate dateWithTimeIntervalSince1970:timeInterval2];
    
    NSDateFormatter *dateFormatter2 = [[NSDateFormatter alloc] init];
    [dateFormatter2 setDateFormat:@"mm:ss:SSS"];
    [dateFormatter2 setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0.0]];
    NSString *timeString2 = [dateFormatter2 stringFromDate:timerDate2];
    secondLabel.text = timeString2;

    
}




- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 }
 */

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end