import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  List<String> countries = [
    "Brazil",
    "Nepal",
    "India",
    "China",
    "USA",
    "Canada"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bought togather'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromRGBO(30, 30, 30, 1),
          height: 1200,
          child: Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Bought with this product',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Small_product_name(
                    left_Padding: 20,
                    right_Padding: 5,
                  ),
                  LargeProductName(
                    left_Padding: 5,
                    right_Padding: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LargeProductName(
                    left_Padding: 20,
                    right_Padding: 5,
                  ),
                  Small_product_name(
                    left_Padding: 5,
                    right_Padding: 20,
                  ),
                ],
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                          height: 100,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: countries.map((country) {
                              return box(country, Colors.deepPurpleAccent);
                            }).toList(),
                          )),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget box(String title, Color backgroundcolor) {
    return Container(
        margin: EdgeInsets.all(10),
        width: 80,
        color: backgroundcolor,
        alignment: Alignment.center,
        child:
            Text(title, style: TextStyle(color: Colors.white, fontSize: 20)));
  }
}

class LargeProductName extends StatelessWidget {
  LargeProductName({
    required this.right_Padding,
    required this.left_Padding,
    Key? key,
  }) : super(key: key);
  double left_Padding; //5
  double right_Padding; //20

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(left_Padding, 10, right_Padding, 10),
          child: Container(
            color: Colors.white,
            height: 200,
            width: 180,
            alignment: Alignment.topLeft,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(43, 45, 053, 1),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(10))),
              height: 30,
              width: 70,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '60% off',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(5, 5, 20, 2.5),
          child: Text(
            "Product name that is ",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(5, 2.5, 20, 2.5),
          child: Text(
            "very, very long ...",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(5, 2.5, 20, 2.5),
          child: Text(
            "₹21,999   ₹21,999",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(5, 2.5, 20, 2.5),
          child: rating(),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(5, 2.5, 20, 2.5),
          child: Button(),
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: Text(
          'Add',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.fromLTRB(50, 5, 50, 5)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromRGBO(30, 30, 30, 1)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Color.fromRGBO(120, 65, 225, 1))))),
        onPressed: () => null);
  }
}

class Small_product_name extends StatelessWidget {
  Small_product_name({
    required this.right_Padding,
    required this.left_Padding,
    Key? key,
  }) : super(key: key);

  double left_Padding; //20
  double right_Padding; //5

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(left_Padding, 10, right_Padding, 10),
          child: Container(
            color: Colors.white,
            height: 200,
            width: 180,
            alignment: Alignment.topLeft,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(43, 45, 053, 1),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(10))),
              height: 30,
              width: 70,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '60% off',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 5, 0, 2.5),
          child: Text(
            "Short product name",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 5, 0, 2.5),
          child: const Text(
            "₹21,999   ₹21,999",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 5, 0, 2.5),
          child: const rating(),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 5, 0, 2.5),
          child: const Button(),
        ),
      ],
    );
  }
}

class rating extends StatelessWidget {
  const rating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.star,
          size: 20,
          color: Color.fromRGBO(255, 194, 57, 1),
        ),
        Icon(
          Icons.star,
          size: 20,
          color: Color.fromRGBO(255, 194, 57, 1),
        ),
        Icon(
          Icons.star,
          size: 20,
          color: Color.fromRGBO(255, 194, 57, 1),
        ),
        Icon(
          Icons.star,
          size: 20,
          color: Color.fromRGBO(255, 194, 57, 1),
        ),
        Icon(
          Icons.star_border,
          size: 20,
        )
      ],
    );
  }
}
