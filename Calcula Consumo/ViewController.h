//
//  ViewController.h
//  Calcula Consumo
//
//  Created by Anderson Tagata (personal) on 11/07/15.
//  Copyright © 2015 Anderson Tagata (personal). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//--PARTE 1
@property (weak, nonatomic) IBOutlet UITextField *kmTextField;
@property (weak, nonatomic) IBOutlet UITextField *litrosTextField;
@property (weak, nonatomic) IBOutlet UITextField *consumoMedioTextField;
- (IBAction)calculaKmLitros:(id)sender;

//--PARTE 2
@property (weak, nonatomic) IBOutlet UITextField *litrosReferenciaTextField;
@property (weak, nonatomic) IBOutlet UILabel *rodaKmLabel;
- (IBAction)calculaRodagem:(id)sender;

//--PARTE 3
@property (weak, nonatomic) IBOutlet UITextField *kmsReferenciaTextField;
@property (weak, nonatomic) IBOutlet UILabel *consumiraLitrosLabel;
- (IBAction)calculaConsumo:(id)sender;

//--EXTRAS
- (IBAction)reset:(id)sender;

@end

