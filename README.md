# Flutter Doc

<h2>Lifecycle</h2>

- ChangeDependencies: It just works like initState but it works after the initState before the drawing when we change the state, for example when we change the data which is coming from super class it works(oldWidget)
- dispose: when we down the page it works.
- didUpdateWidget: we can access oldWidget and compare it with the newWidget
- inspect : we can see variables prop
- mixin is work like interface we can inherit it using with
<h2>TextField</h2>

- ~ it makes integer the number== a~*b
- buildCounter: it is in the right bottom we can make widget and we need to return, 
- Animated Container : it is like container but we need to duration
- keyboardType: It is important to use to change the keyboard type
- autoFillHints: we use like array [AutoFillHints.email]
- inputFormatter: we compare the oldvalue and new value
- focusNode and textInputAction are using for clicking the next in keyboard
- in theme we can define inputDecorationTheme
- FocusNode class is basically an object that can be used to obtain keyboard focus and to handle keyboard events.
<h2> ListView</h2>

- we have not problem with height
- scrollDirection: we can change the direction
- ListView has padding 
- ListView.builder has itemBuilder and it returns widget this prop makes recurrent widgets
- ListView.separated has separatorBuilder
- we can define the itemCount
<h2>Navigator</h2>

- Navigator.of(context).push(MaterialPageRoute(builder:(context){return page})) : push method 
- fullscreenDialog: screen coming from bottom
- settings: we can transfer the data
- Navigator.of(context).pop()
- if we want to take data which is coming from settings we need to take in didChangeDependencies using ModelRoute.of(context).settings.arguments
<h2>Tabbar</h2>

- Firstly we need to use DefaultTabController
- In the body TabBarView, DefaultTabController's child is Scaffold
- In the appBar we can control widget using, bottom: TabBar(tabs: ...)
- In the bottom, bottomNavigationBar:BottomAppBar(child: TabBar(tabs:...))
- In the BottomAppBar we can use notchMargin and shape: CircularNotchedRectangle()
- For using tabController we need to use TickerProviderStateMixin and in the vsync we need to define this
- we can define tabBarTheme
