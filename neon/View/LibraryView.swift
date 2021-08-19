import SwiftUI

struct LibraryView: View {
    
    var albums: [Album] = AlbumData
    @AppStorage("isDetails") var isDetails: Bool = false
    @EnvironmentObject var appearance: Appearance
    @State private var searchText = ""
    @State var searching = false
    var gridLayout = [GridItem(.flexible()), GridItem(.flexible())]
    
    let neonPink = UIColor(red: 239/255, green: 0/255, blue: 120/255, alpha: 1.0)
    
    init() {
      let coloredAppearance = UINavigationBarAppearance()
      coloredAppearance.configureWithOpaqueBackground()
      coloredAppearance.backgroundColor = neonPink
      coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
      coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
      
      UINavigationBar.appearance().standardAppearance = coloredAppearance
      UINavigationBar.appearance().compactAppearance = coloredAppearance
      UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
      
      UINavigationBar.appearance().tintColor = .white
    }
    
    var body: some View{
        ZStack{
            Color("darkGrey")
            NavigationView{
                VStack(spacing:0){
                    if appearance.isGrid {
                        ZStack {
                            Color("darkGrey")
                            ScrollView {
                                SearchBar(searchText: $searchText, searching: $searching)
                                LazyVGrid(columns: gridLayout, spacing: 0) {
                                    ForEach(albums.filter{$0.title.hasPrefix(searchText)}){ item in
                                        NavigationLink(destination:
                                            DetailView(album: item)
                                                        .navigationBarTitle("Album", displayMode: .inline)
                                        ) {
                                            AlbumGridView(album: item)
                                        }
                                    }
                                }
                            }
                        }
                        .listStyle(PlainListStyle())
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .navigationTitle("Library")
                        .toolbar {
                            NavigationLink(
                                destination:
                                    FilterView()
                                    .navigationBarTitle("Filters", displayMode: .inline),
                                label: {
                                    Image(systemName: "slider.horizontal.3")
                                }
                            )
                        }
                    } else {
                        ZStack{
                            Color("darkGrey")
                            VStack(alignment: .leading){
                                SearchBar(searchText: $searchText, searching: $searching)
                                List{
                                    ForEach(albums.filter{$0.title.hasPrefix(searchText)}){ item in
                                        ZStack {
                                            NavigationLink(destination:
                                                DetailView(album: item)
                                                            .navigationBarTitle("Album", displayMode: .inline)
                                            ) {
                                                EmptyView()
                                            }
                                            .opacity(0.0)
                                            .buttonStyle(PlainButtonStyle())
                                            
                                            AlbumRowView(album: item)
                                        }
                                    }
                                    .listRowBackground(Color("darkGrey"))
                                    .listRowInsets(EdgeInsets())
                                }
                                Spacer()
                            }
                        }
                        .listStyle(PlainListStyle())
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .navigationTitle(searching ? "Searching" : "Library")
                        .toolbar {
                            if searching {
                                Button("Cancel"){
                                    searchText = ""
                                    withAnimation{
                                        searching = false
                                        UIApplication.shared.dismissKeyboard()
                                    }
                                }
                            } else {
                                NavigationLink(
                                    destination: FilterView()
                                        .navigationBarTitle("Filter", displayMode: .inline),
                                    label: {
                                        Image(systemName: "slider.horizontal.3")
                                    }
                                )
                            }
                        }
                    }
                }
                .frame(
                    maxWidth: .infinity,
                    maxHeight: . infinity,
                    alignment: .top
                )
            }
        }
        
    }
}

extension UIApplication{
    func dismissKeyboard(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView().environmentObject(Appearance())
    }
}

struct SearchBar: View {
    @Binding var searchText: String
    @Binding var searching: Bool
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color("lightGrey"))
            HStack{
                Image(systemName: "magnifyingglass")
                TextField("Search...", text: $searchText){ startedEditing in
                    if startedEditing {
                        withAnimation{
                            searching = true
                        }
                    }
                } onCommit: {
                    withAnimation{
                        searching = false
                    }
                }
            }
            .foregroundColor(.gray)
            .padding(.leading, 13)
        }
        .frame(height:40)
        .cornerRadius(13)
        .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
    }
}
