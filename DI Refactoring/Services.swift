import Foundation

struct LoginService {}

struct RegistrationService {}

final class AnalyticsService {}

protocol BookService {}
final class BookServiceImplementation: BookService {}

protocol FinancialService {}
final class FinancialServiceImplementaion: FinancialService {}

struct CheckoutService {}

protocol CartService {}
final class CartServiceImplementation: CartService {}
final class AnotherCartServiceImplementation: CartService {}

final class MusicService {}

protocol BasketballService {}
final class BasketballServiceImplementation: BasketballService {}


class AuthenticationService {
    private let loginService: LoginService,
                registrationService: RegistrationService
    
    init(loginService: LoginService, registrationService: RegistrationService) {
        self.loginService = loginService
        self.registrationService = registrationService
    }
}

class MoneyService {
    private let financialService: FinancialService
    private let checkoutService: CheckoutService
    private let cartService: CartService
    
    init(financialService: FinancialService,
         checkoutService: CheckoutService,
         cartService: CartService) {
        self.financialService = financialService
        self.checkoutService = checkoutService
        self.cartService = cartService
    }
}
