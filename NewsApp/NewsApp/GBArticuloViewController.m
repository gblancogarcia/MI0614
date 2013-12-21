//
//  GBArticuloViewController.m
//  NewsApp
//
//  Created by Gerardo Blanco García on 19/12/13.
//  Copyright (c) 2013 Gerardo Blanco García. All rights reserved.
//

#import "GBArticuloViewController.h"
#import "GBDetalleViewController.h"


@interface GBArticuloViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nombre;

@property (weak, nonatomic) IBOutlet UITextField *fecha;

@property (weak, nonatomic) IBOutlet UITextView *articulo;

@end

@implementation GBArticuloViewController

@synthesize nombre = _nombre;

@synthesize fecha = _fecha;

@synthesize articulo = _articulo;

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc]
//                                     initWithTarget:self
//                                     action:@selector(ocultaTeclado)]];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"Detalle"]) {
        GBDetalleViewController *detalle = segue.destinationViewController;
        NSString *texto = [NSString stringWithFormat:@"Escritor: %@  \nFecha: %@ \nArtículo: %@",
                           self.nombre.text,
                           self.fecha.text,
                           self.articulo.text];
        [detalle setTexto:texto];
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [self ocultaTeclado];
}

- (void)ocultaTeclado
{
    for (UIView *view in [self.view subviews]) {
        [view resignFirstResponder];
    }
}

@end
