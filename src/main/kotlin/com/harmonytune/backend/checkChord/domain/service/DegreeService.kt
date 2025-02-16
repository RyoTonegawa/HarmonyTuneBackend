package com.harmonytune.backend.checkChord.domain.service

import org.springframework.stereotype.Service

@Service
class DegreeService {
  private val degreeStringToSemitone: Map<String, Double> = mapOf(
    "ルート" to 0.0,
    "短2度" to 1.0,
    "長2度" to 2.0,
    "短3度" to 3.0,
    "長3度" to 4.0,
    "完全4度" to 5.0,
    "増4度" to 6.0,
    "減5度" to 6.0,
    "完全5度" to 7.0,
    "短6度" to 8.0,
    "長6度" to 9.0,
    "短7度" to 10.0,
    "長7度" to 11.0,
    "オクターブ" to 0.0,
    "短9度" to 1.0,  
    "長9度" to 2.0,  
    "短11度" to 5.0,  
    "完全11度" to 5.0,  
    "増11度" to 6.0,  
    "短13度" to 8.0,  
    "長13度" to 9.0  
)
  fun getSemitoneIntervalFromDegreeSemitone(degree:String):Double{
    return degreeStringToSemitone[degree] ?:
      throw IllegalArgumentException("Invalid degree String");
  }
}
