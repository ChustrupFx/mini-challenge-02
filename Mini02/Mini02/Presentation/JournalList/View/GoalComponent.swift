import UIKit

class GoalComponent: UIView {
    
    let title = {
        let label = Label(localizedTextKey: "Meu objetivo:")
        label.font = UIFont(name: "Nunito-Bold", size: 20)
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    let goal = {
        let textfield = UITextField()
        textfield.placeholder = "Meu Objetivo"
        textfield.adjustsFontSizeToFitWidth = true
        textfield.font = UIFont(name: "Nunito-Regular", size: 24)
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    let icon = {
        let image = UIImageView()
        image.image = UIImage(systemName: "pencil")
        image.contentMode = .scaleAspectFill
        image.tintColor = .black
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        self.layer.cornerRadius = 15
        self.backgroundColor = .action
        setupTexts()
    }
    
    private func setupTexts() {
        self.addSubview(title)
        self.addSubview(goal)
        self.addSubview(icon)
        
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: self.topAnchor,constant: 6),
            title.widthAnchor.constraint(equalTo: self.widthAnchor),
            title.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 6),
            
            goal.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -6),
            goal.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8),
            goal.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 6),
            
            icon.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -6),
            icon.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -6)
        ])
    }
}
