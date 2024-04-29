
import 'package:flutter/material.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Stack(
                      children: [
                        Container(
                            // width: 320.0,
                            width: double.infinity,
                            height: 323.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              image: const DecorationImage(
                                image: AssetImage('assets/listcell.jpg'),
                                fit: BoxFit.cover,
                                //  colorFilter: ColorFilter.mode(
                                //   Colors.black.withOpacity(0.25),
                                //   BlendMode.darken
                                //  ),
                              ),
                            )),
                        Container(
                          width: double.infinity,
                          height: 323.0,
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.transparent, Colors.black],
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(children: [Container(
                                      child: Image.asset('assets/my_tale.png',height: 26,width:26),
                                      decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black)),),
                                      SizedBox(width: 6,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                        Row(
                                          children: [
                                            Text('Keerthi Karthick',style: TextStyle(fontFamily: 'Poppins',fontSize: 15,fontWeight: FontWeight.w400,color: Colors.white),),
                                            SizedBox(width: 4,),
                                            Image.asset('assets/twitter.png',height: 20,width: 20,),
                                          ],
                                        )
                                      ,Text('Athelete',style: TextStyle(color: Colors.white.withOpacity(0.85),fontWeight: FontWeight.w400,fontSize: 10),),
                                      
                                      ],)
                                    
                                    ],),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white.withOpacity(0.5),),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(children: [
                                        Icon(Icons.nordic_walking_sharp,color: Colors.white,size: 17,),
                                        Text("Run",style: TextStyle(fontFamily: 'Poppins',fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),)
                                                                          ],),
                                      ),)
                                  ],
                                ),
                              ),
                              
                              SizedBox(
                                // width: 200,
                                height: 180,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 58,
                                      left: 10,
                                      child: SizedBox(
                                        width: MediaQuery.of(context).size.width/1.5,
                                        child: const Text("There's a lot of room for improvement, your  are always welcome 😍",
                                                                      overflow: TextOverflow.ellipsis,
                                                                      maxLines: 5
                                                                      ,style: TextStyle(fontFamily: 'Poppins',fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),),
                                      ),),
                                    Positioned(
                                      bottom: 0,
                                      left: 10,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.asset(
                                          'assets/Karthick.png',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 25,
                                      bottom: 0,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.asset(
                                          'assets/mani.png',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 40,
                                      bottom: 0,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.asset(
                                          'assets/maskProfile.png',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 55,
                                      bottom: 0,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.asset(
                                          'assets/Vimal.png',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 70,
                                      bottom: 0,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.asset(
                                          'assets/my_tale.png',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: double.infinity,height: 70,child: Center(child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
Container(decoration: BoxDecoration(
  shape: BoxShape.circle,
  color: Colors.white.withOpacity(0.5)),child: Padding(
  padding: const EdgeInsets.all(8.0),
  child: Icon(Icons.favorite,color: Colors.white,),
),),

Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Container(decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.white.withOpacity(0.5)),child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Icon(Icons.chat,color: Colors.white,),
  ),),
),

Container(decoration: BoxDecoration(
  shape: BoxShape.circle,
  color: Colors.white.withOpacity(0.5)),child: Padding(
  padding: const EdgeInsets.all(8.0),
  child: Icon(Icons.more_horiz,color: Colors.white,),
),)
                              ],),),)
                              
                            ],
                          ),
                        ),
                        // Positioned(
                        //   top: 0,
                        //   child: Container(
                        //     height: 323,
                        //     width: double.infinity,
                        //     child: Column(children: [
                            
                        //     Row(children: [
                        //         Container(decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black),),child: Image.asset('assets/my_tale.png',height: 26,width: 26,),),
                        //       ],),
                        //                             ],),
                        //   ))
                      ],
                    ),
                  );
  }
}