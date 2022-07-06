# Flutter Doc

<h2>Lifecycle</h2>
- didChangeDependencies: It just works like initState but it works after the initState before the drawing when we change the state, for example when we change the data which is coming from super class it works(oldWidget)
- dispose: when we down the page it works.
- didUpdateWidget: we can access oldWidget and compare it with the newWidget
- inspect : we can see variables prop
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
