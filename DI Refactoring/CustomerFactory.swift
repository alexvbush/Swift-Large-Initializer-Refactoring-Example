
import Foundation

class CustomerFactory {
    
    var loginService: LoginService { LoginService() }
    var registrationService: RegistrationService { RegistrationService() }
    var analyticsService: AnalyticsService { AnalyticsService() }
    var bookService: BookService { BookServiceImplementation() }
    var financialService: FinancialService { FinancialServiceImplementaion() }
    var checkoutService: CheckoutService { CheckoutService() }
    var cartService: CartService { CartServiceImplementation() }
    var musicService: MusicService { MusicService() }
    var basketballService: BasketballService { BasketballServiceImplementation() }
    
    
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
