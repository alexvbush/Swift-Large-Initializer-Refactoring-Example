final class Customer {
    let loginService: LoginService // struct
    let registrationService: RegistrationService // struct
    let analyticsService: AnalyticsService // class
    let bookService: BookService // protocol
    let financialService: FinancialService // protocol
    let checkoutService: CheckoutService // struct
    let cartService: CartService // protocol
    let musicService: MusicService // class
    let basketballService: BasketballService // protocol
    
    init(loginService: LoginService = LoginService(),
         registrationService: RegistrationService = RegistrationService(),
         analyticsService: AnalyticsService = AnalyticsService(),
         bookService: BookService = BookServiceImplementation(),
         financialService: FinancialService = FinancialServiceImplementaion(),
         checkoutService: CheckoutService = CheckoutService(),
         cartService: CartService = CartServiceImplementation(),
         musicService: MusicService = MusicService(),
         basketballService: BasketballService = BasketballServiceImplementation()) {
        self.loginService = loginService
        self.registrationService = registrationService
        self.analyticsService = analyticsService
        self.bookService = bookService
        self.financialService = financialService
        self.checkoutService = checkoutService
        self.cartService = cartService
        self.musicService = musicService
        self.basketballService = basketballService
    }
}
