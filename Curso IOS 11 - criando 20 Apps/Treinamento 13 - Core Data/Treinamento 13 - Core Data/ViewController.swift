//
//  ViewController.swift
//  Treinamento 13 - Core Data
//
//  Created by cassio on 12/08/23.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
    
        // MARK: --USER  LISTAR
        // Criando requisição
        
      /*  let requisicao = NSFetchRequest< NSFetchRequestResult>(entityName: "Usuario")
        
        do {
            let usuarios = try context.fetch(requisicao)
            
            if usuarios.count > 0 {
                
                for usuario in usuarios as! [NSManagedObject]{
                    if  let nomeUsuario = usuario.value(forKey: "nome"){
                        print(nomeUsuario)
                    }
                }
                    
                }else{
                    print("error ao encontrar user")
                }
            } catch {
                print("Erro ao encontrar user")
            }
        
    */
        
        // MARK: --USER  CADASTRAR
        
        /*user entidade*/
       // let user = NSEntityDescription.insertNewObject(forEntityName: "Usuario", into: context)
        
        
        /*
        
        //Criando onjeto user
        user.setValue("cassio luciano da silva", forKey: "nome")
        user.setValue( 35 , forKey: "idade")
        user.setValue("cassiolucianoo", forKey: "login")
        user.setValue("0000", forKey: "senha")
        
        //salvar user
        do {
            try context.save()
            print("dados salvo com sucesso")
        } catch {
            print("deu erro com alguma coisa")
            
        }
         */
        
        
        /* Exercio passadp em aula*/
        
        
        // MARK: --PRODUTO  LISTAR
      
        let requisicao = NSFetchRequest< NSFetchRequestResult>(entityName: "Produtos")
        
        do {
            let produtos = try context.fetch(requisicao)
            
            if produtos.count > 0 {
                
                for produto in produtos as! [NSManagedObject]{
                    if  let nomeprodutos = produto.value(forKey: "descricao"){
                        if let cor = produto.value(forKey: "cor"){
                            if let preco = produto.value(forKey: "preco"){
                                
                                print( String(describing: nomeprodutos) + " / " + String(describing: cor) + " / " + String(describing: preco))
                                
                            }
                        }
                    }
                    
                }
            }else{
                    print("error ao encontrar produto")
                }
            } catch {
                print("Erro ao encontrar produtos")
            }
        
        // MARK: -- PRODUTOS CADASTRAR
        
        /*user entidade*/
        let prod = NSEntityDescription.insertNewObject(forEntityName: "Produtos", into: context)
        
        //Criando onjeto user
        prod.setValue("Lapis de 12 cores", forKey: "descricao")
        prod.setValue( 35 , forKey: "preco")
        prod.setValue("varias cores", forKey: "cor")
    
        //salvar PRODUTO
        do {
            try context.save()
            print("dados salvo com sucesso")
        } catch {
            print("deu erro com alguma coisa")
            
        }
    }
}

