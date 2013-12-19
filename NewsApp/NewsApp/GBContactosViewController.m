//
//  GBContactosViewController.m
//  NewsApp
//
//  Created by Gerardo Blanco García on 18/12/13.
//  Copyright (c) 2013 Gerardo Blanco García. All rights reserved.
//

#import "GBContactosViewController.h"

@interface GBContactosViewController ()

@property (weak, nonatomic) IBOutlet UILabel *saludoLabel;

@property (weak, nonatomic) IBOutlet UILabel *fechaActualLabel;

- (void)setup;

- (void)updateUI;

- (IBAction)actualizarButtonPressed:(id)sender;

- (NSString *)saluda:(NSString *)texto de:(NSString *)nombre esPorLaTarde:(BOOL)esPorLaTarde;

@end

@implementation GBContactosViewController

@synthesize saludoLabel = _saludoLabel;

@synthesize fechaActualLabel = _fechaActualLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setup];
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [self updateUI];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)setup
{
    self.saludoLabel.text = [self saluda:@"Saludos" de:@"Gerardo" esPorLaTarde:YES];
}

- (void)updateUI
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd/MM/yyyy hh:mm:ss"];
    
    self.fechaActualLabel.text = [dateFormatter stringFromDate:[NSDate date]];
}

- (IBAction)actualizarButtonPressed:(id)sender
{
    [self updateUI];
}

- (NSString *)saluda:(NSString *)texto de:(NSString *)nombre esPorLaTarde:(BOOL)esPorLaTarde
{
    return [NSString stringWithFormat:@"%@ de %@ %@", texto, nombre, (esPorLaTarde ? @"por la tarde." : @"por el día.")];
}

@end
