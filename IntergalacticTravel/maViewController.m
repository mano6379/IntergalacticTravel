//
//  maViewController.m
//  IntergalacticTravel
//
//  Created by Marion Ano on 3/11/14.
//  Copyright (c) 2014 Marion Ano. All rights reserved.
//

#import "maViewController.h"
#import "DestinationViewController.h"

@interface maViewController ()
@property (weak, nonatomic) IBOutlet UIButton *redDwarfButton;
@property (weak, nonatomic) IBOutlet UIButton *planetPurpleButton;

@end

@implementation maViewController

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
//the first argument is a segue and the second argument is the button
{
    
    //created local variable, vc, of type UIViewController
    
    DestinationViewController *vc = segue.destinationViewController;
    
    if (sender == self.planetPurpleButton) {
        vc.view.backgroundColor = [UIColor purpleColor];
        vc.imageView.image = [UIImage imageNamed:@"purpleplanet.jpg"];
    } else {
        
        //the following lines of code do exatly the same thing
        vc.view.backgroundColor =UIColor.redColor;
        [[vc view] setBackgroundColor:[UIColor redColor]];
        
        vc.view.backgroundColor = [UIColor redColor];
        vc.imageView.image = [UIImage imageNamed: @"reddrawf"];
    }
}

- (IBAction)unwindFromDestinationViewController:(UIStoryboardSegue *)sender
{
    
}













@end
