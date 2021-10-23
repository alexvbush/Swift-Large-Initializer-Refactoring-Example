final class Customer {
   
    private let authenticationService: AuthenticationService
    
    private let analyticsService: AnalyticsService // class
    private let bookService: BookService // protocol
    
    private let moneyService: MoneyService
    
    private let musicService: MusicService // class
    private let basketballService: BasketballService // protocol
    
    init(authenticationService: AuthenticationService,
         analyticsService: AnalyticsService,
         bookService: BookService,
         moneyService: MoneyService,
         musicService: MusicService,
         basketballService: BasketballService) {
        self.authenticationService = authenticationService
        
        self.analyticsService = analyticsService
        self.bookService = bookService
        
        self.moneyService = moneyService
        
        self.musicService = musicService
        self.basketballService = basketballService
    }
}
