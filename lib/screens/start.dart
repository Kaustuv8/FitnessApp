import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
    required this.onTap,
  });

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/StartScreen.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.70,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Colors.white, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //const SizedBox(height: 50,),
                    Text(
                      "Wherever You Are",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "Health is Number One",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Text(
                      "There is no instant way to a healthy life",
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                    const SizedBox(height: 30,),
                    InkWell(
                      onTap: (){
                        onTap();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          
                          width: double.maxFinite,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(33),
                          ),
                          child: Center(
                            child: Text(
                              "Get Started",
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Colors.white,
                                fontFamily: 'Lato'
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}