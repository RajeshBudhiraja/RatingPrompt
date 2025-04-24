// The Swift Programming Language
// https://docs.swift.org/swift-book
import StoreKit

public final class RatingPromptManager {
    
    init() {}
    
    @MainActor public static let shared = RatingPromptManager()
    
    public func requestRatingPrompt(condition: () -> Bool ) {
        if condition() {
            SKStoreReviewController.requestReview()
        }
    }
}
