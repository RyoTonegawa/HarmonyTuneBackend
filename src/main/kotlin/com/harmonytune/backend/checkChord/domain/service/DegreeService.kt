package com.harmonytune.backend.checkChord.domain.service

import org.springframework.stereotype.Service
import com.harmonytune.backend.checkChord.domain.dto.GetSemitoneIntervalDto
import com.harmonytune.backend.checkChord.domain.dto.degreeService.GetDegreeDto

@Service
class DegreeService {
  // semitoneIntervalとdegreeの対応付け
  // mod12の値（半音何個分）で何度になるか
  private val degreeMap = mapOf(
    0 to 1.0,
    1 to 1.5,
    2 to 2.0,
    3 to 2.5,
    4 to 3.0,
    5 to 4.0,//F
    6 to 4.5,
    7 to 5.0,//G
    8 to 5.5, //G#
    9 to 6.0, //A
    10 to 6.5, //A#
    11 to 7.0 //B 
  )
  // semitoneIntervalからdegreeを取得
  fun getDegree(
    semitoneIntervalDtoList: List<GetSemitoneIntervalDto>
  ): List<GetDegreeDto> {
    return semitoneIntervalDtoList.map { semitoneIntervalDto ->
      GetDegreeDto(
        semitoneIntervalDto.semitoneInterval,
        degreeMap[semitoneIntervalDto.semitoneInterval] ?: throw IllegalArgumentException("Invalid semitoneInterval: ${semitoneIntervalDto.semitoneInterval}")
      )
    }
  }
  //noteNumberからmod12(semitoneInterval)の値を取得
  fun getSemitoneInterval(
    keySignature: String,
    noteNumberList: List<Int>
  ): List<GetSemitoneIntervalDto> {
    val resultList = mutableListOf<GetSemitoneIntervalDto>();
    for(noteNumber in noteNumberList){
      //handle edge case
      if(
        noteNumber<0 || noteNumber>127
      ){
      throw IllegalArgumentException("Invalid noteNumber: $noteNumber")
      }else if(keySignature == ""){
      throw IllegalArgumentException("Invalid keySignature: $keySignature")
      }
      //各キーに合わせてmod12の値に調整する
      //Cメジャーの場合はそのままmod12の値を返す
      when(keySignature){
      "C" -> resultList.add(GetSemitoneIntervalDto(noteNumber % 12, noteNumber))
      "C#" -> resultList.add(GetSemitoneIntervalDto((noteNumber + 1) % 12, noteNumber))
      "D" -> resultList.add(GetSemitoneIntervalDto((noteNumber + 2) % 12, noteNumber))
      "D#" -> resultList.add(GetSemitoneIntervalDto((noteNumber + 3) % 12, noteNumber))
      "E" -> resultList.add(GetSemitoneIntervalDto((noteNumber + 4) % 12, noteNumber))
      "F" -> resultList.add(GetSemitoneIntervalDto((noteNumber + 5) % 12, noteNumber))
      "F#" -> resultList.add(GetSemitoneIntervalDto((noteNumber + 6) % 12, noteNumber))
      "G" -> resultList.add(GetSemitoneIntervalDto((noteNumber + 7) % 12, noteNumber))
      "G#" -> resultList.add(GetSemitoneIntervalDto((noteNumber + 8) % 12, noteNumber))
      "A" -> resultList.add(GetSemitoneIntervalDto((noteNumber + 9) % 12, noteNumber))
      "A#" -> resultList.add(GetSemitoneIntervalDto((noteNumber + 10) % 12, noteNumber))
      "B" -> resultList.add(GetSemitoneIntervalDto((noteNumber + 11) % 12, noteNumber))
      else -> throw IllegalArgumentException("Invalid keySignature: $keySignature")
      }
    }
    return resultList;
  }
}
