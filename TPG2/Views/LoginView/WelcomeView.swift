//
//  WelcomeView.swift
//  TPG2
//
//  Created by Geniew on 13.10.2023.
//

import SwiftUI

struct WelcomeView: View {
    
    @ObservedObject var viewModel: LoginViewModel = LoginViewModel()
    @EnvironmentObject var errorHandling: ErrorHandling
    
    var error: String = ""
    
    var body: some View {
        ZStack(alignment: .top) {
            BackgroundImageView()
           
            // MARK: VStack
            VStack(alignment: .center, spacing: 10.0) {
                Text(Translations.welcome)
                                 .titleStyle()

                Text(Translations.signInIntoAccount)
                                 .subTitleStyle()
                
                // MARK: VStack Login text
                VStack(alignment: .leading) {
                    Text(Translations.login)
                      .font(Font.custom("SF UI Display", size: 12))
                      .foregroundColor(Color(red: 0.34, green: 0.35, blue: 0.46))
                }
                .padding(.trailing, 265)
                .padding(.top, 5.0)
              
                // MARK: Login textField
                HStack(alignment: .top, content: {
                    HStack(alignment: .top) {
                        Image(.icoLogin)
                        .resizable()
                        .frame(width: 18, height: 18)
                        TextField(Translations.enterLogin, text: $viewModel.username)
                            .font(Font.custom("SF UI Display", size: 14))
                            .foregroundColor(Color(red: 0.54, green: 0.55, blue: 0.69))
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                    }
                        .padding()
                      .foregroundColor(.clear)
                      .frame(width: 296, height: 40)
                      .background(.white)
                      .cornerRadius(4)
                      .overlay(
                        RoundedRectangle(cornerRadius: 4)
                          .inset(by: 0.5)
                          .stroke(Color(red: 0.89, green: 0.9, blue: 0.93), lineWidth: 1)
                      )
                        
                })
                // MARK: Password text
                VStack(alignment: .leading) {
                    Text(Translations.password)
                      .font(Font.custom("SF UI Display", size: 12))
                      .foregroundColor(Color(red: 0.34, green: 0.35, blue: 0.46))
                }
                .padding(.trailing, 244)
                .padding(.top, 11.0)
               
                // MARK: Password textField
                HStack(alignment: .top, content: {
                    HStack(alignment: .top) {
                        Image(.icoPassword)
                        .resizable()
                        .frame(width: 18, height: 18)
                        SecureField(Translations.enterPassword, text: $viewModel.password)
                            .font(Font.custom("SF UI Display", size: 14))
                            .foregroundColor(Color(red: 0.54, green: 0.55, blue: 0.69))
                    }
                        .padding()
                      .foregroundColor(.clear)
                      .frame(width: 296, height: 40)
                      .background(.white)
                      .cornerRadius(4)
                      .overlay(
                        RoundedRectangle(cornerRadius: 4)
                          .inset(by: 0.5)
                          .stroke(Color(red: 0.89, green: 0.9, blue: 0.93), lineWidth: 1)
                      )
                        
                })
                
                HStack {
                    Button {
                        viewModel.login { result, error in
                            if let error = error {
                                self.errorHandling.handle(error: error)
                            }
                        }
                    } label: {
                        Text(Translations.signIn)
                            .buttonStyle()
                    }
                    .contentShape(Rectangle())
                }
            }
            .padding(.top, 167.0)
        }
        if viewModel.isLoading {
            ProgressView()
        }
    }
}

#Preview {
    WelcomeView()
}

struct BackgroundImageView: View {
    var body: some View {
        Image(.backgroundBlur)
            .resizable()
            .ignoresSafeArea()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        Image(.loginFlowBackground)
            .frame(width: 328, height: 398)
            .cornerRadius(6)
            .padding(.top, 148.0)
    }
}

extension View {
    func titleStyle() -> some View {
        self
            .foregroundColor(.text)
            .font(.system(size: 22))
    }

    func subTitleStyle() -> some View {
        self
            .foregroundColor(.primaryLightIcons)
            .font(.system(size: 14))
    }

    func buttonStyle() -> some View {
           self
            .font(
            Font.custom("SF UI Display", size: 14)
            .weight(.semibold)
            )
            .foregroundColor(Color(red: 0.95, green: 0.96, blue: 0.97))
            .padding(.horizontal, 16)
            .padding(.vertical, 11)
            .frame(width: 296, alignment: .center)
            .background(Color(red: 0.2, green: 0.18, blue: 0.29))
            .cornerRadius(4)
       }
   }
