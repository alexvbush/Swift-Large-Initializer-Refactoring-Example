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
    
    init(loginService: LoginService,
         registrationService: RegistrationService,
         analyticsService: AnalyticsService,
         bookService: BookService,
         financialService: FinancialService,
         checkoutService: CheckoutService,
         cartService: CartService,
         musicService: MusicService,
         basketballService: BasketballService) {
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
