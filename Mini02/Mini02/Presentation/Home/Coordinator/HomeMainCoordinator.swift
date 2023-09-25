import UIKit

class HomeMainCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let controller = HomeViewController()

        controller.modelView = HomeViewModel()
    
        navigationController.pushViewController(controller, animated: true)
    }
}
