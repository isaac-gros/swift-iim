import SwiftUI
import Kingfisher

struct ToggleButtonView: View {
    
    var iconName: String
    var activeColor: Color = Color.blue
    var inactiveColor: Color = Color.black
    @Binding var isActive: Bool
    
    var body: some View {
        VStack {
            Button(action: {
                isActive.toggle()
            }, label: {
                Image(systemName: isActive ? "\(iconName).fill" : "\(iconName)")
                    .imageScale(.large)
                    .foregroundColor(isActive ? activeColor : inactiveColor)
            })
        }
    }
}

struct ToggleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ToggleButtonView(iconName: "flag", activeColor: Color.green, inactiveColor: Color.black, isActive: .constant(true))
            ToggleButtonView(iconName: "flag", activeColor: Color.green, inactiveColor: Color.black, isActive: .constant(false))
        }.previewLayout(.sizeThatFits)
    }
}
