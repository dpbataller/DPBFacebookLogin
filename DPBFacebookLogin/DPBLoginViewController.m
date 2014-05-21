//
//  DPBLoginViewController.m
//  DPBFacebookLogin
//
//  Created by David Pedrosa on 21/05/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "DPBLoginViewController.h"
#import "DPBUserProfileViewController.h"

@interface DPBLoginViewController ()

@end

@implementation DPBLoginViewController

#pragma mark - Life Circle

- (void)viewDidLoad
{
    [super viewDidLoad];

    _loginButton.readPermissions = @[@"public_profile", @"email"];
    _loginButton.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

#pragma mark - FBLoginViewDelegate

- (void)loginViewShowingLoggedInUser:(FBLoginView *)loginView{
    NSLog(@"You're logged in");
}

- (void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView {
    NSLog(@"You're logged out");
}

- (void)loginViewFetchedUserInfo:(FBLoginView *)loginView user:(id<FBGraphUser>)user{
    NSLog(@"%@", user);
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    DPBUserProfileViewController *profileViewController = [storyboard instantiateViewControllerWithIdentifier:@"profileViewController"];
    
    profileViewController.userString    = [user name];
    profileViewController.emailString   = [user objectForKey:@"email"];
    profileViewController.profileID     = user.id;
    
    [self presentViewController:profileViewController animated:YES completion:nil];
    
}

- (void)loginView:(FBLoginView *)loginView handleError:(NSError *)error{
    NSLog(@"%@", [error localizedDescription]);
}

@end
