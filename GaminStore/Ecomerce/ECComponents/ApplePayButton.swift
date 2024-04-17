//
//  ApplePayButton.swift
//  GaminStore
//
//  Created by Angel alberto Bernechea on 4/17/24.
//
import SwiftUI
import PassKit



struct ApplePayButton: View {
    var action: () -> Void
    
    var body: some View {
        Representable(action: action)
            .frame(height: 45)
            .frame(maxWidth: .infinity)
            .padding()
    }
}

extension ApplePayButton {
    struct Representable: UIViewRepresentable {
        var action: () -> Void
        
        func makeCoordinator() -> Coordinator {
            Coordinator(action: action)
        }
        
        func makeUIView(context: Context) -> PKPaymentButton {
            context.coordinator.button
        }
        
        func updateUIView(_ uiView: PKPaymentButton, context: Context) {
            // No updates needed for the button
        }
    }
    
    class Coordinator: NSObject {
        var action: () -> Void
        var button: PKPaymentButton
        
        init(action: @escaping () -> Void) {
            self.action = action
            self.button = PKPaymentButton(paymentButtonType: .continue, paymentButtonStyle: .black)
            super.init()
            self.button.addTarget(self, action: #selector(callback(_:)), for: .touchUpInside)
        }
        
        @objc func callback(_ sender: Any) {
            action()
        }
    }
}


#Preview {
    ApplePayButton(action: {})
        .frame(minWidth: 100 , maxHeight: 400)
        .frame(height: 45)
        .frame(maxWidth: .infinity)
}
