
import 'package:flutter/material.dart';
// import 'package:flutter_application_2/SETTING.dart';
import 'package:flutter_application_3/setting.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
 Size get preferredSize => Size.fromHeight(kToolbarHeight);
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     backgroundColor:Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
        toolbarHeight: 100,
        elevation: 0,
        title:Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Text('HOME',),
              Column(
                
                children: [Padding(padding:EdgeInsets.only(top: 20)),
                  Text('July,29,2023',style: TextStyle(
                    fontSize: 12,
                  ),
                  ),
                  
                ],
                
              ),
            ],
          ),
        ), 
   actions: [
              // Icon(Icons.settings,size: 30,),

               IconButton(
                icon: Icon(Icons.settings,),
                
                tooltip: 'HOME',
                onPressed: () => Navigator.push(context, 
                MaterialPageRoute(builder: (context) => APP())),)
   ]     
        ,automaticallyImplyLeading: false,//used for removing the arrow on the app 
                                            //left side,used for the removig the arrow
        
     
      ),
      
     // backgroundColor: Color.fromARGB(255, 99, 202, 99),
      
      body: Container(
        
        decoration: BoxDecoration(
        color: Color.fromARGB(255, 235, 230, 230),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
        topRight: Radius.circular(30)) 
           //elevation:0,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 100,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                      
                      padding: EdgeInsets.only(top: 0,bottom: 100),
                      child: Container(
                        
                        width: 465,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                         borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                      child: Padding(
                        padding:  EdgeInsets.only(bottom: 120),
                        child: Center(child: Text('Task Title',style: TextStyle(fontSize: 25,
                        fontWeight: FontWeight.w900,)
                         ,
                        )
                        ),
                        
                      ),  
                      ),
                   ),
                  ),


                   
               ],
              ),
            ),
           
            
            
          ],
        ),
      ),
   
   bottomNavigationBar: BottomAppBar(  
    shape: CircularNotchedRectangle(),
    notchMargin: 8.0,
color: Colors.green,

child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.settings,),
                
                tooltip: 'HOME',
                onPressed: () => Navigator.push(context, 
                MaterialPageRoute(builder: (context) => APP())),
              ),]
    ),
   
    )
    
  );
  }
}