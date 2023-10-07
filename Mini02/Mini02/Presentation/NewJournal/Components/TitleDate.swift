//
//  TitleDate.swift
//  Mini02
//
//  Created by Thiago Pereira de Menezes on 06/10/23.
//

import UIKit

class TitleDate: UIButton {
    
    var action: (() -> Void)?
    
    init() {
        super.init(frame: .zero)
        
        setup()
    }
    
    init(action: (() -> Void)?) {
        super.init(frame: .zero)
        
        setup()
        
        self.action = action
        self.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setDateLabel() -> String {
        let dateFormatter = DateFormatter()
        
        //Estilo do dateFormatter
        dateFormatter.dateFormat = "dd 'de' MMM yyyy"
        
        // Obtenha a data atual
        let currentDate = Date()
        
        // Formatando a data atual com o estilo formatado
        let formattedDate = dateFormatter.string(from: currentDate)
        
        return formattedDate
    }
    
    private func setup() {
        setTitleColor(.fontColorNewJournalTitle, for: .normal)
        setTitle(setDateLabel(), for: .normal)
        titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 24)
        translatesAutoresizingMaskIntoConstraints = false
    }
    

    
    @objc func buttonTapped() {
        if let action = action {
            action()
        } else {
            print("The button action is nil")
        }
    }
}
