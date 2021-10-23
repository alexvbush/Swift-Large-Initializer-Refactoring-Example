import Foundation

protocol AuthenticationServiceFactoryInterface {
    var loginService: LoginService { get }
    var registrationService: RegistrationService { get }
    func make() -> AuthenticationService
}

class AuthenticationServiceFactory: AuthenticationServiceFactoryInterface {
    var loginService: LoginService {
        LoginService()
    }
    var registrationService: RegistrationService {
        RegistrationService()
    }
    
    func make() -> AuthenticationService {
        AuthenticationService(loginService: authenticationServiceFactory.loginService,
                              registrationService: authenticationServiceFactory.registrationService)
    }
}

protocol MoneyServicesFactoryInterface {
    var financialService: FinancialService { get }
    var checkoutService: CheckoutService { get }
    var cartService: CartService { get }
    func make() -> MoneyService
}

class MoneyServicesFactory: MoneyServicesFactoryInterface {
    var financialService: FinancialService {
        FinancialServiceImplementaion()
    }
    var checkoutService: CheckoutService {
        CheckoutService()
    }
    var cartService: CartService {
        CartServiceImplementation()
    }
    
    func make() -> MoneyService {
        MoneyService(financialService: financialService,
                     checkoutService: checkoutService,
                     cartService: cartService)
    }
}

class CustomerFactory {
    
    private let authenticationServiceFactory: AuthenticationServiceFactoryInterface
    private let moneyServicesFactory: MoneyServicesFactoryInterface
    
    var analyticsService: AnalyticsService { AnalyticsService() }
    var bookService: BookService { BookServiceImplementation() }
    var musicService: MusicService { MusicService() }
    var basketballService: BasketballService { BasketballServiceImplementation() }
    
    
    init(authenticationServiceFactory: AuthenticationServiceFactoryInterface,
         moneyServicesFactory: MoneyServicesFactoryInterface) {
        self.authenticationServiceFactory = authenticationServiceFactory
        self.moneyServicesFactory = moneyServicesFactory
    }
    
    func makeCustomer() -> Customer {
        Customer(authenticationService: authenticationServiceFactory.make(),
                 analyticsService: analyticsService,
                 bookService: bookService,
                 moneyService: moneyServicesFactory.make(),
                 musicService: musicService,
                 basketballService: basketballService)
    }
}
