//
//  GBFirstViewController.m
//  NewsApp
//
//  Created by Gerardo Blanco García on 18/12/13.
//  Copyright (c) 2013 Gerardo Blanco García. All rights reserved.
//

#import "GBNoticiasViewController.h"

@interface GBNoticiasViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *diarios;

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property (weak, nonatomic) IBOutlet UISwitch *ajuste;

- (void)updateUI;

- (IBAction)ajusteDidChanged:(id)sender;

- (IBAction)diarioDidChanged:(id)sender;

- (void)cargarDiario;

- (void)ajustarPagina;

+ (NSDictionary *)urlsDiarios;

@end

@implementation GBNoticiasViewController

@synthesize diarios = _diarios;

@synthesize webView = _webView;

@synthesize ajuste = _ajuste;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated
{
    [self updateUI];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)updateUI
{
    [self ajustarPagina];
    [self cargarDiario];
}

- (IBAction)ajusteDidChanged:(id)sender
{
    [self updateUI];
}

- (IBAction)diarioDidChanged:(id)sender
{
    [self updateUI];
}

- (void)cargarDiario
{
    NSString *diario = [self.diarios titleForSegmentAtIndex:self.diarios.selectedSegmentIndex];
    
    NSString *urlStr = [[GBNoticiasViewController urlsDiarios] objectForKey:diario];
    
    NSURL *url = [NSURL URLWithString:urlStr];
    
    if (url) {
        NSURLRequest* request = [NSURLRequest requestWithURL:url];
        [self.webView loadRequest:request];
        NSLog(@"Cargando url: %@", urlStr);
    }
}

- (void)ajustarPagina
{
    self.webView.scalesPageToFit = [self.ajuste isOn];
}

+ (NSDictionary *)urlsDiarios
{
    return @{@"El País": @"http://elpais.com",
             @"El Mundo": @"http://www.elmundo.es",
             @"ABC": @"http://www.abc.es"};
}

@end
