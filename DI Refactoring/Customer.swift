final class Customer {
    var loginService: LoginService = LoginService() // struct
    var registrationService: RegistrationService = RegistrationService() // struct
    var analyticsService: AnalyticsService = AnalyticsService() // class
    var bookService: BookService = BookServiceImplementation() // protocol
    var financialService: FinancialService = FinancialServiceImplementaion() // protocol
    var checkoutService: CheckoutService = CheckoutService() // struct
    var cartService: CartService = CartServiceImplementation() // protocol
    var musicService: MusicService = MusicService() // class
    var basketballService: BasketballService = BasketballServiceImplementation() // protocol
    
    
}
