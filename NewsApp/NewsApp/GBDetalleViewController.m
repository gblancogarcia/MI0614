//
//  GBDetalleViewController.m
//  NewsApp
//
//  Created by Gerardo Blanco García on 19/12/13.
//  Copyright (c) 2013 Gerardo Blanco García. All rights reserved.
//

#import "GBDetalleViewController.h"

@interface GBDetalleViewController ()

@property (weak, nonatomic) IBOutlet UITextView *detalle;

@end

@implementation GBDetalleViewController

@synthesize detalle = _detalle;

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.detalle.text = self.texto;
}

- (IBAction)okButtonPressed:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
