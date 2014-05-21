//
//  DPBLoginViewController.h
//  DPBFacebookLogin
//
//  Created by David Pedrosa on 21/05/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface DPBLoginViewController : UIViewController <FBLoginViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageLogo;
@property (weak, nonatomic) IBOutlet FBLoginView *loginButton;

@end
