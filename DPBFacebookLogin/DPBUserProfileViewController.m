//
//  DPBUserProfileViewController.m
//  DPBFacebookLogin
//
//  Created by David Pedrosa on 21/05/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "DPBUserProfileViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface DPBUserProfileViewController ()

@end

@implementation DPBUserProfileViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _facebookButton.delegate = self;
    
    _statusLabel.text    = @"¡Welcome to DPBFacebook Login!";
    _userNameLabel.text  = [NSString stringWithFormat:@"Hi! %@", _userString];
    _userEmailLabel.text = _emailString;
    _userImage.profileID = _profileID;
    
    _userImage.layer.cornerRadius  = 50;
    _userImage.layer.borderColor = [UIColor grayColor].CGColor;
    _userImage.layer.masksToBounds = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - FBLoginViewDelegate

- (void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView {
    NSLog(@"You're logged out");
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    DPBUserProfileViewController *profileViewController = [storyboard instantiateViewControllerWithIdentifier:@"loginViewController"];
    
    [self presentViewController:profileViewController animated:YES completion:nil];

}
@end
