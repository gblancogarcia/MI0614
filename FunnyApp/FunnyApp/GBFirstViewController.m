//
//  GBFirstViewController.m
//  FunnyApp
//
//  Created by Gerardo Blanco García on 19/12/13.
//  Copyright (c) 2013 Gerardo Blanco García. All rights reserved.
//

#import "GBFirstViewController.h"

static const CGFloat GBDefaultAlpha = 0.5f;
static const CGFloat GBMaxAlpha = 1.0f;
static const CGFloat GBMinAlpha = 0.0f;
static const CGFloat GBStep = 0.1f;

@interface GBFirstViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UISlider *slider;

@property (weak, nonatomic) IBOutlet UIStepper *stepper;

@property (nonatomic) CGFloat alpha;

@end

@implementation GBFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setup];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self updateUI];
}

- (void)setAlpha:(CGFloat)alpha
{
    alpha = fmax(GBMinAlpha, alpha);
    alpha = fmin(GBMaxAlpha, alpha);
    
    _alpha = alpha;
}

- (void)setup
{
    self.alpha = GBDefaultAlpha;
    
    self.slider.value = GBDefaultAlpha;
    self.slider.maximumValue = GBMaxAlpha;
    self.slider.minimumValue = GBMinAlpha;
    
    self.stepper.value = GBDefaultAlpha;
    self.stepper.maximumValue = GBMaxAlpha;
    self.stepper.minimumValue = GBMinAlpha;
    
    self.stepper.stepValue = GBStep;
}

- (IBAction)sliderValueChanged:(id)sender
{
    self.alpha = self.slider.value;
    self.stepper.value = self.alpha;
    [self updateUI];
}

- (IBAction)stepperValueChanged:(id)sender
{
    self.alpha = self.stepper.value;
    self.slider.value = self.alpha;
    [self updateUI];
}

- (IBAction)pinch:(id)sender
{
    NSLog(@"Pinch");
}

- (void)updateUI
{
    self.imageView.alpha = self.alpha;
}

@end
