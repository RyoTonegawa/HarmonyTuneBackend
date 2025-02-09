package com.harmonytune.backend.checkChord.domain.service

import org.springframework.stereotype.Service
import com.harmonytune.backend.checkChord.domain.model.Note
import com.harmonytune.backend.checkChord.domain.model.Chord
import com.harmonytune.backend.checkChord.domain.service.DetermineChordDto
import com.harmonytune.backend.checkChord.domain.dto.degreeService.GetDegreeDto
import com.harmonytune.backend.checkChord.domain.service.FrequencyService

public data class CreateNoteListDto(
  val chordName: String,
  val noteList: List<Note>
)
@Service
class NoteService(
  private val intervalService: IntervalService,
  private val frequencyService: FrequencyService
) {
  fun createNoteList(
    chordList: List<DetermineChordDto>,
    degreeList:List<GetDegreeDto>,
    noteNumberList: List<Int>
  ): List<CreateNoteListDto> {
    val noteList = chordList.map{ eachChord ->
      CreateNoteListDto(
        eachChord.chordDegreeName,
        createNote(
          degreeList,
          noteNumberList,
          eachChord.rootNoteNumber
        )
      )
    }
    return noteList
  }
  fun createNote(
    degreeList:List<GetDegreeDto>,
    noteNumberList: List<Int>,
    rootNoteNumber: Int
    ): List<Note> {
    val noteList = degreeList.map{ eachDegree ->
      // DegreeとNote Number対応づける
      val noteNumber:Int = determineChordToneNoteNumber(
        eachDegree.degree,
        degreeList,
        noteNumberList
      );
      val semitoneInterval:Int = eachDegree.semitoneInterval; 
      val equalTemperamentFrequency:Double 
        = frequencyService.calculateEqualTemperamentFrequency(noteNumber);
      
      val justNotation:Double = frequencyService.calculateJustIntonationFrequency(
        eachDegree.degree,
        noteNumber
      );

      Note(
        eachDegree.degree,
        noteNumber,
        getNoteNameWithOctave(noteNumber),
        semitoneInterval,
        intervalService.getDegree(semitoneInterval),
        justNotation,
        equalTemperamentFrequency,
        frequencyService.calculateCentsDifference(
          justNotation, 
          equalTemperamentFrequency
        )
      )
    }
    return noteList
  }
  fun getNoteNameWithOctave(noteNumber: Int): String {
    val noteNames = listOf("C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B")
    val noteName = noteNames[noteNumber % 12] // 音名を取得
    val octave = (noteNumber / 12) - 1 // オクターブを計算
    return "$noteName$octave"
  }
  fun determineChordToneNoteNumber(
    chordToneDegree: Double,
    degreeDtoList:List<GetDegreeDto>,
    noteNumberList: List<Int>
  ): Int {
    var semitoneInterval = -1;
    // デグリーとdegreeDtoListのdegreeを比較して、今回のコードトーンのsemitoneIntervalを取得する
    for (degreeDto in degreeDtoList) {
      if (chordToneDegree== degreeDto.degree) {
        semitoneInterval=degreeDto.semitoneInterval
        break;
      }
    }
    // コードトーンのsemitoneIntervalが取得できなかったらエラー
    if(semitoneInterval == -1){
      throw IllegalArgumentException("Invalid chord tone degree or note number list")
    }
    // noteNumberListの中で、semitoneIntervalと一致するものを探す 
    for(noteNumber in noteNumberList){
      if(noteNumber % 12 == semitoneInterval){
        return noteNumber
      }
    }
    throw IllegalArgumentException("Invalid semitone interval")
  }
}
