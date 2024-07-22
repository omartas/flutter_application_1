
part of './partof_learn.dart'; 
class _PartofAppbar extends StatelessWidget with PreferredSizeWidget{
  const _PartofAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Baslik'),
      actions: [ IconButton(onPressed: (){}, icon: Icon(Icons.abc))],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}