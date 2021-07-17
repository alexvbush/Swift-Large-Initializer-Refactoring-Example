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
    
    var financialService: FinancialService { FinancialServiceImplementaion() }
    var checkoutService: CheckoutService { CheckoutService() }
    var cartService: CartService { CartServiceImplementation() }
    
    var musicService: MusicService { MusicService() }
    
    var basketballService: BasketballService { BasketballServiceImplementation() }
    
    init(authenticationServiceFactory: AuthenticationServiceFactoryInterface) {
        self.authenticationServiceFactory = authenticationServiceFactory
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
