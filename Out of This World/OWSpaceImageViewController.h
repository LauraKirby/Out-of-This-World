//
//  OWSpaceImageViewController.h
//  Out of This World
//
//  Created by Laura Kirby on 9/6/14.
//  Copyright (c) 2014 Laura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OWSpaceObject.h"
@interface OWSpaceImageViewController : UIViewController <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIImageView * imageView;
@property (strong, nonatomic) OWSpaceObject *spaceObject; 
@end
