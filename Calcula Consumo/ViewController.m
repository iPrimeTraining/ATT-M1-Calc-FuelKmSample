//
//  ViewController.m
//  Calcula Consumo
//
//  Created by Anderson Tagata (personal) on 11/07/15.
//  Copyright © 2015 Anderson Tagata (personal). All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"- viewDidLoad");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"- didReceiveMemoryWarning");
}


//Calcula quantos km/l
- (IBAction)calculaKmLitros:(id)sender {
    
    NSLog(@"- calculaKmLitros");
    
    float km = [self.kmTextField.text floatValue];
    float litros = [self.litrosTextField.text floatValue];
    
    float consumoMedio = km / litros;
    
    NSString * consumoMedioText = [NSString stringWithFormat:@"%.02f", consumoMedio];
    
    self.consumoMedioTextField.text = consumoMedioText;

    [self.view endEditing:YES];
}

//Quantos Kms roda com os litros de referencia
- (IBAction)calculaRodagem:(id)sender {
    
    NSLog(@"- calculaRodagem");
    
    //Checa se caso a caixa de texto do consumo estiver vazia
    if ([self.consumoMedioTextField.text isEqualToString:@""]) {
        return; // Return força a parada do metodo neste ponto.
    }
    
    //Checa se o valor da caixa de texto de consumo é maior que zero
    if ([self.consumoMedioTextField.text floatValue]>0) {
        NSLog(@"SIM O VALOR EH MAIOR QUE ZERO");
    
    
    
    float consumoMedio = [self.consumoMedioTextField.text floatValue];
    float litrosReferencia = [self.litrosReferenciaTextField.text floatValue];
    
    float rodaKm = litrosReferencia * consumoMedio;
    
    NSString * rodaKmText = [NSString stringWithFormat:@"%.02f", rodaKm];
    
    self.rodaKmLabel.text = rodaKmText;
        
    [self.view endEditing:YES];
    }
    
}

//Quantos litros necessita para um distancia de referencia
- (IBAction)calculaConsumo:(id)sender {
    
    NSLog(@"- calculaConsumo");
    
    float consumoMedio = [self.consumoMedioTextField.text floatValue];
    float kmsReferencia = [self.kmsReferenciaTextField.text floatValue];
    
    float consumiraLitros = kmsReferencia / consumoMedio;
    
    NSString * consumiraLitrosText = [NSString stringWithFormat:@"%.02f", consumiraLitros];
    
    self.consumiraLitrosLabel.text = consumiraLitrosText;
    
    [self.view endEditing:YES];
}


- (IBAction)reset:(id)sender {
    
    NSLog(@"- reset");
    
    self.consumiraLitrosLabel.text = @"";
    self.rodaKmLabel.text = @"";
    
    [self.view endEditing:YES];
}
@end
