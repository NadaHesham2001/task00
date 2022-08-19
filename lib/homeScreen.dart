import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://newdoorfiji.com/profile-img-1/'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
                'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  size: 16,
                  color: Colors.white,
                ),
              ),
          ),
          IconButton(
            onPressed: (){},
            icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(

                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[50],
                ),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 15,),
                    Text('Search')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //list view
              Container(
                height: 100,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context , index) =>buildStoryItem(),
                  separatorBuilder: (context ,index)=>SizedBox(width: 20,),
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder: (context ,index)=>buildChatItem() ,
                  separatorBuilder:(context ,index)=> SizedBox(height: 20,),
                  itemCount: 20),
//end of list view

            //*not using list view another solution*//
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 25,
              //                   backgroundImage: NetworkImage('https://F%26utm_term%3Duser&hash=34c3e7ba128e1cb89818033b845c9a0b99efa48b&='),
              //
              //                 ),
              //                 CircleAvatar(
              //                   radius: 7,
              //                   backgroundColor: Colors.green,
              //                 ),
              //
              //               ],
              //             ),
              //             Text(
              //                 'Nada Hesham Mostafa',
              //                  maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //
              //           ],
              //         ),
              //       ),
              //       SizedBox(width: 20,),
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 25,
              //                   backgroundImage: NetworkImage('https://F%26utm_term%3Duser&hash=34c3e7ba128e1cb89818033b845c9a0b99efa48b&='),
              //
              //                 ),
              //                 CircleAvatar(
              //                   radius: 7,
              //                   backgroundColor: Colors.green,
              //                 ),
              //
              //               ],
              //             ),
              //             Text(
              //               'Nada Hesham Mostafa',
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //
              //           ],
              //         ),
              //       ),
              //       SizedBox(width: 20,),
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 25,
              //                   backgroundImage: NetworkImage('https://F%26utm_term%3Duser&hash=34c3e7ba128e1cb89818033b845c9a0b99efa48b&='),
              //
              //                 ),
              //                 CircleAvatar(
              //                   radius: 7,
              //                   backgroundColor: Colors.green,
              //                 ),
              //
              //               ],
              //             ),
              //             Text(
              //               'Nada Hesham Mostafa',
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //
              //           ],
              //         ),
              //       ),
              //       SizedBox(width: 20,),
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 25,
              //                   backgroundImage: NetworkImage('https://F%26utm_term%3Duser&hash=34c3e7ba128e1cb89818033b845c9a0b99efa48b&='),
              //
              //                 ),
              //                 CircleAvatar(
              //                   radius: 7,
              //                   backgroundColor: Colors.green,
              //                 ),
              //
              //               ],
              //             ),
              //             Text(
              //               'Nada Hesham Mostafa',
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //
              //           ],
              //         ),
              //       ),
              //       SizedBox(width: 20,),
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 25,
              //                   backgroundImage: NetworkImage('https://F%26utm_term%3Duser&hash=34c3e7ba128e1cb89818033b845c9a0b99efa48b&='),
              //
              //                 ),
              //                 CircleAvatar(
              //                   radius: 7,
              //                   backgroundColor: Colors.green,
              //                 ),
              //
              //               ],
              //             ),
              //             Text(
              //               'Nada Hesham Mostafa',
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(height: 30,),
              // Row(
              //   children: [
              //     Stack(
              //       alignment: AlignmentDirectional.bottomEnd,
              //       children: [
              //         CircleAvatar(
              //           radius: 25,
              //           backgroundImage: NetworkImage('https://F%26utm_term%3Duser&hash=34c3e7ba128e1cb89818033b845c9a0b99efa48b&='),
              //
              //         ),
              //         CircleAvatar(
              //           radius: 7,
              //           backgroundColor: Colors.green,
              //         ),
              //
              //       ],
              //     ),
              //     SizedBox(width: 20,),
              //
              //     Expanded(
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Nada Hesham',
              //             style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //           SizedBox(height: 8,),
              //           Row(
              //             children: [
              //               Expanded(
              //                 child: Text (
              //                   'hello my name is nada',
              //                   maxLines: 1,
              //                   overflow: TextOverflow.ellipsis,
              //                 ),
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.symmetric(horizontal: 10),
              //                 child: Container(
              //                   width: 7,
              //                   height: 7,
              //                   decoration: BoxDecoration(
              //                     color: Colors.cyan,
              //                     shape: BoxShape.circle
              //                   ),
              //                 ),
              //               ),
              //               Text('2:00')
              //             ],
              //           )
              //         ],
              //       ),
              //     ),
              //
              //
              //   ],
              // ),
              // SizedBox(height: 20,),
              // Row(
              //   children: [
              //     Stack(
              //       alignment: AlignmentDirectional.bottomEnd,
              //       children: [
              //         CircleAvatar(
              //           radius: 25,
              //           backgroundImage: NetworkImage('https://F%26utm_term%3Duser&hash=34c3e7ba128e1cb89818033b845c9a0b99efa48b&='),
              //
              //         ),
              //         CircleAvatar(
              //           radius: 7,
              //           backgroundColor: Colors.green,
              //         ),
              //
              //       ],
              //     ),
              //     SizedBox(width: 20,),
              //
              //     Expanded(
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Nada Hesham',
              //             style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //           SizedBox(height: 8,),
              //           Row(
              //             children: [
              //               Expanded(
              //                 child: Text (
              //                   'hello my name is nada',
              //                   maxLines: 1,
              //                   overflow: TextOverflow.ellipsis,
              //                 ),
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.symmetric(horizontal: 10),
              //                 child: Container(
              //                   width: 7,
              //                   height: 7,
              //                   decoration: BoxDecoration(
              //                       color: Colors.cyan,
              //                       shape: BoxShape.circle
              //                   ),
              //                 ),
              //               ),
              //               Text('2:00')
              //             ],
              //           )
              //         ],
              //       ),
              //     ),
              //
              //
              //   ],
              // ),
              // SizedBox(height: 20,),
              // Row(
              //   children: [
              //     Stack(
              //       alignment: AlignmentDirectional.bottomEnd,
              //       children: [
              //         CircleAvatar(
              //           radius: 25,
              //           backgroundImage: NetworkImage('https://F%26utm_term%3Duser&hash=34c3e7ba128e1cb89818033b845c9a0b99efa48b&='),
              //
              //         ),
              //         CircleAvatar(
              //           radius: 7,
              //           backgroundColor: Colors.green,
              //         ),
              //
              //       ],
              //     ),
              //     SizedBox(width: 20,),
              //
              //     Expanded(
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Nada Hesham',
              //             style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //           SizedBox(height: 8,),
              //           Row(
              //             children: [
              //               Expanded(
              //                 child: Text (
              //                   'hello my name is nada',
              //                   maxLines: 1,
              //                   overflow: TextOverflow.ellipsis,
              //                 ),
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.symmetric(horizontal: 10),
              //                 child: Container(
              //                   width: 7,
              //                   height: 7,
              //                   decoration: BoxDecoration(
              //                       color: Colors.cyan,
              //                       shape: BoxShape.circle
              //                   ),
              //                 ),
              //               ),
              //               Text('2:00')
              //             ],
              //           )
              //         ],
              //       ),
              //     ),
              //
              //
              //   ],
              // ),
              // SizedBox(height: 20,),
              // Row(
              //   children: [
              //     Stack(
              //       alignment: AlignmentDirectional.bottomEnd,
              //       children: [
              //         CircleAvatar(
              //           radius: 25,
              //           backgroundImage: NetworkImage('https://F%26utm_term%3Duser&hash=34c3e7ba128e1cb89818033b845c9a0b99efa48b&='),
              //
              //         ),
              //         CircleAvatar(
              //           radius: 7,
              //           backgroundColor: Colors.green,
              //         ),
              //
              //       ],
              //     ),
              //     SizedBox(width: 20,),
              //
              //     Expanded(
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Nada Hesham',
              //             style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //           SizedBox(height: 8,),
              //           Row(
              //             children: [
              //               Expanded(
              //                 child: Text (
              //                   'hello my name is nada',
              //                   maxLines: 1,
              //                   overflow: TextOverflow.ellipsis,
              //                 ),
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.symmetric(horizontal: 10),
              //                 child: Container(
              //                   width: 7,
              //                   height: 7,
              //                   decoration: BoxDecoration(
              //                       color: Colors.cyan,
              //                       shape: BoxShape.circle
              //                   ),
              //                 ),
              //               ),
              //               Text('2:00')
              //             ],
              //           )
              //         ],
              //       ),
              //     ),
              //
              //
              //   ],
              // ),
              // SizedBox(height: 20,),
              // Row(
              //   children: [
              //     Stack(
              //       alignment: AlignmentDirectional.bottomEnd,
              //       children: [
              //         CircleAvatar(
              //           radius: 25,
              //           backgroundImage: NetworkImage('https://F%26utm_term%3Duser&hash=34c3e7ba128e1cb89818033b845c9a0b99efa48b&='),
              //
              //         ),
              //         CircleAvatar(
              //           radius: 7,
              //           backgroundColor: Colors.green,
              //         ),
              //
              //       ],
              //     ),
              //     SizedBox(width: 20,),
              //
              //     Expanded(
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Nada Hesham',
              //             style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //           SizedBox(height: 8,),
              //           Row(
              //             children: [
              //               Expanded(
              //                 child: Text (
              //                   'hello my name is nada',
              //                   maxLines: 1,
              //                   overflow: TextOverflow.ellipsis,
              //                 ),
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.symmetric(horizontal: 10),
              //                 child: Container(
              //                   width: 7,
              //                   height: 7,
              //                   decoration: BoxDecoration(
              //                       color: Colors.cyan,
              //                       shape: BoxShape.circle
              //                   ),
              //                 ),
              //               ),
              //               Text('2:00')
              //             ],
              //           )
              //         ],
              //       ),
              //     ),
              //
              //
              //   ],
              // ),
              // SizedBox(height: 20,),
              // Row(
              //   children: [
              //     Stack(
              //       alignment: AlignmentDirectional.bottomEnd,
              //       children: [
              //         CircleAvatar(
              //           radius: 25,
              //           backgroundImage: NetworkImage('https://F%26utm_term%3Duser&hash=34c3e7ba128e1cb89818033b845c9a0b99efa48b&='),
              //
              //         ),
              //         CircleAvatar(
              //           radius: 7,
              //           backgroundColor: Colors.green,
              //         ),
              //
              //       ],
              //     ),
              //     SizedBox(width: 20,),
              //
              //     Expanded(
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Nada Hesham',
              //             style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //           SizedBox(height: 8,),
              //           Row(
              //             children: [
              //               Expanded(
              //                 child: Text (
              //                   'hello my name is nada',
              //                   maxLines: 1,
              //                   overflow: TextOverflow.ellipsis,
              //                 ),
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.symmetric(horizontal: 10),
              //                 child: Container(
              //                   width: 7,
              //                   height: 7,
              //                   decoration: BoxDecoration(
              //                       color: Colors.cyan,
              //                       shape: BoxShape.circle
              //                   ),
              //                 ),
              //               ),
              //               Text('2:00')
              //             ],
              //           )
              //         ],
              //       ),
              //     ),
              //
              //
              //   ],
              // ),
              // SizedBox(height: 20,),
              // Row(
              //   children: [
              //     Stack(
              //       alignment: AlignmentDirectional.bottomEnd,
              //       children: [
              //         CircleAvatar(
              //           radius: 25,
              //           backgroundImage: NetworkImage('https://F%26utm_term%3Duser&hash=34c3e7ba128e1cb89818033b845c9a0b99efa48b&='),
              //
              //         ),
              //         CircleAvatar(
              //           radius: 7,
              //           backgroundColor: Colors.green,
              //         ),
              //
              //       ],
              //     ),
              //     SizedBox(width: 20,),
              //
              //     Expanded(
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Nada Hesham',
              //             style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //           SizedBox(height: 8,),
              //           Row(
              //             children: [
              //               Expanded(
              //                 child: Text (
              //                   'hello my name is nada',
              //                   maxLines: 1,
              //                   overflow: TextOverflow.ellipsis,
              //                 ),
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.symmetric(horizontal: 10),
              //                 child: Container(
              //                   width: 7,
              //                   height: 7,
              //                   decoration: BoxDecoration(
              //                       color: Colors.cyan,
              //                       shape: BoxShape.circle
              //                   ),
              //                 ),
              //               ),
              //               Text('2:00')
              //             ],
              //           )
              //         ],
              //       ),
              //     ),
              //
              //
              //   ],
              // ),
              // SizedBox(height: 20,),
              // Row(
              //   children: [
              //     Stack(
              //       alignment: AlignmentDirectional.bottomEnd,
              //       children: [
              //         CircleAvatar(
              //           radius: 25,
              //           backgroundImage: NetworkImage('https://F%26utm_term%3Duser&hash=34c3e7ba128e1cb89818033b845c9a0b99efa48b&='),
              //
              //         ),
              //         CircleAvatar(
              //           radius: 7,
              //           backgroundColor: Colors.green,
              //         ),
              //
              //       ],
              //     ),
              //     SizedBox(width: 20,),
              //
              //     Expanded(
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Nada Hesham',
              //             style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //           SizedBox(height: 8,),
              //           Row(
              //             children: [
              //               Expanded(
              //                 child: Text (
              //                   'hello my name is nada',
              //                   maxLines: 1,
              //                   overflow: TextOverflow.ellipsis,
              //                 ),
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.symmetric(horizontal: 10),
              //                 child: Container(
              //                   width: 7,
              //                   height: 7,
              //                   decoration: BoxDecoration(
              //                       color: Colors.cyan,
              //                       shape: BoxShape.circle
              //                   ),
              //                 ),
              //               ),
              //               Text('2:00')
              //             ],
              //           )
              //         ],
              //       ),
              //     ),
              //
              //
              //   ],
              // ),


             ],
           ),
        ),
       ),
     );
   }


  Widget buildChatItem()  => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage('https://F%26utm_term%3Duser&hash=34c3e7ba128e1cb89818033b845c9a0b99efa48b&='),

          ),
          CircleAvatar(
            radius: 7,
            backgroundColor: Colors.green,
          ),

        ],
      ),
      SizedBox(width: 20,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nada Hesham',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Expanded(
                  child: Text (
                    'hello my name is nada',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        shape: BoxShape.circle
                    ),
                  ),
                ),
                Text('2:00')
              ],
            )
          ],
        ),
      ),


    ],
  );
  Widget buildStoryItem() =>Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage('https://F%26utm_term%3Duser&hash=34c3e7ba128e1cb89818033b845c9a0b99efa48b&='),

            ),
            CircleAvatar(
              radius: 7,
              backgroundColor: Colors.green,
            ),

          ],
        ),
        Text(
          'Nada Hesham Mostafa',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),

      ],
    ),
  );

}
