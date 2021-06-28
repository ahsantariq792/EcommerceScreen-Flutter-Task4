import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce Screen',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      debugShowCheckedModeBanner: false,
      home: EcomAppUI(),
    );
  }
}

class EcomAppUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.black,
          )
        ],
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "   Ecom App UI",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Text(
                "Items",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
              ),
              trailing: Text(
                "View More",
                style: TextStyle(color: Colors.purple, fontSize: 16.0),
              ),
            ),
            Container(
              height: 290,
              //color: Colors.purple,
              child: ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  horizontalContainerUI(
                      context,
                      "https://cdn.vox-cdn.com/thumbor/_bMxDjlvkK7gVfxyHr590BxOc8A=/0x0:1511x1976/1200x0/filters:focal(0x0:1511x1976):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/21880984/AMD_Radeon_RX_6000_Series_Graphics_Card.jpg",
                      "AMD Graphics"),
                  horizontalContainerUI(
                      context,
                      "data:image/jpeg;base64,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",
                      "Note 20 Ultra"),
                  horizontalContainerUI(
                      context,
                      "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw0NDQ0NDg8NDQ0NDQ0NDQ0NDQ8NDQ0NFREWFhURFRUYHSggGBolGxUWIT0hJTUrLi4uFyAzODQsODQvLysBCgoKDQ0NFw8PFSsgFR0tLS0tNy0rKzctMC0rLS0tLTE3OCsrKzcvNSs4NzgrNysrLS4rLSstKystNy03NysrK//AABEIAKgBLAMBIgACEQEDEQH/xAAcAAEAAgIDAQAAAAAAAAAAAAAAAQIHCAMFBgT/xABPEAABBAEABAcKCQkFCQEAAAAAAQIDEQQFBxIhBhMxQXGz0xc1UVRhc3SRlLIiIyQlQoGhpLQUMzRidYKSsdFEZHKi4TJSVWODwdLw8Qj/xAAXAQEBAQEAAAAAAAAAAAAAAAAAAQID/8QAGhEBAQEBAQEBAAAAAAAAAAAAAAERAiFxA//aAAwDAQACEQMRAD8AziAAAAAAHkOHHDWPRqcRCjZcxzbRq72QNXkc+uVfA36+kPS6R0jj4rOMyJY4Wcm1I5G2vgTwr5EPH6Q1oaPjVUhjyMjwORqRMX+L4X2GJ9I6QnypVmyJHzSL9J63SeBE5Gp5E3Hy2E1kx+tp1/BwUry5W/qyndbf4iz2pezMa2VVSprJfdck8RZ7UvZkd12TxFntS9mY0VSqqDWTO69J4gz2pezHdfk8QZ7WvZmMVUqqg1k/uwSeIM9rXsyO7BJ4gz2tezMYKpCqDWUO7DJ4gz2tezI7sMniDPa17MxfZCqDWUe7FJ4gz2tezHdik8QZ7WvZmLrIsGsqxa4lv4eAlfqZdr9sZ3ejNaui5lRsyT4iqtXLHxkd/wCJiqqdKohg+xYNbSYWbDkRtlgkjmjd/sviej2r9aHOax6E03l6PlSbFldE7dtN5Y5U8D2cjk+1OajOvAjhjBpaJdyRZcSIs0F3u5OMYvO3+XIvMqxdenAAV4ThRrJhwZ348MC5T4nK2Vyy8RG1ycrUXZcrlToQ83NrolbyaNjXpzndieN09+k5PpE3vqefyTWM6yUuu+f/AIZF7e7sS8eu6VeXRkf1Z7uxMWObDxSr9OuW1va2uSuijijMz1rqWZ6zvwY1rY+bkR42Rjuw3TPbHFIkyTxLIu5rXLstVtruTcqb+YyKap4CqksSpuVJI1RU3Ki7SG1hakoACKAAAAAAAAAADqeFWmm6OwpspaVzU2YmL9OZ25rei96+RFNfMrKkmkfLK5XySOV73ryucvKpkHXRpJVmxMNF+CyN2S9PC5yqxi/UjX/xGNtorNXsiyliwLWQqlbIsCVUqqkKpFgSqlVUhVIsCVUhVIshVAmyFUiyLAtYsrYsCbFlbFgWs+zQ+lZsHJiyoFqWF20ifRe36THfqqm4+GyANpNDaSjzcaDKiX4ueNsjb5W3ytXyotp0ofYYz1H6TV+Ll4blv8nmbLGi80cqLaJ+8xy/vGTCNNbtPfpOT5+b31OgyDv9PfpOT5+b31OgyDTDhfhSbHG03Z4zi+X4W3s7Veo4WHNLnTKxItv4CLaJzpvVa9aqpxMKPuwfzkfnGe8htaao4P5yPzjPeQ2uM1qAAIoAAAAAAAAAAMD61ZVdpnIRfoR47E8icUjv5uU8lZ6bWmvz3mdGN1EZ5Sys1y7RFnHYsC9kWVsiwLWRZWyLAsqlbIsiwJsiyLIsC1kWRZFgWsWVsiwLWLK2LAtZFlbFgZH1HSqmkcll7n4TnKnhVsrK95fWZtMG6kO+s3oEvWxGciLGtmn3Vk5K/wDPm99Tzsy7XL6uY7zhK75TkJ/eJt377v6HQzL61NMuFyIVTdyermCovhX1hAr79HvuSLzjPeQ2wNSdHL8dF5ZGfY5P6m2xKsAARQAAAAAAAAAAa+61V+fMzoxvw8Z5Oz1OtdfnzN6Mb8PGeSsrLksWcdiwOSyLKWRYF7IsrZFgXsiytkWBaxZWyLAtYspYsC1iytiwLWLK2RYFrFlbFgZE1H99ZvQJetiM6GCtRq/O03oEvXRGdSLGsnCVPleQvhnmT1Pd/qdHKn2Keh4QNR2RlJ/eJt/Oi7a7zz8u7cu7y8ymmXCrk8vRS2ULuOO75N6/YgH0aP35EXkkj9auT+htwalaOZsyReHjY1VfCu0htqStQABFAAAAAAAAAABrxrZX59zejG/DxnkLPWa21+fc3oxfw8Z5CyovYspYsIvYspYsC1iyliwLWLK2EteTeFWsiyFRU5UVOlCFAtYsrYsC1iyliwLWLK2LAtYsrYsDIuozvtN6BL10JncwPqL77TegTddCZ4IrWvTLXOy8lrUtyzz7rROR7lOjyWq1Va5KVK3Wi7lSzu9MSuZmZL2KiOTIyE3oi7le5OfpU6PKkc9yveqK5URN1IlIlcxph88mK5ERVaiI663JvVOWvWccaKqojUtV+pKLy5ErmoxXrsNVVRL3JfKUjcrVRW1aWm/eioqUqBX14iKk0SLV8ZGu5UVFTaTkU2yNTMR6umiVa/ORoiJuRE2k3G2ZKsAARQAAAAAAAAAAa563F+fs3oxfw8Z4+z12t1fn7N6MX8PGeOsqL2LKWLAvYspYsC9iyliwLWdhgy7EE7kcjXosezvS1W+ZF5TrbKOjarmuVN7bpfBYHbz6ViakkbpuPZIxGRuaxK45ebd9W8+GbSDZ0YjWq3iGpEqqqLtKnKvkQ+NMZiIiIm5rtpN67neEvHG1t0lbSq5d671IOWxZWxZRaxZWxYE2LIsWBNiytgDI+orvtP8As+broTPJgXUT33m/Z83XQmeiK1o0y5EzMlXJtJx86V4F4xTqp5mbvgci+BN52enF+VZXpM/WOOlnF5la5/brmZMz5HySc9JSKqqieBDmfNEqpUStSmoqbarvTlXk5/sKuibxav202tpE2PhbVKi7+SuY4mqac7dr6sRUWeJUTZTjY9139JDbU1Jwl+Ni87H7yG2xKsAARQAAAAAAAAAAa363+/8Am9GL+HjPG2ex1wd/87oxfw8Z42yotYspZNgWsWVsWBaxZWxYFrFlbFgWsWVsWBaxZWxYFrFlbFgWsFbFgWsFbFgZI1Ed95/2fN10JnswHqG77z/s+broTPhFayac/Ssr0mfrHHTT853GnP0rK9Jn6xx08xph8jiGcidCFnP+Ds7KX/vW6/519hRAPqwvz0PnY/eQ23NRsJfjofOxe+htyStQABFAAAAAAAAAABrZrh7/AOd0Yv4eM8bZ7HXD3/zujF/DxnjLKi1iyoAtYKgC1iytiwLWLIsWBNiyLFgTYIsATYsixYE2CBYE2LIAGSdQ3fef9nzddCZ9MA6he+8/7Pm66Ez8RWsOm1+VZXpOR1jjqJTtdNr8ry/ScjrHHUymmHzPKkuKWB9OF+eh89F76G3RqHhL8dD56L30NvCVYAAjQAAAAAAAAAANa9cjVTT+Z+szFcnRxDE/7KeKsydr/wBHLHpLFyq+Dk4nFKtbuMhet/ZK31GMComxZFgC1iytgC1iytgC1iypNgTYsgWBIIsWBIIsWBIIAEggAZM1BMvS2S7mbo+RF+uaL+hn0w5/+etHLs6RzV5HOgxGbudiLI/f/wBSP1GYyK1d02vyvL9KyOscdVKp2em1+V5fpWR1rjqpVNMPneULPU47Cvowl+Oh89F76G3xp/gr8dB56L30NwCVYAAigAAAAAAAAAA8frU4Mu0rouRkTdrKxnflOMicr3tRUdGn+JquTpo1j/8Ad+5TcwwxrY1Zvc+XSejY1er1WTLw4225XcrpokTlVeVWpvVd6b7QDDVklf8A59YKiwsqALAqALAqSBIsiwBNiyABYFQBYEACTkghfK9kUbXSSSPbHGxqW573LTWp5VVSkbHPc1jGue97kaxjGq573LyNa1N6r5EM8aqNXC4Ct0jntT8sVq/k8C05MRqpSucvPIqbt3IiqnhA9pwJ0A3RWjcbDSlfGzanenI+d67Ujui1VE8iId6ARWrOnF+V5fpWT1rjqpVOx04vyzM9KyetcdXI40w+B/Gfrc/Onl/0OZVDlONXAfTgr8fB5+H30NwjTnBd8fB5+HrGm4xK1AAEUAAAAAAAAAAAAAeO4W6ttF6Vc6V8bsbKdvXKxlSOR6+F7VRWv6VS/KhjTSupDSUaquLk4mSzfSS8ZjS+RKRHNXptCAB0k2qjhA1aTEZJ5WZWPX+ZyHH3LOEPiP3rE7QAB3LOEPiP3rE7QnuWcIfEfvWJ2hAAnuWcIfEfvWJ2g7lnCHxH71idoQAJ7lnCHxH71idoO5Zwh8R+9YnaEACe5Zwh8R+9YnaDuWcIfEfvWJ2gADuWcIfEfvWJ2g7lnCHxH71idoAByw6puED+XFjj85lQV/lVT0Gh9R+a9UXNy8eBnOzGa/IkVPBtORqNX+IkAZP4J8BNGaIp2NFtz1suyp1STIVOel5GIvgaiIemAAAADCHDHVbpFc2ebBbHkY+RK+ZrVlbFLE57tpzFR6oiparSovJzeHzcmrHT/Ng30ZWJ2gBdTHA7VfwhX+wL7Vh9oQmqrhCv9iROnLxf/MAaY77ghqg0kubBLpBsWPjQSxzPakzZpZthyOSNEbaIiqiWqryGfQCKAAAAAAAA/9k=",
                      "MI Box S"),
                  horizontalContainerUI(
                      context,
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuoQlGKW_PU5EjeUIR9SoXnZSj1jUWT-h0IA&usqp=CAU",
                      "Macbook Air"),
                  horizontalContainerUI(
                      context,
                      "https://www.nvidia.com/content/dam/en-zz/Solutions/homepage/sfg/geforce-ampere-rtx-30-series-learn-nv-sfg-295x166@2x.jpg",
                      "Nivdia 1080 TI"),
                  horizontalContainerUI(
                    context,
                    "https://www.gizmochina.com/wp-content/uploads/2019/01/Samsung-Galaxy-S10-Exynos.jpg",
                    "Samsung S10")  
                  
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: Text(
                "More Categories",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
            ),
            Container(
              height: 80,
              //color: Colors.yellow,
              child: ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  horizontalListTile(context, "Electronic"),
                  horizontalListTile(context, "Clothes"),
                  horizontalListTile(context, "Appliances"),
                  horizontalListTile(context, "Others"),
                ],
              ),
            ),
            ListTile(
              leading: Text(
                "Popular Items",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
              ),
              trailing: Text(
                "View More",
                style: TextStyle(color: Colors.purple, fontSize: 16.0),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [
                verticalContainerUIGridView(
                    context,
                    "https://i2.wp.com/electronicgears.com.pk/wp-content/uploads/2020/11/Intel-Core-i7-10700k-10th-Generation-Processor-LGA1200-Comet-Lake.jpg?fit=825%2C825&ssl=1",
                    " Core i7"),
                verticalContainerUIGridView(
                    context,
                    "data:image/jpeg;base64,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",
                    " Note 20 Ultra"),
                verticalContainerUIGridView(
                    context,
                    "https://i01.appmifile.com/webfile/globalimg/products/pc/mi10/specs1.png",
                    " MI Box S"),
                verticalContainerUIGridView(
                    context,
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuoQlGKW_PU5EjeUIR9SoXnZSj1jUWT-h0IA&usqp=CAU",
                    " Macbook Air"),
                verticalContainerUIGridView(
                    context,
                    // "https://www.telemart.pk/uploads/product_image/product_36068_1.jpg",
                    "https://www.nvidia.com/content/dam/en-zz/Solutions/homepage/sfg/geforce-ampere-rtx-30-series-learn-nv-sfg-295x166@2x.jpg",
                    " Nivdia 1080 TI"),
                verticalContainerUIGridView(
                    context,
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmpLeNCyjCDidDuFU3SWPU3Q7aGkqHT9FCkg3oGMhn7JTOU1wBfbjB9bTKUZJ8T90KCHw&usqp=CAU",
                    " Iphone 12")
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget horizontalContainerUI(
    BuildContext context, String networkImage, String productName) {
  return Container(
    margin: EdgeInsets.all(12.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    width: 335,
    height: 260,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 190,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(networkImage),
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          productName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        SizedBox(height: 10.0),
        Row(
          children: [
            Icon(
              Icons.star,
              size: 15.0,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 15.0,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 15.0,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 15.0,
              color: Colors.yellow,
            ),
            Text(" 5.0 (23 Reviews)", style: TextStyle(fontSize: 15.0)),
          ],
        )
      ],
    ),
  );
}

Widget horizontalListTile(BuildContext context, String itemCategory) {
  return Container(
    height: MediaQuery.of(context).size.height,
    width: 192,
    margin: EdgeInsets.all(11.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    child: ListTile(
      leading: Icon(
        Icons.phone_android,
        size: 20.0,
        color: Colors.purple,
      ),
      title: Text(
        itemCategory,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      subtitle: Text("20 items", style: TextStyle(fontSize: 11.0)),
    ),
  );
}

Widget verticalContainerUIGridView(
    BuildContext context, String networkImage, String productName) {
  return Container(
    margin: EdgeInsets.all(5.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(networkImage),
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          productName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
        ),
        SizedBox(height: 10.0),
        Row(
          children: [
            Icon(
              Icons.star,
              size: 12.0,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 12.0,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 12.0,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 12.0,
              color: Colors.yellow,
            ),
            Text(" 5.0 (23 Reviews)", style: TextStyle(fontSize: 12.0)),
          ],
        )
      ],
    ),
  );
}