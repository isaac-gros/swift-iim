import SwiftUI
import Kingfisher

struct ToggleButtonView: View {
    
    var iconName: String
    var activeColor: Color = Color.blue
    @Binding var isActive: Bool
    let onTapAction: () -> Void
    
    var body: some View {
        VStack {
            Button(action: {
                isActive.toggle()
                onTapAction()
            }, label: {
                Image(systemName: isActive ? "\(iconName).fill" : "\(iconName)")
                    .imageScale(.large)
                    .foregroundColor(isActive ? activeColor : Color.black)
            })
        }
    }
}

struct ToggleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ToggleButtonView(iconName: "flag", activeColor: Color.green, isActive: .constant(true), onTapAction: {})
            ToggleButtonView(iconName: "flag", activeColor: Color.green, isActive: .constant(false), onTapAction: {})
        }.previewLayout(.sizeThatFits)
    }
}
