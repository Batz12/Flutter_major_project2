import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:FirstRoute(),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.amberAccent,
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(child:Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children:[ 
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                child: const Text('Go to end page!',style: TextStyle(fontSize:40,),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondRoute()),
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ThirdRoute()),
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FourthRoute()),
                  );
                },

        ),
              ),
            ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: const Text('Go to second page!',style: TextStyle(fontSize:40),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondRoute()),
                  );
                },

              ),
            ),
          ),


        ],
    ),

      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.lightGreenAccent,
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ThirdRoute()),
            );
          },
          child: const Text('Go to third page!',style: TextStyle(fontSize:40),),
        ),
      ),
    );
  }
}


class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.deepOrangeAccent,
      appBar: AppBar(
        title: const Text("Third Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FourthRoute()),
            );
          },
          child: const Text('Go to fourth page!',style: TextStyle(fontSize:40),),
        ),
      ),
    );
  }
}


class FourthRoute extends StatelessWidget {
  const FourthRoute({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.purpleAccent,
      appBar: AppBar(
        title: const Text("Fourth Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            for(int i=0;i<3;i++)
            {Navigator.pop(context);}
          },
          child: const Text('Go back to first page!',style: TextStyle(fontSize:35),),
        ),
      ),
    );
  }
}

