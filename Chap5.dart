
//     const Days=7;
//     class DaysLeftInWeek{
//         int currDAY =0;
//         DaysLeftInWeek(){ //constructor;
//             currDAY = DateTime.now().weekday;
//         }
//         int DaysLeft(){//mwthod/function;
//             return Days-currDAY;
//         }
//     }
// void main(){
//     final daysleftinweek = DaysLeftInWeek();
//     print('Days left in the week : ${daysleftinweek.DaysLeft()}');
//     print('Current day is ${daysleftinweek.currDAY}');
// }
// ---------------------------------Inheritance---------------


// class Media{
//     String title="";
//     String type ="";
//     Media(){type="Class";}
//     void setMediaTitle(String mediaTitle){title=mediaTitle;}
//     String getMediaTitle(){return title;}
//     String getMediaType(){return type;}
// }
// class Book extends Media{
//     String author="";
//     String isbn="";
//     Book(){type="Subclass";}
//     void setAuthor(String authorName){author=authorName;}
//     void setISBN(String isbnName){isbn = isbnName;}
//     String getTitle(){return title;} //redundant method... code will work fine without it 
//     String getAuthor(){return author;}
//     String getISBN(){return isbn;}
// }

// void main(){
//     final mymedia=Media();
//     mymedia.setMediaTitle('Harry Potter Universe');
//     final harryP =Book();
//     harryP.setMediaTitle('Harry Potter');
//     harryP.setAuthor("JK Rowling");
//     harryP.setISBN("1990");
//     print('The type of Book is ${harryP.type} of type of media which is ${mymedia.getMediaType()}');
//     print('The title of media is ${mymedia.getMediaTitle()}');
//     print('The the title of book is ${harryP.getMediaTitle()} , the author is ${harryP.getAuthor()},the ISBN is ${harryP.getISBN()}');

// }
// -----------------------------------Interface (SPECIFIC CLASS METHODS AND PARAMETERS)---------------------------

// abstract class Media{
//     late String title;
//     late String type;
//     late String id;
    
//     void setMediaTitle(String mediaTitle);
//     String getMediaTitle();

//     void setMediaType(String mediaType);
//     String getMediaType();

//     void setMediaId(String mediaId);
//     String getMediaId();
// }

// class Book implements Media{
//     @override
//     late String title;
//     @override 
//     late String type;
//     @override 
//     late String id;

//     @override
//     void setMediaTitle(String mediaTitle){
//         title=mediaTitle;
//     }
//     @override 
//     String getMediaTitle(){return title;}
//     @override
//     void setMediaType(String mediaType){
//         type = mediaType;
//     }
//     @override
//     String getMediaType(){return type;}
//     @override 
//     void setMediaId(String mediaId){
//         id=mediaId;
//     }
//     @override
//     String getMediaId(){return id;}

//     Book(String mediaTitle,String mediaType,String mediaId){
//         title = mediaTitle;
//         type = mediaType;
//         id= mediaId;
//     }
// }

// void main(){
//     final Book myBook = Book('Harry Potter', 'Movie','ISBN-1111');
//     print('The type of media is ${myBook.getMediaType()}, the name of ${myBook.getMediaType()} is ${myBook.getMediaTitle()} and its ID is ${myBook.getMediaId()}');
//     print(myBook.getMediaTitle());
//     print(myBook.getMediaType());
//     print(myBook.getMediaId());

// }

// --------------------mixin-----------------------
mixin class SnikersOG{
    bool hasHazelnut = true;
    bool hasRice = false;
    bool hasAlmond = false;
}
mixin class SnikersCrisp{
    bool hasHazelnut =true;
    bool hasRice=true;
    bool hasAlmond=false;
}
class chocbar{
    bool hasChoc=true;
}
class Candy extends chocbar with SnikersOG{
    List<String> ingredients =[];

    Candy(){
        if (hasHazelnut){ingredients.add('Hazelnut');}
        if (hasAlmond){ingredients.add('Almond');}
        if (hasChoc){ingredients.add('choc');}
        if (hasRice){ingredients.add('Rice');}
    }
    List<String>getIngredients(){return ingredients;}
}

void main(){
    final Chocobar = Candy();
    print('Ingredients:');
    Chocobar.getIngredients().map((ingredient)=> '- $ingredient').forEach(print);
}