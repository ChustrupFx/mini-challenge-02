//
//  NewJournalViewModel.swift
//  Mini02
//
//  Created by Thiago Pereira de Menezes on 26/09/23.
//

import UIKit

class NewJournalViewModel: ViewModel {
    let viewController: NewJournalViewController
    
    //MARK: VARS COM DADOS ARMAZENADOS PARA BACKEND
    var titleJournalData:String? //Armazena título inserido
    var bodyJournalData:String? //Armazena corpo do journal inserido
    var selectedDate: Date = .now
    
    init(viewController: NewJournalViewController) {
        self.viewController = viewController
    }
    
    ///Armazena os dados inseridos pelo usuário em NewJournal().
    @objc func buttonSaveTapped() {
        
        //Verifica se um título foi inserido
        if let title = viewController.titleNewJournal.text {
            print(title)
            
            //Armazena a String na variável titleJournalData
            self.titleJournalData = title
        } else {
            print("Nenhum title inseridon")
        }
        
        //Verificando se tem algum text no bodyJournal
        if let text = viewController.bodyJournal.text {
            
            //Verificando se o text é diferente do placeholder
            if text != viewController.placeholder {
                print(text)
                
                //Armazena a String na variável bodyJournalData
                self.bodyJournalData = text
            } else {
                print("Nenhum bodyTextJournal inserido")
            }
        }
        
        datePickerValueChanged()
    }
    
    ///Armazena a data inserida pelo usuário no DatePicker.
    @objc func datePickerValueChanged() {
        self.selectedDate = viewController.datePicker.date
        print("Data selecionada: \(self.selectedDate)")
    }
}


#Preview(traits: .defaultLayout, body: {
    NewJournalViewController()
})
