

import org.springframework.http.HttpStatus
import org.springframework.web.server.ResponseStatusException
enum class ChordEnum(
    val digreeList:List<Double>,
    val quality:String,
    val chordName:String
) {
    // メジャーキーのダイアトニックコード
    I_MAJOR(listOf(1.0, 3.0, 5.0), "M", "I_MAJOR"),
    II_MINOR(listOf(2.0, 4.0, 6.0), "m", "II_MINOR"),
    III_MINOR(listOf(3.0, 5.0, 7.0), "m", "III_MINOR"),
    IV_MAJOR(listOf(4.0, 6.0, 1.0), "M", "IV_MAJOR"),
    V_MAJOR(listOf(5.0, 7.0, 2.0), "M", "V_MAJOR"),
    VI_MINOR(listOf(6.0, 1.0, 3.0), "m", "VI_MINOR"),
    VII_DIMINISHED(listOf(7.0, 2.0, 4.0), "dim(m-5)", "VII_DIMINISHED");

    // マイナーキーのダイアトニックコード
    // I_MINOR(listOf(1.0, 2.5, 5.0), "I_MINOR"),
    // II_DIMINISHED(listOf(2.0, 4.0, 6.0), "II_DIMINISHED"),
    // III_MAJOR(listOf(3.0, 5.0, 7.0), "III_MAJOR"),
    // IV_MINOR(listOf(4.0, 5.5, 1.0), "IV_MINOR"),
    // V_MINOR(listOf(5.0, 6.5, 2.0), "V_MINOR"),
    // VI_MAJOR(listOf(6.0, 1.0, 3.0), "VI_MAJOR"),
    // VII_MAJOR(listOf(7.0, 2.0, 4.0), "VII_MAJOR");

   companion object{
    fun fromDegreeList(
      degreeList:List<Double>
    ):List<ChordEnum>{
      //重複を排除するとともに、順序を無視して比較する。
      val degreeSet = degreeList.toSet();

      val matchedChord = values().filter{
        it.digreeList.toSet()==degreeSet
      }

      if(matchedChord.isEmpty()){
        throw ResponseStatusException(
          HttpStatus.BAD_REQUEST,
          "Invalid degree list"
        )
      }

      return matchedChord
    }
  }
}