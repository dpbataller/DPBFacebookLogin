//
//  DPBUserProfileViewController.h
//  DPBFacebookLogin
//
//  Created by David Pedrosa on 21/05/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface DPBUserProfileViewController : UIViewController <FBLoginViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *userEmailLabel;
@property (weak, nonatomic) IBOutlet FBProfilePictureView *userImage;
@property (weak, nonatomic) IBOutlet FBLoginView *facebookButton;

@property (strong, nonatomic) NSString *userString;
@property (strong, nonatomic) NSString *emailString;
@property (strong, nonatomic) NSString *profileID;

@end
