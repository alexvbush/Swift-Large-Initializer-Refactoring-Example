import Foundation

//let customer = Customer(loginService: LoginService(),
//                        registrationService: RegistrationService(),
//                        analyticsService: AnalyticsService(),
//                        bookService: BookServiceImplementation(),
//                        financialService: FinancialServiceImplementaion(),
//                        checkoutService: CheckoutService(),
//                        cartService: CartServiceImplementation(),
//                        musicService: MusicService(),
//                        basketballService: BasketballServiceImplementation())
//
//let customer2 = Customer(bookService: BookServiceImplementation())
//customer2.analyticsService

let customer = Customer()
customer.basketballService = BasketballServiceImplementation()
