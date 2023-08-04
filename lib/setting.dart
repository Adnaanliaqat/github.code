// import 'package:firstflutter/nextpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_application_3/home.dart';

// import 'HOME.dart';
// import 'HOME_COPY.dart';

  bool values = false;
  bool values1= false;
class APP extends StatefulWidget {
  const APP({super.key});

  @override
  State<APP> createState() => _APPState();
}

class _APPState extends State<APP> {
  
  @override
  // bool _isSwitched = false;
  Widget build(BuildContext context)
  
   {
    
     final mediaQueryData = MediaQuery.of(context);
  final screenWidth = mediaQueryData.size.width;
  final screenHeight = mediaQueryData.size.height;
  final orientation = mediaQueryData.orientation;
  
    return Scaffold(
      //  extendBodyBehindAppBar: true,
      backgroundColor: Colors.green,
      appBar: AppBar(
        elevation: 0,
        title: Text('Setting',style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        actions: [
         Container(
          margin:EdgeInsets.only(right: 13),
           child: IconButton(
            icon:Icon(Icons.settings,size: 35,),
            onPressed: () =>null,
                 ),
         ),
        ]
        
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              
              Container(
                
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 254, 254, 254),
                  borderRadius:BorderRadius.only(
                  topLeft:Radius.circular(25),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)
                  ,bottomRight: Radius.circular(20)),
                  
                 ),
                  width: screenWidth * 1.0, 
          height: screenHeight * 0.84,
      child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        child: ListTile( 
                          
                          title:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text( 'Dark Theme',
                              style: TextStyle(fontSize: 17,fontWeight: 
                              FontWeight.w900,
                              ),),
                              Switch(value:values, onChanged:_changes),
                            ],
                          ),
                          
                         subtitle: Container(
                          margin:EdgeInsets.only(top: 7,),
                          decoration: BoxDecoration(
                            boxShadow: 
                            [
                              BoxShadow(
                                offset: Offset(0, 0.2),
                                color:Colors.grey.withOpacity(0.1),
                                blurRadius:2,
                                
                              )
                            ]
                          ),
                          
                           child: Text(
                            '''
                         
Dark Theme automatically shifts the colors of your display to warmer end of the color spectrum after dark.this may help you get a brtter nights sleep.
                         ''',
                                               style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),
                           ),
                         ),
                         
                        ),
               ),
             ),
                     
                           Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        child: ListTile( 
                          
                          title:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              
                              Text( 'Show Remaining Time',
                              style: TextStyle(fontSize: 17,fontWeight: 
                              FontWeight.w900,
                              ),),
                                Switch(value: values1, onChanged:_changes1) ,
                            ],
                          ),
                          
                         subtitle: Container(
                          // margin:EdgeInsets.only(top: ),
                          decoration: BoxDecoration(
                            boxShadow: 
                            [
                              BoxShadow(
                                offset: Offset(0, 0.2),
                                color:Colors.grey.withOpacity(0.1),
                                blurRadius:2,
                                
                              )
                            ]
                          ),
                           child: Text(
                            '''
                         
Show remaining Time will display the time left until the event is completed
                         ''',
                                               style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),
                           ),
                         ),
                        
                        ),
                        
               ),


             ),
             
             SizedBox(height: 8,)
             
                    ]
                    
          ),
          
                              )
            
            ],
            
          ),
          
         
        ),
        
      ),
      
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
          notchMargin: 8.0,
          color: Colors.green, // Customize the background color
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home,),
                
                tooltip: 'HOME',
                
                onPressed: () => Navigator.push(context, 
                MaterialPageRoute(builder: (context) => HomePage())),
              ),
              IconButton(
                icon: Icon(Icons.search),
                
                tooltip: 'SEARCH',
                onPressed: () =>null,// Navigator.push(context, MaterialPageRoute(builder:(context) =>APP() )),
              ),
              IconButton(
                icon: Icon(Icons.person),
                tooltip: 'CONTACT',
                onPressed: () => null,
              ),
            ],
          ),
        
  
     ) 
     
     );
  }

  void _changes(bool value) {
   setState(() {
      values = !values ;
      
    });
    }
    void _changes1(bool value) {
   setState(() {
      values1 = !values1 ;
      
    });
    }
  
}