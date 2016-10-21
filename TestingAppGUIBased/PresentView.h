//
//  PresentView.h
//  TestingAppGUIBased
//
//  Created by Kashif on 19/10/16.
//  Copyright © 2016 Kashif. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface PresentView : UIViewController<UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControlOutlet;
@property (weak, nonatomic) IBOutlet UITextField *textFieldOutlet;
@property (weak, nonatomic) IBOutlet UILabel *labelOutlet;
@property (weak, nonatomic) IBOutlet UIButton *buttonOutlet;
@property (weak, nonatomic) IBOutlet UIView *viewOutlet;
@property (weak, nonatomic) IBOutlet UISlider *sliderOutlet;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewOutlet;
@property (weak, nonatomic) IBOutlet UIProgressView *progressViewOutlet;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorOutlet;
@property (weak, nonatomic) IBOutlet UILabel *labelwithsliderOutlet;
@property (weak, nonatomic) IBOutlet UISwitch *switchOutlet;
- (IBAction)segmentedControl:(UISegmentedControl *)sender;
- (IBAction)gestureLongPressButton:(UILongPressGestureRecognizer *)sender;
- (IBAction)gestureLongPressImageView:(UILongPressGestureRecognizer *)sender;
- (IBAction)gestureTapImageView:(UITapGestureRecognizer *)sender;
- (IBAction)gesturedoubleTapImageView:(UITapGestureRecognizer *)sender;
- (IBAction)gesturePanLabelDrag:(UIPanGestureRecognizer *)sender;
- (IBAction)gesturePinchView:(UIPinchGestureRecognizer *)sender;
- (IBAction)gestureRotationView:(UIRotationGestureRecognizer *)sender;
- (IBAction)handleSliderLabel:(UISlider *)sender;
- (IBAction)handleSliderLabelStop:(UISlider *)sender;
- (IBAction)handleSwitch:(UISwitch *)sender;







@end
