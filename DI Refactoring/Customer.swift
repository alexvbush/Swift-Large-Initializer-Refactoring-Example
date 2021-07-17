final class Customer {
    private let loginService: LoginService // struct
    private let registrationService: RegistrationService // struct
    private let analyticsService: AnalyticsService // class
    private let bookService: BookService // protocol
    private let financialService: FinancialService // protocol
    private let checkoutService: CheckoutService // struct
    private let cartService: CartService // protocol
    private let musicService: MusicService // class
    private let basketballService: BasketballService // protocol
    
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
