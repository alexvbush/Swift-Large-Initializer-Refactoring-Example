import Foundation

protocol AuthenticationServiceFactoryInterface {
    var loginService: LoginService { get }
    var registrationService: RegistrationService { get }
}

class AuthenticationServiceFactory: AuthenticationServiceFactoryInterface {
    var loginService: LoginService {
        LoginService()
    }
    var registrationService: RegistrationService {
        RegistrationService()
    }
}

protocol MoneyServicesFactoryInterface {
    var financialService: FinancialService { get }
    var checkoutService: CheckoutService { get }
    var cartService: CartService { get }
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
}

class CustomerFactory {
    
    private let authenticationServiceFactory: AuthenticationServiceFactoryInterface
    var loginService: LoginService {
        authenticationServiceFactory.loginService
    }
    var registrationService: RegistrationService {
        authenticationServiceFactory.registrationService
    }
    
    var analyticsService: AnalyticsService { AnalyticsService() }
    
    var bookService: BookService { BookServiceImplementation() }
    
    private let moneyServicesFactory: MoneyServicesFactoryInterface
    var financialService: FinancialService {
        moneyServicesFactory.financialService
    }
    var checkoutService: CheckoutService {
        moneyServicesFactory.checkoutService
    }
    var cartService: CartService {
        moneyServicesFactory.cartService
    }
    
    var musicService: MusicService { MusicService() }
    
    var basketballService: BasketballService { BasketballServiceImplementation() }
    
    init(authenticationServiceFactory: AuthenticationServiceFactoryInterface,
         moneyServicesFactory: MoneyServicesFactoryInterface) {
        self.authenticationServiceFactory = authenticationServiceFactory
        self.moneyServicesFactory = moneyServicesFactory
    }
    
    func makeCustomer() -> Customer {
        Customer(loginService: loginService,
                 registrationService: registrationService,
                 analyticsService: analyticsService,
                 bookService: bookService,
                 financialService: financialService,
                 checkoutService: checkoutService,
                 cartService: cartService,
                 musicService: musicService,
                 basketballService: basketballService)
    }
}


final class AnotherCustomerFactory: CustomerFactory {
    override var cartService: CartService { AnotherCartServiceImplementation() }
}
