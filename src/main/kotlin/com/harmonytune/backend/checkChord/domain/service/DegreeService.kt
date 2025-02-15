package com.harmonytune.backend.checkChord.domain.service

import org.springframework.stereotype.Service

@Service
class DegreeService {
  private val degreeStringToSemitone: Map<String, Double> = mapOf(
    "root" to 0.0,
    "minor_second" to 1.0,
    "major_second" to 2.0,
    "minor_third" to 3.0,
    "major_third" to 4.0,
    "perfect_fourth" to 5.0,
    "augmented_fourth" to 6.0,
    "diminished_fifth" to 6.0,
    "perfect_fifth" to 7.0,
    "minor_sixth" to 8.0,
    "major_sixth" to 9.0,
    "minor_seventh" to 10.0,
    "major_seventh" to 11.0,
    "octave" to 0.0,  // オクターブは root perfect_fifth
    "minor_ninth" to 1.0,  // 9th = 2nd
    "major_ninth" to 2.0,  // 9th = 2nd
    "minor_eleventh" to 5.0,  // 11th = 4th
    "perfect_eleventh" to 5.0,  // 11th = 4th
    "augmented_eleventh" to 6.0,  // #11 = #4
    "minor_thirteenth" to 8.0,  // 13th = 6th
    "major_thirteenth" to 9.0  // 13th = 6th
  )
  fun getSemitoneIntervalFromDegreeSemitone(degree:String):Double{
    return degreeStringToSemitone[degree] ?:
      throw IllegalArgumentException("Invalid degree String");
  }
}
