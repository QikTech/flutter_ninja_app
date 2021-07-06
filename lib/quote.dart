class Quote{
  String text;
  String author;

  // #1
  // Quote(String text, String author){
  //   this.text = text;
  //   this.author = author;

  // #2
  Quote({this.text, this.author});
}

// #1
// Quote myquote = Quote('Understanding Classes','Prasad Sawant');

// #2
// Quote myquote = Quote(text:'Understanding Classes',author:'Prasad Sawant');